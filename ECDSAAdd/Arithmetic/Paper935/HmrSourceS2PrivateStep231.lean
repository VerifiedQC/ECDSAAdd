import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep229
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

private def s2Step231CompleteMoves : List (Wire × Wire) := [(821,665),(847,666)]

private def s2Step231EarlyControlLog : HmrEarlyControlLog := ⟨[847, 821, 809, 797, 805],[810],[800],[814, 882, 826, 842, 885, 891],[]⟩

private def s2Step231FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [810], [], []],[[800], [805], [809], [797]],[[], [], [], []]⟩,[820],[787],[814],[882],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 882, 826, 842]⟩

private def s2Step231CompleteLog : HmrEarlyStepLog := ⟨s2Step231FrontLog,s2Step231CompleteMoves,s2Step231EarlyControlLog⟩

private def s2Step231ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step231ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step231ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],769⟩

private def s2Step231ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step231FrontOut : WindowBank := ⟨s2Step231ExitFOut,s2Step231ExitGOut,s2Step231ExitFvOut,s2Step231ExitGvOut⟩

private def s2Step231CompleteOut : WindowBank := s2Step231FrontOut.repacked s2Step231CompleteMoves

private def s2Step231EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step231EarlyControlPositiveArena,[810],s2Step231EarlyControlEqualityArena,[800],⟨⟨820,false⟩,[⟨⟨810,false⟩,800⟩]⟩⟩

private def s2Step231EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,847⟩,⟨⟨774,false⟩,821⟩,⟨⟨775,false⟩,809⟩,⟨⟨776,false⟩,797⟩,⟨⟨777,false⟩,805⟩]⟩

private def s2Step231EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step231EarlyControlZeroArena,s2Step231EarlyControlZeroPlan,s2Step231EarlyControlClassPlan,s2Step231EarlyControlFlagArena,s2Step231EarlyControlFittedArena,s2Step231EarlyControlHistoryArena,s2Step231EarlyControlSigmaArena,s2Step231EarlyControlOutputArena,s2Step231EarlyControlLog⟩

private def s2Step231CounterWork : List Wire := [814, 882, 826, 842]

private theorem s2Step231Counter_bounded : s2Step231CounterWork.toFinset⊆arenaWires := by norm_num [s2Step231CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step231HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231CounterDuring : Arena := ⟨s2Step231HeadFvAfter.live∪s2Step231CounterWork.toFinset,Finset.union_subset s2Step231HeadFvAfter.bounded s2Step231Counter_bounded⟩

private def s2Step231EntryFFresh : List Wire := []

private def s2Step231EntryFvFresh : List Wire := []

private def s2Step231EntryGFresh : List Wire := [810]

private def s2Step231EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EntryGvAfter : Arena := s2Step231EntryGAfter

private def s2Step231EntryGvFresh : List Wire := []

private def s2Step231ExitFExtra : List Wire := [665, 666, 805]

private def s2Step231ExitFvExtra : List Wire := [797]

private def s2Step231ExitGExtra : List Wire := [810, 800]

private def s2Step231ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<665) ∨ (667≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231ExitGvExtra : List Wire := [809]

private def s2Step231Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231Add0Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step231Add0_bounded : s2Step231Add0Work.toFinset⊆arenaWires := by
  have h : s2Step231Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step231Add0During : Arena := ⟨s2Step231Add0Arena.live∪s2Step231Add0Work.toFinset,Finset.union_subset s2Step231Add0Arena.bounded s2Step231Add0_bounded⟩

private def s2Step231Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231Add1Work : List Wire := [826, 842, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step231Add1_bounded : s2Step231Add1Work.toFinset⊆arenaWires := by
  have h : s2Step231Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step231Add1During : Arena := ⟨s2Step231Add1Arena.live∪s2Step231Add1Work.toFinset,Finset.union_subset s2Step231Add1Arena.bounded s2Step231Add1_bounded⟩

private def s2Step231F4FlagArena : Arena := ⟨s2Step231HeadFvAfter.live∪{814},Finset.union_subset s2Step231HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step231F4Plan : HmrHybridF4Plan := ⟨s2Step231F4FlagArena,[814],s2Step231Add0Arena,[882],s2Step231Add0During,s2Step231Add0Work,s2Step231Add1During,s2Step231Add1Work⟩

private def s2Step231HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 805],768⟩

private def s2Step231HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 797],770⟩

private def s2Step231HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810, 800],769⟩

private def s2Step231HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 809],771⟩

private def s2Step231FrontHead : WindowBank := ⟨s2Step231HeadFOut,s2Step231HeadGOut,s2Step231HeadFvOut,s2Step231HeadGvOut⟩

private def s2Step231EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩

private def s2Step231EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step231EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810],769⟩

private def s2Step231EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step231FrontPair : WindowBank := ⟨s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut⟩

private def s2Step231FrontSigmaArena : Arena := ⟨s2Step231EntryGvAfter.live∪{820},Finset.union_subset s2Step231EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step231HeadFFresh : List Wire := [805]

private def s2Step231HeadFvFresh : List Wire := [797]

private def s2Step231HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231HeadGFresh : List Wire := [800]

private def s2Step231HeadGvFresh : List Wire := [809]

private def s2Step231FrontPlan : HmrSourceFront := ⟨s2Step231EntryGvAfter,s2Step231FrontPair,(growRow 768 s2Step231EntryFFresh ++ (growRow 769 s2Step231EntryGFresh ++ (growRow 770 s2Step231EntryFvFresh ++ (growRow 771 s2Step231EntryGvFresh ++ [])))),s2Step231FrontSigmaArena,[820],s2Step231HeadGBefore,[787],
  s2Step231HeadFvAfter,s2Step231FrontHead,(growRow 769 s2Step231HeadGFresh ++ (growRow 768 s2Step231HeadFFresh ++ (growRow 771 s2Step231HeadGvFresh ++ (growRow 770 s2Step231HeadFvFresh ++ [])))),s2Step231F4Plan,s2Step231CounterDuring,s2Step231CounterWork,s2Step231ExitGvAfter,s2Step231FrontOut,(shrinkRow 769 s2Step231ExitGExtra ++ (shrinkRow 768 s2Step231ExitFExtra ++ (shrinkRow 770 s2Step231ExitFvExtra ++ (shrinkRow 771 s2Step231ExitGvExtra ++ []))))⟩

private def s2Step231CompletePlan : HmrEarlyStepPlan := ⟨s2Step231FrontPlan,s2Step231EarlyControlArena,s2Step231EarlyControlPlan,s2Step231CompleteMoves⟩

