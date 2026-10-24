import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep234
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

private def s2Step236CompleteMoves : List (Wire × Wire) := [(792,664)]

private def s2Step236EarlyControlLog : HmrEarlyControlLog := ⟨[792, 814, 810, 793, 819],[809],[826],[842, 885, 891, 894, 896, 899],[]⟩

private def s2Step236FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [793, 819], [], [785]],[[809], [810], [814], [882]],[[], [], [], []]⟩,[797],[800],[826],[842],[885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891]⟩

private def s2Step236CompleteLog : HmrEarlyStepLog := ⟨s2Step236FrontLog,s2Step236CompleteMoves,s2Step236EarlyControlLog⟩

private def s2Step236ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩

private def s2Step236ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step236ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150],769⟩

private def s2Step236ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785],771⟩

private def s2Step236FrontOut : WindowBank := ⟨s2Step236ExitFOut,s2Step236ExitGOut,s2Step236ExitFvOut,s2Step236ExitGvOut⟩

private def s2Step236CompleteOut : WindowBank := s2Step236FrontOut.repacked s2Step236CompleteMoves

private def s2Step236EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step236EarlyControlPositiveArena,[809],s2Step236EarlyControlEqualityArena,[826],⟨⟨797,false⟩,[⟨⟨809,false⟩,826⟩]⟩⟩

private def s2Step236EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,792⟩,⟨⟨774,false⟩,814⟩,⟨⟨775,false⟩,810⟩,⟨⟨776,false⟩,793⟩,⟨⟨777,false⟩,819⟩]⟩

private def s2Step236EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step236EarlyControlZeroArena,s2Step236EarlyControlZeroPlan,s2Step236EarlyControlClassPlan,s2Step236EarlyControlFlagArena,s2Step236EarlyControlFittedArena,s2Step236EarlyControlHistoryArena,s2Step236EarlyControlSigmaArena,s2Step236EarlyControlOutputArena,s2Step236EarlyControlLog⟩

private def s2Step236CounterWork : List Wire := [826, 842, 885, 891]

private theorem s2Step236Counter_bounded : s2Step236CounterWork.toFinset⊆arenaWires := by norm_num [s2Step236CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step236HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236CounterDuring : Arena := ⟨s2Step236HeadFvAfter.live∪s2Step236CounterWork.toFinset,Finset.union_subset s2Step236HeadFvAfter.bounded s2Step236Counter_bounded⟩

private def s2Step236EntryFFresh : List Wire := []

private def s2Step236EntryFvFresh : List Wire := []

private def s2Step236EntryGFresh : List Wire := [793, 819]

private def s2Step236EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EntryGvFresh : List Wire := [785]

private def s2Step236ExitFExtra : List Wire := [664, 810]

private def s2Step236ExitGExtra : List Wire := [793, 819, 809]

private def s2Step236ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<664) ∨ (665≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236ExitGvExtra : List Wire := [814]

private def s2Step236Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236Add0Work : List Wire := [885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step236Add0_bounded : s2Step236Add0Work.toFinset⊆arenaWires := by
  have h : s2Step236Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step236Add0During : Arena := ⟨s2Step236Add0Arena.live∪s2Step236Add0Work.toFinset,Finset.union_subset s2Step236Add0Arena.bounded s2Step236Add0_bounded⟩

private def s2Step236Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236Add1Work : List Wire := [885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step236Add1_bounded : s2Step236Add1Work.toFinset⊆arenaWires := by
  have h : s2Step236Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step236Add1During : Arena := ⟨s2Step236Add1Arena.live∪s2Step236Add1Work.toFinset,Finset.union_subset s2Step236Add1Arena.bounded s2Step236Add1_bounded⟩

private def s2Step236F4FlagArena : Arena := ⟨s2Step236HeadFvAfter.live∪{826},Finset.union_subset s2Step236HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step236F4Plan : HmrHybridF4Plan := ⟨s2Step236F4FlagArena,[826],s2Step236Add0Arena,[842],s2Step236Add0During,s2Step236Add0Work,s2Step236Add1During,s2Step236Add1Work⟩

private def s2Step236HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 810],768⟩

private def s2Step236HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step236HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819, 809],769⟩

private def s2Step236HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 814],771⟩

private def s2Step236FrontHead : WindowBank := ⟨s2Step236HeadFOut,s2Step236HeadGOut,s2Step236HeadFvOut,s2Step236HeadGvOut⟩

private def s2Step236EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step236EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩

private def s2Step236EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819],769⟩

private def s2Step236EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785],771⟩

private def s2Step236FrontPair : WindowBank := ⟨s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut⟩

private def s2Step236FrontSigmaArena : Arena := ⟨s2Step236EntryGvAfter.live∪{797},Finset.union_subset s2Step236EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step236HeadFFresh : List Wire := [810]

private def s2Step236HeadFvFresh : List Wire := [882]

private def s2Step236HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236HeadGFresh : List Wire := [809]

private def s2Step236HeadGvFresh : List Wire := [814]

private def s2Step236FrontPlan : HmrSourceFront := ⟨s2Step236EntryGvAfter,s2Step236FrontPair,(growRow 768 s2Step236EntryFFresh ++ (growRow 769 s2Step236EntryGFresh ++ (growRow 770 s2Step236EntryFvFresh ++ (growRow 771 s2Step236EntryGvFresh ++ [])))),s2Step236FrontSigmaArena,[797],s2Step236HeadGBefore,[800],
  s2Step236HeadFvAfter,s2Step236FrontHead,(growRow 769 s2Step236HeadGFresh ++ (growRow 768 s2Step236HeadFFresh ++ (growRow 771 s2Step236HeadGvFresh ++ (growRow 770 s2Step236HeadFvFresh ++ [])))),s2Step236F4Plan,s2Step236CounterDuring,s2Step236CounterWork,s2Step236ExitGvAfter,s2Step236FrontOut,(shrinkRow 769 s2Step236ExitGExtra ++ (shrinkRow 768 s2Step236ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step236ExitGvExtra ++ []))))⟩

private def s2Step236CompletePlan : HmrEarlyStepPlan := ⟨s2Step236FrontPlan,s2Step236EarlyControlArena,s2Step236EarlyControlPlan,s2Step236CompleteMoves⟩

