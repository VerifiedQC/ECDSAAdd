import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep224
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

private def s2Step226CompleteMoves : List (Wire × Wire) := [(810,156)]

private def s2Step226EarlyControlLog : HmrEarlyControlLog := ⟨[810, 808, 804, 800, 849],[811],[814],[882, 826, 842, 885, 891, 894],[895]⟩

private def s2Step226FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[800], [804], [808], [790]],[[], [], [], []]⟩,[812],[797],[849],[811],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 811, 814, 882]⟩

private def s2Step226CompleteLog : HmrEarlyStepLog := ⟨s2Step226FrontLog,s2Step226CompleteMoves,s2Step226EarlyControlLog⟩

private def s2Step226ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩

private def s2Step226ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩

private def s2Step226ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155],769⟩

private def s2Step226ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step226FrontOut : WindowBank := ⟨s2Step226ExitFOut,s2Step226ExitGOut,s2Step226ExitFvOut,s2Step226ExitGvOut⟩

private def s2Step226CompleteOut : WindowBank := s2Step226FrontOut.repacked s2Step226CompleteMoves

private def s2Step226EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step226EarlyControlPositiveArena,[811],s2Step226EarlyControlEqualityArena,[814],⟨⟨812,false⟩,[⟨⟨811,false⟩,814⟩]⟩⟩

private def s2Step226EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,810⟩,⟨⟨774,false⟩,808⟩,⟨⟨775,false⟩,804⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,849⟩]⟩

private def s2Step226EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step226EarlyControlZeroArena,s2Step226EarlyControlZeroPlan,s2Step226EarlyControlClassPlan,s2Step226EarlyControlFlagArena,s2Step226EarlyControlFittedArena,s2Step226EarlyControlHistoryArena,s2Step226EarlyControlSigmaArena,s2Step226EarlyControlOutputArena,s2Step226EarlyControlLog⟩

private def s2Step226CounterWork : List Wire := [849, 811, 814, 882]

private theorem s2Step226Counter_bounded : s2Step226CounterWork.toFinset⊆arenaWires := by norm_num [s2Step226CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step226HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226CounterDuring : Arena := ⟨s2Step226HeadFvAfter.live∪s2Step226CounterWork.toFinset,Finset.union_subset s2Step226HeadFvAfter.bounded s2Step226Counter_bounded⟩

private def s2Step226EntryFFresh : List Wire := []

private def s2Step226EntryFvFresh : List Wire := []

private def s2Step226EntryGFresh : List Wire := []

private def s2Step226EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226EntryGvAfter : Arena := s2Step226EntryFBefore

private def s2Step226EntryGvFresh : List Wire := []

private def s2Step226ExitFExtra : List Wire := [804]

private def s2Step226ExitGExtra : List Wire := [156, 800]

private def s2Step226ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226ExitGvExtra : List Wire := [808]

private def s2Step226Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226Add0Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step226Add0_bounded : s2Step226Add0Work.toFinset⊆arenaWires := by
  have h : s2Step226Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step226Add0During : Arena := ⟨s2Step226Add0Arena.live∪s2Step226Add0Work.toFinset,Finset.union_subset s2Step226Add0Arena.bounded s2Step226Add0_bounded⟩

private def s2Step226Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226Add1Work : List Wire := [814, 882, 826, 842, 885, 891, 894, 895, 896, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step226Add1_bounded : s2Step226Add1Work.toFinset⊆arenaWires := by
  have h : s2Step226Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step226Add1During : Arena := ⟨s2Step226Add1Arena.live∪s2Step226Add1Work.toFinset,Finset.union_subset s2Step226Add1Arena.bounded s2Step226Add1_bounded⟩

private def s2Step226F4FlagArena : Arena := ⟨s2Step226HeadFvAfter.live∪{849},Finset.union_subset s2Step226HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step226F4Plan : HmrHybridF4Plan := ⟨s2Step226F4FlagArena,[849],s2Step226Add0Arena,[811],s2Step226Add0During,s2Step226Add0Work,s2Step226Add1During,s2Step226Add1Work⟩

private def s2Step226HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 804],768⟩

private def s2Step226HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩

private def s2Step226HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 800],769⟩

private def s2Step226HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 808],771⟩

private def s2Step226FrontHead : WindowBank := ⟨s2Step226HeadFOut,s2Step226HeadGOut,s2Step226HeadFvOut,s2Step226HeadGvOut⟩

private def s2Step226EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩

private def s2Step226EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step226EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],769⟩

private def s2Step226EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step226FrontPair : WindowBank := ⟨s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut⟩

private def s2Step226FrontSigmaArena : Arena := ⟨s2Step226EntryGvAfter.live∪{812},Finset.union_subset s2Step226EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step226HeadFFresh : List Wire := [804]

private def s2Step226HeadFvFresh : List Wire := [790]

private def s2Step226HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226HeadGFresh : List Wire := [800]

private def s2Step226HeadGvFresh : List Wire := [808]

private def s2Step226FrontPlan : HmrSourceFront := ⟨s2Step226EntryGvAfter,s2Step226FrontPair,(growRow 768 s2Step226EntryFFresh ++ (growRow 769 s2Step226EntryGFresh ++ (growRow 770 s2Step226EntryFvFresh ++ (growRow 771 s2Step226EntryGvFresh ++ [])))),s2Step226FrontSigmaArena,[812],s2Step226HeadGBefore,[797],
  s2Step226HeadFvAfter,s2Step226FrontHead,(growRow 769 s2Step226HeadGFresh ++ (growRow 768 s2Step226HeadFFresh ++ (growRow 771 s2Step226HeadGvFresh ++ (growRow 770 s2Step226HeadFvFresh ++ [])))),s2Step226F4Plan,s2Step226CounterDuring,s2Step226CounterWork,s2Step226ExitGvAfter,s2Step226FrontOut,(shrinkRow 769 s2Step226ExitGExtra ++ (shrinkRow 768 s2Step226ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step226ExitGvExtra ++ []))))⟩

private def s2Step226CompletePlan : HmrEarlyStepPlan := ⟨s2Step226FrontPlan,s2Step226EarlyControlArena,s2Step226EarlyControlPlan,s2Step226CompleteMoves⟩

