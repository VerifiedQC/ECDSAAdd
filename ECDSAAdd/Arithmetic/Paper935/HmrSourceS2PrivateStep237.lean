import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep235
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

private def s2Step237CompleteMoves : List (Wire × Wire) := [(806,150)]

private def s2Step237EarlyControlLog : HmrEarlyControlLog := ⟨[806, 797, 819, 793, 800],[810],[826],[842, 885, 891, 894, 896, 899],[]⟩

private def s2Step237FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [800], [], [797]],[[810], [793], [819], [809]],[[], [], [], []]⟩,[792],[814],[826],[842],[885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[826, 842, 885, 891]⟩

private def s2Step237CompleteLog : HmrEarlyStepLog := ⟨s2Step237FrontLog,s2Step237CompleteMoves,s2Step237EarlyControlLog⟩

private def s2Step237ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩

private def s2Step237ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩

private def s2Step237ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step237ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785],771⟩

private def s2Step237FrontOut : WindowBank := ⟨s2Step237ExitFOut,s2Step237ExitGOut,s2Step237ExitFvOut,s2Step237ExitGvOut⟩

private def s2Step237CompleteOut : WindowBank := s2Step237FrontOut.repacked s2Step237CompleteMoves

private def s2Step237EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step237EarlyControlPositiveArena,[810],s2Step237EarlyControlEqualityArena,[826],⟨⟨792,false⟩,[⟨⟨810,false⟩,826⟩]⟩⟩

private def s2Step237EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,806⟩,⟨⟨774,false⟩,797⟩,⟨⟨775,false⟩,819⟩,⟨⟨776,false⟩,793⟩,⟨⟨777,false⟩,800⟩]⟩

private def s2Step237EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step237EarlyControlZeroArena,s2Step237EarlyControlZeroPlan,s2Step237EarlyControlClassPlan,s2Step237EarlyControlFlagArena,s2Step237EarlyControlFittedArena,s2Step237EarlyControlHistoryArena,s2Step237EarlyControlSigmaArena,s2Step237EarlyControlOutputArena,s2Step237EarlyControlLog⟩

private def s2Step237CounterWork : List Wire := [826, 842, 885, 891]

private theorem s2Step237Counter_bounded : s2Step237CounterWork.toFinset⊆arenaWires := by norm_num [s2Step237CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step237HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237CounterDuring : Arena := ⟨s2Step237HeadFvAfter.live∪s2Step237CounterWork.toFinset,Finset.union_subset s2Step237HeadFvAfter.bounded s2Step237Counter_bounded⟩

private def s2Step237EntryFFresh : List Wire := []

private def s2Step237EntryFvFresh : List Wire := []

private def s2Step237EntryGFresh : List Wire := [800]

private def s2Step237EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EntryGvFresh : List Wire := [797]

private def s2Step237ExitFExtra : List Wire := [793]

private def s2Step237ExitGExtra : List Wire := [150, 800, 810]

private def s2Step237ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237ExitGvExtra : List Wire := [797, 819]

private def s2Step237Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237Add0Work : List Wire := [885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step237Add0_bounded : s2Step237Add0Work.toFinset⊆arenaWires := by
  have h : s2Step237Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step237Add0During : Arena := ⟨s2Step237Add0Arena.live∪s2Step237Add0Work.toFinset,Finset.union_subset s2Step237Add0Arena.bounded s2Step237Add0_bounded⟩

private def s2Step237Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237Add1Work : List Wire := [885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step237Add1_bounded : s2Step237Add1Work.toFinset⊆arenaWires := by
  have h : s2Step237Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step237Add1During : Arena := ⟨s2Step237Add1Arena.live∪s2Step237Add1Work.toFinset,Finset.union_subset s2Step237Add1Arena.bounded s2Step237Add1_bounded⟩

private def s2Step237F4FlagArena : Arena := ⟨s2Step237HeadFvAfter.live∪{826},Finset.union_subset s2Step237HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step237F4Plan : HmrHybridF4Plan := ⟨s2Step237F4FlagArena,[826],s2Step237Add0Arena,[842],s2Step237Add0During,s2Step237Add0Work,s2Step237Add1During,s2Step237Add1Work⟩

private def s2Step237HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 793],768⟩

private def s2Step237HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩

private def s2Step237HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800, 810],769⟩

private def s2Step237HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797, 819],771⟩

private def s2Step237FrontHead : WindowBank := ⟨s2Step237HeadFOut,s2Step237HeadGOut,s2Step237HeadFvOut,s2Step237HeadGvOut⟩

private def s2Step237EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩

private def s2Step237EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step237EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800],769⟩

private def s2Step237EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797],771⟩

private def s2Step237FrontPair : WindowBank := ⟨s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut⟩

private def s2Step237FrontSigmaArena : Arena := ⟨s2Step237EntryGvAfter.live∪{792},Finset.union_subset s2Step237EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step237HeadFFresh : List Wire := [793]

private def s2Step237HeadFvFresh : List Wire := [809]

private def s2Step237HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237HeadGFresh : List Wire := [810]

private def s2Step237HeadGvFresh : List Wire := [819]

private def s2Step237FrontPlan : HmrSourceFront := ⟨s2Step237EntryGvAfter,s2Step237FrontPair,(growRow 768 s2Step237EntryFFresh ++ (growRow 769 s2Step237EntryGFresh ++ (growRow 770 s2Step237EntryFvFresh ++ (growRow 771 s2Step237EntryGvFresh ++ [])))),s2Step237FrontSigmaArena,[792],s2Step237HeadGBefore,[814],
  s2Step237HeadFvAfter,s2Step237FrontHead,(growRow 769 s2Step237HeadGFresh ++ (growRow 768 s2Step237HeadFFresh ++ (growRow 771 s2Step237HeadGvFresh ++ (growRow 770 s2Step237HeadFvFresh ++ [])))),s2Step237F4Plan,s2Step237CounterDuring,s2Step237CounterWork,s2Step237ExitGvAfter,s2Step237FrontOut,(shrinkRow 769 s2Step237ExitGExtra ++ (shrinkRow 768 s2Step237ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step237ExitGvExtra ++ []))))⟩

private def s2Step237CompletePlan : HmrEarlyStepPlan := ⟨s2Step237FrontPlan,s2Step237EarlyControlArena,s2Step237EarlyControlPlan,s2Step237CompleteMoves⟩