private theorem s2Step231Complete_apart : List.Disjoint (s2Step231CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step231CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step231Complete_owned : (s2Step231CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step231CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,666),(667,797),(798,800),(801,805),(806,809),(811,814),(815,821),(822,826),(827,842),(843,882),(883,885),(886,891),(892,894),(895,896),(897,899)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step231CompleteRelocationMove0Borrowed : Arena := ⟨s2Step231ExitGvAfter.live∪{665},Finset.union_subset s2Step231ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step231CompleteRelocationMove1Borrowed : Arena := ⟨s2Step231CompleteRelocationMove0After.live∪{666},Finset.union_subset s2Step231CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step231CompleteRelocation_move0_owned : 821∈s2Step231ExitGvAfter.live := by norm_num [s2Step231ExitGvAfter,arenaWires]

private theorem s2Step231CompleteRelocation_move0_reserve : s2Step231ExitGvAfter.reserve {665}=some s2Step231CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step231ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step231CompleteRelocation_move0_retire : s2Step231CompleteRelocationMove0Borrowed.retireSet {821}=s2Step231CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step231CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step231CompleteRelocationMove0Borrowed,s2Step231ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step231CompleteRelocation_move1_owned : 847∈s2Step231CompleteRelocationMove0After.live := by norm_num [s2Step231CompleteRelocationMove0After,arenaWires]

private theorem s2Step231CompleteRelocation_move1_reserve : s2Step231CompleteRelocationMove0After.reserve {666}=some s2Step231CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step231CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step231CompleteRelocation_move1_retire : s2Step231CompleteRelocationMove1Borrowed.retireSet {847}=s2Step231EarlyControlArena := by
  unfold Arena.retireSet s2Step231EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step231CompleteRelocationMove1Borrowed,s2Step231CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step231CompleteRelocation_checked : s2Step231ExitGvAfter.checkRepack [(821,665),(847,666)]=some s2Step231EarlyControlArena := by
  have tail2 : s2Step231EarlyControlArena.checkRepack []=some s2Step231EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step231CompleteRelocationMove0After s2Step231CompleteRelocationMove1Borrowed s2Step231EarlyControlArena s2Step231EarlyControlArena 847 666 []
    s2Step231CompleteRelocation_move1_owned s2Step231CompleteRelocation_move1_reserve s2Step231CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step231ExitGvAfter s2Step231CompleteRelocationMove0Borrowed s2Step231CompleteRelocationMove0After s2Step231EarlyControlArena 821 665 [(847,666)]
    s2Step231CompleteRelocation_move0_owned s2Step231CompleteRelocation_move0_reserve s2Step231CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step231Complete_repack : s2Step231ExitGvAfter.checkRepack s2Step231CompleteMoves=some s2Step231EarlyControlArena := by
  simpa only [s2Step231CompleteMoves] using s2Step231CompleteRelocation_checked

private theorem s2Step231EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step231EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlSigmaArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_branch : compileHmrBranchRetirement s2Step231EarlyControlSigmaArena 787=some s2Step231EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step231EarlyControl_branchOwned
  · ext q
    simp [s2Step231EarlyControlOutputArena,s2Step231EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step231EarlyControl_classEqualityBorrow : s2Step231EarlyControlPositiveArena.checkBorrow (([820, 810] : List Wire).length-1) s2Step231EarlyControlLog.classWork=some s2Step231EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step231EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step231EarlyControlEqualityArena,s2Step231EarlyControlPositiveArena,s2Step231EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step231EarlyControl_classEqualityOwned : ([820, 810] : List Wire).toFinset⊆s2Step231EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_classEquality : compileHmrEqualityLog s2Step231EarlyControlPositiveArena [820, 810] 0 s2Step231EarlyControlLog.classWork=some (s2Step231EarlyControlEqualityArena,s2Step231EarlyControlLog.classWork,s2Step231EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step231EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step231EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step231EarlyControl_classOwned : ([777, 805, 820] : List Wire).toFinset⊆s2Step231EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_positiveBorrow : s2Step231EarlyControlZeroArena.checkBorrow (1) s2Step231EarlyControlLog.positiveWork=some s2Step231EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step231EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step231EarlyControlPositiveArena,s2Step231EarlyControlZeroArena,s2Step231EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step231EarlyControl_class : compileHmrSourceClassLog s2Step231EarlyControlZeroArena false 777 s2Step231EarlyControlZeroPlan.top 0 820 s2Step231EarlyControlLog.positiveWork s2Step231EarlyControlLog.classWork=some s2Step231EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step231EarlyControlClassPlan s2Step231EarlyControlZeroArena false 777 s2Step231EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step231EarlyControl_classOwned
  · exact s2Step231EarlyControl_positiveBorrow
  · exact s2Step231EarlyControl_classEquality

private theorem s2Step231EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_fitBorrow : s2Step231EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step231EarlyControlLog.recordFresh=some s2Step231EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step231EarlyControlFlagArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step231EarlyControlFittedArena,s2Step231EarlyControlFlagArena,s2Step231EarlyControlLog,arenaWires]

private theorem s2Step231EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step231EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlFlagArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_fit : compileHmrRecordGrowLog s2Step231EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step231EarlyControlLog.recordFresh=some s2Step231EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step231EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step231EarlyControl_fitBorrow

private theorem s2Step231EarlyControl_flagsBorrow : s2Step231EarlyControlEqualityArena.checkBorrow (6) s2Step231EarlyControlLog.flagWork=some s2Step231EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step231EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step231EarlyControlFlagArena,s2Step231EarlyControlEqualityArena,s2Step231EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step231EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step231EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlEqualityArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_flags : compileHmrFlagsLog s2Step231EarlyControlClassPlan.equalityArena s2Step231EarlyControlClassPlan.equality.top 253 252 251 s2Step231EarlyControlLog.flagWork=some s2Step231EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step231EarlyControl_flagsOwned⟩
  · exact s2Step231EarlyControl_flagsBorrow

private theorem s2Step231EarlyControl_historyBorrow : s2Step231EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step231EarlyControlLog.recordFresh=some s2Step231EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step231EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step231EarlyControlHistoryArena,s2Step231EarlyControlArena,s2Step231EarlyControlLog,arenaWires]

private theorem s2Step231EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_history : compileHmrRecordGrowLog s2Step231EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step231EarlyControlLog.recordFresh=some s2Step231EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step231EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step231EarlyControl_historyBorrow

private theorem s2Step231EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step231EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlHistoryArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step231EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlHistoryArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_sigmaRelease : s2Step231EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step231EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step231EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step231EarlyControlSigmaArena,s2Step231EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step231EarlyControl_sigma : compileHmrSigmaDropLog s2Step231EarlyControlHistoryArena false 0 0 254 820 []=some s2Step231EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step231EarlyControl_sigmaOwned⟩
  · exact s2Step231EarlyControl_sigmaRelease

private theorem s2Step231EarlyControl_zeroBorrow : s2Step231EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step231EarlyControlLog.zeroWork=some s2Step231EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step231EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step231EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step231EarlyControlZeroArena,s2Step231EarlyControlArena,s2Step231EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step231EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step231EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step231EarlyControlArena (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<821) ∨ (822≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<847) ∨ (848≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EarlyControl_zero : compileHmrEqualityLog s2Step231EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step231EarlyControlLog.zeroWork=some (s2Step231EarlyControlZeroArena,s2Step231EarlyControlLog.zeroWork,s2Step231EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step231EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step231EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step231EarlyControl_logged : s2Step231EarlyControlPlan.Logged s2Step231EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 787 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step231EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step231EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step231EarlyControl_zero
  · exact s2Step231EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step231EarlyControl_flags
  · exact s2Step231EarlyControl_fit
  · exact s2Step231EarlyControl_history
  · exact s2Step231EarlyControl_sigma
  · exact s2Step231EarlyControl_branch

private theorem s2Step231EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step231EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 787 49 s2Step231EarlyControlLog=some s2Step231EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step231EarlyControlPlan s2Step231EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 254 253 252 251 787 49 s2Step231EarlyControl_logged

private def s2Step231EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩

private def s2Step231EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step231EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153],769⟩

private def s2Step231EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private def s2Step231FrontBank : WindowBank := ⟨s2Step231EntryFRow,s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow⟩

private def s2Step231Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 805, 768]

private def s2Step231Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810, 800, 769]