private theorem s2Step226Complete_apart : List.Disjoint (s2Step226CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [812, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] := by
  have nd : ((s2Step226CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[812, 797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step226Complete_owned : (s2Step226CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private def s2Step226CompleteMoveArena : Arena := ⟨s2Step226ExitGvAfter.live∪{156},Finset.union_subset s2Step226ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step226Complete_repack : s2Step226ExitGvAfter.checkRepack s2Step226CompleteMoves=some s2Step226EarlyControlArena := by
  have owned : 810∈s2Step226ExitGvAfter.live := by norm_num [s2Step226ExitGvAfter,arenaWires]
  have reserve : s2Step226ExitGvAfter.reserve {156}=some s2Step226CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step226ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step226CompleteMoveArena.retireSet {810}=s2Step226EarlyControlArena := by
    unfold Arena.retireSet s2Step226EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step226CompleteMoveArena,s2Step226ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step226CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step226CompleteMoveArena.retireSet {810}).checkRepack []=some s2Step226EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step226EarlyControl_branchOwned : ([797] : List Wire).toFinset⊆s2Step226EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlSigmaArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_branch : compileHmrBranchRetirement s2Step226EarlyControlSigmaArena 797=some s2Step226EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step226EarlyControl_branchOwned
  · ext q
    simp [s2Step226EarlyControlOutputArena,s2Step226EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step226EarlyControl_classEqualityBorrow : s2Step226EarlyControlPositiveArena.checkBorrow (([812, 811] : List Wire).length-1) s2Step226EarlyControlLog.classWork=some s2Step226EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step226EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step226EarlyControlEqualityArena,s2Step226EarlyControlPositiveArena,s2Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step226EarlyControl_classEqualityOwned : ([812, 811] : List Wire).toFinset⊆s2Step226EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlPositiveArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_classEquality : compileHmrEqualityLog s2Step226EarlyControlPositiveArena [812, 811] 0 s2Step226EarlyControlLog.classWork=some (s2Step226EarlyControlEqualityArena,s2Step226EarlyControlLog.classWork,s2Step226EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step226EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step226EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step226EarlyControl_classOwned : ([777, 849, 812] : List Wire).toFinset⊆s2Step226EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlZeroArena (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_positiveBorrow : s2Step226EarlyControlZeroArena.checkBorrow (1) s2Step226EarlyControlLog.positiveWork=some s2Step226EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step226EarlyControlZeroArena (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step226EarlyControlPositiveArena,s2Step226EarlyControlZeroArena,s2Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step226EarlyControl_class : compileHmrSourceClassLog s2Step226EarlyControlZeroArena false 777 s2Step226EarlyControlZeroPlan.top 0 812 s2Step226EarlyControlLog.positiveWork s2Step226EarlyControlLog.classWork=some s2Step226EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step226EarlyControlClassPlan s2Step226EarlyControlZeroArena false 777 s2Step226EarlyControlZeroPlan.top 0 812
  constructor
  · decide +kernel
  · exact s2Step226EarlyControl_classOwned
  · exact s2Step226EarlyControl_positiveBorrow
  · exact s2Step226EarlyControl_classEquality

private theorem s2Step226EarlyControl_entryRecordOwned : ([797, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_entrySigmaOwned : ([812, 254] : List Wire).toFinset⊆s2Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_fitBorrow : s2Step226EarlyControlFlagArena.checkBorrow ((48-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step226EarlyControlLog.recordFresh=some s2Step226EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step226EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step226EarlyControlFittedArena,s2Step226EarlyControlFlagArena,s2Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step226EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step226EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlFlagArena (fun q => (0≤q ∧ q<895) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_fit : compileHmrRecordGrowLog s2Step226EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 48 s2Step226EarlyControlLog.recordFresh=some s2Step226EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step226EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step226EarlyControl_fitBorrow

private theorem s2Step226EarlyControl_flagsBorrow : s2Step226EarlyControlEqualityArena.checkBorrow (6) s2Step226EarlyControlLog.flagWork=some s2Step226EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step226EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step226EarlyControlFlagArena,s2Step226EarlyControlEqualityArena,s2Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step226EarlyControl_flagsOwned : ([814, 253, 252, 251] : List Wire).toFinset⊆s2Step226EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_flags : compileHmrFlagsLog s2Step226EarlyControlClassPlan.equalityArena s2Step226EarlyControlClassPlan.equality.top 253 252 251 s2Step226EarlyControlLog.flagWork=some s2Step226EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step226EarlyControl_flagsOwned⟩
  · exact s2Step226EarlyControl_flagsBorrow

private theorem s2Step226EarlyControl_historyBorrow : s2Step226EarlyControlArena.checkBorrow ((48-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).length)) s2Step226EarlyControlLog.recordFresh=some s2Step226EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step226EarlyControlArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step226EarlyControlHistoryArena,s2Step226EarlyControlArena,s2Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step226EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] : List Wire).toFinset⊆s2Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_history : compileHmrRecordGrowLog s2Step226EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 48 s2Step226EarlyControlLog.recordFresh=some s2Step226EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step226EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step226EarlyControl_historyBorrow

private theorem s2Step226EarlyControl_sigmaOwned : ([254, 812] : List Wire).toFinset⊆s2Step226EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlHistoryArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_sigmaReleaseOwned : ([812] : List Wire).toFinset⊆s2Step226EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlHistoryArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_sigmaRelease : s2Step226EarlyControlHistoryArena.release {812} (fun _ => false)=some s2Step226EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step226EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step226EarlyControlSigmaArena,s2Step226EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step226EarlyControl_sigma : compileHmrSigmaDropLog s2Step226EarlyControlHistoryArena false 0 0 254 812 []=some s2Step226EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step226EarlyControl_sigmaOwned⟩
  · exact s2Step226EarlyControl_sigmaRelease

private theorem s2Step226EarlyControl_zeroBorrow : s2Step226EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step226EarlyControlLog.zeroWork=some s2Step226EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step226EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step226EarlyControlArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
      decide +kernel
    · ext q
      simp [s2Step226EarlyControlZeroArena,s2Step226EarlyControlArena,s2Step226EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step226EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step226EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step226EarlyControlArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<810) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EarlyControl_zero : compileHmrEqualityLog s2Step226EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step226EarlyControlLog.zeroWork=some (s2Step226EarlyControlZeroArena,s2Step226EarlyControlLog.zeroWork,s2Step226EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step226EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step226EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step226EarlyControl_logged : s2Step226EarlyControlPlan.Logged s2Step226EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 812 254 253 252 251 797 48 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step226EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step226EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step226EarlyControl_zero
  · exact s2Step226EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step226EarlyControl_flags
  · exact s2Step226EarlyControl_fit
  · exact s2Step226EarlyControl_history
  · exact s2Step226EarlyControl_sigma
  · exact s2Step226EarlyControl_branch

private theorem s2Step226EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step226EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 812 254 253 252 251 797 48 s2Step226EarlyControlLog=some s2Step226EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step226EarlyControlPlan s2Step226EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 812 254 253 252 251 797 48 s2Step226EarlyControl_logged

private def s2Step226EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩

private def s2Step226EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step226EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],769⟩

private def s2Step226EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private def s2Step226FrontBank : WindowBank := ⟨s2Step226EntryFRow,s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow⟩

private def s2Step226Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 804, 768]

private def s2Step226Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 800, 769]

private def s2Step226Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 770]

private def s2Step226Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 808, 771]

private theorem s2Step226Counter_apart : Disjoint s2Step226HeadFvAfter.live s2Step226CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step226HeadFvAfter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226Counter_borrowed : s2Step226HeadFvAfter.checkBorrow 4 s2Step226CounterWork=some s2Step226CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step226HeadFvAfter s2Step226CounterDuring s2Step226CounterWork.toFinset s2Step226Counter_bounded s2Step226Counter_apart rfl

private theorem s2Step226Counter_owned : (812::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step226HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step226HeadFvAfter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226Counter_checked : compileHmrCounterStepLog s2Step226HeadFvAfter true 812 [772, 773, 774, 775, 776, 777] s2Step226CounterWork=some s2Step226CounterDuring := by
  have owned : ∀q∈812::[772, 773, 774, 775, 776, 777],q∈s2Step226HeadFvAfter.live := fun q hq => s2Step226Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step226Counter_borrowed

private def s2Step226EntryFAfter : Arena := s2Step226EntryFBefore

private theorem s2Step226EntryBank_incomingDistinct : ([s2Step226EntryFRow,s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226EntryF_Incoming : rowsOwned s2Step226EntryFBefore [s2Step226EntryFRow,s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226EntryFRow,s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow] 0 s2Step226EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226EntryBank_outgoingOwned : rowsOwned s2Step226EntryGvAfter [s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step226EntryGvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226EntryF_Outgoing : rowsOwned s2Step226EntryGvAfter [s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut] :=
  hmrRows_owned_drop s2Step226EntryGvAfter [s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut] 0 s2Step226EntryBank_outgoingOwned

private theorem s2Step226EntryF_distinct : (s2Step226EntryFRow.sign::s2Step226EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226EntryF_owned : (s2Step226EntryFRow.sign::s2Step226EntryFRow.payload).toFinset⊆s2Step226EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EntryF_reserved : s2Step226EntryFBefore.reserve s2Step226EntryFFresh.toFinset=some s2Step226EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step226EntryFFresh,arenaWires]
  · norm_num [s2Step226EntryFBefore,s2Step226EntryFFresh,arenaWires]
  · simp only [s2Step226EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step226EntryF_checked : planRowResizeLog s2Step226EntryFBefore s2Step226EntryFRow 157 s2Step226EntryFFresh=
    some (s2Step226EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩,growRow 768 s2Step226EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step226EntryFBefore s2Step226EntryFAfter s2Step226EntryFRow 157 s2Step226EntryFFresh
    s2Step226EntryF_distinct s2Step226EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226EntryF_reserved
  have rowEq : WindowRow.mk (s2Step226EntryFRow.payload++s2Step226EntryFFresh) s2Step226EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step226EntryFvAfter : Arena := s2Step226EntryFBefore

private def s2Step226EntryFvBefore : Arena := s2Step226EntryFBefore

private theorem s2Step226EntryFv_Incoming : rowsOwned s2Step226EntryFvBefore [s2Step226EntryFvRow,s2Step226EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226EntryFRow,s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow] 2 s2Step226EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226EntryFv_Outgoing : rowsOwned s2Step226EntryGvAfter [s2Step226EntryFvOut,s2Step226EntryGvOut] :=
  hmrRows_owned_drop s2Step226EntryGvAfter [s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut] 2 s2Step226EntryBank_outgoingOwned

private theorem s2Step226EntryFv_distinct : (s2Step226EntryFvRow.sign::s2Step226EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226EntryFv_owned : (s2Step226EntryFvRow.sign::s2Step226EntryFvRow.payload).toFinset⊆s2Step226EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226EntryFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EntryFv_reserved : s2Step226EntryFvBefore.reserve s2Step226EntryFvFresh.toFinset=some s2Step226EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step226EntryFvFresh,arenaWires]
  · norm_num [s2Step226EntryFvBefore,s2Step226EntryFBefore,s2Step226EntryFvFresh,arenaWires]
  · simp only [s2Step226EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step226EntryFv_checked : planRowResizeLog s2Step226EntryFvBefore s2Step226EntryFvRow 127 s2Step226EntryFvFresh=
    some (s2Step226EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩,growRow 770 s2Step226EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step226EntryFvBefore s2Step226EntryFvAfter s2Step226EntryFvRow 127 s2Step226EntryFvFresh
    s2Step226EntryFv_distinct s2Step226EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step226EntryFvRow.payload++s2Step226EntryFvFresh) s2Step226EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step226EntryGAfter : Arena := s2Step226EntryFBefore

private def s2Step226EntryGBefore : Arena := s2Step226EntryFBefore

private theorem s2Step226EntryG_Incoming : rowsOwned s2Step226EntryGBefore [s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226EntryFRow,s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow] 1 s2Step226EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226EntryG_Outgoing : rowsOwned s2Step226EntryGvAfter [s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut] :=
  hmrRows_owned_drop s2Step226EntryGvAfter [s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut] 1 s2Step226EntryBank_outgoingOwned

private theorem s2Step226EntryG_distinct : (s2Step226EntryGRow.sign::s2Step226EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226EntryG_owned : (s2Step226EntryGRow.sign::s2Step226EntryGRow.payload).toFinset⊆s2Step226EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226EntryGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EntryG_reserved : s2Step226EntryGBefore.reserve s2Step226EntryGFresh.toFinset=some s2Step226EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step226EntryGFresh,arenaWires]
  · norm_num [s2Step226EntryGBefore,s2Step226EntryFBefore,s2Step226EntryGFresh,arenaWires]
  · simp only [s2Step226EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step226EntryG_checked : planRowResizeLog s2Step226EntryGBefore s2Step226EntryGRow 157 s2Step226EntryGFresh=
    some (s2Step226EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],769⟩,growRow 769 s2Step226EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step226EntryGBefore s2Step226EntryGAfter s2Step226EntryGRow 157 s2Step226EntryGFresh
    s2Step226EntryG_distinct s2Step226EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226EntryG_reserved
  have rowEq : WindowRow.mk (s2Step226EntryGRow.payload++s2Step226EntryGFresh) s2Step226EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step226EntryGvBefore : Arena := s2Step226EntryFBefore

private theorem s2Step226EntryGv_Incoming : rowsOwned s2Step226EntryGvBefore [s2Step226EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226EntryFRow,s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow] 3 s2Step226EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226EntryGv_Outgoing : rowsOwned s2Step226EntryGvAfter [s2Step226EntryGvOut] :=
  hmrRows_owned_drop s2Step226EntryGvAfter [s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut] 3 s2Step226EntryBank_outgoingOwned

private theorem s2Step226EntryGv_distinct : (s2Step226EntryGvRow.sign::s2Step226EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226EntryGv_owned : (s2Step226EntryGvRow.sign::s2Step226EntryGvRow.payload).toFinset⊆s2Step226EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226EntryGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226EntryGv_reserved : s2Step226EntryGvBefore.reserve s2Step226EntryGvFresh.toFinset=some s2Step226EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step226EntryGvFresh,arenaWires]
  · norm_num [s2Step226EntryGvBefore,s2Step226EntryFBefore,s2Step226EntryGvFresh,arenaWires]
  · simp only [s2Step226EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step226EntryGv_checked : planRowResizeLog s2Step226EntryGvBefore s2Step226EntryGvRow 127 s2Step226EntryGvFresh=
    some (s2Step226EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩,growRow 771 s2Step226EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step226EntryGvBefore s2Step226EntryGvAfter s2Step226EntryGvRow 127 s2Step226EntryGvFresh
    s2Step226EntryGv_distinct s2Step226EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step226EntryGvRow.payload++s2Step226EntryGvFresh) s2Step226EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step226EntryBank_rows : planWindowRowsLog s2Step226EntryFBefore [(s2Step226EntryFRow,157),(s2Step226EntryGRow,157),(s2Step226EntryFvRow,127),(s2Step226EntryGvRow,127)] [s2Step226EntryFFresh,s2Step226EntryGFresh,s2Step226EntryFvFresh,s2Step226EntryGvFresh]=
    some (s2Step226EntryGvAfter,[s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut],(growRow 768 s2Step226EntryFFresh ++ (growRow 769 s2Step226EntryGFresh ++ (growRow 770 s2Step226EntryFvFresh ++ (growRow 771 s2Step226EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step226EntryGvAfter [] []=some (s2Step226EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step226EntryGvBefore s2Step226EntryGvAfter s2Step226EntryGvAfter
    s2Step226EntryGvRow s2Step226EntryGvOut 127 s2Step226EntryGvFresh [] [] []
    (growRow 771 s2Step226EntryGvFresh) ([]) s2Step226EntryGv_Incoming s2Step226EntryGv_checked h4 s2Step226EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step226EntryFvBefore s2Step226EntryFvAfter s2Step226EntryGvAfter
    s2Step226EntryFvRow s2Step226EntryFvOut 127 s2Step226EntryFvFresh [(s2Step226EntryGvRow,127)] [s2Step226EntryGvFresh] [s2Step226EntryGvOut]
    (growRow 770 s2Step226EntryFvFresh) ((growRow 771 s2Step226EntryGvFresh ++ [])) s2Step226EntryFv_Incoming s2Step226EntryFv_checked h3 s2Step226EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step226EntryGBefore s2Step226EntryGAfter s2Step226EntryGvAfter
    s2Step226EntryGRow s2Step226EntryGOut 157 s2Step226EntryGFresh [(s2Step226EntryFvRow,127),(s2Step226EntryGvRow,127)] [s2Step226EntryFvFresh,s2Step226EntryGvFresh] [s2Step226EntryFvOut,s2Step226EntryGvOut]
    (growRow 769 s2Step226EntryGFresh) ((growRow 770 s2Step226EntryFvFresh ++ (growRow 771 s2Step226EntryGvFresh ++ []))) s2Step226EntryG_Incoming s2Step226EntryG_checked h2 s2Step226EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step226EntryFBefore s2Step226EntryFAfter s2Step226EntryGvAfter
    s2Step226EntryFRow s2Step226EntryFOut 157 s2Step226EntryFFresh [(s2Step226EntryGRow,157),(s2Step226EntryFvRow,127),(s2Step226EntryGvRow,127)] [s2Step226EntryGFresh,s2Step226EntryFvFresh,s2Step226EntryGvFresh] [s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut]
    (growRow 768 s2Step226EntryFFresh) ((growRow 769 s2Step226EntryGFresh ++ (growRow 770 s2Step226EntryFvFresh ++ (growRow 771 s2Step226EntryGvFresh ++ [])))) s2Step226EntryF_Incoming s2Step226EntryF_checked h1 s2Step226EntryF_Outgoing
  exact h0

private theorem s2Step226EntryBank_checked : compileHmrBankResizeLog .entry s2Step226EntryFBefore ⟨s2Step226EntryFRow,s2Step226EntryGRow,s2Step226EntryFvRow,s2Step226EntryGvRow⟩ ⟨157,157,127,127⟩ [s2Step226EntryFFresh,s2Step226EntryGFresh,s2Step226EntryFvFresh,s2Step226EntryGvFresh]=
    some (s2Step226EntryGvAfter,⟨s2Step226EntryFOut,s2Step226EntryGOut,s2Step226EntryFvOut,s2Step226EntryGvOut⟩,(growRow 768 s2Step226EntryFFresh ++ (growRow 769 s2Step226EntryGFresh ++ (growRow 770 s2Step226EntryFvFresh ++ (growRow 771 s2Step226EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step226EntryBank_rows]
  rfl

private def s2Step226ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226ExitFBefore : Arena := s2Step226ExitGAfter

private def s2Step226ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 804],768⟩

private def s2Step226ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩

private def s2Step226ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 800],769⟩

private def s2Step226ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 808],771⟩

private theorem s2Step226ExitBank_incomingDistinct : ([s2Step226ExitGRow,s2Step226ExitFRow,s2Step226ExitFvRow,s2Step226ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226ExitF_Incoming : rowsOwned s2Step226ExitFBefore [s2Step226ExitFRow,s2Step226ExitFvRow,s2Step226ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226ExitGRow,s2Step226ExitFRow,s2Step226ExitFvRow,s2Step226ExitGvRow] 1 s2Step226ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226ExitFBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226ExitBank_outgoingOwned : rowsOwned s2Step226ExitGvAfter [s2Step226ExitGOut,s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step226ExitGvAfter (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226ExitF_Outgoing : rowsOwned s2Step226ExitGvAfter [s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut] :=
  hmrRows_owned_drop s2Step226ExitGvAfter [s2Step226ExitGOut,s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut] 1 s2Step226ExitBank_outgoingOwned

private theorem s2Step226ExitF_distinct : (s2Step226ExitFRow.sign::s2Step226ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226ExitF_owned : (s2Step226ExitFRow.sign::s2Step226ExitFRow.payload).toFinset⊆s2Step226ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226ExitFBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226ExitF_retired : s2Step226ExitFBefore.retireSet s2Step226ExitFExtra.toFinset=s2Step226ExitFAfter := by
  unfold Arena.retireSet s2Step226ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step226ExitFBefore,s2Step226ExitGAfter,s2Step226ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step226ExitF_checked : planRowResizeLog s2Step226ExitFBefore s2Step226ExitFRow 157 []=
    some (s2Step226ExitFAfter,s2Step226ExitFOut,shrinkRow 768 s2Step226ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step226ExitFBefore s2Step226ExitFRow 157 s2Step226ExitF_distinct s2Step226ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step226ExitFRow.payload.take 157) s2Step226ExitFRow.sign=s2Step226ExitFOut := by decide +kernel
  have hi : s2Step226ExitFRow.payload.drop 157=s2Step226ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step226ExitF_retired] at result
  exact result

private def s2Step226ExitFvAfter : Arena := s2Step226ExitFAfter

private def s2Step226ExitFvBefore : Arena := s2Step226ExitFAfter

private theorem s2Step226ExitFv_Incoming : rowsOwned s2Step226ExitFvBefore [s2Step226ExitFvRow,s2Step226ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226ExitGRow,s2Step226ExitFRow,s2Step226ExitFvRow,s2Step226ExitGvRow] 2 s2Step226ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226ExitFvBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226ExitFv_Outgoing : rowsOwned s2Step226ExitGvAfter [s2Step226ExitFvOut,s2Step226ExitGvOut] :=
  hmrRows_owned_drop s2Step226ExitGvAfter [s2Step226ExitGOut,s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut] 2 s2Step226ExitBank_outgoingOwned

private theorem s2Step226ExitFv_distinct : (s2Step226ExitFvRow.sign::s2Step226ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226ExitFv_owned : (s2Step226ExitFvRow.sign::s2Step226ExitFvRow.payload).toFinset⊆s2Step226ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226ExitFvBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226ExitFv_reserved : s2Step226ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step226ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step226ExitFv_checked : planRowResizeLog s2Step226ExitFvBefore s2Step226ExitFvRow 128 []=
    some (s2Step226ExitFvAfter,s2Step226ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step226ExitFvBefore s2Step226ExitFvAfter s2Step226ExitFvRow 128 []
    s2Step226ExitFv_distinct s2Step226ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step226ExitFvRow.payload++[]) s2Step226ExitFvRow.sign=s2Step226ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step226ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private theorem s2Step226ExitG_Incoming : rowsOwned s2Step226ExitGBefore [s2Step226ExitGRow,s2Step226ExitFRow,s2Step226ExitFvRow,s2Step226ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226ExitGRow,s2Step226ExitFRow,s2Step226ExitFvRow,s2Step226ExitGvRow] 0 s2Step226ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226ExitGBefore (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226ExitG_Outgoing : rowsOwned s2Step226ExitGvAfter [s2Step226ExitGOut,s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut] :=
  hmrRows_owned_drop s2Step226ExitGvAfter [s2Step226ExitGOut,s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut] 0 s2Step226ExitBank_outgoingOwned

private theorem s2Step226ExitG_distinct : (s2Step226ExitGRow.sign::s2Step226ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226ExitG_owned : (s2Step226ExitGRow.sign::s2Step226ExitGRow.payload).toFinset⊆s2Step226ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226ExitGBefore (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226ExitG_retired : s2Step226ExitGBefore.retireSet s2Step226ExitGExtra.toFinset=s2Step226ExitGAfter := by
  unfold Arena.retireSet s2Step226ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step226ExitGBefore,s2Step226ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step226ExitG_checked : planRowResizeLog s2Step226ExitGBefore s2Step226ExitGRow 156 []=
    some (s2Step226ExitGAfter,s2Step226ExitGOut,shrinkRow 769 s2Step226ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step226ExitGBefore s2Step226ExitGRow 156 s2Step226ExitG_distinct s2Step226ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step226ExitGRow.payload.take 156) s2Step226ExitGRow.sign=s2Step226ExitGOut := by decide +kernel
  have hi : s2Step226ExitGRow.payload.drop 156=s2Step226ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step226ExitG_retired] at result
  exact result

private def s2Step226ExitGvBefore : Arena := s2Step226ExitFAfter

private theorem s2Step226ExitGv_Incoming : rowsOwned s2Step226ExitGvBefore [s2Step226ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226ExitGRow,s2Step226ExitFRow,s2Step226ExitFvRow,s2Step226ExitGvRow] 3 s2Step226ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226ExitGvBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226ExitGv_Outgoing : rowsOwned s2Step226ExitGvAfter [s2Step226ExitGvOut] :=
  hmrRows_owned_drop s2Step226ExitGvAfter [s2Step226ExitGOut,s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut] 3 s2Step226ExitBank_outgoingOwned

private theorem s2Step226ExitGv_distinct : (s2Step226ExitGvRow.sign::s2Step226ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226ExitGv_owned : (s2Step226ExitGvRow.sign::s2Step226ExitGvRow.payload).toFinset⊆s2Step226ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226ExitGvBefore (fun q => (0≤q ∧ q<156) ∨ (157≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226ExitGv_retired : s2Step226ExitGvBefore.retireSet s2Step226ExitGvExtra.toFinset=s2Step226ExitGvAfter := by
  unfold Arena.retireSet s2Step226ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step226ExitGvBefore,s2Step226ExitFAfter,s2Step226ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step226ExitGv_checked : planRowResizeLog s2Step226ExitGvBefore s2Step226ExitGvRow 127 []=
    some (s2Step226ExitGvAfter,s2Step226ExitGvOut,shrinkRow 771 s2Step226ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step226ExitGvBefore s2Step226ExitGvRow 127 s2Step226ExitGv_distinct s2Step226ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step226ExitGvRow.payload.take 127) s2Step226ExitGvRow.sign=s2Step226ExitGvOut := by decide +kernel
  have hi : s2Step226ExitGvRow.payload.drop 127=s2Step226ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step226ExitGv_retired] at result
  exact result

private theorem s2Step226ExitBank_rows : planWindowRowsLog s2Step226ExitGBefore [(s2Step226ExitGRow,156),(s2Step226ExitFRow,157),(s2Step226ExitFvRow,128),(s2Step226ExitGvRow,127)] [[],[],[],[]]=
    some (s2Step226ExitGvAfter,[s2Step226ExitGOut,s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut],(shrinkRow 769 s2Step226ExitGExtra ++ (shrinkRow 768 s2Step226ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step226ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step226ExitGvAfter [] []=some (s2Step226ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step226ExitGvBefore s2Step226ExitGvAfter s2Step226ExitGvAfter
    s2Step226ExitGvRow s2Step226ExitGvOut 127 [] [] [] []
    (shrinkRow 771 s2Step226ExitGvExtra) ([]) s2Step226ExitGv_Incoming s2Step226ExitGv_checked h4 s2Step226ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step226ExitFvBefore s2Step226ExitFvAfter s2Step226ExitGvAfter
    s2Step226ExitFvRow s2Step226ExitFvOut 128 [] [(s2Step226ExitGvRow,127)] [[]] [s2Step226ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step226ExitGvExtra ++ [])) s2Step226ExitFv_Incoming s2Step226ExitFv_checked h3 s2Step226ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step226ExitFBefore s2Step226ExitFAfter s2Step226ExitGvAfter
    s2Step226ExitFRow s2Step226ExitFOut 157 [] [(s2Step226ExitFvRow,128),(s2Step226ExitGvRow,127)] [[],[]] [s2Step226ExitFvOut,s2Step226ExitGvOut]
    (shrinkRow 768 s2Step226ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step226ExitGvExtra ++ []))) s2Step226ExitF_Incoming s2Step226ExitF_checked h2 s2Step226ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step226ExitGBefore s2Step226ExitGAfter s2Step226ExitGvAfter
    s2Step226ExitGRow s2Step226ExitGOut 156 [] [(s2Step226ExitFRow,157),(s2Step226ExitFvRow,128),(s2Step226ExitGvRow,127)] [[],[],[]] [s2Step226ExitFOut,s2Step226ExitFvOut,s2Step226ExitGvOut]
    (shrinkRow 769 s2Step226ExitGExtra) ((shrinkRow 768 s2Step226ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step226ExitGvExtra ++ [])))) s2Step226ExitG_Incoming s2Step226ExitG_checked h1 s2Step226ExitG_Outgoing
  exact h0

private theorem s2Step226ExitBank_checked : compileHmrBankResizeLog .exit s2Step226ExitGBefore ⟨s2Step226ExitFRow,s2Step226ExitGRow,s2Step226ExitFvRow,s2Step226ExitGvRow⟩ ⟨157,156,128,127⟩ [[],[],[],[]]=
    some (s2Step226ExitGvAfter,⟨s2Step226ExitFOut,s2Step226ExitGOut,s2Step226ExitFvOut,s2Step226ExitGvOut⟩,(shrinkRow 769 s2Step226ExitGExtra ++ (shrinkRow 768 s2Step226ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step226ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step226ExitBank_rows]
  rfl

private theorem s2Step226Add0_apart : Disjoint s2Step226Add0Arena.live s2Step226Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step226Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226Add0_card : s2Step226Add0Arena.live.card=889 := by
  decide +kernel

private theorem s2Step226Add0_borrowed : s2Step226Add0Arena.checkBorrow (hmrHybridCount s2Step226Add0Arena s2Step226Add0B.length) s2Step226Add0Work=some s2Step226Add0During := by
  have len : s2Step226Add0Work.length=hmrHybridCount s2Step226Add0Arena s2Step226Add0B.length := by
    rw [hmrHybridCount,s2Step226Add0_card]
    decide +kernel
  have nd : s2Step226Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step226Add0Arena s2Step226Add0During s2Step226Add0Work.toFinset s2Step226Add0_bounded s2Step226Add0_apart rfl

private theorem s2Step226Add0_distinct : (849::797::811::(s2Step226Add0A++s2Step226Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226Add0_owned : (849::797::811::(s2Step226Add0A++s2Step226Add0B)).toFinset⊆s2Step226Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step226Add0Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226Add0_checked : compileHmrHybridCinLog s2Step226Add0Arena 797 849 811 s2Step226Add0A s2Step226Add0B s2Step226Add0Work=some s2Step226Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step226Add0Arena s2Step226Add0During 797 849 811 s2Step226Add0A s2Step226Add0B s2Step226Add0Work
    (by decide +kernel) (by decide +kernel) s2Step226Add0_distinct
    (fun q hq => s2Step226Add0_owned (List.mem_toFinset.mpr hq)) s2Step226Add0_borrowed

private theorem s2Step226Add1_apart : Disjoint s2Step226Add1Arena.live s2Step226Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step226Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226Add1_card : s2Step226Add1Arena.live.card=889 := by
  decide +kernel

private theorem s2Step226Add1_borrowed : s2Step226Add1Arena.checkBorrow (hmrHybridCount s2Step226Add1Arena s2Step226Add1B.length) s2Step226Add1Work=some s2Step226Add1During := by
  have len : s2Step226Add1Work.length=hmrHybridCount s2Step226Add1Arena s2Step226Add1B.length := by
    rw [hmrHybridCount,s2Step226Add1_card]
    decide +kernel
  have nd : s2Step226Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step226Add1Arena s2Step226Add1During s2Step226Add1Work.toFinset s2Step226Add1_bounded s2Step226Add1_apart rfl

private theorem s2Step226Add1_distinct : (849::797::811::(s2Step226Add1A++s2Step226Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226Add1_owned : (849::797::811::(s2Step226Add1A++s2Step226Add1B)).toFinset⊆s2Step226Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step226Add1Arena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226Add1_checked : compileHmrHybridCinLog s2Step226Add1Arena 797 849 811 s2Step226Add1A s2Step226Add1B s2Step226Add1Work=some s2Step226Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step226Add1Arena s2Step226Add1During 797 849 811 s2Step226Add1A s2Step226Add1B s2Step226Add1Work
    (by decide +kernel) (by decide +kernel) s2Step226Add1_distinct
    (fun q hq => s2Step226Add1_owned (List.mem_toFinset.mpr hq)) s2Step226Add1_borrowed

private theorem s2Step226F4_apart : Disjoint (s2Step226Add0A++s2Step226Add0B).toFinset (s2Step226Add1A++s2Step226Add1B).toFinset := by
  have nd : ((s2Step226Add0A++s2Step226Add0B)++(s2Step226Add1A++s2Step226Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step226F4_carry : s2Step226F4FlagArena.checkBorrow 1 [811]=some s2Step226Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step226F4FlagArena,s2Step226HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step226F4FlagArena,s2Step226HeadFvAfter,s2Step226Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step226F4_distinct : (812::797::849::811::((s2Step226Add0A++s2Step226Add1A)++(s2Step226Add0B++s2Step226Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226F4_flag : s2Step226HeadFvAfter.checkBorrow 1 [849]=some s2Step226F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step226HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step226F4_owned : (812::797::((s2Step226Add0A++s2Step226Add1A)++(s2Step226Add0B++s2Step226Add1B))).toFinset⊆s2Step226HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step226HeadFvAfter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226F4_checked : compileHmrHybridF4Log s2Step226HeadFvAfter 812 797 s2Step226Add0A s2Step226Add0B s2Step226Add1A s2Step226Add1B [849] [811] s2Step226Add0Work s2Step226Add1Work=some s2Step226F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step226HeadFvAfter s2Step226F4FlagArena s2Step226Add0Arena s2Step226Add0During s2Step226Add1During 812 797
    s2Step226Add0A s2Step226Add0B s2Step226Add1A s2Step226Add1B [849] [811] s2Step226Add0Work s2Step226Add1Work
    (fun q hq => s2Step226F4_owned (List.mem_toFinset.mpr hq)) s2Step226F4_flag s2Step226F4_carry
    s2Step226F4_distinct s2Step226F4_apart s2Step226Add0_checked s2Step226Add1_checked

private theorem s2Step226Front_branch : s2Step226FrontSigmaArena.checkBorrow 1 [797]=some s2Step226HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step226FrontSigmaArena,s2Step226EntryGvAfter,s2Step226EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step226FrontSigmaArena,s2Step226EntryGvAfter,s2Step226EntryFBefore,s2Step226HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step226Front_entry : HmrFrontEntryValid s2Step226EntryFBefore s2Step226FrontBank 157 127 ⟨157,156,128,127⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step226FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step226EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step226EntryFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (813≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step226FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step226Front_sigma : s2Step226EntryGvAfter.checkBorrow 1 [812]=some s2Step226FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step226EntryGvAfter,s2Step226EntryFBefore,arenaWires]
  · rfl

private def s2Step226HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226HeadFBefore : Arena := s2Step226HeadGAfter

private def s2Step226HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668],768⟩

private def s2Step226HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801],770⟩

private def s2Step226HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156],769⟩

private def s2Step226HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780],771⟩

private theorem s2Step226HeadBank_incomingDistinct : ([s2Step226HeadGRow,s2Step226HeadFRow,s2Step226HeadGvRow,s2Step226HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226HeadF_Incoming : rowsOwned s2Step226HeadFBefore [s2Step226HeadFRow,s2Step226HeadGvRow,s2Step226HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226HeadGRow,s2Step226HeadFRow,s2Step226HeadGvRow,s2Step226HeadFvRow] 1 s2Step226HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226HeadBank_outgoingOwned : rowsOwned s2Step226HeadFvAfter [s2Step226HeadGOut,s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step226HeadFvAfter (fun q => (0≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226HeadF_Outgoing : rowsOwned s2Step226HeadFvAfter [s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut] :=
  hmrRows_owned_drop s2Step226HeadFvAfter [s2Step226HeadGOut,s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut] 1 s2Step226HeadBank_outgoingOwned

private theorem s2Step226HeadF_distinct : (s2Step226HeadFRow.sign::s2Step226HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226HeadF_owned : (s2Step226HeadFRow.sign::s2Step226HeadFRow.payload).toFinset⊆s2Step226HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226HeadF_reserved : s2Step226HeadFBefore.reserve s2Step226HeadFFresh.toFinset=some s2Step226HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step226HeadFFresh,arenaWires]
  · norm_num [s2Step226HeadFBefore,s2Step226HeadGAfter,s2Step226HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step226HeadFAfter,s2Step226HeadFBefore,s2Step226HeadGAfter,s2Step226HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step226HeadF_checked : planRowResizeLog s2Step226HeadFBefore s2Step226HeadFRow 158 s2Step226HeadFFresh=
    some (s2Step226HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 804],768⟩,growRow 768 s2Step226HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step226HeadFBefore s2Step226HeadFAfter s2Step226HeadFRow 158 s2Step226HeadFFresh
    s2Step226HeadF_distinct s2Step226HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226HeadF_reserved
  have rowEq : WindowRow.mk (s2Step226HeadFRow.payload++s2Step226HeadFFresh) s2Step226HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 804],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step226HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)),Finset.filter_subset _ _⟩

private def s2Step226HeadFvBefore : Arena := s2Step226HeadGvAfter

private theorem s2Step226HeadFv_Incoming : rowsOwned s2Step226HeadFvBefore [s2Step226HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226HeadGRow,s2Step226HeadFRow,s2Step226HeadGvRow,s2Step226HeadFvRow] 3 s2Step226HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226HeadFv_Outgoing : rowsOwned s2Step226HeadFvAfter [s2Step226HeadFvOut] :=
  hmrRows_owned_drop s2Step226HeadFvAfter [s2Step226HeadGOut,s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut] 3 s2Step226HeadBank_outgoingOwned

private theorem s2Step226HeadFv_distinct : (s2Step226HeadFvRow.sign::s2Step226HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226HeadFv_owned : (s2Step226HeadFvRow.sign::s2Step226HeadFvRow.payload).toFinset⊆s2Step226HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226HeadFv_reserved : s2Step226HeadFvBefore.reserve s2Step226HeadFvFresh.toFinset=some s2Step226HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step226HeadFvFresh,arenaWires]
  · norm_num [s2Step226HeadFvBefore,s2Step226HeadGvAfter,s2Step226HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step226HeadFvAfter,s2Step226HeadFvBefore,s2Step226HeadGvAfter,s2Step226HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step226HeadFv_checked : planRowResizeLog s2Step226HeadFvBefore s2Step226HeadFvRow 128 s2Step226HeadFvFresh=
    some (s2Step226HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩,growRow 770 s2Step226HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step226HeadFvBefore s2Step226HeadFvAfter s2Step226HeadFvRow 128 s2Step226HeadFvFresh
    s2Step226HeadFv_distinct s2Step226HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step226HeadFvRow.payload++s2Step226HeadFvFresh) s2Step226HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 810, 820, 787, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step226HeadG_Incoming : rowsOwned s2Step226HeadGBefore [s2Step226HeadGRow,s2Step226HeadFRow,s2Step226HeadGvRow,s2Step226HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226HeadGRow,s2Step226HeadFRow,s2Step226HeadGvRow,s2Step226HeadFvRow] 0 s2Step226HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226HeadG_Outgoing : rowsOwned s2Step226HeadFvAfter [s2Step226HeadGOut,s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut] :=
  hmrRows_owned_drop s2Step226HeadFvAfter [s2Step226HeadGOut,s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut] 0 s2Step226HeadBank_outgoingOwned

private theorem s2Step226HeadG_distinct : (s2Step226HeadGRow.sign::s2Step226HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226HeadG_owned : (s2Step226HeadGRow.sign::s2Step226HeadGRow.payload).toFinset⊆s2Step226HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226HeadGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<800) ∨ (801≤q ∧ q<804) ∨ (805≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226HeadG_reserved : s2Step226HeadGBefore.reserve s2Step226HeadGFresh.toFinset=some s2Step226HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step226HeadGFresh,arenaWires]
  · norm_num [s2Step226HeadGBefore,s2Step226HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step226HeadGAfter,s2Step226HeadGBefore,s2Step226HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step226HeadG_checked : planRowResizeLog s2Step226HeadGBefore s2Step226HeadGRow 158 s2Step226HeadGFresh=
    some (s2Step226HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 800],769⟩,growRow 769 s2Step226HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step226HeadGBefore s2Step226HeadGAfter s2Step226HeadGRow 158 s2Step226HeadGFresh
    s2Step226HeadG_distinct s2Step226HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226HeadG_reserved
  have rowEq : WindowRow.mk (s2Step226HeadGRow.payload++s2Step226HeadGFresh) s2Step226HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step226HeadGvBefore : Arena := s2Step226HeadFAfter

private theorem s2Step226HeadGv_Incoming : rowsOwned s2Step226HeadGvBefore [s2Step226HeadGvRow,s2Step226HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step226HeadGRow,s2Step226HeadFRow,s2Step226HeadGvRow,s2Step226HeadFvRow] 2 s2Step226HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step226HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
    decide +kernel

private theorem s2Step226HeadGv_Outgoing : rowsOwned s2Step226HeadFvAfter [s2Step226HeadGvOut,s2Step226HeadFvOut] :=
  hmrRows_owned_drop s2Step226HeadFvAfter [s2Step226HeadGOut,s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut] 2 s2Step226HeadBank_outgoingOwned

private theorem s2Step226HeadGv_distinct : (s2Step226HeadGvRow.sign::s2Step226HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step226HeadGv_owned : (s2Step226HeadGvRow.sign::s2Step226HeadGvRow.payload).toFinset⊆s2Step226HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step226HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<808) ∨ (809≤q ∧ q<811) ∨ (812≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<849) ∨ (850≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (897≤q ∧ q<898)) rfl
  decide +kernel

private theorem s2Step226HeadGv_reserved : s2Step226HeadGvBefore.reserve s2Step226HeadGvFresh.toFinset=some s2Step226HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step226HeadGvFresh,arenaWires]
  · norm_num [s2Step226HeadGvBefore,s2Step226HeadFAfter,s2Step226HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step226HeadGvAfter,s2Step226HeadGvBefore,s2Step226HeadFAfter,s2Step226HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step226HeadGv_checked : planRowResizeLog s2Step226HeadGvBefore s2Step226HeadGvRow 128 s2Step226HeadGvFresh=
    some (s2Step226HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 808],771⟩,growRow 771 s2Step226HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step226HeadGvBefore s2Step226HeadGvAfter s2Step226HeadGvRow 128 s2Step226HeadGvFresh
    s2Step226HeadGv_distinct s2Step226HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step226HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step226HeadGvRow.payload++s2Step226HeadGvFresh) s2Step226HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 809, 805, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 808],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step226HeadBank_rows : planWindowRowsLog s2Step226HeadGBefore [(s2Step226HeadGRow,158),(s2Step226HeadFRow,158),(s2Step226HeadGvRow,128),(s2Step226HeadFvRow,128)] [s2Step226HeadGFresh,s2Step226HeadFFresh,s2Step226HeadGvFresh,s2Step226HeadFvFresh]=
    some (s2Step226HeadFvAfter,[s2Step226HeadGOut,s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut],(growRow 769 s2Step226HeadGFresh ++ (growRow 768 s2Step226HeadFFresh ++ (growRow 771 s2Step226HeadGvFresh ++ (growRow 770 s2Step226HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step226HeadFvAfter [] []=some (s2Step226HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step226HeadFvBefore s2Step226HeadFvAfter s2Step226HeadFvAfter
    s2Step226HeadFvRow s2Step226HeadFvOut 128 s2Step226HeadFvFresh [] [] []
    (growRow 770 s2Step226HeadFvFresh) ([]) s2Step226HeadFv_Incoming s2Step226HeadFv_checked h4 s2Step226HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step226HeadGvBefore s2Step226HeadGvAfter s2Step226HeadFvAfter
    s2Step226HeadGvRow s2Step226HeadGvOut 128 s2Step226HeadGvFresh [(s2Step226HeadFvRow,128)] [s2Step226HeadFvFresh] [s2Step226HeadFvOut]
    (growRow 771 s2Step226HeadGvFresh) ((growRow 770 s2Step226HeadFvFresh ++ [])) s2Step226HeadGv_Incoming s2Step226HeadGv_checked h3 s2Step226HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step226HeadFBefore s2Step226HeadFAfter s2Step226HeadFvAfter
    s2Step226HeadFRow s2Step226HeadFOut 158 s2Step226HeadFFresh [(s2Step226HeadGvRow,128),(s2Step226HeadFvRow,128)] [s2Step226HeadGvFresh,s2Step226HeadFvFresh] [s2Step226HeadGvOut,s2Step226HeadFvOut]
    (growRow 768 s2Step226HeadFFresh) ((growRow 771 s2Step226HeadGvFresh ++ (growRow 770 s2Step226HeadFvFresh ++ []))) s2Step226HeadF_Incoming s2Step226HeadF_checked h2 s2Step226HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step226HeadGBefore s2Step226HeadGAfter s2Step226HeadFvAfter
    s2Step226HeadGRow s2Step226HeadGOut 158 s2Step226HeadGFresh [(s2Step226HeadFRow,158),(s2Step226HeadGvRow,128),(s2Step226HeadFvRow,128)] [s2Step226HeadFFresh,s2Step226HeadGvFresh,s2Step226HeadFvFresh] [s2Step226HeadFOut,s2Step226HeadGvOut,s2Step226HeadFvOut]
    (growRow 769 s2Step226HeadGFresh) ((growRow 768 s2Step226HeadFFresh ++ (growRow 771 s2Step226HeadGvFresh ++ (growRow 770 s2Step226HeadFvFresh ++ [])))) s2Step226HeadG_Incoming s2Step226HeadG_checked h1 s2Step226HeadG_Outgoing
  exact h0

private theorem s2Step226HeadBank_checked : compileHmrBankResizeLog .headroom s2Step226HeadGBefore ⟨s2Step226HeadFRow,s2Step226HeadGRow,s2Step226HeadFvRow,s2Step226HeadGvRow⟩ ⟨158,158,128,128⟩ [s2Step226HeadGFresh,s2Step226HeadFFresh,s2Step226HeadGvFresh,s2Step226HeadFvFresh]=
    some (s2Step226HeadFvAfter,⟨s2Step226HeadFOut,s2Step226HeadGOut,s2Step226HeadFvOut,s2Step226HeadGvOut⟩,(growRow 769 s2Step226HeadGFresh ++ (growRow 768 s2Step226HeadFFresh ++ (growRow 771 s2Step226HeadGvFresh ++ (growRow 770 s2Step226HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step226HeadBank_rows]
  rfl

private theorem s2Step226Front_checked : compileHmrSourceFrontLog s2Step226EntryFBefore s2Step226FrontBank 157 127 ⟨157,156,128,127⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step226FrontLog=some s2Step226FrontPlan := by
  have pairEq : s2Step226FrontPair=⟨s2Step226HeadFRow,s2Step226HeadGRow,s2Step226HeadFvRow,s2Step226HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step226FrontHead=⟨s2Step226ExitFRow,s2Step226ExitGRow,s2Step226ExitFvRow,s2Step226ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step226Add0A=s2Step226FrontHead.f.wires := by decide +kernel
  have gEq : s2Step226Add0B=s2Step226FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step226Add1A=s2Step226FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step226Add1B=s2Step226FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step226EntryFBefore s2Step226FrontBank 157 127 ⟨157,156,128,127⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step226FrontLog s2Step226FrontPlan
  · exact s2Step226Front_entry
  · exact s2Step226EntryBank_checked
  · exact s2Step226Front_sigma
  · rfl
  · exact s2Step226Front_branch
  · rfl
  · simpa only [s2Step226FrontPlan,pairEq] using s2Step226HeadBank_checked
  · simpa only [s2Step226FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step226F4_checked
  · exact s2Step226Counter_checked
  · rfl
  · simpa only [s2Step226FrontPlan,headEq] using s2Step226ExitBank_checked

private theorem s2Step226Complete_explicit_checked : compileHmrEarlyStepLog s2Step226EntryFBefore s2Step226FrontBank 157 127 ⟨157,156,128,127⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 48 s2Step226CompleteLog=some s2Step226CompletePlan := by
  let Q := s2Step226EarlyControlPlan
  have hq := s2Step226EarlyControl_plan_checked
  have fv1 : s2Step226CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step226CompleteOut.fv.payload[2]?.getD s2Step226CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step226CompleteOut.fv.payload[3]?.getD s2Step226CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step226CompleteOut.fv.payload[4]?.getD s2Step226CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step226EntryFBefore s2Step226EarlyControlArena s2Step226FrontBank 157 127 ⟨157,156,128,127⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 48 s2Step226CompleteLog s2Step226FrontPlan Q
    s2Step226Front_checked s2Step226Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step226Complete_owned s2Step226Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step226EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 777 812 s2Step226CompleteOut.fv.second (s2Step226CompleteOut.fv.payload[2]?.getD s2Step226CompleteOut.fv.sign) (s2Step226CompleteOut.fv.payload[3]?.getD s2Step226CompleteOut.fv.sign) (s2Step226CompleteOut.fv.payload[4]?.getD s2Step226CompleteOut.fv.sign) 797 48 s2Step226EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep226Arena : Arena := s2Step226EntryFBefore
def s2PrivateStep226Bank : WindowBank := s2Step226FrontBank
def s2PrivateStep226Spec : HmrSourceWalkStepLog := ⟨157,127,⟨157,156,128,127⟩,48,.early s2Step226CompleteLog⟩
def s2PrivateStep226Plan : HmrSourceStepPlan := .early s2Step226CompletePlan
theorem s2PrivateStep226_source : s2PrivateStep226Spec=s2ObservedLogs224[2] := rfl
theorem s2PrivateStep226_checked : compileHmrSourceStepLog s2PrivateStep226Arena s2PrivateStep226Bank
    s2PrivateStep226Spec.fgWidth s2PrivateStep226Spec.vWidth s2PrivateStep226Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897]
    6 498 226 s2PrivateStep226Spec.need none s2PrivateStep226Spec.log=some s2PrivateStep226Plan := by
  change compileHmrSourceStepLog s2Step226EntryFBefore s2Step226FrontBank 157 127 ⟨157,156,128,127⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897] 6 498 226 48 none (.early s2Step226CompleteLog)=some (.early s2Step226CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 226<498)]
  rw [s2Step226Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