private theorem s2Step236Complete_apart : List.Disjoint (s2Step236CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [797, 800, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step236CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[797, 800, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step236Complete_owned : (s2Step236CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step236CompleteMoveArena : Arena := ⟨s2Step236ExitGvAfter.live∪{664},Finset.union_subset s2Step236ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step236Complete_repack : s2Step236ExitGvAfter.checkRepack s2Step236CompleteMoves=some s2Step236EarlyControlArena := by
  have owned : 792∈s2Step236ExitGvAfter.live := by norm_num [s2Step236ExitGvAfter,arenaWires]
  have reserve : s2Step236ExitGvAfter.reserve {664}=some s2Step236CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step236ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step236CompleteMoveArena.retireSet {792}=s2Step236EarlyControlArena := by
    unfold Arena.retireSet s2Step236EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step236CompleteMoveArena,s2Step236ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step236CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step236CompleteMoveArena.retireSet {792}).checkRepack []=some s2Step236EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step236EarlyControl_branchOwned : ([800] : List Wire).toFinset⊆s2Step236EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_branch : compileHmrBranchRetirement s2Step236EarlyControlSigmaArena 800=some s2Step236EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step236EarlyControl_branchOwned
  · ext q
    simp [s2Step236EarlyControlOutputArena,s2Step236EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step236EarlyControl_classEqualityBorrow : s2Step236EarlyControlPositiveArena.checkBorrow (([797, 809] : List Wire).length-1) s2Step236EarlyControlLog.classWork=some s2Step236EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step236EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step236EarlyControlEqualityArena,s2Step236EarlyControlPositiveArena,s2Step236EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step236EarlyControl_classEqualityOwned : ([797, 809] : List Wire).toFinset⊆s2Step236EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_classEquality : compileHmrEqualityLog s2Step236EarlyControlPositiveArena [797, 809] 0 s2Step236EarlyControlLog.classWork=some (s2Step236EarlyControlEqualityArena,s2Step236EarlyControlLog.classWork,s2Step236EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step236EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step236EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step236EarlyControl_classOwned : ([777, 819, 797] : List Wire).toFinset⊆s2Step236EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_positiveBorrow : s2Step236EarlyControlZeroArena.checkBorrow (1) s2Step236EarlyControlLog.positiveWork=some s2Step236EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step236EarlyControlZeroArena (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step236EarlyControlPositiveArena,s2Step236EarlyControlZeroArena,s2Step236EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step236EarlyControl_class : compileHmrSourceClassLog s2Step236EarlyControlZeroArena false 777 s2Step236EarlyControlZeroPlan.top 0 797 s2Step236EarlyControlLog.positiveWork s2Step236EarlyControlLog.classWork=some s2Step236EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step236EarlyControlClassPlan s2Step236EarlyControlZeroArena false 777 s2Step236EarlyControlZeroPlan.top 0 797
  constructor
  · decide +kernel
  · exact s2Step236EarlyControl_classOwned
  · exact s2Step236EarlyControl_positiveBorrow
  · exact s2Step236EarlyControl_classEquality

private theorem s2Step236EarlyControl_entryRecordOwned : ([800, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_entrySigmaOwned : ([797, 254] : List Wire).toFinset⊆s2Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_fitBorrow : s2Step236EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step236EarlyControlLog.recordFresh=some s2Step236EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step236EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step236EarlyControlFittedArena,s2Step236EarlyControlFlagArena,s2Step236EarlyControlLog,arenaWires]

private theorem s2Step236EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step236EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_fit : compileHmrRecordGrowLog s2Step236EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step236EarlyControlLog.recordFresh=some s2Step236EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step236EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step236EarlyControl_fitBorrow

private theorem s2Step236EarlyControl_flagsBorrow : s2Step236EarlyControlEqualityArena.checkBorrow (6) s2Step236EarlyControlLog.flagWork=some s2Step236EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step236EarlyControlEqualityArena (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step236EarlyControlFlagArena,s2Step236EarlyControlEqualityArena,s2Step236EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step236EarlyControl_flagsOwned : ([826, 253, 252, 251] : List Wire).toFinset⊆s2Step236EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlEqualityArena (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_flags : compileHmrFlagsLog s2Step236EarlyControlClassPlan.equalityArena s2Step236EarlyControlClassPlan.equality.top 253 252 251 s2Step236EarlyControlLog.flagWork=some s2Step236EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step236EarlyControl_flagsOwned⟩
  · exact s2Step236EarlyControl_flagsBorrow

private theorem s2Step236EarlyControl_historyBorrow : s2Step236EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step236EarlyControlLog.recordFresh=some s2Step236EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step236EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step236EarlyControlHistoryArena,s2Step236EarlyControlArena,s2Step236EarlyControlLog,arenaWires]

private theorem s2Step236EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_history : compileHmrRecordGrowLog s2Step236EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step236EarlyControlLog.recordFresh=some s2Step236EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step236EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step236EarlyControl_historyBorrow

private theorem s2Step236EarlyControl_sigmaOwned : ([254, 797] : List Wire).toFinset⊆s2Step236EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_sigmaReleaseOwned : ([797] : List Wire).toFinset⊆s2Step236EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_sigmaRelease : s2Step236EarlyControlHistoryArena.release {797} (fun _ => false)=some s2Step236EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step236EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step236EarlyControlSigmaArena,s2Step236EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step236EarlyControl_sigma : compileHmrSigmaDropLog s2Step236EarlyControlHistoryArena false 0 0 254 797 []=some s2Step236EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step236EarlyControl_sigmaOwned⟩
  · exact s2Step236EarlyControl_sigmaRelease

private theorem s2Step236EarlyControl_zeroBorrow : s2Step236EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step236EarlyControlLog.zeroWork=some s2Step236EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step236EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step236EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step236EarlyControlZeroArena,s2Step236EarlyControlArena,s2Step236EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step236EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step236EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step236EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EarlyControl_zero : compileHmrEqualityLog s2Step236EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step236EarlyControlLog.zeroWork=some (s2Step236EarlyControlZeroArena,s2Step236EarlyControlLog.zeroWork,s2Step236EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step236EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step236EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step236EarlyControl_logged : s2Step236EarlyControlPlan.Logged s2Step236EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 797 254 253 252 251 800 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step236EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step236EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step236EarlyControl_zero
  · exact s2Step236EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step236EarlyControl_flags
  · exact s2Step236EarlyControl_fit
  · exact s2Step236EarlyControl_history
  · exact s2Step236EarlyControl_sigma
  · exact s2Step236EarlyControl_branch

private theorem s2Step236EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step236EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 797 254 253 252 251 800 49 s2Step236EarlyControlLog=some s2Step236EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step236EarlyControlPlan s2Step236EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 797 254 253 252 251 800 49 s2Step236EarlyControl_logged

private def s2Step236EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step236EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩

private def s2Step236EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150],769⟩

private def s2Step236EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820],771⟩

private def s2Step236FrontBank : WindowBank := ⟨s2Step236EntryFRow,s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow⟩

private def s2Step236Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 810, 768]

private def s2Step236Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819, 809, 769]

private def s2Step236Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 770]

private def s2Step236Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 814, 771]

private theorem s2Step236Counter_apart : Disjoint s2Step236HeadFvAfter.live s2Step236CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step236HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236Counter_borrowed : s2Step236HeadFvAfter.checkBorrow 4 s2Step236CounterWork=some s2Step236CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step236HeadFvAfter s2Step236CounterDuring s2Step236CounterWork.toFinset s2Step236Counter_bounded s2Step236Counter_apart rfl

private theorem s2Step236Counter_owned : (797::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step236HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step236HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236Counter_checked : compileHmrCounterStepLog s2Step236HeadFvAfter true 797 [772, 773, 774, 775, 776, 777] s2Step236CounterWork=some s2Step236CounterDuring := by
  have owned : ∀q∈797::[772, 773, 774, 775, 776, 777],q∈s2Step236HeadFvAfter.live := fun q hq => s2Step236Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step236Counter_borrowed

private def s2Step236EntryFAfter : Arena := s2Step236EntryFBefore

private theorem s2Step236EntryBank_incomingDistinct : ([s2Step236EntryFRow,s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236EntryF_Incoming : rowsOwned s2Step236EntryFBefore [s2Step236EntryFRow,s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236EntryFRow,s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow] 0 s2Step236EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236EntryBank_outgoingOwned : rowsOwned s2Step236EntryGvAfter [s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step236EntryGvAfter (fun q => (0≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236EntryF_Outgoing : rowsOwned s2Step236EntryGvAfter [s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut] :=
  hmrRows_owned_drop s2Step236EntryGvAfter [s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut] 0 s2Step236EntryBank_outgoingOwned

private theorem s2Step236EntryF_distinct : (s2Step236EntryFRow.sign::s2Step236EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236EntryF_owned : (s2Step236EntryFRow.sign::s2Step236EntryFRow.payload).toFinset⊆s2Step236EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EntryF_reserved : s2Step236EntryFBefore.reserve s2Step236EntryFFresh.toFinset=some s2Step236EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step236EntryFFresh,arenaWires]
  · norm_num [s2Step236EntryFBefore,s2Step236EntryFFresh,arenaWires]
  · simp only [s2Step236EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step236EntryF_checked : planRowResizeLog s2Step236EntryFBefore s2Step236EntryFRow 153 s2Step236EntryFFresh=
    some (s2Step236EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩,growRow 768 s2Step236EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step236EntryFBefore s2Step236EntryFAfter s2Step236EntryFRow 153 s2Step236EntryFFresh
    s2Step236EntryF_distinct s2Step236EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236EntryF_reserved
  have rowEq : WindowRow.mk (s2Step236EntryFRow.payload++s2Step236EntryFFresh) s2Step236EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step236EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236EntryFvAfter : Arena := s2Step236EntryGAfter

private def s2Step236EntryFvBefore : Arena := s2Step236EntryGAfter

private theorem s2Step236EntryFv_Incoming : rowsOwned s2Step236EntryFvBefore [s2Step236EntryFvRow,s2Step236EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236EntryFRow,s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow] 2 s2Step236EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236EntryFv_Outgoing : rowsOwned s2Step236EntryGvAfter [s2Step236EntryFvOut,s2Step236EntryGvOut] :=
  hmrRows_owned_drop s2Step236EntryGvAfter [s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut] 2 s2Step236EntryBank_outgoingOwned

private theorem s2Step236EntryFv_distinct : (s2Step236EntryFvRow.sign::s2Step236EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236EntryFv_owned : (s2Step236EntryFvRow.sign::s2Step236EntryFvRow.payload).toFinset⊆s2Step236EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236EntryFvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EntryFv_reserved : s2Step236EntryFvBefore.reserve s2Step236EntryFvFresh.toFinset=some s2Step236EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step236EntryFvFresh,arenaWires]
  · norm_num [s2Step236EntryFvBefore,s2Step236EntryGAfter,s2Step236EntryFvFresh,arenaWires]
  · simp only [s2Step236EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step236EntryFv_checked : planRowResizeLog s2Step236EntryFvBefore s2Step236EntryFvRow 133 s2Step236EntryFvFresh=
    some (s2Step236EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩,growRow 770 s2Step236EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step236EntryFvBefore s2Step236EntryFvAfter s2Step236EntryFvRow 133 s2Step236EntryFvFresh
    s2Step236EntryFv_distinct s2Step236EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step236EntryFvRow.payload++s2Step236EntryFvFresh) s2Step236EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step236EntryGBefore : Arena := s2Step236EntryFBefore

private theorem s2Step236EntryG_Incoming : rowsOwned s2Step236EntryGBefore [s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236EntryFRow,s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow] 1 s2Step236EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236EntryG_Outgoing : rowsOwned s2Step236EntryGvAfter [s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut] :=
  hmrRows_owned_drop s2Step236EntryGvAfter [s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut] 1 s2Step236EntryBank_outgoingOwned

private theorem s2Step236EntryG_distinct : (s2Step236EntryGRow.sign::s2Step236EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236EntryG_owned : (s2Step236EntryGRow.sign::s2Step236EntryGRow.payload).toFinset⊆s2Step236EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236EntryGBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EntryG_reserved : s2Step236EntryGBefore.reserve s2Step236EntryGFresh.toFinset=some s2Step236EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step236EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step236EntryGBefore,s2Step236EntryFBefore,s2Step236EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step236EntryGAfter,s2Step236EntryGBefore,s2Step236EntryFBefore,s2Step236EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step236EntryG_checked : planRowResizeLog s2Step236EntryGBefore s2Step236EntryGRow 153 s2Step236EntryGFresh=
    some (s2Step236EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819],769⟩,growRow 769 s2Step236EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step236EntryGBefore s2Step236EntryGAfter s2Step236EntryGRow 153 s2Step236EntryGFresh
    s2Step236EntryG_distinct s2Step236EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236EntryG_reserved
  have rowEq : WindowRow.mk (s2Step236EntryGRow.payload++s2Step236EntryGFresh) s2Step236EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step236EntryGvBefore : Arena := s2Step236EntryGAfter

private theorem s2Step236EntryGv_Incoming : rowsOwned s2Step236EntryGvBefore [s2Step236EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236EntryFRow,s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow] 3 s2Step236EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236EntryGv_Outgoing : rowsOwned s2Step236EntryGvAfter [s2Step236EntryGvOut] :=
  hmrRows_owned_drop s2Step236EntryGvAfter [s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut] 3 s2Step236EntryBank_outgoingOwned

private theorem s2Step236EntryGv_distinct : (s2Step236EntryGvRow.sign::s2Step236EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236EntryGv_owned : (s2Step236EntryGvRow.sign::s2Step236EntryGvRow.payload).toFinset⊆s2Step236EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236EntryGvBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236EntryGv_reserved : s2Step236EntryGvBefore.reserve s2Step236EntryGvFresh.toFinset=some s2Step236EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step236EntryGvFresh,arenaWires]
  · norm_num [s2Step236EntryGvBefore,s2Step236EntryGAfter,s2Step236EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step236EntryGvAfter,s2Step236EntryGvBefore,s2Step236EntryGAfter,s2Step236EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step236EntryGv_checked : planRowResizeLog s2Step236EntryGvBefore s2Step236EntryGvRow 133 s2Step236EntryGvFresh=
    some (s2Step236EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785],771⟩,growRow 771 s2Step236EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step236EntryGvBefore s2Step236EntryGvAfter s2Step236EntryGvRow 133 s2Step236EntryGvFresh
    s2Step236EntryGv_distinct s2Step236EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step236EntryGvRow.payload++s2Step236EntryGvFresh) s2Step236EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step236EntryBank_rows : planWindowRowsLog s2Step236EntryFBefore [(s2Step236EntryFRow,153),(s2Step236EntryGRow,153),(s2Step236EntryFvRow,133),(s2Step236EntryGvRow,133)] [s2Step236EntryFFresh,s2Step236EntryGFresh,s2Step236EntryFvFresh,s2Step236EntryGvFresh]=
    some (s2Step236EntryGvAfter,[s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut],(growRow 768 s2Step236EntryFFresh ++ (growRow 769 s2Step236EntryGFresh ++ (growRow 770 s2Step236EntryFvFresh ++ (growRow 771 s2Step236EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step236EntryGvAfter [] []=some (s2Step236EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step236EntryGvBefore s2Step236EntryGvAfter s2Step236EntryGvAfter
    s2Step236EntryGvRow s2Step236EntryGvOut 133 s2Step236EntryGvFresh [] [] []
    (growRow 771 s2Step236EntryGvFresh) ([]) s2Step236EntryGv_Incoming s2Step236EntryGv_checked h4 s2Step236EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step236EntryFvBefore s2Step236EntryFvAfter s2Step236EntryGvAfter
    s2Step236EntryFvRow s2Step236EntryFvOut 133 s2Step236EntryFvFresh [(s2Step236EntryGvRow,133)] [s2Step236EntryGvFresh] [s2Step236EntryGvOut]
    (growRow 770 s2Step236EntryFvFresh) ((growRow 771 s2Step236EntryGvFresh ++ [])) s2Step236EntryFv_Incoming s2Step236EntryFv_checked h3 s2Step236EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step236EntryGBefore s2Step236EntryGAfter s2Step236EntryGvAfter
    s2Step236EntryGRow s2Step236EntryGOut 153 s2Step236EntryGFresh [(s2Step236EntryFvRow,133),(s2Step236EntryGvRow,133)] [s2Step236EntryFvFresh,s2Step236EntryGvFresh] [s2Step236EntryFvOut,s2Step236EntryGvOut]
    (growRow 769 s2Step236EntryGFresh) ((growRow 770 s2Step236EntryFvFresh ++ (growRow 771 s2Step236EntryGvFresh ++ []))) s2Step236EntryG_Incoming s2Step236EntryG_checked h2 s2Step236EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step236EntryFBefore s2Step236EntryFAfter s2Step236EntryGvAfter
    s2Step236EntryFRow s2Step236EntryFOut 153 s2Step236EntryFFresh [(s2Step236EntryGRow,153),(s2Step236EntryFvRow,133),(s2Step236EntryGvRow,133)] [s2Step236EntryGFresh,s2Step236EntryFvFresh,s2Step236EntryGvFresh] [s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut]
    (growRow 768 s2Step236EntryFFresh) ((growRow 769 s2Step236EntryGFresh ++ (growRow 770 s2Step236EntryFvFresh ++ (growRow 771 s2Step236EntryGvFresh ++ [])))) s2Step236EntryF_Incoming s2Step236EntryF_checked h1 s2Step236EntryF_Outgoing
  exact h0

private theorem s2Step236EntryBank_checked : compileHmrBankResizeLog .entry s2Step236EntryFBefore ⟨s2Step236EntryFRow,s2Step236EntryGRow,s2Step236EntryFvRow,s2Step236EntryGvRow⟩ ⟨153,153,133,133⟩ [s2Step236EntryFFresh,s2Step236EntryGFresh,s2Step236EntryFvFresh,s2Step236EntryGvFresh]=
    some (s2Step236EntryGvAfter,⟨s2Step236EntryFOut,s2Step236EntryGOut,s2Step236EntryFvOut,s2Step236EntryGvOut⟩,(growRow 768 s2Step236EntryFFresh ++ (growRow 769 s2Step236EntryGFresh ++ (growRow 770 s2Step236EntryFvFresh ++ (growRow 771 s2Step236EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step236EntryBank_rows]
  rfl

private def s2Step236ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<664) ∨ (665≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236ExitFBefore : Arena := s2Step236ExitGAfter

private def s2Step236ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 810],768⟩

private def s2Step236ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step236ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819, 809],769⟩

private def s2Step236ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 814],771⟩

private theorem s2Step236ExitBank_incomingDistinct : ([s2Step236ExitGRow,s2Step236ExitFRow,s2Step236ExitFvRow,s2Step236ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236ExitF_Incoming : rowsOwned s2Step236ExitFBefore [s2Step236ExitFRow,s2Step236ExitFvRow,s2Step236ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236ExitGRow,s2Step236ExitFRow,s2Step236ExitFvRow,s2Step236ExitGvRow] 1 s2Step236ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236ExitBank_outgoingOwned : rowsOwned s2Step236ExitGvAfter [s2Step236ExitGOut,s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step236ExitGvAfter (fun q => (0≤q ∧ q<664) ∨ (665≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236ExitF_Outgoing : rowsOwned s2Step236ExitGvAfter [s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut] :=
  hmrRows_owned_drop s2Step236ExitGvAfter [s2Step236ExitGOut,s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut] 1 s2Step236ExitBank_outgoingOwned

private theorem s2Step236ExitF_distinct : (s2Step236ExitFRow.sign::s2Step236ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236ExitF_owned : (s2Step236ExitFRow.sign::s2Step236ExitFRow.payload).toFinset⊆s2Step236ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236ExitFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236ExitF_retired : s2Step236ExitFBefore.retireSet s2Step236ExitFExtra.toFinset=s2Step236ExitFAfter := by
  unfold Arena.retireSet s2Step236ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step236ExitFBefore,s2Step236ExitGAfter,s2Step236ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step236ExitF_checked : planRowResizeLog s2Step236ExitFBefore s2Step236ExitFRow 152 []=
    some (s2Step236ExitFAfter,s2Step236ExitFOut,shrinkRow 768 s2Step236ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step236ExitFBefore s2Step236ExitFRow 152 s2Step236ExitF_distinct s2Step236ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step236ExitFRow.payload.take 152) s2Step236ExitFRow.sign=s2Step236ExitFOut := by decide +kernel
  have hi : s2Step236ExitFRow.payload.drop 152=s2Step236ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step236ExitF_retired] at result
  exact result

private def s2Step236ExitFvAfter : Arena := s2Step236ExitFAfter

private def s2Step236ExitFvBefore : Arena := s2Step236ExitFAfter

private theorem s2Step236ExitFv_Incoming : rowsOwned s2Step236ExitFvBefore [s2Step236ExitFvRow,s2Step236ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236ExitGRow,s2Step236ExitFRow,s2Step236ExitFvRow,s2Step236ExitGvRow] 2 s2Step236ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236ExitFvBefore (fun q => (0≤q ∧ q<664) ∨ (665≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236ExitFv_Outgoing : rowsOwned s2Step236ExitGvAfter [s2Step236ExitFvOut,s2Step236ExitGvOut] :=
  hmrRows_owned_drop s2Step236ExitGvAfter [s2Step236ExitGOut,s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut] 2 s2Step236ExitBank_outgoingOwned

private theorem s2Step236ExitFv_distinct : (s2Step236ExitFvRow.sign::s2Step236ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236ExitFv_owned : (s2Step236ExitFvRow.sign::s2Step236ExitFvRow.payload).toFinset⊆s2Step236ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236ExitFvBefore (fun q => (0≤q ∧ q<664) ∨ (665≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236ExitFv_reserved : s2Step236ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step236ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step236ExitFv_checked : planRowResizeLog s2Step236ExitFvBefore s2Step236ExitFvRow 134 []=
    some (s2Step236ExitFvAfter,s2Step236ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step236ExitFvBefore s2Step236ExitFvAfter s2Step236ExitFvRow 134 []
    s2Step236ExitFv_distinct s2Step236ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step236ExitFvRow.payload++[]) s2Step236ExitFvRow.sign=s2Step236ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step236ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step236ExitG_Incoming : rowsOwned s2Step236ExitGBefore [s2Step236ExitGRow,s2Step236ExitFRow,s2Step236ExitFvRow,s2Step236ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236ExitGRow,s2Step236ExitFRow,s2Step236ExitFvRow,s2Step236ExitGvRow] 0 s2Step236ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236ExitG_Outgoing : rowsOwned s2Step236ExitGvAfter [s2Step236ExitGOut,s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut] :=
  hmrRows_owned_drop s2Step236ExitGvAfter [s2Step236ExitGOut,s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut] 0 s2Step236ExitBank_outgoingOwned

private theorem s2Step236ExitG_distinct : (s2Step236ExitGRow.sign::s2Step236ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236ExitG_owned : (s2Step236ExitGRow.sign::s2Step236ExitGRow.payload).toFinset⊆s2Step236ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236ExitG_retired : s2Step236ExitGBefore.retireSet s2Step236ExitGExtra.toFinset=s2Step236ExitGAfter := by
  unfold Arena.retireSet s2Step236ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step236ExitGBefore,s2Step236ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step236ExitG_checked : planRowResizeLog s2Step236ExitGBefore s2Step236ExitGRow 151 []=
    some (s2Step236ExitGAfter,s2Step236ExitGOut,shrinkRow 769 s2Step236ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step236ExitGBefore s2Step236ExitGRow 151 s2Step236ExitG_distinct s2Step236ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step236ExitGRow.payload.take 151) s2Step236ExitGRow.sign=s2Step236ExitGOut := by decide +kernel
  have hi : s2Step236ExitGRow.payload.drop 151=s2Step236ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step236ExitG_retired] at result
  exact result

private def s2Step236ExitGvBefore : Arena := s2Step236ExitFAfter

private theorem s2Step236ExitGv_Incoming : rowsOwned s2Step236ExitGvBefore [s2Step236ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236ExitGRow,s2Step236ExitFRow,s2Step236ExitFvRow,s2Step236ExitGvRow] 3 s2Step236ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236ExitGvBefore (fun q => (0≤q ∧ q<664) ∨ (665≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236ExitGv_Outgoing : rowsOwned s2Step236ExitGvAfter [s2Step236ExitGvOut] :=
  hmrRows_owned_drop s2Step236ExitGvAfter [s2Step236ExitGOut,s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut] 3 s2Step236ExitBank_outgoingOwned

private theorem s2Step236ExitGv_distinct : (s2Step236ExitGvRow.sign::s2Step236ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236ExitGv_owned : (s2Step236ExitGvRow.sign::s2Step236ExitGvRow.payload).toFinset⊆s2Step236ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236ExitGvBefore (fun q => (0≤q ∧ q<664) ∨ (665≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236ExitGv_retired : s2Step236ExitGvBefore.retireSet s2Step236ExitGvExtra.toFinset=s2Step236ExitGvAfter := by
  unfold Arena.retireSet s2Step236ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step236ExitGvBefore,s2Step236ExitFAfter,s2Step236ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step236ExitGv_checked : planRowResizeLog s2Step236ExitGvBefore s2Step236ExitGvRow 133 []=
    some (s2Step236ExitGvAfter,s2Step236ExitGvOut,shrinkRow 771 s2Step236ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step236ExitGvBefore s2Step236ExitGvRow 133 s2Step236ExitGv_distinct s2Step236ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step236ExitGvRow.payload.take 133) s2Step236ExitGvRow.sign=s2Step236ExitGvOut := by decide +kernel
  have hi : s2Step236ExitGvRow.payload.drop 133=s2Step236ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step236ExitGv_retired] at result
  exact result

private theorem s2Step236ExitBank_rows : planWindowRowsLog s2Step236ExitGBefore [(s2Step236ExitGRow,151),(s2Step236ExitFRow,152),(s2Step236ExitFvRow,134),(s2Step236ExitGvRow,133)] [[],[],[],[]]=
    some (s2Step236ExitGvAfter,[s2Step236ExitGOut,s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut],(shrinkRow 769 s2Step236ExitGExtra ++ (shrinkRow 768 s2Step236ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step236ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step236ExitGvAfter [] []=some (s2Step236ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step236ExitGvBefore s2Step236ExitGvAfter s2Step236ExitGvAfter
    s2Step236ExitGvRow s2Step236ExitGvOut 133 [] [] [] []
    (shrinkRow 771 s2Step236ExitGvExtra) ([]) s2Step236ExitGv_Incoming s2Step236ExitGv_checked h4 s2Step236ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step236ExitFvBefore s2Step236ExitFvAfter s2Step236ExitGvAfter
    s2Step236ExitFvRow s2Step236ExitFvOut 134 [] [(s2Step236ExitGvRow,133)] [[]] [s2Step236ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step236ExitGvExtra ++ [])) s2Step236ExitFv_Incoming s2Step236ExitFv_checked h3 s2Step236ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step236ExitFBefore s2Step236ExitFAfter s2Step236ExitGvAfter
    s2Step236ExitFRow s2Step236ExitFOut 152 [] [(s2Step236ExitFvRow,134),(s2Step236ExitGvRow,133)] [[],[]] [s2Step236ExitFvOut,s2Step236ExitGvOut]
    (shrinkRow 768 s2Step236ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step236ExitGvExtra ++ []))) s2Step236ExitF_Incoming s2Step236ExitF_checked h2 s2Step236ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step236ExitGBefore s2Step236ExitGAfter s2Step236ExitGvAfter
    s2Step236ExitGRow s2Step236ExitGOut 151 [] [(s2Step236ExitFRow,152),(s2Step236ExitFvRow,134),(s2Step236ExitGvRow,133)] [[],[],[]] [s2Step236ExitFOut,s2Step236ExitFvOut,s2Step236ExitGvOut]
    (shrinkRow 769 s2Step236ExitGExtra) ((shrinkRow 768 s2Step236ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step236ExitGvExtra ++ [])))) s2Step236ExitG_Incoming s2Step236ExitG_checked h1 s2Step236ExitG_Outgoing
  exact h0

private theorem s2Step236ExitBank_checked : compileHmrBankResizeLog .exit s2Step236ExitGBefore ⟨s2Step236ExitFRow,s2Step236ExitGRow,s2Step236ExitFvRow,s2Step236ExitGvRow⟩ ⟨152,151,134,133⟩ [[],[],[],[]]=
    some (s2Step236ExitGvAfter,⟨s2Step236ExitFOut,s2Step236ExitGOut,s2Step236ExitFvOut,s2Step236ExitGvOut⟩,(shrinkRow 769 s2Step236ExitGExtra ++ (shrinkRow 768 s2Step236ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step236ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step236ExitBank_rows]
  rfl

private theorem s2Step236Add0_apart : Disjoint s2Step236Add0Arena.live s2Step236Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step236Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236Add0_card : s2Step236Add0Arena.live.card=895 := by
  decide +kernel

private theorem s2Step236Add0_borrowed : s2Step236Add0Arena.checkBorrow (hmrHybridCount s2Step236Add0Arena s2Step236Add0B.length) s2Step236Add0Work=some s2Step236Add0During := by
  have len : s2Step236Add0Work.length=hmrHybridCount s2Step236Add0Arena s2Step236Add0B.length := by
    rw [hmrHybridCount,s2Step236Add0_card]
    decide +kernel
  have nd : s2Step236Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step236Add0Arena s2Step236Add0During s2Step236Add0Work.toFinset s2Step236Add0_bounded s2Step236Add0_apart rfl

private theorem s2Step236Add0_distinct : (826::800::842::(s2Step236Add0A++s2Step236Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236Add0_owned : (826::800::842::(s2Step236Add0A++s2Step236Add0B)).toFinset⊆s2Step236Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step236Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236Add0_checked : compileHmrHybridCinLog s2Step236Add0Arena 800 826 842 s2Step236Add0A s2Step236Add0B s2Step236Add0Work=some s2Step236Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step236Add0Arena s2Step236Add0During 800 826 842 s2Step236Add0A s2Step236Add0B s2Step236Add0Work
    (by decide +kernel) (by decide +kernel) s2Step236Add0_distinct
    (fun q hq => s2Step236Add0_owned (List.mem_toFinset.mpr hq)) s2Step236Add0_borrowed

private theorem s2Step236Add1_apart : Disjoint s2Step236Add1Arena.live s2Step236Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step236Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236Add1_card : s2Step236Add1Arena.live.card=895 := by
  decide +kernel

private theorem s2Step236Add1_borrowed : s2Step236Add1Arena.checkBorrow (hmrHybridCount s2Step236Add1Arena s2Step236Add1B.length) s2Step236Add1Work=some s2Step236Add1During := by
  have len : s2Step236Add1Work.length=hmrHybridCount s2Step236Add1Arena s2Step236Add1B.length := by
    rw [hmrHybridCount,s2Step236Add1_card]
    decide +kernel
  have nd : s2Step236Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step236Add1Arena s2Step236Add1During s2Step236Add1Work.toFinset s2Step236Add1_bounded s2Step236Add1_apart rfl

private theorem s2Step236Add1_distinct : (826::800::842::(s2Step236Add1A++s2Step236Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236Add1_owned : (826::800::842::(s2Step236Add1A++s2Step236Add1B)).toFinset⊆s2Step236Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step236Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236Add1_checked : compileHmrHybridCinLog s2Step236Add1Arena 800 826 842 s2Step236Add1A s2Step236Add1B s2Step236Add1Work=some s2Step236Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step236Add1Arena s2Step236Add1During 800 826 842 s2Step236Add1A s2Step236Add1B s2Step236Add1Work
    (by decide +kernel) (by decide +kernel) s2Step236Add1_distinct
    (fun q hq => s2Step236Add1_owned (List.mem_toFinset.mpr hq)) s2Step236Add1_borrowed

private theorem s2Step236F4_apart : Disjoint (s2Step236Add0A++s2Step236Add0B).toFinset (s2Step236Add1A++s2Step236Add1B).toFinset := by
  have nd : ((s2Step236Add0A++s2Step236Add0B)++(s2Step236Add1A++s2Step236Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step236F4_carry : s2Step236F4FlagArena.checkBorrow 1 [842]=some s2Step236Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step236F4FlagArena,s2Step236HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step236F4FlagArena,s2Step236HeadFvAfter,s2Step236Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step236F4_distinct : (797::800::826::842::((s2Step236Add0A++s2Step236Add1A)++(s2Step236Add0B++s2Step236Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236F4_flag : s2Step236HeadFvAfter.checkBorrow 1 [826]=some s2Step236F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step236HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step236F4_owned : (797::800::((s2Step236Add0A++s2Step236Add1A)++(s2Step236Add0B++s2Step236Add1B))).toFinset⊆s2Step236HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step236HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236F4_checked : compileHmrHybridF4Log s2Step236HeadFvAfter 797 800 s2Step236Add0A s2Step236Add0B s2Step236Add1A s2Step236Add1B [826] [842] s2Step236Add0Work s2Step236Add1Work=some s2Step236F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step236HeadFvAfter s2Step236F4FlagArena s2Step236Add0Arena s2Step236Add0During s2Step236Add1During 797 800
    s2Step236Add0A s2Step236Add0B s2Step236Add1A s2Step236Add1B [826] [842] s2Step236Add0Work s2Step236Add1Work
    (fun q hq => s2Step236F4_owned (List.mem_toFinset.mpr hq)) s2Step236F4_flag s2Step236F4_carry
    s2Step236F4_distinct s2Step236F4_apart s2Step236Add0_checked s2Step236Add1_checked

private theorem s2Step236Front_branch : s2Step236FrontSigmaArena.checkBorrow 1 [800]=some s2Step236HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step236FrontSigmaArena,s2Step236EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step236FrontSigmaArena,s2Step236EntryGvAfter,s2Step236HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step236Front_entry : HmrFrontEntryValid s2Step236EntryFBefore s2Step236FrontBank 153 133 ⟨152,151,134,133⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step236FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step236EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step236EntryFBefore (fun q => (0≤q ∧ q<785) ∨ (786≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step236FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step236Front_sigma : s2Step236EntryGvAfter.checkBorrow 1 [797]=some s2Step236FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step236EntryGvAfter,arenaWires]
  · rfl

private def s2Step236HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236HeadFBefore : Arena := s2Step236HeadGAfter

private def s2Step236HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664],768⟩

private def s2Step236HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787],770⟩

private def s2Step236HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819],769⟩

private def s2Step236HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785],771⟩

private theorem s2Step236HeadBank_incomingDistinct : ([s2Step236HeadGRow,s2Step236HeadFRow,s2Step236HeadGvRow,s2Step236HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236HeadF_Incoming : rowsOwned s2Step236HeadFBefore [s2Step236HeadFRow,s2Step236HeadGvRow,s2Step236HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236HeadGRow,s2Step236HeadFRow,s2Step236HeadGvRow,s2Step236HeadFvRow] 1 s2Step236HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236HeadFBefore (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236HeadBank_outgoingOwned : rowsOwned s2Step236HeadFvAfter [s2Step236HeadGOut,s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step236HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236HeadF_Outgoing : rowsOwned s2Step236HeadFvAfter [s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut] :=
  hmrRows_owned_drop s2Step236HeadFvAfter [s2Step236HeadGOut,s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut] 1 s2Step236HeadBank_outgoingOwned

private theorem s2Step236HeadF_distinct : (s2Step236HeadFRow.sign::s2Step236HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236HeadF_owned : (s2Step236HeadFRow.sign::s2Step236HeadFRow.payload).toFinset⊆s2Step236HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236HeadFBefore (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236HeadF_reserved : s2Step236HeadFBefore.reserve s2Step236HeadFFresh.toFinset=some s2Step236HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step236HeadFFresh,arenaWires]
  · norm_num [s2Step236HeadFBefore,s2Step236HeadGAfter,s2Step236HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step236HeadFAfter,s2Step236HeadFBefore,s2Step236HeadGAfter,s2Step236HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step236HeadF_checked : planRowResizeLog s2Step236HeadFBefore s2Step236HeadFRow 154 s2Step236HeadFFresh=
    some (s2Step236HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 810],768⟩,growRow 768 s2Step236HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step236HeadFBefore s2Step236HeadFAfter s2Step236HeadFRow 154 s2Step236HeadFFresh
    s2Step236HeadF_distinct s2Step236HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236HeadF_reserved
  have rowEq : WindowRow.mk (s2Step236HeadFRow.payload++s2Step236HeadFFresh) s2Step236HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 810],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step236HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step236HeadFvBefore : Arena := s2Step236HeadGvAfter

private theorem s2Step236HeadFv_Incoming : rowsOwned s2Step236HeadFvBefore [s2Step236HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236HeadGRow,s2Step236HeadFRow,s2Step236HeadGvRow,s2Step236HeadFvRow] 3 s2Step236HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236HeadFvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236HeadFv_Outgoing : rowsOwned s2Step236HeadFvAfter [s2Step236HeadFvOut] :=
  hmrRows_owned_drop s2Step236HeadFvAfter [s2Step236HeadGOut,s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut] 3 s2Step236HeadBank_outgoingOwned

private theorem s2Step236HeadFv_distinct : (s2Step236HeadFvRow.sign::s2Step236HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236HeadFv_owned : (s2Step236HeadFvRow.sign::s2Step236HeadFvRow.payload).toFinset⊆s2Step236HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236HeadFvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236HeadFv_reserved : s2Step236HeadFvBefore.reserve s2Step236HeadFvFresh.toFinset=some s2Step236HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step236HeadFvFresh,arenaWires]
  · norm_num [s2Step236HeadFvBefore,s2Step236HeadGvAfter,s2Step236HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step236HeadFvAfter,s2Step236HeadFvBefore,s2Step236HeadGvAfter,s2Step236HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step236HeadFv_checked : planRowResizeLog s2Step236HeadFvBefore s2Step236HeadFvRow 134 s2Step236HeadFvFresh=
    some (s2Step236HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩,growRow 770 s2Step236HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step236HeadFvBefore s2Step236HeadFvAfter s2Step236HeadFvRow 134 s2Step236HeadFvFresh
    s2Step236HeadFv_distinct s2Step236HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step236HeadFvRow.payload++s2Step236HeadFvFresh) s2Step236HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step236HeadG_Incoming : rowsOwned s2Step236HeadGBefore [s2Step236HeadGRow,s2Step236HeadFRow,s2Step236HeadGvRow,s2Step236HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236HeadGRow,s2Step236HeadFRow,s2Step236HeadGvRow,s2Step236HeadFvRow] 0 s2Step236HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236HeadGBefore (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236HeadG_Outgoing : rowsOwned s2Step236HeadFvAfter [s2Step236HeadGOut,s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut] :=
  hmrRows_owned_drop s2Step236HeadFvAfter [s2Step236HeadGOut,s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut] 0 s2Step236HeadBank_outgoingOwned

private theorem s2Step236HeadG_distinct : (s2Step236HeadGRow.sign::s2Step236HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236HeadG_owned : (s2Step236HeadGRow.sign::s2Step236HeadGRow.payload).toFinset⊆s2Step236HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236HeadGBefore (fun q => (0≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236HeadG_reserved : s2Step236HeadGBefore.reserve s2Step236HeadGFresh.toFinset=some s2Step236HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step236HeadGFresh,arenaWires]
  · norm_num [s2Step236HeadGBefore,s2Step236HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step236HeadGAfter,s2Step236HeadGBefore,s2Step236HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step236HeadG_checked : planRowResizeLog s2Step236HeadGBefore s2Step236HeadGRow 154 s2Step236HeadGFresh=
    some (s2Step236HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819, 809],769⟩,growRow 769 s2Step236HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step236HeadGBefore s2Step236HeadGAfter s2Step236HeadGRow 154 s2Step236HeadGFresh
    s2Step236HeadG_distinct s2Step236HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236HeadG_reserved
  have rowEq : WindowRow.mk (s2Step236HeadGRow.payload++s2Step236HeadGFresh) s2Step236HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 793, 819, 809],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step236HeadGvBefore : Arena := s2Step236HeadFAfter

private theorem s2Step236HeadGv_Incoming : rowsOwned s2Step236HeadGvBefore [s2Step236HeadGvRow,s2Step236HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step236HeadGRow,s2Step236HeadFRow,s2Step236HeadGvRow,s2Step236HeadFvRow] 2 s2Step236HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step236HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step236HeadGv_Outgoing : rowsOwned s2Step236HeadFvAfter [s2Step236HeadGvOut,s2Step236HeadFvOut] :=
  hmrRows_owned_drop s2Step236HeadFvAfter [s2Step236HeadGOut,s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut] 2 s2Step236HeadBank_outgoingOwned

private theorem s2Step236HeadGv_distinct : (s2Step236HeadGvRow.sign::s2Step236HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step236HeadGv_owned : (s2Step236HeadGvRow.sign::s2Step236HeadGvRow.payload).toFinset⊆s2Step236HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step236HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<882) ∨ (883≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step236HeadGv_reserved : s2Step236HeadGvBefore.reserve s2Step236HeadGvFresh.toFinset=some s2Step236HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step236HeadGvFresh,arenaWires]
  · norm_num [s2Step236HeadGvBefore,s2Step236HeadFAfter,s2Step236HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step236HeadGvAfter,s2Step236HeadGvBefore,s2Step236HeadFAfter,s2Step236HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step236HeadGv_checked : planRowResizeLog s2Step236HeadGvBefore s2Step236HeadGvRow 134 s2Step236HeadGvFresh=
    some (s2Step236HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 814],771⟩,growRow 771 s2Step236HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step236HeadGvBefore s2Step236HeadGvAfter s2Step236HeadGvRow 134 s2Step236HeadGvFresh
    s2Step236HeadGv_distinct s2Step236HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step236HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step236HeadGvRow.payload++s2Step236HeadGvFresh) s2Step236HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 792, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step236HeadBank_rows : planWindowRowsLog s2Step236HeadGBefore [(s2Step236HeadGRow,154),(s2Step236HeadFRow,154),(s2Step236HeadGvRow,134),(s2Step236HeadFvRow,134)] [s2Step236HeadGFresh,s2Step236HeadFFresh,s2Step236HeadGvFresh,s2Step236HeadFvFresh]=
    some (s2Step236HeadFvAfter,[s2Step236HeadGOut,s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut],(growRow 769 s2Step236HeadGFresh ++ (growRow 768 s2Step236HeadFFresh ++ (growRow 771 s2Step236HeadGvFresh ++ (growRow 770 s2Step236HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step236HeadFvAfter [] []=some (s2Step236HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step236HeadFvBefore s2Step236HeadFvAfter s2Step236HeadFvAfter
    s2Step236HeadFvRow s2Step236HeadFvOut 134 s2Step236HeadFvFresh [] [] []
    (growRow 770 s2Step236HeadFvFresh) ([]) s2Step236HeadFv_Incoming s2Step236HeadFv_checked h4 s2Step236HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step236HeadGvBefore s2Step236HeadGvAfter s2Step236HeadFvAfter
    s2Step236HeadGvRow s2Step236HeadGvOut 134 s2Step236HeadGvFresh [(s2Step236HeadFvRow,134)] [s2Step236HeadFvFresh] [s2Step236HeadFvOut]
    (growRow 771 s2Step236HeadGvFresh) ((growRow 770 s2Step236HeadFvFresh ++ [])) s2Step236HeadGv_Incoming s2Step236HeadGv_checked h3 s2Step236HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step236HeadFBefore s2Step236HeadFAfter s2Step236HeadFvAfter
    s2Step236HeadFRow s2Step236HeadFOut 154 s2Step236HeadFFresh [(s2Step236HeadGvRow,134),(s2Step236HeadFvRow,134)] [s2Step236HeadGvFresh,s2Step236HeadFvFresh] [s2Step236HeadGvOut,s2Step236HeadFvOut]
    (growRow 768 s2Step236HeadFFresh) ((growRow 771 s2Step236HeadGvFresh ++ (growRow 770 s2Step236HeadFvFresh ++ []))) s2Step236HeadF_Incoming s2Step236HeadF_checked h2 s2Step236HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step236HeadGBefore s2Step236HeadGAfter s2Step236HeadFvAfter
    s2Step236HeadGRow s2Step236HeadGOut 154 s2Step236HeadGFresh [(s2Step236HeadFRow,154),(s2Step236HeadGvRow,134),(s2Step236HeadFvRow,134)] [s2Step236HeadFFresh,s2Step236HeadGvFresh,s2Step236HeadFvFresh] [s2Step236HeadFOut,s2Step236HeadGvOut,s2Step236HeadFvOut]
    (growRow 769 s2Step236HeadGFresh) ((growRow 768 s2Step236HeadFFresh ++ (growRow 771 s2Step236HeadGvFresh ++ (growRow 770 s2Step236HeadFvFresh ++ [])))) s2Step236HeadG_Incoming s2Step236HeadG_checked h1 s2Step236HeadG_Outgoing
  exact h0

private theorem s2Step236HeadBank_checked : compileHmrBankResizeLog .headroom s2Step236HeadGBefore ⟨s2Step236HeadFRow,s2Step236HeadGRow,s2Step236HeadFvRow,s2Step236HeadGvRow⟩ ⟨154,154,134,134⟩ [s2Step236HeadGFresh,s2Step236HeadFFresh,s2Step236HeadGvFresh,s2Step236HeadFvFresh]=
    some (s2Step236HeadFvAfter,⟨s2Step236HeadFOut,s2Step236HeadGOut,s2Step236HeadFvOut,s2Step236HeadGvOut⟩,(growRow 769 s2Step236HeadGFresh ++ (growRow 768 s2Step236HeadFFresh ++ (growRow 771 s2Step236HeadGvFresh ++ (growRow 770 s2Step236HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step236HeadBank_rows]
  rfl

private theorem s2Step236Front_checked : compileHmrSourceFrontLog s2Step236EntryFBefore s2Step236FrontBank 153 133 ⟨152,151,134,133⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step236FrontLog=some s2Step236FrontPlan := by
  have pairEq : s2Step236FrontPair=⟨s2Step236HeadFRow,s2Step236HeadGRow,s2Step236HeadFvRow,s2Step236HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step236FrontHead=⟨s2Step236ExitFRow,s2Step236ExitGRow,s2Step236ExitFvRow,s2Step236ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step236Add0A=s2Step236FrontHead.f.wires := by decide +kernel
  have gEq : s2Step236Add0B=s2Step236FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step236Add1A=s2Step236FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step236Add1B=s2Step236FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step236EntryFBefore s2Step236FrontBank 153 133 ⟨152,151,134,133⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step236FrontLog s2Step236FrontPlan
  · exact s2Step236Front_entry
  · exact s2Step236EntryBank_checked
  · exact s2Step236Front_sigma
  · rfl
  · exact s2Step236Front_branch
  · rfl
  · simpa only [s2Step236FrontPlan,pairEq] using s2Step236HeadBank_checked
  · simpa only [s2Step236FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step236F4_checked
  · exact s2Step236Counter_checked
  · rfl
  · simpa only [s2Step236FrontPlan,headEq] using s2Step236ExitBank_checked

private theorem s2Step236Complete_explicit_checked : compileHmrEarlyStepLog s2Step236EntryFBefore s2Step236FrontBank 153 133 ⟨152,151,134,133⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step236CompleteLog=some s2Step236CompletePlan := by
  let Q := s2Step236EarlyControlPlan
  have hq := s2Step236EarlyControl_plan_checked
  have fv1 : s2Step236CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step236CompleteOut.fv.payload[2]?.getD s2Step236CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step236CompleteOut.fv.payload[3]?.getD s2Step236CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step236CompleteOut.fv.payload[4]?.getD s2Step236CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step236EntryFBefore s2Step236EarlyControlArena s2Step236FrontBank 153 133 ⟨152,151,134,133⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step236CompleteLog s2Step236FrontPlan Q
    s2Step236Front_checked s2Step236Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step236Complete_owned s2Step236Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step236EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 797 s2Step236CompleteOut.fv.second (s2Step236CompleteOut.fv.payload[2]?.getD s2Step236CompleteOut.fv.sign) (s2Step236CompleteOut.fv.payload[3]?.getD s2Step236CompleteOut.fv.sign) (s2Step236CompleteOut.fv.payload[4]?.getD s2Step236CompleteOut.fv.sign) 800 49 s2Step236EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep236Arena : Arena := s2Step236EntryFBefore
def s2PrivateStep236Bank : WindowBank := s2Step236FrontBank
def s2PrivateStep236Spec : HmrSourceWalkStepLog := ⟨153,133,⟨152,151,134,133⟩,49,.early s2Step236CompleteLog⟩
def s2PrivateStep236Plan : HmrSourceStepPlan := .early s2Step236CompletePlan
theorem s2PrivateStep236_source : s2PrivateStep236Spec=s2ObservedLogs224[12] := rfl
theorem s2PrivateStep236_checked : compileHmrSourceStepLog s2PrivateStep236Arena s2PrivateStep236Bank
    s2PrivateStep236Spec.fgWidth s2PrivateStep236Spec.vWidth s2PrivateStep236Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 236 s2PrivateStep236Spec.need none s2PrivateStep236Spec.log=some s2PrivateStep236Plan := by
  change compileHmrSourceStepLog s2Step236EntryFBefore s2Step236FrontBank 153 133 ⟨152,151,134,133⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 236 49 none (.early s2Step236CompleteLog)=some (.early s2Step236CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 236<498)]
  rw [s2Step236Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