private def s2Step231Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 797, 770]

private def s2Step231Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 809, 771]

private theorem s2Step231Counter_apart : Disjoint s2Step231HeadFvAfter.live s2Step231CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step231HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231Counter_borrowed : s2Step231HeadFvAfter.checkBorrow 4 s2Step231CounterWork=some s2Step231CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step231HeadFvAfter s2Step231CounterDuring s2Step231CounterWork.toFinset s2Step231Counter_bounded s2Step231Counter_apart rfl

private theorem s2Step231Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step231HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step231HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231Counter_checked : compileHmrCounterStepLog s2Step231HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step231CounterWork=some s2Step231CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step231HeadFvAfter.live := fun q hq => s2Step231Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step231Counter_borrowed

private def s2Step231EntryFAfter : Arena := s2Step231EntryFBefore

private theorem s2Step231EntryBank_incomingDistinct : ([s2Step231EntryFRow,s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231EntryF_Incoming : rowsOwned s2Step231EntryFBefore [s2Step231EntryFRow,s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231EntryFRow,s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow] 0 s2Step231EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231EntryBank_outgoingOwned : rowsOwned s2Step231EntryGvAfter [s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step231EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231EntryF_Outgoing : rowsOwned s2Step231EntryGvAfter [s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut] :=
  hmrRows_owned_drop s2Step231EntryGvAfter [s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut] 0 s2Step231EntryBank_outgoingOwned

private theorem s2Step231EntryF_distinct : (s2Step231EntryFRow.sign::s2Step231EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231EntryF_owned : (s2Step231EntryFRow.sign::s2Step231EntryFRow.payload).toFinset⊆s2Step231EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EntryF_reserved : s2Step231EntryFBefore.reserve s2Step231EntryFFresh.toFinset=some s2Step231EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step231EntryFFresh,arenaWires]
  · norm_num [s2Step231EntryFBefore,s2Step231EntryFFresh,arenaWires]
  · simp only [s2Step231EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step231EntryF_checked : planRowResizeLog s2Step231EntryFBefore s2Step231EntryFRow 155 s2Step231EntryFFresh=
    some (s2Step231EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩,growRow 768 s2Step231EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step231EntryFBefore s2Step231EntryFAfter s2Step231EntryFRow 155 s2Step231EntryFFresh
    s2Step231EntryF_distinct s2Step231EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step231EntryF_reserved
  have rowEq : WindowRow.mk (s2Step231EntryFRow.payload++s2Step231EntryFFresh) s2Step231EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step231EntryFvAfter : Arena := s2Step231EntryGAfter

private def s2Step231EntryFvBefore : Arena := s2Step231EntryGAfter

private theorem s2Step231EntryFv_Incoming : rowsOwned s2Step231EntryFvBefore [s2Step231EntryFvRow,s2Step231EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231EntryFRow,s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow] 2 s2Step231EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231EntryFv_Outgoing : rowsOwned s2Step231EntryGvAfter [s2Step231EntryFvOut,s2Step231EntryGvOut] :=
  hmrRows_owned_drop s2Step231EntryGvAfter [s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut] 2 s2Step231EntryBank_outgoingOwned

private theorem s2Step231EntryFv_distinct : (s2Step231EntryFvRow.sign::s2Step231EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231EntryFv_owned : (s2Step231EntryFvRow.sign::s2Step231EntryFvRow.payload).toFinset⊆s2Step231EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EntryFv_reserved : s2Step231EntryFvBefore.reserve s2Step231EntryFvFresh.toFinset=some s2Step231EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step231EntryFvFresh,arenaWires]
  · norm_num [s2Step231EntryFvBefore,s2Step231EntryGAfter,s2Step231EntryFvFresh,arenaWires]
  · simp only [s2Step231EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step231EntryFv_checked : planRowResizeLog s2Step231EntryFvBefore s2Step231EntryFvRow 130 s2Step231EntryFvFresh=
    some (s2Step231EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩,growRow 770 s2Step231EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step231EntryFvBefore s2Step231EntryFvAfter s2Step231EntryFvRow 130 s2Step231EntryFvFresh
    s2Step231EntryFv_distinct s2Step231EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step231EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step231EntryFvRow.payload++s2Step231EntryFvFresh) s2Step231EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step231EntryGBefore : Arena := s2Step231EntryFBefore

private theorem s2Step231EntryG_Incoming : rowsOwned s2Step231EntryGBefore [s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231EntryFRow,s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow] 1 s2Step231EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231EntryG_Outgoing : rowsOwned s2Step231EntryGvAfter [s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut] :=
  hmrRows_owned_drop s2Step231EntryGvAfter [s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut] 1 s2Step231EntryBank_outgoingOwned

private theorem s2Step231EntryG_distinct : (s2Step231EntryGRow.sign::s2Step231EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231EntryG_owned : (s2Step231EntryGRow.sign::s2Step231EntryGRow.payload).toFinset⊆s2Step231EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EntryG_reserved : s2Step231EntryGBefore.reserve s2Step231EntryGFresh.toFinset=some s2Step231EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step231EntryGFresh,arenaWires]
  · norm_num [s2Step231EntryGBefore,s2Step231EntryFBefore,s2Step231EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step231EntryGAfter,s2Step231EntryGBefore,s2Step231EntryFBefore,s2Step231EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step231EntryG_checked : planRowResizeLog s2Step231EntryGBefore s2Step231EntryGRow 155 s2Step231EntryGFresh=
    some (s2Step231EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810],769⟩,growRow 769 s2Step231EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step231EntryGBefore s2Step231EntryGAfter s2Step231EntryGRow 155 s2Step231EntryGFresh
    s2Step231EntryG_distinct s2Step231EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step231EntryG_reserved
  have rowEq : WindowRow.mk (s2Step231EntryGRow.payload++s2Step231EntryGFresh) s2Step231EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step231EntryGvBefore : Arena := s2Step231EntryGAfter

private theorem s2Step231EntryGv_Incoming : rowsOwned s2Step231EntryGvBefore [s2Step231EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231EntryFRow,s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow] 3 s2Step231EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231EntryGv_Outgoing : rowsOwned s2Step231EntryGvAfter [s2Step231EntryGvOut] :=
  hmrRows_owned_drop s2Step231EntryGvAfter [s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut] 3 s2Step231EntryBank_outgoingOwned

private theorem s2Step231EntryGv_distinct : (s2Step231EntryGvRow.sign::s2Step231EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231EntryGv_owned : (s2Step231EntryGvRow.sign::s2Step231EntryGvRow.payload).toFinset⊆s2Step231EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231EntryGv_reserved : s2Step231EntryGvBefore.reserve s2Step231EntryGvFresh.toFinset=some s2Step231EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step231EntryGvFresh,arenaWires]
  · norm_num [s2Step231EntryGvBefore,s2Step231EntryGAfter,s2Step231EntryGvFresh,arenaWires]
  · simp only [s2Step231EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step231EntryGv_checked : planRowResizeLog s2Step231EntryGvBefore s2Step231EntryGvRow 130 s2Step231EntryGvFresh=
    some (s2Step231EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩,growRow 771 s2Step231EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step231EntryGvBefore s2Step231EntryGvAfter s2Step231EntryGvRow 130 s2Step231EntryGvFresh
    s2Step231EntryGv_distinct s2Step231EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step231EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step231EntryGvRow.payload++s2Step231EntryGvFresh) s2Step231EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step231EntryBank_rows : planWindowRowsLog s2Step231EntryFBefore [(s2Step231EntryFRow,155),(s2Step231EntryGRow,155),(s2Step231EntryFvRow,130),(s2Step231EntryGvRow,130)] [s2Step231EntryFFresh,s2Step231EntryGFresh,s2Step231EntryFvFresh,s2Step231EntryGvFresh]=
    some (s2Step231EntryGvAfter,[s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut],(growRow 768 s2Step231EntryFFresh ++ (growRow 769 s2Step231EntryGFresh ++ (growRow 770 s2Step231EntryFvFresh ++ (growRow 771 s2Step231EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step231EntryGvAfter [] []=some (s2Step231EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step231EntryGvBefore s2Step231EntryGvAfter s2Step231EntryGvAfter
    s2Step231EntryGvRow s2Step231EntryGvOut 130 s2Step231EntryGvFresh [] [] []
    (growRow 771 s2Step231EntryGvFresh) ([]) s2Step231EntryGv_Incoming s2Step231EntryGv_checked h4 s2Step231EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step231EntryFvBefore s2Step231EntryFvAfter s2Step231EntryGvAfter
    s2Step231EntryFvRow s2Step231EntryFvOut 130 s2Step231EntryFvFresh [(s2Step231EntryGvRow,130)] [s2Step231EntryGvFresh] [s2Step231EntryGvOut]
    (growRow 770 s2Step231EntryFvFresh) ((growRow 771 s2Step231EntryGvFresh ++ [])) s2Step231EntryFv_Incoming s2Step231EntryFv_checked h3 s2Step231EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step231EntryGBefore s2Step231EntryGAfter s2Step231EntryGvAfter
    s2Step231EntryGRow s2Step231EntryGOut 155 s2Step231EntryGFresh [(s2Step231EntryFvRow,130),(s2Step231EntryGvRow,130)] [s2Step231EntryFvFresh,s2Step231EntryGvFresh] [s2Step231EntryFvOut,s2Step231EntryGvOut]
    (growRow 769 s2Step231EntryGFresh) ((growRow 770 s2Step231EntryFvFresh ++ (growRow 771 s2Step231EntryGvFresh ++ []))) s2Step231EntryG_Incoming s2Step231EntryG_checked h2 s2Step231EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step231EntryFBefore s2Step231EntryFAfter s2Step231EntryGvAfter
    s2Step231EntryFRow s2Step231EntryFOut 155 s2Step231EntryFFresh [(s2Step231EntryGRow,155),(s2Step231EntryFvRow,130),(s2Step231EntryGvRow,130)] [s2Step231EntryGFresh,s2Step231EntryFvFresh,s2Step231EntryGvFresh] [s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut]
    (growRow 768 s2Step231EntryFFresh) ((growRow 769 s2Step231EntryGFresh ++ (growRow 770 s2Step231EntryFvFresh ++ (growRow 771 s2Step231EntryGvFresh ++ [])))) s2Step231EntryF_Incoming s2Step231EntryF_checked h1 s2Step231EntryF_Outgoing
  exact h0

private theorem s2Step231EntryBank_checked : compileHmrBankResizeLog .entry s2Step231EntryFBefore ⟨s2Step231EntryFRow,s2Step231EntryGRow,s2Step231EntryFvRow,s2Step231EntryGvRow⟩ ⟨155,155,130,130⟩ [s2Step231EntryFFresh,s2Step231EntryGFresh,s2Step231EntryFvFresh,s2Step231EntryGvFresh]=
    some (s2Step231EntryGvAfter,⟨s2Step231EntryFOut,s2Step231EntryGOut,s2Step231EntryFvOut,s2Step231EntryGvOut⟩,(growRow 768 s2Step231EntryFFresh ++ (growRow 769 s2Step231EntryGFresh ++ (growRow 770 s2Step231EntryFvFresh ++ (growRow 771 s2Step231EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step231EntryBank_rows]
  rfl

private def s2Step231ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<665) ∨ (667≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231ExitFBefore : Arena := s2Step231ExitGAfter

private def s2Step231ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 805],768⟩

private def s2Step231ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 797],770⟩

private def s2Step231ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810, 800],769⟩

private def s2Step231ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 809],771⟩

private theorem s2Step231ExitBank_incomingDistinct : ([s2Step231ExitGRow,s2Step231ExitFRow,s2Step231ExitFvRow,s2Step231ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231ExitF_Incoming : rowsOwned s2Step231ExitFBefore [s2Step231ExitFRow,s2Step231ExitFvRow,s2Step231ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231ExitGRow,s2Step231ExitFRow,s2Step231ExitFvRow,s2Step231ExitGvRow] 1 s2Step231ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231ExitBank_outgoingOwned : rowsOwned s2Step231ExitGvAfter [s2Step231ExitGOut,s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step231ExitGvAfter (fun q => (0≤q ∧ q<665) ∨ (667≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231ExitF_Outgoing : rowsOwned s2Step231ExitGvAfter [s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut] :=
  hmrRows_owned_drop s2Step231ExitGvAfter [s2Step231ExitGOut,s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut] 1 s2Step231ExitBank_outgoingOwned

private theorem s2Step231ExitF_distinct : (s2Step231ExitFRow.sign::s2Step231ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231ExitF_owned : (s2Step231ExitFRow.sign::s2Step231ExitFRow.payload).toFinset⊆s2Step231ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231ExitF_retired : s2Step231ExitFBefore.retireSet s2Step231ExitFExtra.toFinset=s2Step231ExitFAfter := by
  unfold Arena.retireSet s2Step231ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step231ExitFBefore,s2Step231ExitGAfter,s2Step231ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step231ExitF_checked : planRowResizeLog s2Step231ExitFBefore s2Step231ExitFRow 153 []=
    some (s2Step231ExitFAfter,s2Step231ExitFOut,shrinkRow 768 s2Step231ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step231ExitFBefore s2Step231ExitFRow 153 s2Step231ExitF_distinct s2Step231ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step231ExitFRow.payload.take 153) s2Step231ExitFRow.sign=s2Step231ExitFOut := by decide +kernel
  have hi : s2Step231ExitFRow.payload.drop 153=s2Step231ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step231ExitF_retired] at result
  exact result

private def s2Step231ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<665) ∨ (667≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231ExitFvBefore : Arena := s2Step231ExitFAfter

private theorem s2Step231ExitFv_Incoming : rowsOwned s2Step231ExitFvBefore [s2Step231ExitFvRow,s2Step231ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231ExitGRow,s2Step231ExitFRow,s2Step231ExitFvRow,s2Step231ExitGvRow] 2 s2Step231ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231ExitFvBefore (fun q => (0≤q ∧ q<665) ∨ (667≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231ExitFv_Outgoing : rowsOwned s2Step231ExitGvAfter [s2Step231ExitFvOut,s2Step231ExitGvOut] :=
  hmrRows_owned_drop s2Step231ExitGvAfter [s2Step231ExitGOut,s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut] 2 s2Step231ExitBank_outgoingOwned

private theorem s2Step231ExitFv_distinct : (s2Step231ExitFvRow.sign::s2Step231ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231ExitFv_owned : (s2Step231ExitFvRow.sign::s2Step231ExitFvRow.payload).toFinset⊆s2Step231ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231ExitFvBefore (fun q => (0≤q ∧ q<665) ∨ (667≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231ExitFv_retired : s2Step231ExitFvBefore.retireSet s2Step231ExitFvExtra.toFinset=s2Step231ExitFvAfter := by
  unfold Arena.retireSet s2Step231ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step231ExitFvBefore,s2Step231ExitFAfter,s2Step231ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step231ExitFv_checked : planRowResizeLog s2Step231ExitFvBefore s2Step231ExitFvRow 130 []=
    some (s2Step231ExitFvAfter,s2Step231ExitFvOut,shrinkRow 770 s2Step231ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step231ExitFvBefore s2Step231ExitFvRow 130 s2Step231ExitFv_distinct s2Step231ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step231ExitFvRow.payload.take 130) s2Step231ExitFvRow.sign=s2Step231ExitFvOut := by decide +kernel
  have hi : s2Step231ExitFvRow.payload.drop 130=s2Step231ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step231ExitFv_retired] at result
  exact result

private def s2Step231ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step231ExitG_Incoming : rowsOwned s2Step231ExitGBefore [s2Step231ExitGRow,s2Step231ExitFRow,s2Step231ExitFvRow,s2Step231ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231ExitGRow,s2Step231ExitFRow,s2Step231ExitFvRow,s2Step231ExitGvRow] 0 s2Step231ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231ExitG_Outgoing : rowsOwned s2Step231ExitGvAfter [s2Step231ExitGOut,s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut] :=
  hmrRows_owned_drop s2Step231ExitGvAfter [s2Step231ExitGOut,s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut] 0 s2Step231ExitBank_outgoingOwned

private theorem s2Step231ExitG_distinct : (s2Step231ExitGRow.sign::s2Step231ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231ExitG_owned : (s2Step231ExitGRow.sign::s2Step231ExitGRow.payload).toFinset⊆s2Step231ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231ExitGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231ExitG_retired : s2Step231ExitGBefore.retireSet s2Step231ExitGExtra.toFinset=s2Step231ExitGAfter := by
  unfold Arena.retireSet s2Step231ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step231ExitGBefore,s2Step231ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step231ExitG_checked : planRowResizeLog s2Step231ExitGBefore s2Step231ExitGRow 154 []=
    some (s2Step231ExitGAfter,s2Step231ExitGOut,shrinkRow 769 s2Step231ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step231ExitGBefore s2Step231ExitGRow 154 s2Step231ExitG_distinct s2Step231ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step231ExitGRow.payload.take 154) s2Step231ExitGRow.sign=s2Step231ExitGOut := by decide +kernel
  have hi : s2Step231ExitGRow.payload.drop 154=s2Step231ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step231ExitG_retired] at result
  exact result

private def s2Step231ExitGvBefore : Arena := s2Step231ExitFvAfter

private theorem s2Step231ExitGv_Incoming : rowsOwned s2Step231ExitGvBefore [s2Step231ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231ExitGRow,s2Step231ExitFRow,s2Step231ExitFvRow,s2Step231ExitGvRow] 3 s2Step231ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231ExitGvBefore (fun q => (0≤q ∧ q<665) ∨ (667≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231ExitGv_Outgoing : rowsOwned s2Step231ExitGvAfter [s2Step231ExitGvOut] :=
  hmrRows_owned_drop s2Step231ExitGvAfter [s2Step231ExitGOut,s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut] 3 s2Step231ExitBank_outgoingOwned

private theorem s2Step231ExitGv_distinct : (s2Step231ExitGvRow.sign::s2Step231ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231ExitGv_owned : (s2Step231ExitGvRow.sign::s2Step231ExitGvRow.payload).toFinset⊆s2Step231ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231ExitGvBefore (fun q => (0≤q ∧ q<665) ∨ (667≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231ExitGv_retired : s2Step231ExitGvBefore.retireSet s2Step231ExitGvExtra.toFinset=s2Step231ExitGvAfter := by
  unfold Arena.retireSet s2Step231ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step231ExitGvBefore,s2Step231ExitFvAfter,s2Step231ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step231ExitGv_checked : planRowResizeLog s2Step231ExitGvBefore s2Step231ExitGvRow 130 []=
    some (s2Step231ExitGvAfter,s2Step231ExitGvOut,shrinkRow 771 s2Step231ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step231ExitGvBefore s2Step231ExitGvRow 130 s2Step231ExitGv_distinct s2Step231ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step231ExitGvRow.payload.take 130) s2Step231ExitGvRow.sign=s2Step231ExitGvOut := by decide +kernel
  have hi : s2Step231ExitGvRow.payload.drop 130=s2Step231ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step231ExitGv_retired] at result
  exact result

private theorem s2Step231ExitBank_rows : planWindowRowsLog s2Step231ExitGBefore [(s2Step231ExitGRow,154),(s2Step231ExitFRow,153),(s2Step231ExitFvRow,130),(s2Step231ExitGvRow,130)] [[],[],[],[]]=
    some (s2Step231ExitGvAfter,[s2Step231ExitGOut,s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut],(shrinkRow 769 s2Step231ExitGExtra ++ (shrinkRow 768 s2Step231ExitFExtra ++ (shrinkRow 770 s2Step231ExitFvExtra ++ (shrinkRow 771 s2Step231ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step231ExitGvAfter [] []=some (s2Step231ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step231ExitGvBefore s2Step231ExitGvAfter s2Step231ExitGvAfter
    s2Step231ExitGvRow s2Step231ExitGvOut 130 [] [] [] []
    (shrinkRow 771 s2Step231ExitGvExtra) ([]) s2Step231ExitGv_Incoming s2Step231ExitGv_checked h4 s2Step231ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step231ExitFvBefore s2Step231ExitFvAfter s2Step231ExitGvAfter
    s2Step231ExitFvRow s2Step231ExitFvOut 130 [] [(s2Step231ExitGvRow,130)] [[]] [s2Step231ExitGvOut]
    (shrinkRow 770 s2Step231ExitFvExtra) ((shrinkRow 771 s2Step231ExitGvExtra ++ [])) s2Step231ExitFv_Incoming s2Step231ExitFv_checked h3 s2Step231ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step231ExitFBefore s2Step231ExitFAfter s2Step231ExitGvAfter
    s2Step231ExitFRow s2Step231ExitFOut 153 [] [(s2Step231ExitFvRow,130),(s2Step231ExitGvRow,130)] [[],[]] [s2Step231ExitFvOut,s2Step231ExitGvOut]
    (shrinkRow 768 s2Step231ExitFExtra) ((shrinkRow 770 s2Step231ExitFvExtra ++ (shrinkRow 771 s2Step231ExitGvExtra ++ []))) s2Step231ExitF_Incoming s2Step231ExitF_checked h2 s2Step231ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step231ExitGBefore s2Step231ExitGAfter s2Step231ExitGvAfter
    s2Step231ExitGRow s2Step231ExitGOut 154 [] [(s2Step231ExitFRow,153),(s2Step231ExitFvRow,130),(s2Step231ExitGvRow,130)] [[],[],[]] [s2Step231ExitFOut,s2Step231ExitFvOut,s2Step231ExitGvOut]
    (shrinkRow 769 s2Step231ExitGExtra) ((shrinkRow 768 s2Step231ExitFExtra ++ (shrinkRow 770 s2Step231ExitFvExtra ++ (shrinkRow 771 s2Step231ExitGvExtra ++ [])))) s2Step231ExitG_Incoming s2Step231ExitG_checked h1 s2Step231ExitG_Outgoing
  exact h0

private theorem s2Step231ExitBank_checked : compileHmrBankResizeLog .exit s2Step231ExitGBefore ⟨s2Step231ExitFRow,s2Step231ExitGRow,s2Step231ExitFvRow,s2Step231ExitGvRow⟩ ⟨153,154,130,130⟩ [[],[],[],[]]=
    some (s2Step231ExitGvAfter,⟨s2Step231ExitFOut,s2Step231ExitGOut,s2Step231ExitFvOut,s2Step231ExitGvOut⟩,(shrinkRow 769 s2Step231ExitGExtra ++ (shrinkRow 768 s2Step231ExitFExtra ++ (shrinkRow 770 s2Step231ExitFvExtra ++ (shrinkRow 771 s2Step231ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step231ExitBank_rows]
  rfl

private theorem s2Step231Add0_apart : Disjoint s2Step231Add0Arena.live s2Step231Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step231Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231Add0_card : s2Step231Add0Arena.live.card=893 := by
  decide +kernel

private theorem s2Step231Add0_borrowed : s2Step231Add0Arena.checkBorrow (hmrHybridCount s2Step231Add0Arena s2Step231Add0B.length) s2Step231Add0Work=some s2Step231Add0During := by
  have len : s2Step231Add0Work.length=hmrHybridCount s2Step231Add0Arena s2Step231Add0B.length := by
    rw [hmrHybridCount,s2Step231Add0_card]
    decide +kernel
  have nd : s2Step231Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step231Add0Arena s2Step231Add0During s2Step231Add0Work.toFinset s2Step231Add0_bounded s2Step231Add0_apart rfl

private theorem s2Step231Add0_distinct : (814::787::882::(s2Step231Add0A++s2Step231Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231Add0_owned : (814::787::882::(s2Step231Add0A++s2Step231Add0B)).toFinset⊆s2Step231Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step231Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231Add0_checked : compileHmrHybridCinLog s2Step231Add0Arena 787 814 882 s2Step231Add0A s2Step231Add0B s2Step231Add0Work=some s2Step231Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step231Add0Arena s2Step231Add0During 787 814 882 s2Step231Add0A s2Step231Add0B s2Step231Add0Work
    (by decide +kernel) (by decide +kernel) s2Step231Add0_distinct
    (fun q hq => s2Step231Add0_owned (List.mem_toFinset.mpr hq)) s2Step231Add0_borrowed

private theorem s2Step231Add1_apart : Disjoint s2Step231Add1Arena.live s2Step231Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step231Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231Add1_card : s2Step231Add1Arena.live.card=893 := by
  decide +kernel

private theorem s2Step231Add1_borrowed : s2Step231Add1Arena.checkBorrow (hmrHybridCount s2Step231Add1Arena s2Step231Add1B.length) s2Step231Add1Work=some s2Step231Add1During := by
  have len : s2Step231Add1Work.length=hmrHybridCount s2Step231Add1Arena s2Step231Add1B.length := by
    rw [hmrHybridCount,s2Step231Add1_card]
    decide +kernel
  have nd : s2Step231Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step231Add1Arena s2Step231Add1During s2Step231Add1Work.toFinset s2Step231Add1_bounded s2Step231Add1_apart rfl

private theorem s2Step231Add1_distinct : (814::787::882::(s2Step231Add1A++s2Step231Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231Add1_owned : (814::787::882::(s2Step231Add1A++s2Step231Add1B)).toFinset⊆s2Step231Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step231Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231Add1_checked : compileHmrHybridCinLog s2Step231Add1Arena 787 814 882 s2Step231Add1A s2Step231Add1B s2Step231Add1Work=some s2Step231Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step231Add1Arena s2Step231Add1During 787 814 882 s2Step231Add1A s2Step231Add1B s2Step231Add1Work
    (by decide +kernel) (by decide +kernel) s2Step231Add1_distinct
    (fun q hq => s2Step231Add1_owned (List.mem_toFinset.mpr hq)) s2Step231Add1_borrowed

private theorem s2Step231F4_apart : Disjoint (s2Step231Add0A++s2Step231Add0B).toFinset (s2Step231Add1A++s2Step231Add1B).toFinset := by
  have nd : ((s2Step231Add0A++s2Step231Add0B)++(s2Step231Add1A++s2Step231Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step231F4_carry : s2Step231F4FlagArena.checkBorrow 1 [882]=some s2Step231Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step231F4FlagArena,s2Step231HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step231F4FlagArena,s2Step231HeadFvAfter,s2Step231Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step231F4_distinct : (820::787::814::882::((s2Step231Add0A++s2Step231Add1A)++(s2Step231Add0B++s2Step231Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231F4_flag : s2Step231HeadFvAfter.checkBorrow 1 [814]=some s2Step231F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step231HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step231F4_owned : (820::787::((s2Step231Add0A++s2Step231Add1A)++(s2Step231Add0B++s2Step231Add1B))).toFinset⊆s2Step231HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step231HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231F4_checked : compileHmrHybridF4Log s2Step231HeadFvAfter 820 787 s2Step231Add0A s2Step231Add0B s2Step231Add1A s2Step231Add1B [814] [882] s2Step231Add0Work s2Step231Add1Work=some s2Step231F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step231HeadFvAfter s2Step231F4FlagArena s2Step231Add0Arena s2Step231Add0During s2Step231Add1During 820 787
    s2Step231Add0A s2Step231Add0B s2Step231Add1A s2Step231Add1B [814] [882] s2Step231Add0Work s2Step231Add1Work
    (fun q hq => s2Step231F4_owned (List.mem_toFinset.mpr hq)) s2Step231F4_flag s2Step231F4_carry
    s2Step231F4_distinct s2Step231F4_apart s2Step231Add0_checked s2Step231Add1_checked

private theorem s2Step231Front_branch : s2Step231FrontSigmaArena.checkBorrow 1 [787]=some s2Step231HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step231FrontSigmaArena,s2Step231EntryGvAfter,s2Step231EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step231FrontSigmaArena,s2Step231EntryGvAfter,s2Step231EntryGAfter,s2Step231HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step231Front_entry : HmrFrontEntryValid s2Step231EntryFBefore s2Step231FrontBank 155 130 ⟨153,154,130,130⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step231FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step231EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step231EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<820) ∨ (821≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step231FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step231Front_sigma : s2Step231EntryGvAfter.checkBorrow 1 [820]=some s2Step231FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step231EntryGvAfter,s2Step231EntryGAfter,arenaWires]
  · rfl

private def s2Step231HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231HeadFBefore : Arena := s2Step231HeadGAfter

private def s2Step231HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666],768⟩

private def s2Step231HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804],770⟩

private def s2Step231HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810],769⟩

private def s2Step231HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849],771⟩

private theorem s2Step231HeadBank_incomingDistinct : ([s2Step231HeadGRow,s2Step231HeadFRow,s2Step231HeadGvRow,s2Step231HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231HeadF_Incoming : rowsOwned s2Step231HeadFBefore [s2Step231HeadFRow,s2Step231HeadGvRow,s2Step231HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231HeadGRow,s2Step231HeadFRow,s2Step231HeadGvRow,s2Step231HeadFvRow] 1 s2Step231HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231HeadBank_outgoingOwned : rowsOwned s2Step231HeadFvAfter [s2Step231HeadGOut,s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step231HeadFvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231HeadF_Outgoing : rowsOwned s2Step231HeadFvAfter [s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut] :=
  hmrRows_owned_drop s2Step231HeadFvAfter [s2Step231HeadGOut,s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut] 1 s2Step231HeadBank_outgoingOwned

private theorem s2Step231HeadF_distinct : (s2Step231HeadFRow.sign::s2Step231HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231HeadF_owned : (s2Step231HeadFRow.sign::s2Step231HeadFRow.payload).toFinset⊆s2Step231HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231HeadFBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231HeadF_reserved : s2Step231HeadFBefore.reserve s2Step231HeadFFresh.toFinset=some s2Step231HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step231HeadFFresh,arenaWires]
  · norm_num [s2Step231HeadFBefore,s2Step231HeadGAfter,s2Step231HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step231HeadFAfter,s2Step231HeadFBefore,s2Step231HeadGAfter,s2Step231HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step231HeadF_checked : planRowResizeLog s2Step231HeadFBefore s2Step231HeadFRow 156 s2Step231HeadFFresh=
    some (s2Step231HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 805],768⟩,growRow 768 s2Step231HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step231HeadFBefore s2Step231HeadFAfter s2Step231HeadFRow 156 s2Step231HeadFFresh
    s2Step231HeadF_distinct s2Step231HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step231HeadF_reserved
  have rowEq : WindowRow.mk (s2Step231HeadFRow.payload++s2Step231HeadFFresh) s2Step231HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 805],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step231HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step231HeadFvBefore : Arena := s2Step231HeadGvAfter

private theorem s2Step231HeadFv_Incoming : rowsOwned s2Step231HeadFvBefore [s2Step231HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231HeadGRow,s2Step231HeadFRow,s2Step231HeadGvRow,s2Step231HeadFvRow] 3 s2Step231HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231HeadFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231HeadFv_Outgoing : rowsOwned s2Step231HeadFvAfter [s2Step231HeadFvOut] :=
  hmrRows_owned_drop s2Step231HeadFvAfter [s2Step231HeadGOut,s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut] 3 s2Step231HeadBank_outgoingOwned

private theorem s2Step231HeadFv_distinct : (s2Step231HeadFvRow.sign::s2Step231HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231HeadFv_owned : (s2Step231HeadFvRow.sign::s2Step231HeadFvRow.payload).toFinset⊆s2Step231HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231HeadFvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231HeadFv_reserved : s2Step231HeadFvBefore.reserve s2Step231HeadFvFresh.toFinset=some s2Step231HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step231HeadFvFresh,arenaWires]
  · norm_num [s2Step231HeadFvBefore,s2Step231HeadGvAfter,s2Step231HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step231HeadFvAfter,s2Step231HeadFvBefore,s2Step231HeadGvAfter,s2Step231HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step231HeadFv_checked : planRowResizeLog s2Step231HeadFvBefore s2Step231HeadFvRow 131 s2Step231HeadFvFresh=
    some (s2Step231HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 797],770⟩,growRow 770 s2Step231HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step231HeadFvBefore s2Step231HeadFvAfter s2Step231HeadFvRow 131 s2Step231HeadFvFresh
    s2Step231HeadFv_distinct s2Step231HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step231HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step231HeadFvRow.payload++s2Step231HeadFvFresh) s2Step231HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 793, 819, 785, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 797],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step231HeadG_Incoming : rowsOwned s2Step231HeadGBefore [s2Step231HeadGRow,s2Step231HeadFRow,s2Step231HeadGvRow,s2Step231HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231HeadGRow,s2Step231HeadFRow,s2Step231HeadGvRow,s2Step231HeadFvRow] 0 s2Step231HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231HeadG_Outgoing : rowsOwned s2Step231HeadFvAfter [s2Step231HeadGOut,s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut] :=
  hmrRows_owned_drop s2Step231HeadFvAfter [s2Step231HeadGOut,s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut] 0 s2Step231HeadBank_outgoingOwned

private theorem s2Step231HeadG_distinct : (s2Step231HeadGRow.sign::s2Step231HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231HeadG_owned : (s2Step231HeadGRow.sign::s2Step231HeadGRow.payload).toFinset⊆s2Step231HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231HeadGBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<805) ∨ (806≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231HeadG_reserved : s2Step231HeadGBefore.reserve s2Step231HeadGFresh.toFinset=some s2Step231HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step231HeadGFresh,arenaWires]
  · norm_num [s2Step231HeadGBefore,s2Step231HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step231HeadGAfter,s2Step231HeadGBefore,s2Step231HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step231HeadG_checked : planRowResizeLog s2Step231HeadGBefore s2Step231HeadGRow 156 s2Step231HeadGFresh=
    some (s2Step231HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810, 800],769⟩,growRow 769 s2Step231HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step231HeadGBefore s2Step231HeadGAfter s2Step231HeadGRow 156 s2Step231HeadGFresh
    s2Step231HeadG_distinct s2Step231HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step231HeadG_reserved
  have rowEq : WindowRow.mk (s2Step231HeadGRow.payload++s2Step231HeadGFresh) s2Step231HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 810, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step231HeadGvBefore : Arena := s2Step231HeadFAfter

private theorem s2Step231HeadGv_Incoming : rowsOwned s2Step231HeadGvBefore [s2Step231HeadGvRow,s2Step231HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step231HeadGRow,s2Step231HeadFRow,s2Step231HeadGvRow,s2Step231HeadFvRow] 2 s2Step231HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step231HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step231HeadGv_Outgoing : rowsOwned s2Step231HeadFvAfter [s2Step231HeadGvOut,s2Step231HeadFvOut] :=
  hmrRows_owned_drop s2Step231HeadFvAfter [s2Step231HeadGOut,s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut] 2 s2Step231HeadBank_outgoingOwned

private theorem s2Step231HeadGv_distinct : (s2Step231HeadGvRow.sign::s2Step231HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step231HeadGv_owned : (s2Step231HeadGvRow.sign::s2Step231HeadGvRow.payload).toFinset⊆s2Step231HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step231HeadGvBefore (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step231HeadGv_reserved : s2Step231HeadGvBefore.reserve s2Step231HeadGvFresh.toFinset=some s2Step231HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step231HeadGvFresh,arenaWires]
  · norm_num [s2Step231HeadGvBefore,s2Step231HeadFAfter,s2Step231HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step231HeadGvAfter,s2Step231HeadGvBefore,s2Step231HeadFAfter,s2Step231HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step231HeadGv_checked : planRowResizeLog s2Step231HeadGvBefore s2Step231HeadGvRow 131 s2Step231HeadGvFresh=
    some (s2Step231HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 809],771⟩,growRow 771 s2Step231HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step231HeadGvBefore s2Step231HeadGvAfter s2Step231HeadGvRow 131 s2Step231HeadGvFresh
    s2Step231HeadGv_distinct s2Step231HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step231HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step231HeadGvRow.payload++s2Step231HeadGvFresh) s2Step231HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 821, 847, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 809],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step231HeadBank_rows : planWindowRowsLog s2Step231HeadGBefore [(s2Step231HeadGRow,156),(s2Step231HeadFRow,156),(s2Step231HeadGvRow,131),(s2Step231HeadFvRow,131)] [s2Step231HeadGFresh,s2Step231HeadFFresh,s2Step231HeadGvFresh,s2Step231HeadFvFresh]=
    some (s2Step231HeadFvAfter,[s2Step231HeadGOut,s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut],(growRow 769 s2Step231HeadGFresh ++ (growRow 768 s2Step231HeadFFresh ++ (growRow 771 s2Step231HeadGvFresh ++ (growRow 770 s2Step231HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step231HeadFvAfter [] []=some (s2Step231HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step231HeadFvBefore s2Step231HeadFvAfter s2Step231HeadFvAfter
    s2Step231HeadFvRow s2Step231HeadFvOut 131 s2Step231HeadFvFresh [] [] []
    (growRow 770 s2Step231HeadFvFresh) ([]) s2Step231HeadFv_Incoming s2Step231HeadFv_checked h4 s2Step231HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step231HeadGvBefore s2Step231HeadGvAfter s2Step231HeadFvAfter
    s2Step231HeadGvRow s2Step231HeadGvOut 131 s2Step231HeadGvFresh [(s2Step231HeadFvRow,131)] [s2Step231HeadFvFresh] [s2Step231HeadFvOut]
    (growRow 771 s2Step231HeadGvFresh) ((growRow 770 s2Step231HeadFvFresh ++ [])) s2Step231HeadGv_Incoming s2Step231HeadGv_checked h3 s2Step231HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step231HeadFBefore s2Step231HeadFAfter s2Step231HeadFvAfter
    s2Step231HeadFRow s2Step231HeadFOut 156 s2Step231HeadFFresh [(s2Step231HeadGvRow,131),(s2Step231HeadFvRow,131)] [s2Step231HeadGvFresh,s2Step231HeadFvFresh] [s2Step231HeadGvOut,s2Step231HeadFvOut]
    (growRow 768 s2Step231HeadFFresh) ((growRow 771 s2Step231HeadGvFresh ++ (growRow 770 s2Step231HeadFvFresh ++ []))) s2Step231HeadF_Incoming s2Step231HeadF_checked h2 s2Step231HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step231HeadGBefore s2Step231HeadGAfter s2Step231HeadFvAfter
    s2Step231HeadGRow s2Step231HeadGOut 156 s2Step231HeadGFresh [(s2Step231HeadFRow,156),(s2Step231HeadGvRow,131),(s2Step231HeadFvRow,131)] [s2Step231HeadFFresh,s2Step231HeadGvFresh,s2Step231HeadFvFresh] [s2Step231HeadFOut,s2Step231HeadGvOut,s2Step231HeadFvOut]
    (growRow 769 s2Step231HeadGFresh) ((growRow 768 s2Step231HeadFFresh ++ (growRow 771 s2Step231HeadGvFresh ++ (growRow 770 s2Step231HeadFvFresh ++ [])))) s2Step231HeadG_Incoming s2Step231HeadG_checked h1 s2Step231HeadG_Outgoing
  exact h0

private theorem s2Step231HeadBank_checked : compileHmrBankResizeLog .headroom s2Step231HeadGBefore ⟨s2Step231HeadFRow,s2Step231HeadGRow,s2Step231HeadFvRow,s2Step231HeadGvRow⟩ ⟨156,156,131,131⟩ [s2Step231HeadGFresh,s2Step231HeadFFresh,s2Step231HeadGvFresh,s2Step231HeadFvFresh]=
    some (s2Step231HeadFvAfter,⟨s2Step231HeadFOut,s2Step231HeadGOut,s2Step231HeadFvOut,s2Step231HeadGvOut⟩,(growRow 769 s2Step231HeadGFresh ++ (growRow 768 s2Step231HeadFFresh ++ (growRow 771 s2Step231HeadGvFresh ++ (growRow 770 s2Step231HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step231HeadBank_rows]
  rfl

private theorem s2Step231Front_checked : compileHmrSourceFrontLog s2Step231EntryFBefore s2Step231FrontBank 155 130 ⟨153,154,130,130⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step231FrontLog=some s2Step231FrontPlan := by
  have pairEq : s2Step231FrontPair=⟨s2Step231HeadFRow,s2Step231HeadGRow,s2Step231HeadFvRow,s2Step231HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step231FrontHead=⟨s2Step231ExitFRow,s2Step231ExitGRow,s2Step231ExitFvRow,s2Step231ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step231Add0A=s2Step231FrontHead.f.wires := by decide +kernel
  have gEq : s2Step231Add0B=s2Step231FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step231Add1A=s2Step231FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step231Add1B=s2Step231FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step231EntryFBefore s2Step231FrontBank 155 130 ⟨153,154,130,130⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step231FrontLog s2Step231FrontPlan
  · exact s2Step231Front_entry
  · exact s2Step231EntryBank_checked
  · exact s2Step231Front_sigma
  · rfl
  · exact s2Step231Front_branch
  · rfl
  · simpa only [s2Step231FrontPlan,pairEq] using s2Step231HeadBank_checked
  · simpa only [s2Step231FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step231F4_checked
  · exact s2Step231Counter_checked
  · rfl
  · simpa only [s2Step231FrontPlan,headEq] using s2Step231ExitBank_checked

private theorem s2Step231Complete_explicit_checked : compileHmrEarlyStepLog s2Step231EntryFBefore s2Step231FrontBank 155 130 ⟨153,154,130,130⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step231CompleteLog=some s2Step231CompletePlan := by
  let Q := s2Step231EarlyControlPlan
  have hq := s2Step231EarlyControl_plan_checked
  have fv1 : s2Step231CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step231CompleteOut.fv.payload[2]?.getD s2Step231CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step231CompleteOut.fv.payload[3]?.getD s2Step231CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step231CompleteOut.fv.payload[4]?.getD s2Step231CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step231EntryFBefore s2Step231EarlyControlArena s2Step231FrontBank 155 130 ⟨153,154,130,130⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step231CompleteLog s2Step231FrontPlan Q
    s2Step231Front_checked s2Step231Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step231Complete_owned s2Step231Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step231EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 820 s2Step231CompleteOut.fv.second (s2Step231CompleteOut.fv.payload[2]?.getD s2Step231CompleteOut.fv.sign) (s2Step231CompleteOut.fv.payload[3]?.getD s2Step231CompleteOut.fv.sign) (s2Step231CompleteOut.fv.payload[4]?.getD s2Step231CompleteOut.fv.sign) 787 49 s2Step231EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep231Arena : Arena := s2Step231EntryFBefore
def s2PrivateStep231Bank : WindowBank := s2Step231FrontBank
def s2PrivateStep231Spec : HmrSourceWalkStepLog := ⟨155,130,⟨153,154,130,130⟩,49,.early s2Step231CompleteLog⟩
def s2PrivateStep231Plan : HmrSourceStepPlan := .early s2Step231CompletePlan
theorem s2PrivateStep231_source : s2PrivateStep231Spec=s2ObservedLogs224[7] := rfl
theorem s2PrivateStep231_checked : compileHmrSourceStepLog s2PrivateStep231Arena s2PrivateStep231Bank
    s2PrivateStep231Spec.fgWidth s2PrivateStep231Spec.vWidth s2PrivateStep231Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 231 s2PrivateStep231Spec.need none s2PrivateStep231Spec.log=some s2PrivateStep231Plan := by
  change compileHmrSourceStepLog s2Step231EntryFBefore s2Step231FrontBank 155 130 ⟨153,154,130,130⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 231 49 none (.early s2Step231CompleteLog)=some (.early s2Step231CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 231<498)]
  rw [s2Step231Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
