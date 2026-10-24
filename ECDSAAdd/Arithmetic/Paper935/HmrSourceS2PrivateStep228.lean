import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep226
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

private def s2Step228CompleteMoves : List (Wire × Wire) := [(820,155)]

private def s2Step228EarlyControlLog : HmrEarlyControlLog := ⟨[820, 797, 804, 800, 849],[814],[882],[826, 842, 885, 891, 894, 896],[]⟩

private def s2Step228FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [808]],[[849], [800], [797], [804]],[[], [], [], []]⟩,[810],[809],[814],[882],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step228CompleteLog : HmrEarlyStepLog := ⟨s2Step228FrontLog,s2Step228CompleteMoves,s2Step228EarlyControlLog⟩

private def s2Step228ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩

private def s2Step228ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step228ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154],769⟩

private def s2Step228ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private def s2Step228FrontOut : WindowBank := ⟨s2Step228ExitFOut,s2Step228ExitGOut,s2Step228ExitFvOut,s2Step228ExitGvOut⟩

private def s2Step228CompleteOut : WindowBank := s2Step228FrontOut.repacked s2Step228CompleteMoves

private def s2Step228EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step228EarlyControlPositiveArena,[814],s2Step228EarlyControlEqualityArena,[882],⟨⟨810,false⟩,[⟨⟨814,false⟩,882⟩]⟩⟩

private def s2Step228EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,820⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,804⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,849⟩]⟩

private def s2Step228EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step228EarlyControlZeroArena,s2Step228EarlyControlZeroPlan,s2Step228EarlyControlClassPlan,s2Step228EarlyControlFlagArena,s2Step228EarlyControlFittedArena,s2Step228EarlyControlHistoryArena,s2Step228EarlyControlSigmaArena,s2Step228EarlyControlOutputArena,s2Step228EarlyControlLog⟩

private def s2Step228CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step228Counter_bounded : s2Step228CounterWork.toFinset⊆arenaWires := by norm_num [s2Step228CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step228HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228CounterDuring : Arena := ⟨s2Step228HeadFvAfter.live∪s2Step228CounterWork.toFinset,Finset.union_subset s2Step228HeadFvAfter.bounded s2Step228Counter_bounded⟩

private def s2Step228EntryFFresh : List Wire := []

private def s2Step228EntryFvFresh : List Wire := []

private def s2Step228EntryGFresh : List Wire := []

private def s2Step228EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EntryGvFresh : List Wire := [808]

private def s2Step228ExitFExtra : List Wire := [800]

private def s2Step228ExitFvExtra : List Wire := [804]

private def s2Step228ExitGExtra : List Wire := [155, 849]

private def s2Step228ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228ExitGvExtra : List Wire := [797]

private def s2Step228Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228Add0Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step228Add0_bounded : s2Step228Add0Work.toFinset⊆arenaWires := by
  have h : s2Step228Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step228Add0During : Arena := ⟨s2Step228Add0Arena.live∪s2Step228Add0Work.toFinset,Finset.union_subset s2Step228Add0Arena.bounded s2Step228Add0_bounded⟩

private def s2Step228Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228Add1Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step228Add1_bounded : s2Step228Add1Work.toFinset⊆arenaWires := by
  have h : s2Step228Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step228Add1During : Arena := ⟨s2Step228Add1Arena.live∪s2Step228Add1Work.toFinset,Finset.union_subset s2Step228Add1Arena.bounded s2Step228Add1_bounded⟩

private def s2Step228F4FlagArena : Arena := ⟨s2Step228HeadFvAfter.live∪{814},Finset.union_subset s2Step228HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step228F4Plan : HmrHybridF4Plan := ⟨s2Step228F4FlagArena,[814],s2Step228Add0Arena,[882],s2Step228Add0During,s2Step228Add0Work,s2Step228Add1During,s2Step228Add1Work⟩

private def s2Step228HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 800],768⟩

private def s2Step228HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step228HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 849],769⟩

private def s2Step228HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 797],771⟩

private def s2Step228FrontHead : WindowBank := ⟨s2Step228HeadFOut,s2Step228HeadGOut,s2Step228HeadFvOut,s2Step228HeadGvOut⟩

private def s2Step228EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩

private def s2Step228EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step228EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],769⟩

private def s2Step228EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private def s2Step228FrontPair : WindowBank := ⟨s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut⟩

private def s2Step228FrontSigmaArena : Arena := ⟨s2Step228EntryGvAfter.live∪{810},Finset.union_subset s2Step228EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step228HeadFFresh : List Wire := [800]

private def s2Step228HeadFvFresh : List Wire := [804]

private def s2Step228HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228HeadGFresh : List Wire := [849]

private def s2Step228HeadGvFresh : List Wire := [797]

private def s2Step228FrontPlan : HmrSourceFront := ⟨s2Step228EntryGvAfter,s2Step228FrontPair,(growRow 768 s2Step228EntryFFresh ++ (growRow 769 s2Step228EntryGFresh ++ (growRow 770 s2Step228EntryFvFresh ++ (growRow 771 s2Step228EntryGvFresh ++ [])))),s2Step228FrontSigmaArena,[810],s2Step228HeadGBefore,[809],
  s2Step228HeadFvAfter,s2Step228FrontHead,(growRow 769 s2Step228HeadGFresh ++ (growRow 768 s2Step228HeadFFresh ++ (growRow 771 s2Step228HeadGvFresh ++ (growRow 770 s2Step228HeadFvFresh ++ [])))),s2Step228F4Plan,s2Step228CounterDuring,s2Step228CounterWork,s2Step228ExitGvAfter,s2Step228FrontOut,(shrinkRow 769 s2Step228ExitGExtra ++ (shrinkRow 768 s2Step228ExitFExtra ++ (shrinkRow 770 s2Step228ExitFvExtra ++ (shrinkRow 771 s2Step228ExitGvExtra ++ []))))⟩

private def s2Step228CompletePlan : HmrEarlyStepPlan := ⟨s2Step228FrontPlan,s2Step228EarlyControlArena,s2Step228EarlyControlPlan,s2Step228CompleteMoves⟩