private theorem s2Step237Complete_apart : List.Disjoint (s2Step237CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [792, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step237CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[792, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step237Complete_owned : (s2Step237CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step237CompleteMoveArena : Arena := ⟨s2Step237ExitGvAfter.live∪{150},Finset.union_subset s2Step237ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step237Complete_repack : s2Step237ExitGvAfter.checkRepack s2Step237CompleteMoves=some s2Step237EarlyControlArena := by
  have owned : 806∈s2Step237ExitGvAfter.live := by norm_num [s2Step237ExitGvAfter,arenaWires]
  have reserve : s2Step237ExitGvAfter.reserve {150}=some s2Step237CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step237ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step237CompleteMoveArena.retireSet {806}=s2Step237EarlyControlArena := by
    unfold Arena.retireSet s2Step237EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step237CompleteMoveArena,s2Step237ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step237CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step237CompleteMoveArena.retireSet {806}).checkRepack []=some s2Step237EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step237EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s2Step237EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_branch : compileHmrBranchRetirement s2Step237EarlyControlSigmaArena 814=some s2Step237EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step237EarlyControl_branchOwned
  · ext q
    simp [s2Step237EarlyControlOutputArena,s2Step237EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step237EarlyControl_classEqualityBorrow : s2Step237EarlyControlPositiveArena.checkBorrow (([792, 810] : List Wire).length-1) s2Step237EarlyControlLog.classWork=some s2Step237EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step237EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step237EarlyControlEqualityArena,s2Step237EarlyControlPositiveArena,s2Step237EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step237EarlyControl_classEqualityOwned : ([792, 810] : List Wire).toFinset⊆s2Step237EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_classEquality : compileHmrEqualityLog s2Step237EarlyControlPositiveArena [792, 810] 0 s2Step237EarlyControlLog.classWork=some (s2Step237EarlyControlEqualityArena,s2Step237EarlyControlLog.classWork,s2Step237EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step237EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step237EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step237EarlyControl_classOwned : ([777, 800, 792] : List Wire).toFinset⊆s2Step237EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlZeroArena (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_positiveBorrow : s2Step237EarlyControlZeroArena.checkBorrow (1) s2Step237EarlyControlLog.positiveWork=some s2Step237EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step237EarlyControlZeroArena (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step237EarlyControlPositiveArena,s2Step237EarlyControlZeroArena,s2Step237EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step237EarlyControl_class : compileHmrSourceClassLog s2Step237EarlyControlZeroArena false 777 s2Step237EarlyControlZeroPlan.top 0 792 s2Step237EarlyControlLog.positiveWork s2Step237EarlyControlLog.classWork=some s2Step237EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step237EarlyControlClassPlan s2Step237EarlyControlZeroArena false 777 s2Step237EarlyControlZeroPlan.top 0 792
  constructor
  · decide +kernel
  · exact s2Step237EarlyControl_classOwned
  · exact s2Step237EarlyControl_positiveBorrow
  · exact s2Step237EarlyControl_classEquality

private theorem s2Step237EarlyControl_entryRecordOwned : ([814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_entrySigmaOwned : ([792, 254] : List Wire).toFinset⊆s2Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_fitBorrow : s2Step237EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step237EarlyControlLog.recordFresh=some s2Step237EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step237EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step237EarlyControlFittedArena,s2Step237EarlyControlFlagArena,s2Step237EarlyControlLog,arenaWires]

private theorem s2Step237EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step237EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_fit : compileHmrRecordGrowLog s2Step237EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step237EarlyControlLog.recordFresh=some s2Step237EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step237EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step237EarlyControl_fitBorrow

private theorem s2Step237EarlyControl_flagsBorrow : s2Step237EarlyControlEqualityArena.checkBorrow (6) s2Step237EarlyControlLog.flagWork=some s2Step237EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step237EarlyControlEqualityArena (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step237EarlyControlFlagArena,s2Step237EarlyControlEqualityArena,s2Step237EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step237EarlyControl_flagsOwned : ([826, 253, 252, 251] : List Wire).toFinset⊆s2Step237EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlEqualityArena (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_flags : compileHmrFlagsLog s2Step237EarlyControlClassPlan.equalityArena s2Step237EarlyControlClassPlan.equality.top 253 252 251 s2Step237EarlyControlLog.flagWork=some s2Step237EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step237EarlyControl_flagsOwned⟩
  · exact s2Step237EarlyControl_flagsBorrow

private theorem s2Step237EarlyControl_historyBorrow : s2Step237EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step237EarlyControlLog.recordFresh=some s2Step237EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step237EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step237EarlyControlHistoryArena,s2Step237EarlyControlArena,s2Step237EarlyControlLog,arenaWires]

private theorem s2Step237EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_history : compileHmrRecordGrowLog s2Step237EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step237EarlyControlLog.recordFresh=some s2Step237EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step237EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step237EarlyControl_historyBorrow

private theorem s2Step237EarlyControl_sigmaOwned : ([254, 792] : List Wire).toFinset⊆s2Step237EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlHistoryArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_sigmaReleaseOwned : ([792] : List Wire).toFinset⊆s2Step237EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlHistoryArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_sigmaRelease : s2Step237EarlyControlHistoryArena.release {792} (fun _ => false)=some s2Step237EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step237EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step237EarlyControlSigmaArena,s2Step237EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step237EarlyControl_sigma : compileHmrSigmaDropLog s2Step237EarlyControlHistoryArena false 0 0 254 792 []=some s2Step237EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step237EarlyControl_sigmaOwned⟩
  · exact s2Step237EarlyControl_sigmaRelease

private theorem s2Step237EarlyControl_zeroBorrow : s2Step237EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step237EarlyControlLog.zeroWork=some s2Step237EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step237EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step237EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step237EarlyControlZeroArena,s2Step237EarlyControlArena,s2Step237EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step237EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step237EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step237EarlyControlArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EarlyControl_zero : compileHmrEqualityLog s2Step237EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step237EarlyControlLog.zeroWork=some (s2Step237EarlyControlZeroArena,s2Step237EarlyControlLog.zeroWork,s2Step237EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step237EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step237EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step237EarlyControl_logged : s2Step237EarlyControlPlan.Logged s2Step237EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 792 254 253 252 251 814 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step237EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step237EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step237EarlyControl_zero
  · exact s2Step237EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step237EarlyControl_flags
  · exact s2Step237EarlyControl_fit
  · exact s2Step237EarlyControl_history
  · exact s2Step237EarlyControl_sigma
  · exact s2Step237EarlyControl_branch

private theorem s2Step237EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step237EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 792 254 253 252 251 814 49 s2Step237EarlyControlLog=some s2Step237EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step237EarlyControlPlan s2Step237EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 792 254 253 252 251 814 49 s2Step237EarlyControl_logged

private def s2Step237EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩

private def s2Step237EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step237EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150],769⟩

private def s2Step237EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785],771⟩

private def s2Step237FrontBank : WindowBank := ⟨s2Step237EntryFRow,s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow⟩

private def s2Step237Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 793, 768]

private def s2Step237Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800, 810, 769]

private def s2Step237Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809, 770]

private def s2Step237Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797, 819, 771]

private theorem s2Step237Counter_apart : Disjoint s2Step237HeadFvAfter.live s2Step237CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step237HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237Counter_borrowed : s2Step237HeadFvAfter.checkBorrow 4 s2Step237CounterWork=some s2Step237CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step237HeadFvAfter s2Step237CounterDuring s2Step237CounterWork.toFinset s2Step237Counter_bounded s2Step237Counter_apart rfl

private theorem s2Step237Counter_owned : (792::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step237HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step237HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237Counter_checked : compileHmrCounterStepLog s2Step237HeadFvAfter true 792 [772, 773, 774, 775, 776, 777] s2Step237CounterWork=some s2Step237CounterDuring := by
  have owned : ∀q∈792::[772, 773, 774, 775, 776, 777],q∈s2Step237HeadFvAfter.live := fun q hq => s2Step237Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step237Counter_borrowed

private def s2Step237EntryFAfter : Arena := s2Step237EntryFBefore

private theorem s2Step237EntryBank_incomingDistinct : ([s2Step237EntryFRow,s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237EntryF_Incoming : rowsOwned s2Step237EntryFBefore [s2Step237EntryFRow,s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237EntryFRow,s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow] 0 s2Step237EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237EntryBank_outgoingOwned : rowsOwned s2Step237EntryGvAfter [s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step237EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237EntryF_Outgoing : rowsOwned s2Step237EntryGvAfter [s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut] :=
  hmrRows_owned_drop s2Step237EntryGvAfter [s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut] 0 s2Step237EntryBank_outgoingOwned

private theorem s2Step237EntryF_distinct : (s2Step237EntryFRow.sign::s2Step237EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237EntryF_owned : (s2Step237EntryFRow.sign::s2Step237EntryFRow.payload).toFinset⊆s2Step237EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EntryF_reserved : s2Step237EntryFBefore.reserve s2Step237EntryFFresh.toFinset=some s2Step237EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step237EntryFFresh,arenaWires]
  · norm_num [s2Step237EntryFBefore,s2Step237EntryFFresh,arenaWires]
  · simp only [s2Step237EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step237EntryF_checked : planRowResizeLog s2Step237EntryFBefore s2Step237EntryFRow 152 s2Step237EntryFFresh=
    some (s2Step237EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩,growRow 768 s2Step237EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step237EntryFBefore s2Step237EntryFAfter s2Step237EntryFRow 152 s2Step237EntryFFresh
    s2Step237EntryF_distinct s2Step237EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237EntryF_reserved
  have rowEq : WindowRow.mk (s2Step237EntryFRow.payload++s2Step237EntryFFresh) s2Step237EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step237EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237EntryFvAfter : Arena := s2Step237EntryGAfter

private def s2Step237EntryFvBefore : Arena := s2Step237EntryGAfter

private theorem s2Step237EntryFv_Incoming : rowsOwned s2Step237EntryFvBefore [s2Step237EntryFvRow,s2Step237EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237EntryFRow,s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow] 2 s2Step237EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237EntryFv_Outgoing : rowsOwned s2Step237EntryGvAfter [s2Step237EntryFvOut,s2Step237EntryGvOut] :=
  hmrRows_owned_drop s2Step237EntryGvAfter [s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut] 2 s2Step237EntryBank_outgoingOwned

private theorem s2Step237EntryFv_distinct : (s2Step237EntryFvRow.sign::s2Step237EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237EntryFv_owned : (s2Step237EntryFvRow.sign::s2Step237EntryFvRow.payload).toFinset⊆s2Step237EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EntryFv_reserved : s2Step237EntryFvBefore.reserve s2Step237EntryFvFresh.toFinset=some s2Step237EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step237EntryFvFresh,arenaWires]
  · norm_num [s2Step237EntryFvBefore,s2Step237EntryGAfter,s2Step237EntryFvFresh,arenaWires]
  · simp only [s2Step237EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step237EntryFv_checked : planRowResizeLog s2Step237EntryFvBefore s2Step237EntryFvRow 134 s2Step237EntryFvFresh=
    some (s2Step237EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩,growRow 770 s2Step237EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step237EntryFvBefore s2Step237EntryFvAfter s2Step237EntryFvRow 134 s2Step237EntryFvFresh
    s2Step237EntryFv_distinct s2Step237EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step237EntryFvRow.payload++s2Step237EntryFvFresh) s2Step237EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step237EntryGBefore : Arena := s2Step237EntryFBefore

private theorem s2Step237EntryG_Incoming : rowsOwned s2Step237EntryGBefore [s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237EntryFRow,s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow] 1 s2Step237EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237EntryG_Outgoing : rowsOwned s2Step237EntryGvAfter [s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut] :=
  hmrRows_owned_drop s2Step237EntryGvAfter [s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut] 1 s2Step237EntryBank_outgoingOwned

private theorem s2Step237EntryG_distinct : (s2Step237EntryGRow.sign::s2Step237EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237EntryG_owned : (s2Step237EntryGRow.sign::s2Step237EntryGRow.payload).toFinset⊆s2Step237EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EntryG_reserved : s2Step237EntryGBefore.reserve s2Step237EntryGFresh.toFinset=some s2Step237EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step237EntryGFresh,arenaWires]
  · norm_num [s2Step237EntryGBefore,s2Step237EntryFBefore,s2Step237EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step237EntryGAfter,s2Step237EntryGBefore,s2Step237EntryFBefore,s2Step237EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step237EntryG_checked : planRowResizeLog s2Step237EntryGBefore s2Step237EntryGRow 152 s2Step237EntryGFresh=
    some (s2Step237EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800],769⟩,growRow 769 s2Step237EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step237EntryGBefore s2Step237EntryGAfter s2Step237EntryGRow 152 s2Step237EntryGFresh
    s2Step237EntryG_distinct s2Step237EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237EntryG_reserved
  have rowEq : WindowRow.mk (s2Step237EntryGRow.payload++s2Step237EntryGFresh) s2Step237EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step237EntryGvBefore : Arena := s2Step237EntryGAfter

private theorem s2Step237EntryGv_Incoming : rowsOwned s2Step237EntryGvBefore [s2Step237EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237EntryFRow,s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow] 3 s2Step237EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237EntryGv_Outgoing : rowsOwned s2Step237EntryGvAfter [s2Step237EntryGvOut] :=
  hmrRows_owned_drop s2Step237EntryGvAfter [s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut] 3 s2Step237EntryBank_outgoingOwned

private theorem s2Step237EntryGv_distinct : (s2Step237EntryGvRow.sign::s2Step237EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237EntryGv_owned : (s2Step237EntryGvRow.sign::s2Step237EntryGvRow.payload).toFinset⊆s2Step237EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237EntryGv_reserved : s2Step237EntryGvBefore.reserve s2Step237EntryGvFresh.toFinset=some s2Step237EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step237EntryGvFresh,arenaWires]
  · norm_num [s2Step237EntryGvBefore,s2Step237EntryGAfter,s2Step237EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step237EntryGvAfter,s2Step237EntryGvBefore,s2Step237EntryGAfter,s2Step237EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step237EntryGv_checked : planRowResizeLog s2Step237EntryGvBefore s2Step237EntryGvRow 134 s2Step237EntryGvFresh=
    some (s2Step237EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797],771⟩,growRow 771 s2Step237EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step237EntryGvBefore s2Step237EntryGvAfter s2Step237EntryGvRow 134 s2Step237EntryGvFresh
    s2Step237EntryGv_distinct s2Step237EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step237EntryGvRow.payload++s2Step237EntryGvFresh) s2Step237EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step237EntryBank_rows : planWindowRowsLog s2Step237EntryFBefore [(s2Step237EntryFRow,152),(s2Step237EntryGRow,152),(s2Step237EntryFvRow,134),(s2Step237EntryGvRow,134)] [s2Step237EntryFFresh,s2Step237EntryGFresh,s2Step237EntryFvFresh,s2Step237EntryGvFresh]=
    some (s2Step237EntryGvAfter,[s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut],(growRow 768 s2Step237EntryFFresh ++ (growRow 769 s2Step237EntryGFresh ++ (growRow 770 s2Step237EntryFvFresh ++ (growRow 771 s2Step237EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step237EntryGvAfter [] []=some (s2Step237EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step237EntryGvBefore s2Step237EntryGvAfter s2Step237EntryGvAfter
    s2Step237EntryGvRow s2Step237EntryGvOut 134 s2Step237EntryGvFresh [] [] []
    (growRow 771 s2Step237EntryGvFresh) ([]) s2Step237EntryGv_Incoming s2Step237EntryGv_checked h4 s2Step237EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step237EntryFvBefore s2Step237EntryFvAfter s2Step237EntryGvAfter
    s2Step237EntryFvRow s2Step237EntryFvOut 134 s2Step237EntryFvFresh [(s2Step237EntryGvRow,134)] [s2Step237EntryGvFresh] [s2Step237EntryGvOut]
    (growRow 770 s2Step237EntryFvFresh) ((growRow 771 s2Step237EntryGvFresh ++ [])) s2Step237EntryFv_Incoming s2Step237EntryFv_checked h3 s2Step237EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step237EntryGBefore s2Step237EntryGAfter s2Step237EntryGvAfter
    s2Step237EntryGRow s2Step237EntryGOut 152 s2Step237EntryGFresh [(s2Step237EntryFvRow,134),(s2Step237EntryGvRow,134)] [s2Step237EntryFvFresh,s2Step237EntryGvFresh] [s2Step237EntryFvOut,s2Step237EntryGvOut]
    (growRow 769 s2Step237EntryGFresh) ((growRow 770 s2Step237EntryFvFresh ++ (growRow 771 s2Step237EntryGvFresh ++ []))) s2Step237EntryG_Incoming s2Step237EntryG_checked h2 s2Step237EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step237EntryFBefore s2Step237EntryFAfter s2Step237EntryGvAfter
    s2Step237EntryFRow s2Step237EntryFOut 152 s2Step237EntryFFresh [(s2Step237EntryGRow,152),(s2Step237EntryFvRow,134),(s2Step237EntryGvRow,134)] [s2Step237EntryGFresh,s2Step237EntryFvFresh,s2Step237EntryGvFresh] [s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut]
    (growRow 768 s2Step237EntryFFresh) ((growRow 769 s2Step237EntryGFresh ++ (growRow 770 s2Step237EntryFvFresh ++ (growRow 771 s2Step237EntryGvFresh ++ [])))) s2Step237EntryF_Incoming s2Step237EntryF_checked h1 s2Step237EntryF_Outgoing
  exact h0

private theorem s2Step237EntryBank_checked : compileHmrBankResizeLog .entry s2Step237EntryFBefore ⟨s2Step237EntryFRow,s2Step237EntryGRow,s2Step237EntryFvRow,s2Step237EntryGvRow⟩ ⟨152,152,134,134⟩ [s2Step237EntryFFresh,s2Step237EntryGFresh,s2Step237EntryFvFresh,s2Step237EntryGvFresh]=
    some (s2Step237EntryGvAfter,⟨s2Step237EntryFOut,s2Step237EntryGOut,s2Step237EntryFvOut,s2Step237EntryGvOut⟩,(growRow 768 s2Step237EntryFFresh ++ (growRow 769 s2Step237EntryGFresh ++ (growRow 770 s2Step237EntryFvFresh ++ (growRow 771 s2Step237EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step237EntryBank_rows]
  rfl

private def s2Step237ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237ExitFBefore : Arena := s2Step237ExitGAfter

private def s2Step237ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 793],768⟩

private def s2Step237ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩

private def s2Step237ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800, 810],769⟩

private def s2Step237ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797, 819],771⟩

private theorem s2Step237ExitBank_incomingDistinct : ([s2Step237ExitGRow,s2Step237ExitFRow,s2Step237ExitFvRow,s2Step237ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237ExitF_Incoming : rowsOwned s2Step237ExitFBefore [s2Step237ExitFRow,s2Step237ExitFvRow,s2Step237ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237ExitGRow,s2Step237ExitFRow,s2Step237ExitFvRow,s2Step237ExitGvRow] 1 s2Step237ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237ExitFBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237ExitBank_outgoingOwned : rowsOwned s2Step237ExitGvAfter [s2Step237ExitGOut,s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step237ExitGvAfter (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237ExitF_Outgoing : rowsOwned s2Step237ExitGvAfter [s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut] :=
  hmrRows_owned_drop s2Step237ExitGvAfter [s2Step237ExitGOut,s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut] 1 s2Step237ExitBank_outgoingOwned

private theorem s2Step237ExitF_distinct : (s2Step237ExitFRow.sign::s2Step237ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237ExitF_owned : (s2Step237ExitFRow.sign::s2Step237ExitFRow.payload).toFinset⊆s2Step237ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237ExitFBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237ExitF_retired : s2Step237ExitFBefore.retireSet s2Step237ExitFExtra.toFinset=s2Step237ExitFAfter := by
  unfold Arena.retireSet s2Step237ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step237ExitFBefore,s2Step237ExitGAfter,s2Step237ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step237ExitF_checked : planRowResizeLog s2Step237ExitFBefore s2Step237ExitFRow 152 []=
    some (s2Step237ExitFAfter,s2Step237ExitFOut,shrinkRow 768 s2Step237ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step237ExitFBefore s2Step237ExitFRow 152 s2Step237ExitF_distinct s2Step237ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step237ExitFRow.payload.take 152) s2Step237ExitFRow.sign=s2Step237ExitFOut := by decide +kernel
  have hi : s2Step237ExitFRow.payload.drop 152=s2Step237ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step237ExitF_retired] at result
  exact result

private def s2Step237ExitFvAfter : Arena := s2Step237ExitFAfter

private def s2Step237ExitFvBefore : Arena := s2Step237ExitFAfter

private theorem s2Step237ExitFv_Incoming : rowsOwned s2Step237ExitFvBefore [s2Step237ExitFvRow,s2Step237ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237ExitGRow,s2Step237ExitFRow,s2Step237ExitFvRow,s2Step237ExitGvRow] 2 s2Step237ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237ExitFvBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237ExitFv_Outgoing : rowsOwned s2Step237ExitGvAfter [s2Step237ExitFvOut,s2Step237ExitGvOut] :=
  hmrRows_owned_drop s2Step237ExitGvAfter [s2Step237ExitGOut,s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut] 2 s2Step237ExitBank_outgoingOwned

private theorem s2Step237ExitFv_distinct : (s2Step237ExitFvRow.sign::s2Step237ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237ExitFv_owned : (s2Step237ExitFvRow.sign::s2Step237ExitFvRow.payload).toFinset⊆s2Step237ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237ExitFvBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237ExitFv_reserved : s2Step237ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step237ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step237ExitFv_checked : planRowResizeLog s2Step237ExitFvBefore s2Step237ExitFvRow 135 []=
    some (s2Step237ExitFvAfter,s2Step237ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step237ExitFvBefore s2Step237ExitFvAfter s2Step237ExitFvRow 135 []
    s2Step237ExitFv_distinct s2Step237ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step237ExitFvRow.payload++[]) s2Step237ExitFvRow.sign=s2Step237ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step237ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step237ExitG_Incoming : rowsOwned s2Step237ExitGBefore [s2Step237ExitGRow,s2Step237ExitFRow,s2Step237ExitFvRow,s2Step237ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237ExitGRow,s2Step237ExitFRow,s2Step237ExitFvRow,s2Step237ExitGvRow] 0 s2Step237ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237ExitG_Outgoing : rowsOwned s2Step237ExitGvAfter [s2Step237ExitGOut,s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut] :=
  hmrRows_owned_drop s2Step237ExitGvAfter [s2Step237ExitGOut,s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut] 0 s2Step237ExitBank_outgoingOwned

private theorem s2Step237ExitG_distinct : (s2Step237ExitGRow.sign::s2Step237ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237ExitG_owned : (s2Step237ExitGRow.sign::s2Step237ExitGRow.payload).toFinset⊆s2Step237ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237ExitG_retired : s2Step237ExitGBefore.retireSet s2Step237ExitGExtra.toFinset=s2Step237ExitGAfter := by
  unfold Arena.retireSet s2Step237ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step237ExitGBefore,s2Step237ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step237ExitG_checked : planRowResizeLog s2Step237ExitGBefore s2Step237ExitGRow 150 []=
    some (s2Step237ExitGAfter,s2Step237ExitGOut,shrinkRow 769 s2Step237ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step237ExitGBefore s2Step237ExitGRow 150 s2Step237ExitG_distinct s2Step237ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step237ExitGRow.payload.take 150) s2Step237ExitGRow.sign=s2Step237ExitGOut := by decide +kernel
  have hi : s2Step237ExitGRow.payload.drop 150=s2Step237ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step237ExitG_retired] at result
  exact result

private def s2Step237ExitGvBefore : Arena := s2Step237ExitFAfter

private theorem s2Step237ExitGv_Incoming : rowsOwned s2Step237ExitGvBefore [s2Step237ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237ExitGRow,s2Step237ExitFRow,s2Step237ExitFvRow,s2Step237ExitGvRow] 3 s2Step237ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237ExitGvBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237ExitGv_Outgoing : rowsOwned s2Step237ExitGvAfter [s2Step237ExitGvOut] :=
  hmrRows_owned_drop s2Step237ExitGvAfter [s2Step237ExitGOut,s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut] 3 s2Step237ExitBank_outgoingOwned

private theorem s2Step237ExitGv_distinct : (s2Step237ExitGvRow.sign::s2Step237ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237ExitGv_owned : (s2Step237ExitGvRow.sign::s2Step237ExitGvRow.payload).toFinset⊆s2Step237ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237ExitGvBefore (fun q => (0≤q ∧ q<150) ∨ (151≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237ExitGv_retired : s2Step237ExitGvBefore.retireSet s2Step237ExitGvExtra.toFinset=s2Step237ExitGvAfter := by
  unfold Arena.retireSet s2Step237ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step237ExitGvBefore,s2Step237ExitFAfter,s2Step237ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step237ExitGv_checked : planRowResizeLog s2Step237ExitGvBefore s2Step237ExitGvRow 133 []=
    some (s2Step237ExitGvAfter,s2Step237ExitGvOut,shrinkRow 771 s2Step237ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step237ExitGvBefore s2Step237ExitGvRow 133 s2Step237ExitGv_distinct s2Step237ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step237ExitGvRow.payload.take 133) s2Step237ExitGvRow.sign=s2Step237ExitGvOut := by decide +kernel
  have hi : s2Step237ExitGvRow.payload.drop 133=s2Step237ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step237ExitGv_retired] at result
  exact result

private theorem s2Step237ExitBank_rows : planWindowRowsLog s2Step237ExitGBefore [(s2Step237ExitGRow,150),(s2Step237ExitFRow,152),(s2Step237ExitFvRow,135),(s2Step237ExitGvRow,133)] [[],[],[],[]]=
    some (s2Step237ExitGvAfter,[s2Step237ExitGOut,s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut],(shrinkRow 769 s2Step237ExitGExtra ++ (shrinkRow 768 s2Step237ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step237ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step237ExitGvAfter [] []=some (s2Step237ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step237ExitGvBefore s2Step237ExitGvAfter s2Step237ExitGvAfter
    s2Step237ExitGvRow s2Step237ExitGvOut 133 [] [] [] []
    (shrinkRow 771 s2Step237ExitGvExtra) ([]) s2Step237ExitGv_Incoming s2Step237ExitGv_checked h4 s2Step237ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step237ExitFvBefore s2Step237ExitFvAfter s2Step237ExitGvAfter
    s2Step237ExitFvRow s2Step237ExitFvOut 135 [] [(s2Step237ExitGvRow,133)] [[]] [s2Step237ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step237ExitGvExtra ++ [])) s2Step237ExitFv_Incoming s2Step237ExitFv_checked h3 s2Step237ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step237ExitFBefore s2Step237ExitFAfter s2Step237ExitGvAfter
    s2Step237ExitFRow s2Step237ExitFOut 152 [] [(s2Step237ExitFvRow,135),(s2Step237ExitGvRow,133)] [[],[]] [s2Step237ExitFvOut,s2Step237ExitGvOut]
    (shrinkRow 768 s2Step237ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step237ExitGvExtra ++ []))) s2Step237ExitF_Incoming s2Step237ExitF_checked h2 s2Step237ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step237ExitGBefore s2Step237ExitGAfter s2Step237ExitGvAfter
    s2Step237ExitGRow s2Step237ExitGOut 150 [] [(s2Step237ExitFRow,152),(s2Step237ExitFvRow,135),(s2Step237ExitGvRow,133)] [[],[],[]] [s2Step237ExitFOut,s2Step237ExitFvOut,s2Step237ExitGvOut]
    (shrinkRow 769 s2Step237ExitGExtra) ((shrinkRow 768 s2Step237ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step237ExitGvExtra ++ [])))) s2Step237ExitG_Incoming s2Step237ExitG_checked h1 s2Step237ExitG_Outgoing
  exact h0

private theorem s2Step237ExitBank_checked : compileHmrBankResizeLog .exit s2Step237ExitGBefore ⟨s2Step237ExitFRow,s2Step237ExitGRow,s2Step237ExitFvRow,s2Step237ExitGvRow⟩ ⟨152,150,135,133⟩ [[],[],[],[]]=
    some (s2Step237ExitGvAfter,⟨s2Step237ExitFOut,s2Step237ExitGOut,s2Step237ExitFvOut,s2Step237ExitGvOut⟩,(shrinkRow 769 s2Step237ExitGExtra ++ (shrinkRow 768 s2Step237ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step237ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step237ExitBank_rows]
  rfl

private theorem s2Step237Add0_apart : Disjoint s2Step237Add0Arena.live s2Step237Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step237Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237Add0_card : s2Step237Add0Arena.live.card=895 := by
  decide +kernel

private theorem s2Step237Add0_borrowed : s2Step237Add0Arena.checkBorrow (hmrHybridCount s2Step237Add0Arena s2Step237Add0B.length) s2Step237Add0Work=some s2Step237Add0During := by
  have len : s2Step237Add0Work.length=hmrHybridCount s2Step237Add0Arena s2Step237Add0B.length := by
    rw [hmrHybridCount,s2Step237Add0_card]
    decide +kernel
  have nd : s2Step237Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step237Add0Arena s2Step237Add0During s2Step237Add0Work.toFinset s2Step237Add0_bounded s2Step237Add0_apart rfl

private theorem s2Step237Add0_distinct : (826::814::842::(s2Step237Add0A++s2Step237Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237Add0_owned : (826::814::842::(s2Step237Add0A++s2Step237Add0B)).toFinset⊆s2Step237Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step237Add0Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237Add0_checked : compileHmrHybridCinLog s2Step237Add0Arena 814 826 842 s2Step237Add0A s2Step237Add0B s2Step237Add0Work=some s2Step237Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step237Add0Arena s2Step237Add0During 814 826 842 s2Step237Add0A s2Step237Add0B s2Step237Add0Work
    (by decide +kernel) (by decide +kernel) s2Step237Add0_distinct
    (fun q hq => s2Step237Add0_owned (List.mem_toFinset.mpr hq)) s2Step237Add0_borrowed

private theorem s2Step237Add1_apart : Disjoint s2Step237Add1Arena.live s2Step237Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step237Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237Add1_card : s2Step237Add1Arena.live.card=895 := by
  decide +kernel

private theorem s2Step237Add1_borrowed : s2Step237Add1Arena.checkBorrow (hmrHybridCount s2Step237Add1Arena s2Step237Add1B.length) s2Step237Add1Work=some s2Step237Add1During := by
  have len : s2Step237Add1Work.length=hmrHybridCount s2Step237Add1Arena s2Step237Add1B.length := by
    rw [hmrHybridCount,s2Step237Add1_card]
    decide +kernel
  have nd : s2Step237Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step237Add1Arena s2Step237Add1During s2Step237Add1Work.toFinset s2Step237Add1_bounded s2Step237Add1_apart rfl

private theorem s2Step237Add1_distinct : (826::814::842::(s2Step237Add1A++s2Step237Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237Add1_owned : (826::814::842::(s2Step237Add1A++s2Step237Add1B)).toFinset⊆s2Step237Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step237Add1Arena (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237Add1_checked : compileHmrHybridCinLog s2Step237Add1Arena 814 826 842 s2Step237Add1A s2Step237Add1B s2Step237Add1Work=some s2Step237Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step237Add1Arena s2Step237Add1During 814 826 842 s2Step237Add1A s2Step237Add1B s2Step237Add1Work
    (by decide +kernel) (by decide +kernel) s2Step237Add1_distinct
    (fun q hq => s2Step237Add1_owned (List.mem_toFinset.mpr hq)) s2Step237Add1_borrowed

private theorem s2Step237F4_apart : Disjoint (s2Step237Add0A++s2Step237Add0B).toFinset (s2Step237Add1A++s2Step237Add1B).toFinset := by
  have nd : ((s2Step237Add0A++s2Step237Add0B)++(s2Step237Add1A++s2Step237Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step237F4_carry : s2Step237F4FlagArena.checkBorrow 1 [842]=some s2Step237Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step237F4FlagArena,s2Step237HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step237F4FlagArena,s2Step237HeadFvAfter,s2Step237Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step237F4_distinct : (792::814::826::842::((s2Step237Add0A++s2Step237Add1A)++(s2Step237Add0B++s2Step237Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237F4_flag : s2Step237HeadFvAfter.checkBorrow 1 [826]=some s2Step237F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step237HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step237F4_owned : (792::814::((s2Step237Add0A++s2Step237Add1A)++(s2Step237Add0B++s2Step237Add1B))).toFinset⊆s2Step237HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step237HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237F4_checked : compileHmrHybridF4Log s2Step237HeadFvAfter 792 814 s2Step237Add0A s2Step237Add0B s2Step237Add1A s2Step237Add1B [826] [842] s2Step237Add0Work s2Step237Add1Work=some s2Step237F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step237HeadFvAfter s2Step237F4FlagArena s2Step237Add0Arena s2Step237Add0During s2Step237Add1During 792 814
    s2Step237Add0A s2Step237Add0B s2Step237Add1A s2Step237Add1B [826] [842] s2Step237Add0Work s2Step237Add1Work
    (fun q hq => s2Step237F4_owned (List.mem_toFinset.mpr hq)) s2Step237F4_flag s2Step237F4_carry
    s2Step237F4_distinct s2Step237F4_apart s2Step237Add0_checked s2Step237Add1_checked

private theorem s2Step237Front_branch : s2Step237FrontSigmaArena.checkBorrow 1 [814]=some s2Step237HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step237FrontSigmaArena,s2Step237EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step237FrontSigmaArena,s2Step237EntryGvAfter,s2Step237HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step237Front_entry : HmrFrontEntryValid s2Step237EntryFBefore s2Step237FrontBank 152 134 ⟨152,150,135,133⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step237FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step237EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step237EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step237FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step237Front_sigma : s2Step237EntryGvAfter.checkBorrow 1 [792]=some s2Step237FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step237EntryGvAfter,arenaWires]
  · rfl

private def s2Step237HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237HeadFBefore : Arena := s2Step237HeadGAfter

private def s2Step237HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩

private def s2Step237HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step237HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800],769⟩

private def s2Step237HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797],771⟩

private theorem s2Step237HeadBank_incomingDistinct : ([s2Step237HeadGRow,s2Step237HeadFRow,s2Step237HeadGvRow,s2Step237HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237HeadF_Incoming : rowsOwned s2Step237HeadFBefore [s2Step237HeadFRow,s2Step237HeadGvRow,s2Step237HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237HeadGRow,s2Step237HeadFRow,s2Step237HeadGvRow,s2Step237HeadFvRow] 1 s2Step237HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237HeadBank_outgoingOwned : rowsOwned s2Step237HeadFvAfter [s2Step237HeadGOut,s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step237HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237HeadF_Outgoing : rowsOwned s2Step237HeadFvAfter [s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut] :=
  hmrRows_owned_drop s2Step237HeadFvAfter [s2Step237HeadGOut,s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut] 1 s2Step237HeadBank_outgoingOwned

private theorem s2Step237HeadF_distinct : (s2Step237HeadFRow.sign::s2Step237HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237HeadF_owned : (s2Step237HeadFRow.sign::s2Step237HeadFRow.payload).toFinset⊆s2Step237HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237HeadF_reserved : s2Step237HeadFBefore.reserve s2Step237HeadFFresh.toFinset=some s2Step237HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step237HeadFFresh,arenaWires]
  · norm_num [s2Step237HeadFBefore,s2Step237HeadGAfter,s2Step237HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step237HeadFAfter,s2Step237HeadFBefore,s2Step237HeadGAfter,s2Step237HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step237HeadF_checked : planRowResizeLog s2Step237HeadFBefore s2Step237HeadFRow 153 s2Step237HeadFFresh=
    some (s2Step237HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 793],768⟩,growRow 768 s2Step237HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step237HeadFBefore s2Step237HeadFAfter s2Step237HeadFRow 153 s2Step237HeadFFresh
    s2Step237HeadF_distinct s2Step237HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237HeadF_reserved
  have rowEq : WindowRow.mk (s2Step237HeadFRow.payload++s2Step237HeadFFresh) s2Step237HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step237HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step237HeadFvBefore : Arena := s2Step237HeadGvAfter

private theorem s2Step237HeadFv_Incoming : rowsOwned s2Step237HeadFvBefore [s2Step237HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237HeadGRow,s2Step237HeadFRow,s2Step237HeadGvRow,s2Step237HeadFvRow] 3 s2Step237HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237HeadFv_Outgoing : rowsOwned s2Step237HeadFvAfter [s2Step237HeadFvOut] :=
  hmrRows_owned_drop s2Step237HeadFvAfter [s2Step237HeadGOut,s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut] 3 s2Step237HeadBank_outgoingOwned

private theorem s2Step237HeadFv_distinct : (s2Step237HeadFvRow.sign::s2Step237HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237HeadFv_owned : (s2Step237HeadFvRow.sign::s2Step237HeadFvRow.payload).toFinset⊆s2Step237HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237HeadFvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237HeadFv_reserved : s2Step237HeadFvBefore.reserve s2Step237HeadFvFresh.toFinset=some s2Step237HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step237HeadFvFresh,arenaWires]
  · norm_num [s2Step237HeadFvBefore,s2Step237HeadGvAfter,s2Step237HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step237HeadFvAfter,s2Step237HeadFvBefore,s2Step237HeadGvAfter,s2Step237HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step237HeadFv_checked : planRowResizeLog s2Step237HeadFvBefore s2Step237HeadFvRow 135 s2Step237HeadFvFresh=
    some (s2Step237HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩,growRow 770 s2Step237HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step237HeadFvBefore s2Step237HeadFvAfter s2Step237HeadFvRow 135 s2Step237HeadFvFresh
    s2Step237HeadFv_distinct s2Step237HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step237HeadFvRow.payload++s2Step237HeadFvFresh) s2Step237HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 806, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step237HeadG_Incoming : rowsOwned s2Step237HeadGBefore [s2Step237HeadGRow,s2Step237HeadFRow,s2Step237HeadGvRow,s2Step237HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237HeadGRow,s2Step237HeadFRow,s2Step237HeadGvRow,s2Step237HeadFvRow] 0 s2Step237HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237HeadGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237HeadG_Outgoing : rowsOwned s2Step237HeadFvAfter [s2Step237HeadGOut,s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut] :=
  hmrRows_owned_drop s2Step237HeadFvAfter [s2Step237HeadGOut,s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut] 0 s2Step237HeadBank_outgoingOwned

private theorem s2Step237HeadG_distinct : (s2Step237HeadGRow.sign::s2Step237HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237HeadG_owned : (s2Step237HeadGRow.sign::s2Step237HeadGRow.payload).toFinset⊆s2Step237HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237HeadGBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237HeadG_reserved : s2Step237HeadGBefore.reserve s2Step237HeadGFresh.toFinset=some s2Step237HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step237HeadGFresh,arenaWires]
  · norm_num [s2Step237HeadGBefore,s2Step237HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step237HeadGAfter,s2Step237HeadGBefore,s2Step237HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step237HeadG_checked : planRowResizeLog s2Step237HeadGBefore s2Step237HeadGRow 153 s2Step237HeadGFresh=
    some (s2Step237HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800, 810],769⟩,growRow 769 s2Step237HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step237HeadGBefore s2Step237HeadGAfter s2Step237HeadGRow 153 s2Step237HeadGFresh
    s2Step237HeadG_distinct s2Step237HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237HeadG_reserved
  have rowEq : WindowRow.mk (s2Step237HeadGRow.payload++s2Step237HeadGFresh) s2Step237HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 800, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step237HeadGvBefore : Arena := s2Step237HeadFAfter

private theorem s2Step237HeadGv_Incoming : rowsOwned s2Step237HeadGvBefore [s2Step237HeadGvRow,s2Step237HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step237HeadGRow,s2Step237HeadFRow,s2Step237HeadGvRow,s2Step237HeadFvRow] 2 s2Step237HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step237HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step237HeadGv_Outgoing : rowsOwned s2Step237HeadFvAfter [s2Step237HeadGvOut,s2Step237HeadFvOut] :=
  hmrRows_owned_drop s2Step237HeadFvAfter [s2Step237HeadGOut,s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut] 2 s2Step237HeadBank_outgoingOwned

private theorem s2Step237HeadGv_distinct : (s2Step237HeadGvRow.sign::s2Step237HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step237HeadGv_owned : (s2Step237HeadGvRow.sign::s2Step237HeadGvRow.payload).toFinset⊆s2Step237HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step237HeadGvBefore (fun q => (0≤q ∧ q<809) ∨ (810≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step237HeadGv_reserved : s2Step237HeadGvBefore.reserve s2Step237HeadGvFresh.toFinset=some s2Step237HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step237HeadGvFresh,arenaWires]
  · norm_num [s2Step237HeadGvBefore,s2Step237HeadFAfter,s2Step237HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step237HeadGvAfter,s2Step237HeadGvBefore,s2Step237HeadFAfter,s2Step237HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step237HeadGv_checked : planRowResizeLog s2Step237HeadGvBefore s2Step237HeadGvRow 135 s2Step237HeadGvFresh=
    some (s2Step237HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797, 819],771⟩,growRow 771 s2Step237HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step237HeadGvBefore s2Step237HeadGvAfter s2Step237HeadGvRow 135 s2Step237HeadGvFresh
    s2Step237HeadGv_distinct s2Step237HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step237HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step237HeadGvRow.payload++s2Step237HeadGvFresh) s2Step237HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 797, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step237HeadBank_rows : planWindowRowsLog s2Step237HeadGBefore [(s2Step237HeadGRow,153),(s2Step237HeadFRow,153),(s2Step237HeadGvRow,135),(s2Step237HeadFvRow,135)] [s2Step237HeadGFresh,s2Step237HeadFFresh,s2Step237HeadGvFresh,s2Step237HeadFvFresh]=
    some (s2Step237HeadFvAfter,[s2Step237HeadGOut,s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut],(growRow 769 s2Step237HeadGFresh ++ (growRow 768 s2Step237HeadFFresh ++ (growRow 771 s2Step237HeadGvFresh ++ (growRow 770 s2Step237HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step237HeadFvAfter [] []=some (s2Step237HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step237HeadFvBefore s2Step237HeadFvAfter s2Step237HeadFvAfter
    s2Step237HeadFvRow s2Step237HeadFvOut 135 s2Step237HeadFvFresh [] [] []
    (growRow 770 s2Step237HeadFvFresh) ([]) s2Step237HeadFv_Incoming s2Step237HeadFv_checked h4 s2Step237HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step237HeadGvBefore s2Step237HeadGvAfter s2Step237HeadFvAfter
    s2Step237HeadGvRow s2Step237HeadGvOut 135 s2Step237HeadGvFresh [(s2Step237HeadFvRow,135)] [s2Step237HeadFvFresh] [s2Step237HeadFvOut]
    (growRow 771 s2Step237HeadGvFresh) ((growRow 770 s2Step237HeadFvFresh ++ [])) s2Step237HeadGv_Incoming s2Step237HeadGv_checked h3 s2Step237HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step237HeadFBefore s2Step237HeadFAfter s2Step237HeadFvAfter
    s2Step237HeadFRow s2Step237HeadFOut 153 s2Step237HeadFFresh [(s2Step237HeadGvRow,135),(s2Step237HeadFvRow,135)] [s2Step237HeadGvFresh,s2Step237HeadFvFresh] [s2Step237HeadGvOut,s2Step237HeadFvOut]
    (growRow 768 s2Step237HeadFFresh) ((growRow 771 s2Step237HeadGvFresh ++ (growRow 770 s2Step237HeadFvFresh ++ []))) s2Step237HeadF_Incoming s2Step237HeadF_checked h2 s2Step237HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step237HeadGBefore s2Step237HeadGAfter s2Step237HeadFvAfter
    s2Step237HeadGRow s2Step237HeadGOut 153 s2Step237HeadGFresh [(s2Step237HeadFRow,153),(s2Step237HeadGvRow,135),(s2Step237HeadFvRow,135)] [s2Step237HeadFFresh,s2Step237HeadGvFresh,s2Step237HeadFvFresh] [s2Step237HeadFOut,s2Step237HeadGvOut,s2Step237HeadFvOut]
    (growRow 769 s2Step237HeadGFresh) ((growRow 768 s2Step237HeadFFresh ++ (growRow 771 s2Step237HeadGvFresh ++ (growRow 770 s2Step237HeadFvFresh ++ [])))) s2Step237HeadG_Incoming s2Step237HeadG_checked h1 s2Step237HeadG_Outgoing
  exact h0

private theorem s2Step237HeadBank_checked : compileHmrBankResizeLog .headroom s2Step237HeadGBefore ⟨s2Step237HeadFRow,s2Step237HeadGRow,s2Step237HeadFvRow,s2Step237HeadGvRow⟩ ⟨153,153,135,135⟩ [s2Step237HeadGFresh,s2Step237HeadFFresh,s2Step237HeadGvFresh,s2Step237HeadFvFresh]=
    some (s2Step237HeadFvAfter,⟨s2Step237HeadFOut,s2Step237HeadGOut,s2Step237HeadFvOut,s2Step237HeadGvOut⟩,(growRow 769 s2Step237HeadGFresh ++ (growRow 768 s2Step237HeadFFresh ++ (growRow 771 s2Step237HeadGvFresh ++ (growRow 770 s2Step237HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step237HeadBank_rows]
  rfl

private theorem s2Step237Front_checked : compileHmrSourceFrontLog s2Step237EntryFBefore s2Step237FrontBank 152 134 ⟨152,150,135,133⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step237FrontLog=some s2Step237FrontPlan := by
  have pairEq : s2Step237FrontPair=⟨s2Step237HeadFRow,s2Step237HeadGRow,s2Step237HeadFvRow,s2Step237HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step237FrontHead=⟨s2Step237ExitFRow,s2Step237ExitGRow,s2Step237ExitFvRow,s2Step237ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step237Add0A=s2Step237FrontHead.f.wires := by decide +kernel
  have gEq : s2Step237Add0B=s2Step237FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step237Add1A=s2Step237FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step237Add1B=s2Step237FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step237EntryFBefore s2Step237FrontBank 152 134 ⟨152,150,135,133⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step237FrontLog s2Step237FrontPlan
  · exact s2Step237Front_entry
  · exact s2Step237EntryBank_checked
  · exact s2Step237Front_sigma
  · rfl
  · exact s2Step237Front_branch
  · rfl
  · simpa only [s2Step237FrontPlan,pairEq] using s2Step237HeadBank_checked
  · simpa only [s2Step237FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step237F4_checked
  · exact s2Step237Counter_checked
  · rfl
  · simpa only [s2Step237FrontPlan,headEq] using s2Step237ExitBank_checked

private theorem s2Step237Complete_explicit_checked : compileHmrEarlyStepLog s2Step237EntryFBefore s2Step237FrontBank 152 134 ⟨152,150,135,133⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step237CompleteLog=some s2Step237CompletePlan := by
  let Q := s2Step237EarlyControlPlan
  have hq := s2Step237EarlyControl_plan_checked
  have fv1 : s2Step237CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step237CompleteOut.fv.payload[2]?.getD s2Step237CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step237CompleteOut.fv.payload[3]?.getD s2Step237CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step237CompleteOut.fv.payload[4]?.getD s2Step237CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step237EntryFBefore s2Step237EarlyControlArena s2Step237FrontBank 152 134 ⟨152,150,135,133⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step237CompleteLog s2Step237FrontPlan Q
    s2Step237Front_checked s2Step237Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step237Complete_owned s2Step237Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step237EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 792 s2Step237CompleteOut.fv.second (s2Step237CompleteOut.fv.payload[2]?.getD s2Step237CompleteOut.fv.sign) (s2Step237CompleteOut.fv.payload[3]?.getD s2Step237CompleteOut.fv.sign) (s2Step237CompleteOut.fv.payload[4]?.getD s2Step237CompleteOut.fv.sign) 814 49 s2Step237EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep237Arena : Arena := s2Step237EntryFBefore
def s2PrivateStep237Bank : WindowBank := s2Step237FrontBank
def s2PrivateStep237Spec : HmrSourceWalkStepLog := ⟨152,134,⟨152,150,135,133⟩,49,.early s2Step237CompleteLog⟩
def s2PrivateStep237Plan : HmrSourceStepPlan := .early s2Step237CompletePlan
theorem s2PrivateStep237_source : s2PrivateStep237Spec=s2ObservedLogs224[13] := rfl
theorem s2PrivateStep237_checked : compileHmrSourceStepLog s2PrivateStep237Arena s2PrivateStep237Bank
    s2PrivateStep237Spec.fgWidth s2PrivateStep237Spec.vWidth s2PrivateStep237Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 237 s2PrivateStep237Spec.need none s2PrivateStep237Spec.log=some s2PrivateStep237Plan := by
  change compileHmrSourceStepLog s2Step237EntryFBefore s2Step237FrontBank 152 134 ⟨152,150,135,133⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 237 49 none (.early s2Step237CompleteLog)=some (.early s2Step237CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 237<498)]
  rw [s2Step237Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