private theorem s2Step228Complete_apart : List.Disjoint (s2Step228CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [810, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step228CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[810, 809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step228Complete_owned : (s2Step228CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step228CompleteMoveArena : Arena := ⟨s2Step228ExitGvAfter.live∪{155},Finset.union_subset s2Step228ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step228Complete_repack : s2Step228ExitGvAfter.checkRepack s2Step228CompleteMoves=some s2Step228EarlyControlArena := by
  have owned : 820∈s2Step228ExitGvAfter.live := by norm_num [s2Step228ExitGvAfter,arenaWires]
  have reserve : s2Step228ExitGvAfter.reserve {155}=some s2Step228CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step228ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step228CompleteMoveArena.retireSet {820}=s2Step228EarlyControlArena := by
    unfold Arena.retireSet s2Step228EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step228CompleteMoveArena,s2Step228ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step228CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step228CompleteMoveArena.retireSet {820}).checkRepack []=some s2Step228EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step228EarlyControl_branchOwned : ([809] : List Wire).toFinset⊆s2Step228EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlSigmaArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_branch : compileHmrBranchRetirement s2Step228EarlyControlSigmaArena 809=some s2Step228EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step228EarlyControl_branchOwned
  · ext q
    simp [s2Step228EarlyControlOutputArena,s2Step228EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step228EarlyControl_classEqualityBorrow : s2Step228EarlyControlPositiveArena.checkBorrow (([810, 814] : List Wire).length-1) s2Step228EarlyControlLog.classWork=some s2Step228EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step228EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step228EarlyControlEqualityArena,s2Step228EarlyControlPositiveArena,s2Step228EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step228EarlyControl_classEqualityOwned : ([810, 814] : List Wire).toFinset⊆s2Step228EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_classEquality : compileHmrEqualityLog s2Step228EarlyControlPositiveArena [810, 814] 0 s2Step228EarlyControlLog.classWork=some (s2Step228EarlyControlEqualityArena,s2Step228EarlyControlLog.classWork,s2Step228EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step228EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step228EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step228EarlyControl_classOwned : ([777, 849, 810] : List Wire).toFinset⊆s2Step228EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_positiveBorrow : s2Step228EarlyControlZeroArena.checkBorrow (1) s2Step228EarlyControlLog.positiveWork=some s2Step228EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step228EarlyControlZeroArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step228EarlyControlPositiveArena,s2Step228EarlyControlZeroArena,s2Step228EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step228EarlyControl_class : compileHmrSourceClassLog s2Step228EarlyControlZeroArena false 777 s2Step228EarlyControlZeroPlan.top 0 810 s2Step228EarlyControlLog.positiveWork s2Step228EarlyControlLog.classWork=some s2Step228EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step228EarlyControlClassPlan s2Step228EarlyControlZeroArena false 777 s2Step228EarlyControlZeroPlan.top 0 810
  constructor
  · decide +kernel
  · exact s2Step228EarlyControl_classOwned
  · exact s2Step228EarlyControl_positiveBorrow
  · exact s2Step228EarlyControl_classEquality

private theorem s2Step228EarlyControl_entryRecordOwned : ([809, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_entrySigmaOwned : ([810, 254] : List Wire).toFinset⊆s2Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_fitBorrow : s2Step228EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step228EarlyControlLog.recordFresh=some s2Step228EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step228EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step228EarlyControlFittedArena,s2Step228EarlyControlFlagArena,s2Step228EarlyControlLog,arenaWires]

private theorem s2Step228EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step228EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlFlagArena (fun q => (0≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_fit : compileHmrRecordGrowLog s2Step228EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step228EarlyControlLog.recordFresh=some s2Step228EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step228EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step228EarlyControl_fitBorrow

private theorem s2Step228EarlyControl_flagsBorrow : s2Step228EarlyControlEqualityArena.checkBorrow (6) s2Step228EarlyControlLog.flagWork=some s2Step228EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step228EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step228EarlyControlFlagArena,s2Step228EarlyControlEqualityArena,s2Step228EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step228EarlyControl_flagsOwned : ([882, 253, 252, 251] : List Wire).toFinset⊆s2Step228EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_flags : compileHmrFlagsLog s2Step228EarlyControlClassPlan.equalityArena s2Step228EarlyControlClassPlan.equality.top 253 252 251 s2Step228EarlyControlLog.flagWork=some s2Step228EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step228EarlyControl_flagsOwned⟩
  · exact s2Step228EarlyControl_flagsBorrow

private theorem s2Step228EarlyControl_historyBorrow : s2Step228EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step228EarlyControlLog.recordFresh=some s2Step228EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step228EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step228EarlyControlHistoryArena,s2Step228EarlyControlArena,s2Step228EarlyControlLog,arenaWires]

private theorem s2Step228EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_history : compileHmrRecordGrowLog s2Step228EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step228EarlyControlLog.recordFresh=some s2Step228EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step228EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step228EarlyControl_historyBorrow

private theorem s2Step228EarlyControl_sigmaOwned : ([254, 810] : List Wire).toFinset⊆s2Step228EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlHistoryArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_sigmaReleaseOwned : ([810] : List Wire).toFinset⊆s2Step228EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlHistoryArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_sigmaRelease : s2Step228EarlyControlHistoryArena.release {810} (fun _ => false)=some s2Step228EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step228EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step228EarlyControlSigmaArena,s2Step228EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step228EarlyControl_sigma : compileHmrSigmaDropLog s2Step228EarlyControlHistoryArena false 0 0 254 810 []=some s2Step228EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step228EarlyControl_sigmaOwned⟩
  · exact s2Step228EarlyControl_sigmaRelease

private theorem s2Step228EarlyControl_zeroBorrow : s2Step228EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step228EarlyControlLog.zeroWork=some s2Step228EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step228EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step228EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step228EarlyControlZeroArena,s2Step228EarlyControlArena,s2Step228EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step228EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step228EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step228EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EarlyControl_zero : compileHmrEqualityLog s2Step228EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step228EarlyControlLog.zeroWork=some (s2Step228EarlyControlZeroArena,s2Step228EarlyControlLog.zeroWork,s2Step228EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step228EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step228EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step228EarlyControl_logged : s2Step228EarlyControlPlan.Logged s2Step228EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 810 254 253 252 251 809 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step228EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step228EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step228EarlyControl_zero
  · exact s2Step228EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step228EarlyControl_flags
  · exact s2Step228EarlyControl_fit
  · exact s2Step228EarlyControl_history
  · exact s2Step228EarlyControl_sigma
  · exact s2Step228EarlyControl_branch

private theorem s2Step228EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step228EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 810 254 253 252 251 809 49 s2Step228EarlyControlLog=some s2Step228EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step228EarlyControlPlan s2Step228EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 810 254 253 252 251 809 49 s2Step228EarlyControl_logged

private def s2Step228EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩

private def s2Step228EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step228EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],769⟩

private def s2Step228EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812],771⟩

private def s2Step228FrontBank : WindowBank := ⟨s2Step228EntryFRow,s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow⟩

private def s2Step228Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 800, 768]

private def s2Step228Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 849, 769]

private def s2Step228Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 770]

private def s2Step228Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 797, 771]

private theorem s2Step228Counter_apart : Disjoint s2Step228HeadFvAfter.live s2Step228CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step228HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228Counter_borrowed : s2Step228HeadFvAfter.checkBorrow 4 s2Step228CounterWork=some s2Step228CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step228HeadFvAfter s2Step228CounterDuring s2Step228CounterWork.toFinset s2Step228Counter_bounded s2Step228Counter_apart rfl

private theorem s2Step228Counter_owned : (810::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step228HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step228HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228Counter_checked : compileHmrCounterStepLog s2Step228HeadFvAfter true 810 [772, 773, 774, 775, 776, 777] s2Step228CounterWork=some s2Step228CounterDuring := by
  have owned : ∀q∈810::[772, 773, 774, 775, 776, 777],q∈s2Step228HeadFvAfter.live := fun q hq => s2Step228Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step228Counter_borrowed

private def s2Step228EntryFAfter : Arena := s2Step228EntryFBefore

private theorem s2Step228EntryBank_incomingDistinct : ([s2Step228EntryFRow,s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228EntryF_Incoming : rowsOwned s2Step228EntryFBefore [s2Step228EntryFRow,s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228EntryFRow,s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow] 0 s2Step228EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228EntryBank_outgoingOwned : rowsOwned s2Step228EntryGvAfter [s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step228EntryGvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228EntryF_Outgoing : rowsOwned s2Step228EntryGvAfter [s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut] :=
  hmrRows_owned_drop s2Step228EntryGvAfter [s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut] 0 s2Step228EntryBank_outgoingOwned

private theorem s2Step228EntryF_distinct : (s2Step228EntryFRow.sign::s2Step228EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228EntryF_owned : (s2Step228EntryFRow.sign::s2Step228EntryFRow.payload).toFinset⊆s2Step228EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EntryF_reserved : s2Step228EntryFBefore.reserve s2Step228EntryFFresh.toFinset=some s2Step228EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step228EntryFFresh,arenaWires]
  · norm_num [s2Step228EntryFBefore,s2Step228EntryFFresh,arenaWires]
  · simp only [s2Step228EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step228EntryF_checked : planRowResizeLog s2Step228EntryFBefore s2Step228EntryFRow 156 s2Step228EntryFFresh=
    some (s2Step228EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩,growRow 768 s2Step228EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step228EntryFBefore s2Step228EntryFAfter s2Step228EntryFRow 156 s2Step228EntryFFresh
    s2Step228EntryF_distinct s2Step228EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step228EntryF_reserved
  have rowEq : WindowRow.mk (s2Step228EntryFRow.payload++s2Step228EntryFFresh) s2Step228EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step228EntryFvAfter : Arena := s2Step228EntryFBefore

private def s2Step228EntryFvBefore : Arena := s2Step228EntryFBefore

private theorem s2Step228EntryFv_Incoming : rowsOwned s2Step228EntryFvBefore [s2Step228EntryFvRow,s2Step228EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228EntryFRow,s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow] 2 s2Step228EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228EntryFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228EntryFv_Outgoing : rowsOwned s2Step228EntryGvAfter [s2Step228EntryFvOut,s2Step228EntryGvOut] :=
  hmrRows_owned_drop s2Step228EntryGvAfter [s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut] 2 s2Step228EntryBank_outgoingOwned

private theorem s2Step228EntryFv_distinct : (s2Step228EntryFvRow.sign::s2Step228EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228EntryFv_owned : (s2Step228EntryFvRow.sign::s2Step228EntryFvRow.payload).toFinset⊆s2Step228EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228EntryFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EntryFv_reserved : s2Step228EntryFvBefore.reserve s2Step228EntryFvFresh.toFinset=some s2Step228EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step228EntryFvFresh,arenaWires]
  · norm_num [s2Step228EntryFvBefore,s2Step228EntryFBefore,s2Step228EntryFvFresh,arenaWires]
  · simp only [s2Step228EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step228EntryFv_checked : planRowResizeLog s2Step228EntryFvBefore s2Step228EntryFvRow 129 s2Step228EntryFvFresh=
    some (s2Step228EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩,growRow 770 s2Step228EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step228EntryFvBefore s2Step228EntryFvAfter s2Step228EntryFvRow 129 s2Step228EntryFvFresh
    s2Step228EntryFv_distinct s2Step228EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step228EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step228EntryFvRow.payload++s2Step228EntryFvFresh) s2Step228EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step228EntryGAfter : Arena := s2Step228EntryFBefore

private def s2Step228EntryGBefore : Arena := s2Step228EntryFBefore

private theorem s2Step228EntryG_Incoming : rowsOwned s2Step228EntryGBefore [s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228EntryFRow,s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow] 1 s2Step228EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228EntryG_Outgoing : rowsOwned s2Step228EntryGvAfter [s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut] :=
  hmrRows_owned_drop s2Step228EntryGvAfter [s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut] 1 s2Step228EntryBank_outgoingOwned

private theorem s2Step228EntryG_distinct : (s2Step228EntryGRow.sign::s2Step228EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228EntryG_owned : (s2Step228EntryGRow.sign::s2Step228EntryGRow.payload).toFinset⊆s2Step228EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228EntryGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EntryG_reserved : s2Step228EntryGBefore.reserve s2Step228EntryGFresh.toFinset=some s2Step228EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step228EntryGFresh,arenaWires]
  · norm_num [s2Step228EntryGBefore,s2Step228EntryFBefore,s2Step228EntryGFresh,arenaWires]
  · simp only [s2Step228EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step228EntryG_checked : planRowResizeLog s2Step228EntryGBefore s2Step228EntryGRow 156 s2Step228EntryGFresh=
    some (s2Step228EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],769⟩,growRow 769 s2Step228EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step228EntryGBefore s2Step228EntryGAfter s2Step228EntryGRow 156 s2Step228EntryGFresh
    s2Step228EntryG_distinct s2Step228EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step228EntryG_reserved
  have rowEq : WindowRow.mk (s2Step228EntryGRow.payload++s2Step228EntryGFresh) s2Step228EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step228EntryGvBefore : Arena := s2Step228EntryFBefore

private theorem s2Step228EntryGv_Incoming : rowsOwned s2Step228EntryGvBefore [s2Step228EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228EntryFRow,s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow] 3 s2Step228EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228EntryGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228EntryGv_Outgoing : rowsOwned s2Step228EntryGvAfter [s2Step228EntryGvOut] :=
  hmrRows_owned_drop s2Step228EntryGvAfter [s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut] 3 s2Step228EntryBank_outgoingOwned

private theorem s2Step228EntryGv_distinct : (s2Step228EntryGvRow.sign::s2Step228EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228EntryGv_owned : (s2Step228EntryGvRow.sign::s2Step228EntryGvRow.payload).toFinset⊆s2Step228EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228EntryGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228EntryGv_reserved : s2Step228EntryGvBefore.reserve s2Step228EntryGvFresh.toFinset=some s2Step228EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step228EntryGvFresh,arenaWires]
  · norm_num [s2Step228EntryGvBefore,s2Step228EntryFBefore,s2Step228EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step228EntryGvAfter,s2Step228EntryGvBefore,s2Step228EntryFBefore,s2Step228EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step228EntryGv_checked : planRowResizeLog s2Step228EntryGvBefore s2Step228EntryGvRow 129 s2Step228EntryGvFresh=
    some (s2Step228EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩,growRow 771 s2Step228EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step228EntryGvBefore s2Step228EntryGvAfter s2Step228EntryGvRow 129 s2Step228EntryGvFresh
    s2Step228EntryGv_distinct s2Step228EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step228EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step228EntryGvRow.payload++s2Step228EntryGvFresh) s2Step228EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step228EntryBank_rows : planWindowRowsLog s2Step228EntryFBefore [(s2Step228EntryFRow,156),(s2Step228EntryGRow,156),(s2Step228EntryFvRow,129),(s2Step228EntryGvRow,129)] [s2Step228EntryFFresh,s2Step228EntryGFresh,s2Step228EntryFvFresh,s2Step228EntryGvFresh]=
    some (s2Step228EntryGvAfter,[s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut],(growRow 768 s2Step228EntryFFresh ++ (growRow 769 s2Step228EntryGFresh ++ (growRow 770 s2Step228EntryFvFresh ++ (growRow 771 s2Step228EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step228EntryGvAfter [] []=some (s2Step228EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step228EntryGvBefore s2Step228EntryGvAfter s2Step228EntryGvAfter
    s2Step228EntryGvRow s2Step228EntryGvOut 129 s2Step228EntryGvFresh [] [] []
    (growRow 771 s2Step228EntryGvFresh) ([]) s2Step228EntryGv_Incoming s2Step228EntryGv_checked h4 s2Step228EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step228EntryFvBefore s2Step228EntryFvAfter s2Step228EntryGvAfter
    s2Step228EntryFvRow s2Step228EntryFvOut 129 s2Step228EntryFvFresh [(s2Step228EntryGvRow,129)] [s2Step228EntryGvFresh] [s2Step228EntryGvOut]
    (growRow 770 s2Step228EntryFvFresh) ((growRow 771 s2Step228EntryGvFresh ++ [])) s2Step228EntryFv_Incoming s2Step228EntryFv_checked h3 s2Step228EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step228EntryGBefore s2Step228EntryGAfter s2Step228EntryGvAfter
    s2Step228EntryGRow s2Step228EntryGOut 156 s2Step228EntryGFresh [(s2Step228EntryFvRow,129),(s2Step228EntryGvRow,129)] [s2Step228EntryFvFresh,s2Step228EntryGvFresh] [s2Step228EntryFvOut,s2Step228EntryGvOut]
    (growRow 769 s2Step228EntryGFresh) ((growRow 770 s2Step228EntryFvFresh ++ (growRow 771 s2Step228EntryGvFresh ++ []))) s2Step228EntryG_Incoming s2Step228EntryG_checked h2 s2Step228EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step228EntryFBefore s2Step228EntryFAfter s2Step228EntryGvAfter
    s2Step228EntryFRow s2Step228EntryFOut 156 s2Step228EntryFFresh [(s2Step228EntryGRow,156),(s2Step228EntryFvRow,129),(s2Step228EntryGvRow,129)] [s2Step228EntryGFresh,s2Step228EntryFvFresh,s2Step228EntryGvFresh] [s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut]
    (growRow 768 s2Step228EntryFFresh) ((growRow 769 s2Step228EntryGFresh ++ (growRow 770 s2Step228EntryFvFresh ++ (growRow 771 s2Step228EntryGvFresh ++ [])))) s2Step228EntryF_Incoming s2Step228EntryF_checked h1 s2Step228EntryF_Outgoing
  exact h0

private theorem s2Step228EntryBank_checked : compileHmrBankResizeLog .entry s2Step228EntryFBefore ⟨s2Step228EntryFRow,s2Step228EntryGRow,s2Step228EntryFvRow,s2Step228EntryGvRow⟩ ⟨156,156,129,129⟩ [s2Step228EntryFFresh,s2Step228EntryGFresh,s2Step228EntryFvFresh,s2Step228EntryGvFresh]=
    some (s2Step228EntryGvAfter,⟨s2Step228EntryFOut,s2Step228EntryGOut,s2Step228EntryFvOut,s2Step228EntryGvOut⟩,(growRow 768 s2Step228EntryFFresh ++ (growRow 769 s2Step228EntryGFresh ++ (growRow 770 s2Step228EntryFvFresh ++ (growRow 771 s2Step228EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step228EntryBank_rows]
  rfl

private def s2Step228ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228ExitFBefore : Arena := s2Step228ExitGAfter

private def s2Step228ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 800],768⟩

private def s2Step228ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step228ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 849],769⟩

private def s2Step228ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 797],771⟩

private theorem s2Step228ExitBank_incomingDistinct : ([s2Step228ExitGRow,s2Step228ExitFRow,s2Step228ExitFvRow,s2Step228ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228ExitF_Incoming : rowsOwned s2Step228ExitFBefore [s2Step228ExitFRow,s2Step228ExitFvRow,s2Step228ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228ExitGRow,s2Step228ExitFRow,s2Step228ExitFvRow,s2Step228ExitGvRow] 1 s2Step228ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228ExitFBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228ExitBank_outgoingOwned : rowsOwned s2Step228ExitGvAfter [s2Step228ExitGOut,s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step228ExitGvAfter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228ExitF_Outgoing : rowsOwned s2Step228ExitGvAfter [s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut] :=
  hmrRows_owned_drop s2Step228ExitGvAfter [s2Step228ExitGOut,s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut] 1 s2Step228ExitBank_outgoingOwned

private theorem s2Step228ExitF_distinct : (s2Step228ExitFRow.sign::s2Step228ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228ExitF_owned : (s2Step228ExitFRow.sign::s2Step228ExitFRow.payload).toFinset⊆s2Step228ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228ExitFBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228ExitF_retired : s2Step228ExitFBefore.retireSet s2Step228ExitFExtra.toFinset=s2Step228ExitFAfter := by
  unfold Arena.retireSet s2Step228ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step228ExitFBefore,s2Step228ExitGAfter,s2Step228ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step228ExitF_checked : planRowResizeLog s2Step228ExitFBefore s2Step228ExitFRow 156 []=
    some (s2Step228ExitFAfter,s2Step228ExitFOut,shrinkRow 768 s2Step228ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step228ExitFBefore s2Step228ExitFRow 156 s2Step228ExitF_distinct s2Step228ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step228ExitFRow.payload.take 156) s2Step228ExitFRow.sign=s2Step228ExitFOut := by decide +kernel
  have hi : s2Step228ExitFRow.payload.drop 156=s2Step228ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step228ExitF_retired] at result
  exact result

private def s2Step228ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228ExitFvBefore : Arena := s2Step228ExitFAfter

private theorem s2Step228ExitFv_Incoming : rowsOwned s2Step228ExitFvBefore [s2Step228ExitFvRow,s2Step228ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228ExitGRow,s2Step228ExitFRow,s2Step228ExitFvRow,s2Step228ExitGvRow] 2 s2Step228ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228ExitFvBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228ExitFv_Outgoing : rowsOwned s2Step228ExitGvAfter [s2Step228ExitFvOut,s2Step228ExitGvOut] :=
  hmrRows_owned_drop s2Step228ExitGvAfter [s2Step228ExitGOut,s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut] 2 s2Step228ExitBank_outgoingOwned

private theorem s2Step228ExitFv_distinct : (s2Step228ExitFvRow.sign::s2Step228ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228ExitFv_owned : (s2Step228ExitFvRow.sign::s2Step228ExitFvRow.payload).toFinset⊆s2Step228ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228ExitFvBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228ExitFv_retired : s2Step228ExitFvBefore.retireSet s2Step228ExitFvExtra.toFinset=s2Step228ExitFvAfter := by
  unfold Arena.retireSet s2Step228ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step228ExitFvBefore,s2Step228ExitFAfter,s2Step228ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step228ExitFv_checked : planRowResizeLog s2Step228ExitFvBefore s2Step228ExitFvRow 129 []=
    some (s2Step228ExitFvAfter,s2Step228ExitFvOut,shrinkRow 770 s2Step228ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step228ExitFvBefore s2Step228ExitFvRow 129 s2Step228ExitFv_distinct s2Step228ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step228ExitFvRow.payload.take 129) s2Step228ExitFvRow.sign=s2Step228ExitFvOut := by decide +kernel
  have hi : s2Step228ExitFvRow.payload.drop 129=s2Step228ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step228ExitFv_retired] at result
  exact result

private def s2Step228ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step228ExitG_Incoming : rowsOwned s2Step228ExitGBefore [s2Step228ExitGRow,s2Step228ExitFRow,s2Step228ExitFvRow,s2Step228ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228ExitGRow,s2Step228ExitFRow,s2Step228ExitFvRow,s2Step228ExitGvRow] 0 s2Step228ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228ExitG_Outgoing : rowsOwned s2Step228ExitGvAfter [s2Step228ExitGOut,s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut] :=
  hmrRows_owned_drop s2Step228ExitGvAfter [s2Step228ExitGOut,s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut] 0 s2Step228ExitBank_outgoingOwned

private theorem s2Step228ExitG_distinct : (s2Step228ExitGRow.sign::s2Step228ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228ExitG_owned : (s2Step228ExitGRow.sign::s2Step228ExitGRow.payload).toFinset⊆s2Step228ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228ExitG_retired : s2Step228ExitGBefore.retireSet s2Step228ExitGExtra.toFinset=s2Step228ExitGAfter := by
  unfold Arena.retireSet s2Step228ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step228ExitGBefore,s2Step228ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step228ExitG_checked : planRowResizeLog s2Step228ExitGBefore s2Step228ExitGRow 155 []=
    some (s2Step228ExitGAfter,s2Step228ExitGOut,shrinkRow 769 s2Step228ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step228ExitGBefore s2Step228ExitGRow 155 s2Step228ExitG_distinct s2Step228ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step228ExitGRow.payload.take 155) s2Step228ExitGRow.sign=s2Step228ExitGOut := by decide +kernel
  have hi : s2Step228ExitGRow.payload.drop 155=s2Step228ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step228ExitG_retired] at result
  exact result

private def s2Step228ExitGvBefore : Arena := s2Step228ExitFvAfter

private theorem s2Step228ExitGv_Incoming : rowsOwned s2Step228ExitGvBefore [s2Step228ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228ExitGRow,s2Step228ExitFRow,s2Step228ExitFvRow,s2Step228ExitGvRow] 3 s2Step228ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228ExitGvBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228ExitGv_Outgoing : rowsOwned s2Step228ExitGvAfter [s2Step228ExitGvOut] :=
  hmrRows_owned_drop s2Step228ExitGvAfter [s2Step228ExitGOut,s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut] 3 s2Step228ExitBank_outgoingOwned

private theorem s2Step228ExitGv_distinct : (s2Step228ExitGvRow.sign::s2Step228ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228ExitGv_owned : (s2Step228ExitGvRow.sign::s2Step228ExitGvRow.payload).toFinset⊆s2Step228ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228ExitGvBefore (fun q => (0≤q ∧ q<155) ∨ (156≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228ExitGv_retired : s2Step228ExitGvBefore.retireSet s2Step228ExitGvExtra.toFinset=s2Step228ExitGvAfter := by
  unfold Arena.retireSet s2Step228ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step228ExitGvBefore,s2Step228ExitFvAfter,s2Step228ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step228ExitGv_checked : planRowResizeLog s2Step228ExitGvBefore s2Step228ExitGvRow 129 []=
    some (s2Step228ExitGvAfter,s2Step228ExitGvOut,shrinkRow 771 s2Step228ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step228ExitGvBefore s2Step228ExitGvRow 129 s2Step228ExitGv_distinct s2Step228ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step228ExitGvRow.payload.take 129) s2Step228ExitGvRow.sign=s2Step228ExitGvOut := by decide +kernel
  have hi : s2Step228ExitGvRow.payload.drop 129=s2Step228ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step228ExitGv_retired] at result
  exact result

private theorem s2Step228ExitBank_rows : planWindowRowsLog s2Step228ExitGBefore [(s2Step228ExitGRow,155),(s2Step228ExitFRow,156),(s2Step228ExitFvRow,129),(s2Step228ExitGvRow,129)] [[],[],[],[]]=
    some (s2Step228ExitGvAfter,[s2Step228ExitGOut,s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut],(shrinkRow 769 s2Step228ExitGExtra ++ (shrinkRow 768 s2Step228ExitFExtra ++ (shrinkRow 770 s2Step228ExitFvExtra ++ (shrinkRow 771 s2Step228ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step228ExitGvAfter [] []=some (s2Step228ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step228ExitGvBefore s2Step228ExitGvAfter s2Step228ExitGvAfter
    s2Step228ExitGvRow s2Step228ExitGvOut 129 [] [] [] []
    (shrinkRow 771 s2Step228ExitGvExtra) ([]) s2Step228ExitGv_Incoming s2Step228ExitGv_checked h4 s2Step228ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step228ExitFvBefore s2Step228ExitFvAfter s2Step228ExitGvAfter
    s2Step228ExitFvRow s2Step228ExitFvOut 129 [] [(s2Step228ExitGvRow,129)] [[]] [s2Step228ExitGvOut]
    (shrinkRow 770 s2Step228ExitFvExtra) ((shrinkRow 771 s2Step228ExitGvExtra ++ [])) s2Step228ExitFv_Incoming s2Step228ExitFv_checked h3 s2Step228ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step228ExitFBefore s2Step228ExitFAfter s2Step228ExitGvAfter
    s2Step228ExitFRow s2Step228ExitFOut 156 [] [(s2Step228ExitFvRow,129),(s2Step228ExitGvRow,129)] [[],[]] [s2Step228ExitFvOut,s2Step228ExitGvOut]
    (shrinkRow 768 s2Step228ExitFExtra) ((shrinkRow 770 s2Step228ExitFvExtra ++ (shrinkRow 771 s2Step228ExitGvExtra ++ []))) s2Step228ExitF_Incoming s2Step228ExitF_checked h2 s2Step228ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step228ExitGBefore s2Step228ExitGAfter s2Step228ExitGvAfter
    s2Step228ExitGRow s2Step228ExitGOut 155 [] [(s2Step228ExitFRow,156),(s2Step228ExitFvRow,129),(s2Step228ExitGvRow,129)] [[],[],[]] [s2Step228ExitFOut,s2Step228ExitFvOut,s2Step228ExitGvOut]
    (shrinkRow 769 s2Step228ExitGExtra) ((shrinkRow 768 s2Step228ExitFExtra ++ (shrinkRow 770 s2Step228ExitFvExtra ++ (shrinkRow 771 s2Step228ExitGvExtra ++ [])))) s2Step228ExitG_Incoming s2Step228ExitG_checked h1 s2Step228ExitG_Outgoing
  exact h0

private theorem s2Step228ExitBank_checked : compileHmrBankResizeLog .exit s2Step228ExitGBefore ⟨s2Step228ExitFRow,s2Step228ExitGRow,s2Step228ExitFvRow,s2Step228ExitGvRow⟩ ⟨156,155,129,129⟩ [[],[],[],[]]=
    some (s2Step228ExitGvAfter,⟨s2Step228ExitFOut,s2Step228ExitGOut,s2Step228ExitFvOut,s2Step228ExitGvOut⟩,(shrinkRow 769 s2Step228ExitGExtra ++ (shrinkRow 768 s2Step228ExitFExtra ++ (shrinkRow 770 s2Step228ExitFvExtra ++ (shrinkRow 771 s2Step228ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step228ExitBank_rows]
  rfl

private theorem s2Step228Add0_apart : Disjoint s2Step228Add0Arena.live s2Step228Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step228Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228Add0_card : s2Step228Add0Arena.live.card=893 := by
  decide +kernel

private theorem s2Step228Add0_borrowed : s2Step228Add0Arena.checkBorrow (hmrHybridCount s2Step228Add0Arena s2Step228Add0B.length) s2Step228Add0Work=some s2Step228Add0During := by
  have len : s2Step228Add0Work.length=hmrHybridCount s2Step228Add0Arena s2Step228Add0B.length := by
    rw [hmrHybridCount,s2Step228Add0_card]
    decide +kernel
  have nd : s2Step228Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step228Add0Arena s2Step228Add0During s2Step228Add0Work.toFinset s2Step228Add0_bounded s2Step228Add0_apart rfl

private theorem s2Step228Add0_distinct : (814::809::882::(s2Step228Add0A++s2Step228Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228Add0_owned : (814::809::882::(s2Step228Add0A++s2Step228Add0B)).toFinset⊆s2Step228Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step228Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228Add0_checked : compileHmrHybridCinLog s2Step228Add0Arena 809 814 882 s2Step228Add0A s2Step228Add0B s2Step228Add0Work=some s2Step228Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step228Add0Arena s2Step228Add0During 809 814 882 s2Step228Add0A s2Step228Add0B s2Step228Add0Work
    (by decide +kernel) (by decide +kernel) s2Step228Add0_distinct
    (fun q hq => s2Step228Add0_owned (List.mem_toFinset.mpr hq)) s2Step228Add0_borrowed

private theorem s2Step228Add1_apart : Disjoint s2Step228Add1Arena.live s2Step228Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step228Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228Add1_card : s2Step228Add1Arena.live.card=893 := by
  decide +kernel

private theorem s2Step228Add1_borrowed : s2Step228Add1Arena.checkBorrow (hmrHybridCount s2Step228Add1Arena s2Step228Add1B.length) s2Step228Add1Work=some s2Step228Add1During := by
  have len : s2Step228Add1Work.length=hmrHybridCount s2Step228Add1Arena s2Step228Add1B.length := by
    rw [hmrHybridCount,s2Step228Add1_card]
    decide +kernel
  have nd : s2Step228Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step228Add1Arena s2Step228Add1During s2Step228Add1Work.toFinset s2Step228Add1_bounded s2Step228Add1_apart rfl

private theorem s2Step228Add1_distinct : (814::809::882::(s2Step228Add1A++s2Step228Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228Add1_owned : (814::809::882::(s2Step228Add1A++s2Step228Add1B)).toFinset⊆s2Step228Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step228Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228Add1_checked : compileHmrHybridCinLog s2Step228Add1Arena 809 814 882 s2Step228Add1A s2Step228Add1B s2Step228Add1Work=some s2Step228Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step228Add1Arena s2Step228Add1During 809 814 882 s2Step228Add1A s2Step228Add1B s2Step228Add1Work
    (by decide +kernel) (by decide +kernel) s2Step228Add1_distinct
    (fun q hq => s2Step228Add1_owned (List.mem_toFinset.mpr hq)) s2Step228Add1_borrowed

private theorem s2Step228F4_apart : Disjoint (s2Step228Add0A++s2Step228Add0B).toFinset (s2Step228Add1A++s2Step228Add1B).toFinset := by
  have nd : ((s2Step228Add0A++s2Step228Add0B)++(s2Step228Add1A++s2Step228Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step228F4_carry : s2Step228F4FlagArena.checkBorrow 1 [882]=some s2Step228Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step228F4FlagArena,s2Step228HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step228F4FlagArena,s2Step228HeadFvAfter,s2Step228Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step228F4_distinct : (810::809::814::882::((s2Step228Add0A++s2Step228Add1A)++(s2Step228Add0B++s2Step228Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228F4_flag : s2Step228HeadFvAfter.checkBorrow 1 [814]=some s2Step228F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step228HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step228F4_owned : (810::809::((s2Step228Add0A++s2Step228Add1A)++(s2Step228Add0B++s2Step228Add1B))).toFinset⊆s2Step228HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step228HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228F4_checked : compileHmrHybridF4Log s2Step228HeadFvAfter 810 809 s2Step228Add0A s2Step228Add0B s2Step228Add1A s2Step228Add1B [814] [882] s2Step228Add0Work s2Step228Add1Work=some s2Step228F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step228HeadFvAfter s2Step228F4FlagArena s2Step228Add0Arena s2Step228Add0During s2Step228Add1During 810 809
    s2Step228Add0A s2Step228Add0B s2Step228Add1A s2Step228Add1B [814] [882] s2Step228Add0Work s2Step228Add1Work
    (fun q hq => s2Step228F4_owned (List.mem_toFinset.mpr hq)) s2Step228F4_flag s2Step228F4_carry
    s2Step228F4_distinct s2Step228F4_apart s2Step228Add0_checked s2Step228Add1_checked

private theorem s2Step228Front_branch : s2Step228FrontSigmaArena.checkBorrow 1 [809]=some s2Step228HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step228FrontSigmaArena,s2Step228EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step228FrontSigmaArena,s2Step228EntryGvAfter,s2Step228HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step228Front_entry : HmrFrontEntryValid s2Step228EntryFBefore s2Step228FrontBank 156 129 ⟨156,155,129,129⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step228FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step228EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step228EntryFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step228FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step228Front_sigma : s2Step228EntryGvAfter.checkBorrow 1 [810]=some s2Step228FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step228EntryGvAfter,arenaWires]
  · rfl

private def s2Step228HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228HeadFBefore : Arena := s2Step228HeadGAfter

private def s2Step228HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667],768⟩

private def s2Step228HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811],770⟩

private def s2Step228HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],769⟩

private def s2Step228HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808],771⟩

private theorem s2Step228HeadBank_incomingDistinct : ([s2Step228HeadGRow,s2Step228HeadFRow,s2Step228HeadGvRow,s2Step228HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228HeadF_Incoming : rowsOwned s2Step228HeadFBefore [s2Step228HeadFRow,s2Step228HeadGvRow,s2Step228HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228HeadGRow,s2Step228HeadFRow,s2Step228HeadGvRow,s2Step228HeadFvRow] 1 s2Step228HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228HeadBank_outgoingOwned : rowsOwned s2Step228HeadFvAfter [s2Step228HeadGOut,s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step228HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228HeadF_Outgoing : rowsOwned s2Step228HeadFvAfter [s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut] :=
  hmrRows_owned_drop s2Step228HeadFvAfter [s2Step228HeadGOut,s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut] 1 s2Step228HeadBank_outgoingOwned

private theorem s2Step228HeadF_distinct : (s2Step228HeadFRow.sign::s2Step228HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228HeadF_owned : (s2Step228HeadFRow.sign::s2Step228HeadFRow.payload).toFinset⊆s2Step228HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228HeadF_reserved : s2Step228HeadFBefore.reserve s2Step228HeadFFresh.toFinset=some s2Step228HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step228HeadFFresh,arenaWires]
  · norm_num [s2Step228HeadFBefore,s2Step228HeadGAfter,s2Step228HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step228HeadFAfter,s2Step228HeadFBefore,s2Step228HeadGAfter,s2Step228HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step228HeadF_checked : planRowResizeLog s2Step228HeadFBefore s2Step228HeadFRow 157 s2Step228HeadFFresh=
    some (s2Step228HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 800],768⟩,growRow 768 s2Step228HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step228HeadFBefore s2Step228HeadFAfter s2Step228HeadFRow 157 s2Step228HeadFFresh
    s2Step228HeadF_distinct s2Step228HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step228HeadF_reserved
  have rowEq : WindowRow.mk (s2Step228HeadFRow.payload++s2Step228HeadFFresh) s2Step228HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 800],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step228HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step228HeadFvBefore : Arena := s2Step228HeadGvAfter

private theorem s2Step228HeadFv_Incoming : rowsOwned s2Step228HeadFvBefore [s2Step228HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228HeadGRow,s2Step228HeadFRow,s2Step228HeadGvRow,s2Step228HeadFvRow] 3 s2Step228HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228HeadFvBefore (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228HeadFv_Outgoing : rowsOwned s2Step228HeadFvAfter [s2Step228HeadFvOut] :=
  hmrRows_owned_drop s2Step228HeadFvAfter [s2Step228HeadGOut,s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut] 3 s2Step228HeadBank_outgoingOwned

private theorem s2Step228HeadFv_distinct : (s2Step228HeadFvRow.sign::s2Step228HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228HeadFv_owned : (s2Step228HeadFvRow.sign::s2Step228HeadFvRow.payload).toFinset⊆s2Step228HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228HeadFvBefore (fun q => (0≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228HeadFv_reserved : s2Step228HeadFvBefore.reserve s2Step228HeadFvFresh.toFinset=some s2Step228HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step228HeadFvFresh,arenaWires]
  · norm_num [s2Step228HeadFvBefore,s2Step228HeadGvAfter,s2Step228HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step228HeadFvAfter,s2Step228HeadFvBefore,s2Step228HeadGvAfter,s2Step228HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step228HeadFv_checked : planRowResizeLog s2Step228HeadFvBefore s2Step228HeadFvRow 130 s2Step228HeadFvFresh=
    some (s2Step228HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩,growRow 770 s2Step228HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step228HeadFvBefore s2Step228HeadFvAfter s2Step228HeadFvRow 130 s2Step228HeadFvFresh
    s2Step228HeadFv_distinct s2Step228HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step228HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step228HeadFvRow.payload++s2Step228HeadFvFresh) s2Step228HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step228HeadG_Incoming : rowsOwned s2Step228HeadGBefore [s2Step228HeadGRow,s2Step228HeadFRow,s2Step228HeadGvRow,s2Step228HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228HeadGRow,s2Step228HeadFRow,s2Step228HeadGvRow,s2Step228HeadFvRow] 0 s2Step228HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228HeadG_Outgoing : rowsOwned s2Step228HeadFvAfter [s2Step228HeadGOut,s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut] :=
  hmrRows_owned_drop s2Step228HeadFvAfter [s2Step228HeadGOut,s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut] 0 s2Step228HeadBank_outgoingOwned

private theorem s2Step228HeadG_distinct : (s2Step228HeadGRow.sign::s2Step228HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228HeadG_owned : (s2Step228HeadGRow.sign::s2Step228HeadGRow.payload).toFinset⊆s2Step228HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228HeadG_reserved : s2Step228HeadGBefore.reserve s2Step228HeadGFresh.toFinset=some s2Step228HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step228HeadGFresh,arenaWires]
  · norm_num [s2Step228HeadGBefore,s2Step228HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step228HeadGAfter,s2Step228HeadGBefore,s2Step228HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step228HeadG_checked : planRowResizeLog s2Step228HeadGBefore s2Step228HeadGRow 157 s2Step228HeadGFresh=
    some (s2Step228HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 849],769⟩,growRow 769 s2Step228HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step228HeadGBefore s2Step228HeadGAfter s2Step228HeadGRow 157 s2Step228HeadGFresh
    s2Step228HeadG_distinct s2Step228HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step228HeadG_reserved
  have rowEq : WindowRow.mk (s2Step228HeadGRow.payload++s2Step228HeadGFresh) s2Step228HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step228HeadGvBefore : Arena := s2Step228HeadFAfter

private theorem s2Step228HeadGv_Incoming : rowsOwned s2Step228HeadGvBefore [s2Step228HeadGvRow,s2Step228HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step228HeadGRow,s2Step228HeadFRow,s2Step228HeadGvRow,s2Step228HeadFvRow] 2 s2Step228HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step228HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step228HeadGv_Outgoing : rowsOwned s2Step228HeadFvAfter [s2Step228HeadGvOut,s2Step228HeadFvOut] :=
  hmrRows_owned_drop s2Step228HeadFvAfter [s2Step228HeadGOut,s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut] 2 s2Step228HeadBank_outgoingOwned

private theorem s2Step228HeadGv_distinct : (s2Step228HeadGvRow.sign::s2Step228HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step228HeadGv_owned : (s2Step228HeadGvRow.sign::s2Step228HeadGvRow.payload).toFinset⊆s2Step228HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step228HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<804) ∨ (805≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step228HeadGv_reserved : s2Step228HeadGvBefore.reserve s2Step228HeadGvFresh.toFinset=some s2Step228HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step228HeadGvFresh,arenaWires]
  · norm_num [s2Step228HeadGvBefore,s2Step228HeadFAfter,s2Step228HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step228HeadGvAfter,s2Step228HeadGvBefore,s2Step228HeadFAfter,s2Step228HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step228HeadGv_checked : planRowResizeLog s2Step228HeadGvBefore s2Step228HeadGvRow 130 s2Step228HeadGvFresh=
    some (s2Step228HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 797],771⟩,growRow 771 s2Step228HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step228HeadGvBefore s2Step228HeadGvAfter s2Step228HeadGvRow 130 s2Step228HeadGvFresh
    s2Step228HeadGv_distinct s2Step228HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step228HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step228HeadGvRow.payload++s2Step228HeadGvFresh) s2Step228HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step228HeadBank_rows : planWindowRowsLog s2Step228HeadGBefore [(s2Step228HeadGRow,157),(s2Step228HeadFRow,157),(s2Step228HeadGvRow,130),(s2Step228HeadFvRow,130)] [s2Step228HeadGFresh,s2Step228HeadFFresh,s2Step228HeadGvFresh,s2Step228HeadFvFresh]=
    some (s2Step228HeadFvAfter,[s2Step228HeadGOut,s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut],(growRow 769 s2Step228HeadGFresh ++ (growRow 768 s2Step228HeadFFresh ++ (growRow 771 s2Step228HeadGvFresh ++ (growRow 770 s2Step228HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step228HeadFvAfter [] []=some (s2Step228HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step228HeadFvBefore s2Step228HeadFvAfter s2Step228HeadFvAfter
    s2Step228HeadFvRow s2Step228HeadFvOut 130 s2Step228HeadFvFresh [] [] []
    (growRow 770 s2Step228HeadFvFresh) ([]) s2Step228HeadFv_Incoming s2Step228HeadFv_checked h4 s2Step228HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step228HeadGvBefore s2Step228HeadGvAfter s2Step228HeadFvAfter
    s2Step228HeadGvRow s2Step228HeadGvOut 130 s2Step228HeadGvFresh [(s2Step228HeadFvRow,130)] [s2Step228HeadFvFresh] [s2Step228HeadFvOut]
    (growRow 771 s2Step228HeadGvFresh) ((growRow 770 s2Step228HeadFvFresh ++ [])) s2Step228HeadGv_Incoming s2Step228HeadGv_checked h3 s2Step228HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step228HeadFBefore s2Step228HeadFAfter s2Step228HeadFvAfter
    s2Step228HeadFRow s2Step228HeadFOut 157 s2Step228HeadFFresh [(s2Step228HeadGvRow,130),(s2Step228HeadFvRow,130)] [s2Step228HeadGvFresh,s2Step228HeadFvFresh] [s2Step228HeadGvOut,s2Step228HeadFvOut]
    (growRow 768 s2Step228HeadFFresh) ((growRow 771 s2Step228HeadGvFresh ++ (growRow 770 s2Step228HeadFvFresh ++ []))) s2Step228HeadF_Incoming s2Step228HeadF_checked h2 s2Step228HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step228HeadGBefore s2Step228HeadGAfter s2Step228HeadFvAfter
    s2Step228HeadGRow s2Step228HeadGOut 157 s2Step228HeadGFresh [(s2Step228HeadFRow,157),(s2Step228HeadGvRow,130),(s2Step228HeadFvRow,130)] [s2Step228HeadFFresh,s2Step228HeadGvFresh,s2Step228HeadFvFresh] [s2Step228HeadFOut,s2Step228HeadGvOut,s2Step228HeadFvOut]
    (growRow 769 s2Step228HeadGFresh) ((growRow 768 s2Step228HeadFFresh ++ (growRow 771 s2Step228HeadGvFresh ++ (growRow 770 s2Step228HeadFvFresh ++ [])))) s2Step228HeadG_Incoming s2Step228HeadG_checked h1 s2Step228HeadG_Outgoing
  exact h0

private theorem s2Step228HeadBank_checked : compileHmrBankResizeLog .headroom s2Step228HeadGBefore ⟨s2Step228HeadFRow,s2Step228HeadGRow,s2Step228HeadFvRow,s2Step228HeadGvRow⟩ ⟨157,157,130,130⟩ [s2Step228HeadGFresh,s2Step228HeadFFresh,s2Step228HeadGvFresh,s2Step228HeadFvFresh]=
    some (s2Step228HeadFvAfter,⟨s2Step228HeadFOut,s2Step228HeadGOut,s2Step228HeadFvOut,s2Step228HeadGvOut⟩,(growRow 769 s2Step228HeadGFresh ++ (growRow 768 s2Step228HeadFFresh ++ (growRow 771 s2Step228HeadGvFresh ++ (growRow 770 s2Step228HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step228HeadBank_rows]
  rfl

private theorem s2Step228Front_checked : compileHmrSourceFrontLog s2Step228EntryFBefore s2Step228FrontBank 156 129 ⟨156,155,129,129⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step228FrontLog=some s2Step228FrontPlan := by
  have pairEq : s2Step228FrontPair=⟨s2Step228HeadFRow,s2Step228HeadGRow,s2Step228HeadFvRow,s2Step228HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step228FrontHead=⟨s2Step228ExitFRow,s2Step228ExitGRow,s2Step228ExitFvRow,s2Step228ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step228Add0A=s2Step228FrontHead.f.wires := by decide +kernel
  have gEq : s2Step228Add0B=s2Step228FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step228Add1A=s2Step228FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step228Add1B=s2Step228FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step228EntryFBefore s2Step228FrontBank 156 129 ⟨156,155,129,129⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step228FrontLog s2Step228FrontPlan
  · exact s2Step228Front_entry
  · exact s2Step228EntryBank_checked
  · exact s2Step228Front_sigma
  · rfl
  · exact s2Step228Front_branch
  · rfl
  · simpa only [s2Step228FrontPlan,pairEq] using s2Step228HeadBank_checked
  · simpa only [s2Step228FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step228F4_checked
  · exact s2Step228Counter_checked
  · rfl
  · simpa only [s2Step228FrontPlan,headEq] using s2Step228ExitBank_checked

private theorem s2Step228Complete_explicit_checked : compileHmrEarlyStepLog s2Step228EntryFBefore s2Step228FrontBank 156 129 ⟨156,155,129,129⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step228CompleteLog=some s2Step228CompletePlan := by
  let Q := s2Step228EarlyControlPlan
  have hq := s2Step228EarlyControl_plan_checked
  have fv1 : s2Step228CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step228CompleteOut.fv.payload[2]?.getD s2Step228CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step228CompleteOut.fv.payload[3]?.getD s2Step228CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step228CompleteOut.fv.payload[4]?.getD s2Step228CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step228EntryFBefore s2Step228EarlyControlArena s2Step228FrontBank 156 129 ⟨156,155,129,129⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step228CompleteLog s2Step228FrontPlan Q
    s2Step228Front_checked s2Step228Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step228Complete_owned s2Step228Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step228EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 810 s2Step228CompleteOut.fv.second (s2Step228CompleteOut.fv.payload[2]?.getD s2Step228CompleteOut.fv.sign) (s2Step228CompleteOut.fv.payload[3]?.getD s2Step228CompleteOut.fv.sign) (s2Step228CompleteOut.fv.payload[4]?.getD s2Step228CompleteOut.fv.sign) 809 49 s2Step228EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep228Arena : Arena := s2Step228EntryFBefore
def s2PrivateStep228Bank : WindowBank := s2Step228FrontBank
def s2PrivateStep228Spec : HmrSourceWalkStepLog := ⟨156,129,⟨156,155,129,129⟩,49,.early s2Step228CompleteLog⟩
def s2PrivateStep228Plan : HmrSourceStepPlan := .early s2Step228CompletePlan
theorem s2PrivateStep228_source : s2PrivateStep228Spec=s2ObservedLogs224[4] := rfl
theorem s2PrivateStep228_checked : compileHmrSourceStepLog s2PrivateStep228Arena s2PrivateStep228Bank
    s2PrivateStep228Spec.fgWidth s2PrivateStep228Spec.vWidth s2PrivateStep228Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 228 s2PrivateStep228Spec.need none s2PrivateStep228Spec.log=some s2PrivateStep228Plan := by
  change compileHmrSourceStepLog s2Step228EntryFBefore s2Step228FrontBank 156 129 ⟨156,155,129,129⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 228 49 none (.early s2Step228CompleteLog)=some (.early s2Step228CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 228<498)]
  rw [s2Step228Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
