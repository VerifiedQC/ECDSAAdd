import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep238
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

private def s2Step240CompleteMoves : List (Wire × Wire) := []

private def s2Step240EarlyControlLog : HmrEarlyControlLog := ⟨[793, 809, 810, 819, 814],[826],[792],[800, 885, 891, 894, 896, 899],[]⟩

private def s2Step240FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [832], []],[[819], [810], [793], [809]],[[], [], [], []]⟩,[834],[842],[814],[826],[792, 800, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[792, 800, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 826, 792, 800]⟩

private def s2Step240CompleteLog : HmrEarlyStepLog := ⟨s2Step240FrontLog,s2Step240CompleteMoves,s2Step240EarlyControlLog⟩

private def s2Step240ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step240ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩

private def s2Step240ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step240ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step240FrontOut : WindowBank := ⟨s2Step240ExitFOut,s2Step240ExitGOut,s2Step240ExitFvOut,s2Step240ExitGvOut⟩

private def s2Step240CompleteOut : WindowBank := s2Step240FrontOut.repacked s2Step240CompleteMoves

private def s2Step240EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step240EarlyControlPositiveArena,[826],s2Step240EarlyControlEqualityArena,[792],⟨⟨834,false⟩,[⟨⟨826,false⟩,792⟩]⟩⟩

private def s2Step240EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,793⟩,⟨⟨774,false⟩,809⟩,⟨⟨775,false⟩,810⟩,⟨⟨776,false⟩,819⟩,⟨⟨777,false⟩,814⟩]⟩

private def s2Step240EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step240EarlyControlZeroArena,s2Step240EarlyControlZeroPlan,s2Step240EarlyControlClassPlan,s2Step240EarlyControlFlagArena,s2Step240EarlyControlFittedArena,s2Step240EarlyControlHistoryArena,s2Step240EarlyControlSigmaArena,s2Step240EarlyControlOutputArena,s2Step240EarlyControlLog⟩

private def s2Step240CounterWork : List Wire := [814, 826, 792, 800]

private theorem s2Step240Counter_bounded : s2Step240CounterWork.toFinset⊆arenaWires := by norm_num [s2Step240CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step240HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240CounterDuring : Arena := ⟨s2Step240HeadFvAfter.live∪s2Step240CounterWork.toFinset,Finset.union_subset s2Step240HeadFvAfter.bounded s2Step240Counter_bounded⟩

private def s2Step240EntryFFresh : List Wire := []

private def s2Step240EntryFvFresh : List Wire := [832]

private def s2Step240EntryGFresh : List Wire := []

private def s2Step240EntryFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EntryGvAfter : Arena := s2Step240EntryFvAfter

private def s2Step240EntryGvFresh : List Wire := []

private def s2Step240ExitFExtra : List Wire := [810]

private def s2Step240ExitFvExtra : List Wire := [809]

private def s2Step240ExitGExtra : List Wire := [819]

private def s2Step240ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240ExitGvExtra : List Wire := [793]

private def s2Step240Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240Add0Work : List Wire := [792, 800, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step240Add0_bounded : s2Step240Add0Work.toFinset⊆arenaWires := by
  have h : s2Step240Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step240Add0During : Arena := ⟨s2Step240Add0Arena.live∪s2Step240Add0Work.toFinset,Finset.union_subset s2Step240Add0Arena.bounded s2Step240Add0_bounded⟩

private def s2Step240Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240Add1Work : List Wire := [792, 800, 885, 891, 894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step240Add1_bounded : s2Step240Add1Work.toFinset⊆arenaWires := by
  have h : s2Step240Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step240Add1During : Arena := ⟨s2Step240Add1Arena.live∪s2Step240Add1Work.toFinset,Finset.union_subset s2Step240Add1Arena.bounded s2Step240Add1_bounded⟩

private def s2Step240F4FlagArena : Arena := ⟨s2Step240HeadFvAfter.live∪{814},Finset.union_subset s2Step240HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step240F4Plan : HmrHybridF4Plan := ⟨s2Step240F4FlagArena,[814],s2Step240Add0Arena,[826],s2Step240Add0During,s2Step240Add0Work,s2Step240Add1During,s2Step240Add1Work⟩

private def s2Step240HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810],768⟩

private def s2Step240HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 809],770⟩

private def s2Step240HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 819],769⟩

private def s2Step240HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 793],771⟩

private def s2Step240FrontHead : WindowBank := ⟨s2Step240HeadFOut,s2Step240HeadGOut,s2Step240HeadFvOut,s2Step240HeadGvOut⟩

private def s2Step240EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step240EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩

private def s2Step240EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step240EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step240FrontPair : WindowBank := ⟨s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut⟩

private def s2Step240FrontSigmaArena : Arena := ⟨s2Step240EntryGvAfter.live∪{834},Finset.union_subset s2Step240EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step240HeadFFresh : List Wire := [810]

private def s2Step240HeadFvFresh : List Wire := [809]

private def s2Step240HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240HeadGFresh : List Wire := [819]

private def s2Step240HeadGvFresh : List Wire := [793]

private def s2Step240FrontPlan : HmrSourceFront := ⟨s2Step240EntryGvAfter,s2Step240FrontPair,(growRow 768 s2Step240EntryFFresh ++ (growRow 769 s2Step240EntryGFresh ++ (growRow 770 s2Step240EntryFvFresh ++ (growRow 771 s2Step240EntryGvFresh ++ [])))),s2Step240FrontSigmaArena,[834],s2Step240HeadGBefore,[842],
  s2Step240HeadFvAfter,s2Step240FrontHead,(growRow 769 s2Step240HeadGFresh ++ (growRow 768 s2Step240HeadFFresh ++ (growRow 771 s2Step240HeadGvFresh ++ (growRow 770 s2Step240HeadFvFresh ++ [])))),s2Step240F4Plan,s2Step240CounterDuring,s2Step240CounterWork,s2Step240ExitGvAfter,s2Step240FrontOut,(shrinkRow 769 s2Step240ExitGExtra ++ (shrinkRow 768 s2Step240ExitFExtra ++ (shrinkRow 770 s2Step240ExitFvExtra ++ (shrinkRow 771 s2Step240ExitGvExtra ++ []))))⟩

private def s2Step240CompletePlan : HmrEarlyStepPlan := ⟨s2Step240FrontPlan,s2Step240EarlyControlArena,s2Step240EarlyControlPlan,s2Step240CompleteMoves⟩

private theorem s2Step240Complete_apart : List.Disjoint (s2Step240CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [834, 842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step240CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[834, 842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step240Complete_owned : (s2Step240CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step240EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240Complete_repack : s2Step240ExitGvAfter.checkRepack s2Step240CompleteMoves=some s2Step240EarlyControlArena := by rfl

private theorem s2Step240EarlyControl_branchOwned : ([842] : List Wire).toFinset⊆s2Step240EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_branch : compileHmrBranchRetirement s2Step240EarlyControlSigmaArena 842=some s2Step240EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step240EarlyControl_branchOwned
  · ext q
    simp [s2Step240EarlyControlOutputArena,s2Step240EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step240EarlyControl_classEqualityBorrow : s2Step240EarlyControlPositiveArena.checkBorrow (([834, 826] : List Wire).length-1) s2Step240EarlyControlLog.classWork=some s2Step240EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step240EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step240EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step240EarlyControlEqualityArena,s2Step240EarlyControlPositiveArena,s2Step240EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step240EarlyControl_classEqualityOwned : ([834, 826] : List Wire).toFinset⊆s2Step240EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_classEquality : compileHmrEqualityLog s2Step240EarlyControlPositiveArena [834, 826] 0 s2Step240EarlyControlLog.classWork=some (s2Step240EarlyControlEqualityArena,s2Step240EarlyControlLog.classWork,s2Step240EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step240EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step240EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step240EarlyControl_classOwned : ([777, 814, 834] : List Wire).toFinset⊆s2Step240EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_positiveBorrow : s2Step240EarlyControlZeroArena.checkBorrow (1) s2Step240EarlyControlLog.positiveWork=some s2Step240EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step240EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step240EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step240EarlyControlPositiveArena,s2Step240EarlyControlZeroArena,s2Step240EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step240EarlyControl_class : compileHmrSourceClassLog s2Step240EarlyControlZeroArena false 777 s2Step240EarlyControlZeroPlan.top 0 834 s2Step240EarlyControlLog.positiveWork s2Step240EarlyControlLog.classWork=some s2Step240EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step240EarlyControlClassPlan s2Step240EarlyControlZeroArena false 777 s2Step240EarlyControlZeroPlan.top 0 834
  constructor
  · decide +kernel
  · exact s2Step240EarlyControl_classOwned
  · exact s2Step240EarlyControl_positiveBorrow
  · exact s2Step240EarlyControl_classEquality

private theorem s2Step240EarlyControl_entryRecordOwned : ([842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step240EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_entrySigmaOwned : ([834, 254] : List Wire).toFinset⊆s2Step240EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_fitBorrow : s2Step240EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step240EarlyControlLog.recordFresh=some s2Step240EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step240EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step240EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step240EarlyControlFittedArena,s2Step240EarlyControlFlagArena,s2Step240EarlyControlLog,arenaWires]

private theorem s2Step240EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step240EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_fit : compileHmrRecordGrowLog s2Step240EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step240EarlyControlLog.recordFresh=some s2Step240EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step240EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step240EarlyControl_fitBorrow

private theorem s2Step240EarlyControl_flagsBorrow : s2Step240EarlyControlEqualityArena.checkBorrow (6) s2Step240EarlyControlLog.flagWork=some s2Step240EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step240EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step240EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step240EarlyControlFlagArena,s2Step240EarlyControlEqualityArena,s2Step240EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step240EarlyControl_flagsOwned : ([792, 253, 252, 251] : List Wire).toFinset⊆s2Step240EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_flags : compileHmrFlagsLog s2Step240EarlyControlClassPlan.equalityArena s2Step240EarlyControlClassPlan.equality.top 253 252 251 s2Step240EarlyControlLog.flagWork=some s2Step240EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step240EarlyControl_flagsOwned⟩
  · exact s2Step240EarlyControl_flagsBorrow

private theorem s2Step240EarlyControl_historyBorrow : s2Step240EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step240EarlyControlLog.recordFresh=some s2Step240EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step240EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step240EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step240EarlyControlHistoryArena,s2Step240EarlyControlArena,s2Step240EarlyControlLog,arenaWires]

private theorem s2Step240EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step240EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_history : compileHmrRecordGrowLog s2Step240EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step240EarlyControlLog.recordFresh=some s2Step240EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step240EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step240EarlyControl_historyBorrow

private theorem s2Step240EarlyControl_sigmaOwned : ([254, 834] : List Wire).toFinset⊆s2Step240EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_sigmaReleaseOwned : ([834] : List Wire).toFinset⊆s2Step240EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_sigmaRelease : s2Step240EarlyControlHistoryArena.release {834} (fun _ => false)=some s2Step240EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step240EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step240EarlyControlSigmaArena,s2Step240EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step240EarlyControl_sigma : compileHmrSigmaDropLog s2Step240EarlyControlHistoryArena false 0 0 254 834 []=some s2Step240EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step240EarlyControl_sigmaOwned⟩
  · exact s2Step240EarlyControl_sigmaRelease

private theorem s2Step240EarlyControl_zeroBorrow : s2Step240EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step240EarlyControlLog.zeroWork=some s2Step240EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step240EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step240EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step240EarlyControlZeroArena,s2Step240EarlyControlArena,s2Step240EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step240EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step240EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step240EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EarlyControl_zero : compileHmrEqualityLog s2Step240EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step240EarlyControlLog.zeroWork=some (s2Step240EarlyControlZeroArena,s2Step240EarlyControlLog.zeroWork,s2Step240EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step240EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step240EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step240EarlyControl_logged : s2Step240EarlyControlPlan.Logged s2Step240EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 834 254 253 252 251 842 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step240EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step240EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step240EarlyControl_zero
  · exact s2Step240EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step240EarlyControl_flags
  · exact s2Step240EarlyControl_fit
  · exact s2Step240EarlyControl_history
  · exact s2Step240EarlyControl_sigma
  · exact s2Step240EarlyControl_branch

private theorem s2Step240EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step240EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 834 254 253 252 251 842 49 s2Step240EarlyControlLog=some s2Step240EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step240EarlyControlPlan s2Step240EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 834 254 253 252 251 842 49 s2Step240EarlyControl_logged

private def s2Step240EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step240EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step240EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step240EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step240FrontBank : WindowBank := ⟨s2Step240EntryFRow,s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow⟩

private def s2Step240Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810, 768]

private def s2Step240Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 819, 769]

private def s2Step240Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 809, 770]

private def s2Step240Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 793, 771]

private theorem s2Step240Counter_apart : Disjoint s2Step240HeadFvAfter.live s2Step240CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step240HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240Counter_borrowed : s2Step240HeadFvAfter.checkBorrow 4 s2Step240CounterWork=some s2Step240CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step240HeadFvAfter s2Step240CounterDuring s2Step240CounterWork.toFinset s2Step240Counter_bounded s2Step240Counter_apart rfl

private theorem s2Step240Counter_owned : (834::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step240HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step240HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240Counter_checked : compileHmrCounterStepLog s2Step240HeadFvAfter true 834 [772, 773, 774, 775, 776, 777] s2Step240CounterWork=some s2Step240CounterDuring := by
  have owned : ∀q∈834::[772, 773, 774, 775, 776, 777],q∈s2Step240HeadFvAfter.live := fun q hq => s2Step240Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step240Counter_borrowed

private def s2Step240EntryFAfter : Arena := s2Step240EntryFBefore

private theorem s2Step240EntryBank_incomingDistinct : ([s2Step240EntryFRow,s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240EntryF_Incoming : rowsOwned s2Step240EntryFBefore [s2Step240EntryFRow,s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240EntryFRow,s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow] 0 s2Step240EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240EntryBank_outgoingOwned : rowsOwned s2Step240EntryGvAfter [s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step240EntryGvAfter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240EntryF_Outgoing : rowsOwned s2Step240EntryGvAfter [s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut] :=
  hmrRows_owned_drop s2Step240EntryGvAfter [s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut] 0 s2Step240EntryBank_outgoingOwned

private theorem s2Step240EntryF_distinct : (s2Step240EntryFRow.sign::s2Step240EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240EntryF_owned : (s2Step240EntryFRow.sign::s2Step240EntryFRow.payload).toFinset⊆s2Step240EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EntryF_reserved : s2Step240EntryFBefore.reserve s2Step240EntryFFresh.toFinset=some s2Step240EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step240EntryFFresh,arenaWires]
  · norm_num [s2Step240EntryFBefore,s2Step240EntryFFresh,arenaWires]
  · simp only [s2Step240EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step240EntryF_checked : planRowResizeLog s2Step240EntryFBefore s2Step240EntryFRow 150 s2Step240EntryFFresh=
    some (s2Step240EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩,growRow 768 s2Step240EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step240EntryFBefore s2Step240EntryFAfter s2Step240EntryFRow 150 s2Step240EntryFFresh
    s2Step240EntryF_distinct s2Step240EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step240EntryF_reserved
  have rowEq : WindowRow.mk (s2Step240EntryFRow.payload++s2Step240EntryFFresh) s2Step240EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step240EntryFvBefore : Arena := s2Step240EntryFBefore

private theorem s2Step240EntryFv_Incoming : rowsOwned s2Step240EntryFvBefore [s2Step240EntryFvRow,s2Step240EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240EntryFRow,s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow] 2 s2Step240EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240EntryFv_Outgoing : rowsOwned s2Step240EntryGvAfter [s2Step240EntryFvOut,s2Step240EntryGvOut] :=
  hmrRows_owned_drop s2Step240EntryGvAfter [s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut] 2 s2Step240EntryBank_outgoingOwned

private theorem s2Step240EntryFv_distinct : (s2Step240EntryFvRow.sign::s2Step240EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240EntryFv_owned : (s2Step240EntryFvRow.sign::s2Step240EntryFvRow.payload).toFinset⊆s2Step240EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240EntryFvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EntryFv_reserved : s2Step240EntryFvBefore.reserve s2Step240EntryFvFresh.toFinset=some s2Step240EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step240EntryFvFresh,arenaWires]
  · norm_num [s2Step240EntryFvBefore,s2Step240EntryFBefore,s2Step240EntryFvFresh,arenaWires]
  · ext q
    simp only [s2Step240EntryFvAfter,s2Step240EntryFvBefore,s2Step240EntryFBefore,s2Step240EntryFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step240EntryFv_checked : planRowResizeLog s2Step240EntryFvBefore s2Step240EntryFvRow 135 s2Step240EntryFvFresh=
    some (s2Step240EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩,growRow 770 s2Step240EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step240EntryFvBefore s2Step240EntryFvAfter s2Step240EntryFvRow 135 s2Step240EntryFvFresh
    s2Step240EntryFv_distinct s2Step240EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step240EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step240EntryFvRow.payload++s2Step240EntryFvFresh) s2Step240EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step240EntryGAfter : Arena := s2Step240EntryFBefore

private def s2Step240EntryGBefore : Arena := s2Step240EntryFBefore

private theorem s2Step240EntryG_Incoming : rowsOwned s2Step240EntryGBefore [s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240EntryFRow,s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow] 1 s2Step240EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240EntryG_Outgoing : rowsOwned s2Step240EntryGvAfter [s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut] :=
  hmrRows_owned_drop s2Step240EntryGvAfter [s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut] 1 s2Step240EntryBank_outgoingOwned

private theorem s2Step240EntryG_distinct : (s2Step240EntryGRow.sign::s2Step240EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240EntryG_owned : (s2Step240EntryGRow.sign::s2Step240EntryGRow.payload).toFinset⊆s2Step240EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EntryG_reserved : s2Step240EntryGBefore.reserve s2Step240EntryGFresh.toFinset=some s2Step240EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step240EntryGFresh,arenaWires]
  · norm_num [s2Step240EntryGBefore,s2Step240EntryFBefore,s2Step240EntryGFresh,arenaWires]
  · simp only [s2Step240EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step240EntryG_checked : planRowResizeLog s2Step240EntryGBefore s2Step240EntryGRow 150 s2Step240EntryGFresh=
    some (s2Step240EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩,growRow 769 s2Step240EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step240EntryGBefore s2Step240EntryGAfter s2Step240EntryGRow 150 s2Step240EntryGFresh
    s2Step240EntryG_distinct s2Step240EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step240EntryG_reserved
  have rowEq : WindowRow.mk (s2Step240EntryGRow.payload++s2Step240EntryGFresh) s2Step240EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step240EntryGvBefore : Arena := s2Step240EntryFvAfter

private theorem s2Step240EntryGv_Incoming : rowsOwned s2Step240EntryGvBefore [s2Step240EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240EntryFRow,s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow] 3 s2Step240EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240EntryGv_Outgoing : rowsOwned s2Step240EntryGvAfter [s2Step240EntryGvOut] :=
  hmrRows_owned_drop s2Step240EntryGvAfter [s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut] 3 s2Step240EntryBank_outgoingOwned

private theorem s2Step240EntryGv_distinct : (s2Step240EntryGvRow.sign::s2Step240EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240EntryGv_owned : (s2Step240EntryGvRow.sign::s2Step240EntryGvRow.payload).toFinset⊆s2Step240EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240EntryGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240EntryGv_reserved : s2Step240EntryGvBefore.reserve s2Step240EntryGvFresh.toFinset=some s2Step240EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step240EntryGvFresh,arenaWires]
  · norm_num [s2Step240EntryGvBefore,s2Step240EntryFvAfter,s2Step240EntryGvFresh,arenaWires]
  · simp only [s2Step240EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step240EntryGv_checked : planRowResizeLog s2Step240EntryGvBefore s2Step240EntryGvRow 135 s2Step240EntryGvFresh=
    some (s2Step240EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩,growRow 771 s2Step240EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step240EntryGvBefore s2Step240EntryGvAfter s2Step240EntryGvRow 135 s2Step240EntryGvFresh
    s2Step240EntryGv_distinct s2Step240EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step240EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step240EntryGvRow.payload++s2Step240EntryGvFresh) s2Step240EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step240EntryBank_rows : planWindowRowsLog s2Step240EntryFBefore [(s2Step240EntryFRow,150),(s2Step240EntryGRow,150),(s2Step240EntryFvRow,135),(s2Step240EntryGvRow,135)] [s2Step240EntryFFresh,s2Step240EntryGFresh,s2Step240EntryFvFresh,s2Step240EntryGvFresh]=
    some (s2Step240EntryGvAfter,[s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut],(growRow 768 s2Step240EntryFFresh ++ (growRow 769 s2Step240EntryGFresh ++ (growRow 770 s2Step240EntryFvFresh ++ (growRow 771 s2Step240EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step240EntryGvAfter [] []=some (s2Step240EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step240EntryGvBefore s2Step240EntryGvAfter s2Step240EntryGvAfter
    s2Step240EntryGvRow s2Step240EntryGvOut 135 s2Step240EntryGvFresh [] [] []
    (growRow 771 s2Step240EntryGvFresh) ([]) s2Step240EntryGv_Incoming s2Step240EntryGv_checked h4 s2Step240EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step240EntryFvBefore s2Step240EntryFvAfter s2Step240EntryGvAfter
    s2Step240EntryFvRow s2Step240EntryFvOut 135 s2Step240EntryFvFresh [(s2Step240EntryGvRow,135)] [s2Step240EntryGvFresh] [s2Step240EntryGvOut]
    (growRow 770 s2Step240EntryFvFresh) ((growRow 771 s2Step240EntryGvFresh ++ [])) s2Step240EntryFv_Incoming s2Step240EntryFv_checked h3 s2Step240EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step240EntryGBefore s2Step240EntryGAfter s2Step240EntryGvAfter
    s2Step240EntryGRow s2Step240EntryGOut 150 s2Step240EntryGFresh [(s2Step240EntryFvRow,135),(s2Step240EntryGvRow,135)] [s2Step240EntryFvFresh,s2Step240EntryGvFresh] [s2Step240EntryFvOut,s2Step240EntryGvOut]
    (growRow 769 s2Step240EntryGFresh) ((growRow 770 s2Step240EntryFvFresh ++ (growRow 771 s2Step240EntryGvFresh ++ []))) s2Step240EntryG_Incoming s2Step240EntryG_checked h2 s2Step240EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step240EntryFBefore s2Step240EntryFAfter s2Step240EntryGvAfter
    s2Step240EntryFRow s2Step240EntryFOut 150 s2Step240EntryFFresh [(s2Step240EntryGRow,150),(s2Step240EntryFvRow,135),(s2Step240EntryGvRow,135)] [s2Step240EntryGFresh,s2Step240EntryFvFresh,s2Step240EntryGvFresh] [s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut]
    (growRow 768 s2Step240EntryFFresh) ((growRow 769 s2Step240EntryGFresh ++ (growRow 770 s2Step240EntryFvFresh ++ (growRow 771 s2Step240EntryGvFresh ++ [])))) s2Step240EntryF_Incoming s2Step240EntryF_checked h1 s2Step240EntryF_Outgoing
  exact h0

private theorem s2Step240EntryBank_checked : compileHmrBankResizeLog .entry s2Step240EntryFBefore ⟨s2Step240EntryFRow,s2Step240EntryGRow,s2Step240EntryFvRow,s2Step240EntryGvRow⟩ ⟨150,150,135,135⟩ [s2Step240EntryFFresh,s2Step240EntryGFresh,s2Step240EntryFvFresh,s2Step240EntryGvFresh]=
    some (s2Step240EntryGvAfter,⟨s2Step240EntryFOut,s2Step240EntryGOut,s2Step240EntryFvOut,s2Step240EntryGvOut⟩,(growRow 768 s2Step240EntryFFresh ++ (growRow 769 s2Step240EntryGFresh ++ (growRow 770 s2Step240EntryFvFresh ++ (growRow 771 s2Step240EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step240EntryBank_rows]
  rfl

private def s2Step240ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240ExitFBefore : Arena := s2Step240ExitGAfter

private def s2Step240ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810],768⟩

private def s2Step240ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 809],770⟩

private def s2Step240ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 819],769⟩

private def s2Step240ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 793],771⟩

private theorem s2Step240ExitBank_incomingDistinct : ([s2Step240ExitGRow,s2Step240ExitFRow,s2Step240ExitFvRow,s2Step240ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240ExitF_Incoming : rowsOwned s2Step240ExitFBefore [s2Step240ExitFRow,s2Step240ExitFvRow,s2Step240ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240ExitGRow,s2Step240ExitFRow,s2Step240ExitFvRow,s2Step240ExitGvRow] 1 s2Step240ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240ExitBank_outgoingOwned : rowsOwned s2Step240ExitGvAfter [s2Step240ExitGOut,s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step240ExitGvAfter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240ExitF_Outgoing : rowsOwned s2Step240ExitGvAfter [s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut] :=
  hmrRows_owned_drop s2Step240ExitGvAfter [s2Step240ExitGOut,s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut] 1 s2Step240ExitBank_outgoingOwned

private theorem s2Step240ExitF_distinct : (s2Step240ExitFRow.sign::s2Step240ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240ExitF_owned : (s2Step240ExitFRow.sign::s2Step240ExitFRow.payload).toFinset⊆s2Step240ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240ExitF_retired : s2Step240ExitFBefore.retireSet s2Step240ExitFExtra.toFinset=s2Step240ExitFAfter := by
  unfold Arena.retireSet s2Step240ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step240ExitFBefore,s2Step240ExitGAfter,s2Step240ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step240ExitF_checked : planRowResizeLog s2Step240ExitFBefore s2Step240ExitFRow 150 []=
    some (s2Step240ExitFAfter,s2Step240ExitFOut,shrinkRow 768 s2Step240ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step240ExitFBefore s2Step240ExitFRow 150 s2Step240ExitF_distinct s2Step240ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step240ExitFRow.payload.take 150) s2Step240ExitFRow.sign=s2Step240ExitFOut := by decide +kernel
  have hi : s2Step240ExitFRow.payload.drop 150=s2Step240ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step240ExitF_retired] at result
  exact result

private def s2Step240ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240ExitFvBefore : Arena := s2Step240ExitFAfter

private theorem s2Step240ExitFv_Incoming : rowsOwned s2Step240ExitFvBefore [s2Step240ExitFvRow,s2Step240ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240ExitGRow,s2Step240ExitFRow,s2Step240ExitFvRow,s2Step240ExitGvRow] 2 s2Step240ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240ExitFv_Outgoing : rowsOwned s2Step240ExitGvAfter [s2Step240ExitFvOut,s2Step240ExitGvOut] :=
  hmrRows_owned_drop s2Step240ExitGvAfter [s2Step240ExitGOut,s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut] 2 s2Step240ExitBank_outgoingOwned

private theorem s2Step240ExitFv_distinct : (s2Step240ExitFvRow.sign::s2Step240ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240ExitFv_owned : (s2Step240ExitFvRow.sign::s2Step240ExitFvRow.payload).toFinset⊆s2Step240ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240ExitFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240ExitFv_retired : s2Step240ExitFvBefore.retireSet s2Step240ExitFvExtra.toFinset=s2Step240ExitFvAfter := by
  unfold Arena.retireSet s2Step240ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step240ExitFvBefore,s2Step240ExitFAfter,s2Step240ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step240ExitFv_checked : planRowResizeLog s2Step240ExitFvBefore s2Step240ExitFvRow 135 []=
    some (s2Step240ExitFvAfter,s2Step240ExitFvOut,shrinkRow 770 s2Step240ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step240ExitFvBefore s2Step240ExitFvRow 135 s2Step240ExitFv_distinct s2Step240ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step240ExitFvRow.payload.take 135) s2Step240ExitFvRow.sign=s2Step240ExitFvOut := by decide +kernel
  have hi : s2Step240ExitFvRow.payload.drop 135=s2Step240ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step240ExitFv_retired] at result
  exact result

private def s2Step240ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step240ExitG_Incoming : rowsOwned s2Step240ExitGBefore [s2Step240ExitGRow,s2Step240ExitFRow,s2Step240ExitFvRow,s2Step240ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240ExitGRow,s2Step240ExitFRow,s2Step240ExitFvRow,s2Step240ExitGvRow] 0 s2Step240ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240ExitG_Outgoing : rowsOwned s2Step240ExitGvAfter [s2Step240ExitGOut,s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut] :=
  hmrRows_owned_drop s2Step240ExitGvAfter [s2Step240ExitGOut,s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut] 0 s2Step240ExitBank_outgoingOwned

private theorem s2Step240ExitG_distinct : (s2Step240ExitGRow.sign::s2Step240ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240ExitG_owned : (s2Step240ExitGRow.sign::s2Step240ExitGRow.payload).toFinset⊆s2Step240ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240ExitGBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240ExitG_retired : s2Step240ExitGBefore.retireSet s2Step240ExitGExtra.toFinset=s2Step240ExitGAfter := by
  unfold Arena.retireSet s2Step240ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step240ExitGBefore,s2Step240ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step240ExitG_checked : planRowResizeLog s2Step240ExitGBefore s2Step240ExitGRow 150 []=
    some (s2Step240ExitGAfter,s2Step240ExitGOut,shrinkRow 769 s2Step240ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step240ExitGBefore s2Step240ExitGRow 150 s2Step240ExitG_distinct s2Step240ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step240ExitGRow.payload.take 150) s2Step240ExitGRow.sign=s2Step240ExitGOut := by decide +kernel
  have hi : s2Step240ExitGRow.payload.drop 150=s2Step240ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step240ExitG_retired] at result
  exact result

private def s2Step240ExitGvBefore : Arena := s2Step240ExitFvAfter

private theorem s2Step240ExitGv_Incoming : rowsOwned s2Step240ExitGvBefore [s2Step240ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240ExitGRow,s2Step240ExitFRow,s2Step240ExitFvRow,s2Step240ExitGvRow] 3 s2Step240ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240ExitGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240ExitGv_Outgoing : rowsOwned s2Step240ExitGvAfter [s2Step240ExitGvOut] :=
  hmrRows_owned_drop s2Step240ExitGvAfter [s2Step240ExitGOut,s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut] 3 s2Step240ExitBank_outgoingOwned

private theorem s2Step240ExitGv_distinct : (s2Step240ExitGvRow.sign::s2Step240ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240ExitGv_owned : (s2Step240ExitGvRow.sign::s2Step240ExitGvRow.payload).toFinset⊆s2Step240ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240ExitGvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240ExitGv_retired : s2Step240ExitGvBefore.retireSet s2Step240ExitGvExtra.toFinset=s2Step240ExitGvAfter := by
  unfold Arena.retireSet s2Step240ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step240ExitGvBefore,s2Step240ExitFvAfter,s2Step240ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step240ExitGv_checked : planRowResizeLog s2Step240ExitGvBefore s2Step240ExitGvRow 135 []=
    some (s2Step240ExitGvAfter,s2Step240ExitGvOut,shrinkRow 771 s2Step240ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step240ExitGvBefore s2Step240ExitGvRow 135 s2Step240ExitGv_distinct s2Step240ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step240ExitGvRow.payload.take 135) s2Step240ExitGvRow.sign=s2Step240ExitGvOut := by decide +kernel
  have hi : s2Step240ExitGvRow.payload.drop 135=s2Step240ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step240ExitGv_retired] at result
  exact result

private theorem s2Step240ExitBank_rows : planWindowRowsLog s2Step240ExitGBefore [(s2Step240ExitGRow,150),(s2Step240ExitFRow,150),(s2Step240ExitFvRow,135),(s2Step240ExitGvRow,135)] [[],[],[],[]]=
    some (s2Step240ExitGvAfter,[s2Step240ExitGOut,s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut],(shrinkRow 769 s2Step240ExitGExtra ++ (shrinkRow 768 s2Step240ExitFExtra ++ (shrinkRow 770 s2Step240ExitFvExtra ++ (shrinkRow 771 s2Step240ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step240ExitGvAfter [] []=some (s2Step240ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step240ExitGvBefore s2Step240ExitGvAfter s2Step240ExitGvAfter
    s2Step240ExitGvRow s2Step240ExitGvOut 135 [] [] [] []
    (shrinkRow 771 s2Step240ExitGvExtra) ([]) s2Step240ExitGv_Incoming s2Step240ExitGv_checked h4 s2Step240ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step240ExitFvBefore s2Step240ExitFvAfter s2Step240ExitGvAfter
    s2Step240ExitFvRow s2Step240ExitFvOut 135 [] [(s2Step240ExitGvRow,135)] [[]] [s2Step240ExitGvOut]
    (shrinkRow 770 s2Step240ExitFvExtra) ((shrinkRow 771 s2Step240ExitGvExtra ++ [])) s2Step240ExitFv_Incoming s2Step240ExitFv_checked h3 s2Step240ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step240ExitFBefore s2Step240ExitFAfter s2Step240ExitGvAfter
    s2Step240ExitFRow s2Step240ExitFOut 150 [] [(s2Step240ExitFvRow,135),(s2Step240ExitGvRow,135)] [[],[]] [s2Step240ExitFvOut,s2Step240ExitGvOut]
    (shrinkRow 768 s2Step240ExitFExtra) ((shrinkRow 770 s2Step240ExitFvExtra ++ (shrinkRow 771 s2Step240ExitGvExtra ++ []))) s2Step240ExitF_Incoming s2Step240ExitF_checked h2 s2Step240ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step240ExitGBefore s2Step240ExitGAfter s2Step240ExitGvAfter
    s2Step240ExitGRow s2Step240ExitGOut 150 [] [(s2Step240ExitFRow,150),(s2Step240ExitFvRow,135),(s2Step240ExitGvRow,135)] [[],[],[]] [s2Step240ExitFOut,s2Step240ExitFvOut,s2Step240ExitGvOut]
    (shrinkRow 769 s2Step240ExitGExtra) ((shrinkRow 768 s2Step240ExitFExtra ++ (shrinkRow 770 s2Step240ExitFvExtra ++ (shrinkRow 771 s2Step240ExitGvExtra ++ [])))) s2Step240ExitG_Incoming s2Step240ExitG_checked h1 s2Step240ExitG_Outgoing
  exact h0

private theorem s2Step240ExitBank_checked : compileHmrBankResizeLog .exit s2Step240ExitGBefore ⟨s2Step240ExitFRow,s2Step240ExitGRow,s2Step240ExitFvRow,s2Step240ExitGvRow⟩ ⟨150,150,135,135⟩ [[],[],[],[]]=
    some (s2Step240ExitGvAfter,⟨s2Step240ExitFOut,s2Step240ExitGOut,s2Step240ExitFvOut,s2Step240ExitGvOut⟩,(shrinkRow 769 s2Step240ExitGExtra ++ (shrinkRow 768 s2Step240ExitFExtra ++ (shrinkRow 770 s2Step240ExitFvExtra ++ (shrinkRow 771 s2Step240ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step240ExitBank_rows]
  rfl

private theorem s2Step240Add0_apart : Disjoint s2Step240Add0Arena.live s2Step240Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step240Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240Add0_card : s2Step240Add0Arena.live.card=893 := by
  decide +kernel

private theorem s2Step240Add0_borrowed : s2Step240Add0Arena.checkBorrow (hmrHybridCount s2Step240Add0Arena s2Step240Add0B.length) s2Step240Add0Work=some s2Step240Add0During := by
  have len : s2Step240Add0Work.length=hmrHybridCount s2Step240Add0Arena s2Step240Add0B.length := by
    rw [hmrHybridCount,s2Step240Add0_card]
    decide +kernel
  have nd : s2Step240Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step240Add0Arena s2Step240Add0During s2Step240Add0Work.toFinset s2Step240Add0_bounded s2Step240Add0_apart rfl

private theorem s2Step240Add0_distinct : (814::842::826::(s2Step240Add0A++s2Step240Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240Add0_owned : (814::842::826::(s2Step240Add0A++s2Step240Add0B)).toFinset⊆s2Step240Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step240Add0Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240Add0_checked : compileHmrHybridCinLog s2Step240Add0Arena 842 814 826 s2Step240Add0A s2Step240Add0B s2Step240Add0Work=some s2Step240Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step240Add0Arena s2Step240Add0During 842 814 826 s2Step240Add0A s2Step240Add0B s2Step240Add0Work
    (by decide +kernel) (by decide +kernel) s2Step240Add0_distinct
    (fun q hq => s2Step240Add0_owned (List.mem_toFinset.mpr hq)) s2Step240Add0_borrowed

private theorem s2Step240Add1_apart : Disjoint s2Step240Add1Arena.live s2Step240Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step240Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240Add1_card : s2Step240Add1Arena.live.card=893 := by
  decide +kernel

private theorem s2Step240Add1_borrowed : s2Step240Add1Arena.checkBorrow (hmrHybridCount s2Step240Add1Arena s2Step240Add1B.length) s2Step240Add1Work=some s2Step240Add1During := by
  have len : s2Step240Add1Work.length=hmrHybridCount s2Step240Add1Arena s2Step240Add1B.length := by
    rw [hmrHybridCount,s2Step240Add1_card]
    decide +kernel
  have nd : s2Step240Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step240Add1Arena s2Step240Add1During s2Step240Add1Work.toFinset s2Step240Add1_bounded s2Step240Add1_apart rfl

private theorem s2Step240Add1_distinct : (814::842::826::(s2Step240Add1A++s2Step240Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240Add1_owned : (814::842::826::(s2Step240Add1A++s2Step240Add1B)).toFinset⊆s2Step240Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step240Add1Arena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240Add1_checked : compileHmrHybridCinLog s2Step240Add1Arena 842 814 826 s2Step240Add1A s2Step240Add1B s2Step240Add1Work=some s2Step240Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step240Add1Arena s2Step240Add1During 842 814 826 s2Step240Add1A s2Step240Add1B s2Step240Add1Work
    (by decide +kernel) (by decide +kernel) s2Step240Add1_distinct
    (fun q hq => s2Step240Add1_owned (List.mem_toFinset.mpr hq)) s2Step240Add1_borrowed

private theorem s2Step240F4_apart : Disjoint (s2Step240Add0A++s2Step240Add0B).toFinset (s2Step240Add1A++s2Step240Add1B).toFinset := by
  have nd : ((s2Step240Add0A++s2Step240Add0B)++(s2Step240Add1A++s2Step240Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step240F4_carry : s2Step240F4FlagArena.checkBorrow 1 [826]=some s2Step240Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step240F4FlagArena,s2Step240HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step240F4FlagArena,s2Step240HeadFvAfter,s2Step240Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step240F4_distinct : (834::842::814::826::((s2Step240Add0A++s2Step240Add1A)++(s2Step240Add0B++s2Step240Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240F4_flag : s2Step240HeadFvAfter.checkBorrow 1 [814]=some s2Step240F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step240HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step240F4_owned : (834::842::((s2Step240Add0A++s2Step240Add1A)++(s2Step240Add0B++s2Step240Add1B))).toFinset⊆s2Step240HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step240HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240F4_checked : compileHmrHybridF4Log s2Step240HeadFvAfter 834 842 s2Step240Add0A s2Step240Add0B s2Step240Add1A s2Step240Add1B [814] [826] s2Step240Add0Work s2Step240Add1Work=some s2Step240F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step240HeadFvAfter s2Step240F4FlagArena s2Step240Add0Arena s2Step240Add0During s2Step240Add1During 834 842
    s2Step240Add0A s2Step240Add0B s2Step240Add1A s2Step240Add1B [814] [826] s2Step240Add0Work s2Step240Add1Work
    (fun q hq => s2Step240F4_owned (List.mem_toFinset.mpr hq)) s2Step240F4_flag s2Step240F4_carry
    s2Step240F4_distinct s2Step240F4_apart s2Step240Add0_checked s2Step240Add1_checked

private theorem s2Step240Front_branch : s2Step240FrontSigmaArena.checkBorrow 1 [842]=some s2Step240HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step240FrontSigmaArena,s2Step240EntryGvAfter,s2Step240EntryFvAfter,arenaWires]
  · ext q
    simp only [s2Step240FrontSigmaArena,s2Step240EntryGvAfter,s2Step240EntryFvAfter,s2Step240HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step240Front_entry : HmrFrontEntryValid s2Step240EntryFBefore s2Step240FrontBank 150 135 ⟨150,150,135,135⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step240FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step240EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step240EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step240FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step240Front_sigma : s2Step240EntryGvAfter.checkBorrow 1 [834]=some s2Step240FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step240EntryGvAfter,s2Step240EntryFvAfter,arenaWires]
  · rfl

private def s2Step240HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240HeadFBefore : Arena := s2Step240HeadGAfter

private def s2Step240HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step240HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832],770⟩

private def s2Step240HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step240HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private theorem s2Step240HeadBank_incomingDistinct : ([s2Step240HeadGRow,s2Step240HeadFRow,s2Step240HeadGvRow,s2Step240HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240HeadF_Incoming : rowsOwned s2Step240HeadFBefore [s2Step240HeadFRow,s2Step240HeadGvRow,s2Step240HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240HeadGRow,s2Step240HeadFRow,s2Step240HeadGvRow,s2Step240HeadFvRow] 1 s2Step240HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240HeadBank_outgoingOwned : rowsOwned s2Step240HeadFvAfter [s2Step240HeadGOut,s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step240HeadFvAfter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240HeadF_Outgoing : rowsOwned s2Step240HeadFvAfter [s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut] :=
  hmrRows_owned_drop s2Step240HeadFvAfter [s2Step240HeadGOut,s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut] 1 s2Step240HeadBank_outgoingOwned

private theorem s2Step240HeadF_distinct : (s2Step240HeadFRow.sign::s2Step240HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240HeadF_owned : (s2Step240HeadFRow.sign::s2Step240HeadFRow.payload).toFinset⊆s2Step240HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240HeadFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240HeadF_reserved : s2Step240HeadFBefore.reserve s2Step240HeadFFresh.toFinset=some s2Step240HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step240HeadFFresh,arenaWires]
  · norm_num [s2Step240HeadFBefore,s2Step240HeadGAfter,s2Step240HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step240HeadFAfter,s2Step240HeadFBefore,s2Step240HeadGAfter,s2Step240HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step240HeadF_checked : planRowResizeLog s2Step240HeadFBefore s2Step240HeadFRow 151 s2Step240HeadFFresh=
    some (s2Step240HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810],768⟩,growRow 768 s2Step240HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step240HeadFBefore s2Step240HeadFAfter s2Step240HeadFRow 151 s2Step240HeadFFresh
    s2Step240HeadF_distinct s2Step240HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step240HeadF_reserved
  have rowEq : WindowRow.mk (s2Step240HeadFRow.payload++s2Step240HeadFFresh) s2Step240HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 810],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step240HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step240HeadFvBefore : Arena := s2Step240HeadGvAfter

private theorem s2Step240HeadFv_Incoming : rowsOwned s2Step240HeadFvBefore [s2Step240HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240HeadGRow,s2Step240HeadFRow,s2Step240HeadGvRow,s2Step240HeadFvRow] 3 s2Step240HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240HeadFv_Outgoing : rowsOwned s2Step240HeadFvAfter [s2Step240HeadFvOut] :=
  hmrRows_owned_drop s2Step240HeadFvAfter [s2Step240HeadGOut,s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut] 3 s2Step240HeadBank_outgoingOwned

private theorem s2Step240HeadFv_distinct : (s2Step240HeadFvRow.sign::s2Step240HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240HeadFv_owned : (s2Step240HeadFvRow.sign::s2Step240HeadFvRow.payload).toFinset⊆s2Step240HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240HeadFvBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240HeadFv_reserved : s2Step240HeadFvBefore.reserve s2Step240HeadFvFresh.toFinset=some s2Step240HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step240HeadFvFresh,arenaWires]
  · norm_num [s2Step240HeadFvBefore,s2Step240HeadGvAfter,s2Step240HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step240HeadFvAfter,s2Step240HeadFvBefore,s2Step240HeadGvAfter,s2Step240HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step240HeadFv_checked : planRowResizeLog s2Step240HeadFvBefore s2Step240HeadFvRow 136 s2Step240HeadFvFresh=
    some (s2Step240HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 809],770⟩,growRow 770 s2Step240HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step240HeadFvBefore s2Step240HeadFvAfter s2Step240HeadFvRow 136 s2Step240HeadFvFresh
    s2Step240HeadFv_distinct s2Step240HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step240HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step240HeadFvRow.payload++s2Step240HeadFvFresh) s2Step240HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step240HeadG_Incoming : rowsOwned s2Step240HeadGBefore [s2Step240HeadGRow,s2Step240HeadFRow,s2Step240HeadGvRow,s2Step240HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240HeadGRow,s2Step240HeadFRow,s2Step240HeadGvRow,s2Step240HeadFvRow] 0 s2Step240HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240HeadG_Outgoing : rowsOwned s2Step240HeadFvAfter [s2Step240HeadGOut,s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut] :=
  hmrRows_owned_drop s2Step240HeadFvAfter [s2Step240HeadGOut,s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut] 0 s2Step240HeadBank_outgoingOwned

private theorem s2Step240HeadG_distinct : (s2Step240HeadGRow.sign::s2Step240HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240HeadG_owned : (s2Step240HeadGRow.sign::s2Step240HeadGRow.payload).toFinset⊆s2Step240HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240HeadGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240HeadG_reserved : s2Step240HeadGBefore.reserve s2Step240HeadGFresh.toFinset=some s2Step240HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step240HeadGFresh,arenaWires]
  · norm_num [s2Step240HeadGBefore,s2Step240HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step240HeadGAfter,s2Step240HeadGBefore,s2Step240HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step240HeadG_checked : planRowResizeLog s2Step240HeadGBefore s2Step240HeadGRow 151 s2Step240HeadGFresh=
    some (s2Step240HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 819],769⟩,growRow 769 s2Step240HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step240HeadGBefore s2Step240HeadGAfter s2Step240HeadGRow 151 s2Step240HeadGFresh
    s2Step240HeadG_distinct s2Step240HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step240HeadG_reserved
  have rowEq : WindowRow.mk (s2Step240HeadGRow.payload++s2Step240HeadGFresh) s2Step240HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 819],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step240HeadGvBefore : Arena := s2Step240HeadFAfter

private theorem s2Step240HeadGv_Incoming : rowsOwned s2Step240HeadGvBefore [s2Step240HeadGvRow,s2Step240HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step240HeadGRow,s2Step240HeadFRow,s2Step240HeadGvRow,s2Step240HeadFvRow] 2 s2Step240HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step240HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step240HeadGv_Outgoing : rowsOwned s2Step240HeadFvAfter [s2Step240HeadGvOut,s2Step240HeadFvOut] :=
  hmrRows_owned_drop s2Step240HeadFvAfter [s2Step240HeadGOut,s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut] 2 s2Step240HeadBank_outgoingOwned

private theorem s2Step240HeadGv_distinct : (s2Step240HeadGvRow.sign::s2Step240HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step240HeadGv_owned : (s2Step240HeadGvRow.sign::s2Step240HeadGvRow.payload).toFinset⊆s2Step240HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step240HeadGvBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (810≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (827≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step240HeadGv_reserved : s2Step240HeadGvBefore.reserve s2Step240HeadGvFresh.toFinset=some s2Step240HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step240HeadGvFresh,arenaWires]
  · norm_num [s2Step240HeadGvBefore,s2Step240HeadFAfter,s2Step240HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step240HeadGvAfter,s2Step240HeadGvBefore,s2Step240HeadFAfter,s2Step240HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step240HeadGv_checked : planRowResizeLog s2Step240HeadGvBefore s2Step240HeadGvRow 136 s2Step240HeadGvFresh=
    some (s2Step240HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 793],771⟩,growRow 771 s2Step240HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step240HeadGvBefore s2Step240HeadGvAfter s2Step240HeadGvRow 136 s2Step240HeadGvFresh
    s2Step240HeadGv_distinct s2Step240HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step240HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step240HeadGvRow.payload++s2Step240HeadGvFresh) s2Step240HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step240HeadBank_rows : planWindowRowsLog s2Step240HeadGBefore [(s2Step240HeadGRow,151),(s2Step240HeadFRow,151),(s2Step240HeadGvRow,136),(s2Step240HeadFvRow,136)] [s2Step240HeadGFresh,s2Step240HeadFFresh,s2Step240HeadGvFresh,s2Step240HeadFvFresh]=
    some (s2Step240HeadFvAfter,[s2Step240HeadGOut,s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut],(growRow 769 s2Step240HeadGFresh ++ (growRow 768 s2Step240HeadFFresh ++ (growRow 771 s2Step240HeadGvFresh ++ (growRow 770 s2Step240HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step240HeadFvAfter [] []=some (s2Step240HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step240HeadFvBefore s2Step240HeadFvAfter s2Step240HeadFvAfter
    s2Step240HeadFvRow s2Step240HeadFvOut 136 s2Step240HeadFvFresh [] [] []
    (growRow 770 s2Step240HeadFvFresh) ([]) s2Step240HeadFv_Incoming s2Step240HeadFv_checked h4 s2Step240HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step240HeadGvBefore s2Step240HeadGvAfter s2Step240HeadFvAfter
    s2Step240HeadGvRow s2Step240HeadGvOut 136 s2Step240HeadGvFresh [(s2Step240HeadFvRow,136)] [s2Step240HeadFvFresh] [s2Step240HeadFvOut]
    (growRow 771 s2Step240HeadGvFresh) ((growRow 770 s2Step240HeadFvFresh ++ [])) s2Step240HeadGv_Incoming s2Step240HeadGv_checked h3 s2Step240HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step240HeadFBefore s2Step240HeadFAfter s2Step240HeadFvAfter
    s2Step240HeadFRow s2Step240HeadFOut 151 s2Step240HeadFFresh [(s2Step240HeadGvRow,136),(s2Step240HeadFvRow,136)] [s2Step240HeadGvFresh,s2Step240HeadFvFresh] [s2Step240HeadGvOut,s2Step240HeadFvOut]
    (growRow 768 s2Step240HeadFFresh) ((growRow 771 s2Step240HeadGvFresh ++ (growRow 770 s2Step240HeadFvFresh ++ []))) s2Step240HeadF_Incoming s2Step240HeadF_checked h2 s2Step240HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step240HeadGBefore s2Step240HeadGAfter s2Step240HeadFvAfter
    s2Step240HeadGRow s2Step240HeadGOut 151 s2Step240HeadGFresh [(s2Step240HeadFRow,151),(s2Step240HeadGvRow,136),(s2Step240HeadFvRow,136)] [s2Step240HeadFFresh,s2Step240HeadGvFresh,s2Step240HeadFvFresh] [s2Step240HeadFOut,s2Step240HeadGvOut,s2Step240HeadFvOut]
    (growRow 769 s2Step240HeadGFresh) ((growRow 768 s2Step240HeadFFresh ++ (growRow 771 s2Step240HeadGvFresh ++ (growRow 770 s2Step240HeadFvFresh ++ [])))) s2Step240HeadG_Incoming s2Step240HeadG_checked h1 s2Step240HeadG_Outgoing
  exact h0

private theorem s2Step240HeadBank_checked : compileHmrBankResizeLog .headroom s2Step240HeadGBefore ⟨s2Step240HeadFRow,s2Step240HeadGRow,s2Step240HeadFvRow,s2Step240HeadGvRow⟩ ⟨151,151,136,136⟩ [s2Step240HeadGFresh,s2Step240HeadFFresh,s2Step240HeadGvFresh,s2Step240HeadFvFresh]=
    some (s2Step240HeadFvAfter,⟨s2Step240HeadFOut,s2Step240HeadGOut,s2Step240HeadFvOut,s2Step240HeadGvOut⟩,(growRow 769 s2Step240HeadGFresh ++ (growRow 768 s2Step240HeadFFresh ++ (growRow 771 s2Step240HeadGvFresh ++ (growRow 770 s2Step240HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step240HeadBank_rows]
  rfl

private theorem s2Step240Front_checked : compileHmrSourceFrontLog s2Step240EntryFBefore s2Step240FrontBank 150 135 ⟨150,150,135,135⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step240FrontLog=some s2Step240FrontPlan := by
  have pairEq : s2Step240FrontPair=⟨s2Step240HeadFRow,s2Step240HeadGRow,s2Step240HeadFvRow,s2Step240HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step240FrontHead=⟨s2Step240ExitFRow,s2Step240ExitGRow,s2Step240ExitFvRow,s2Step240ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step240Add0A=s2Step240FrontHead.f.wires := by decide +kernel
  have gEq : s2Step240Add0B=s2Step240FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step240Add1A=s2Step240FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step240Add1B=s2Step240FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step240EntryFBefore s2Step240FrontBank 150 135 ⟨150,150,135,135⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step240FrontLog s2Step240FrontPlan
  · exact s2Step240Front_entry
  · exact s2Step240EntryBank_checked
  · exact s2Step240Front_sigma
  · rfl
  · exact s2Step240Front_branch
  · rfl
  · simpa only [s2Step240FrontPlan,pairEq] using s2Step240HeadBank_checked
  · simpa only [s2Step240FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step240F4_checked
  · exact s2Step240Counter_checked
  · rfl
  · simpa only [s2Step240FrontPlan,headEq] using s2Step240ExitBank_checked

private theorem s2Step240Complete_explicit_checked : compileHmrEarlyStepLog s2Step240EntryFBefore s2Step240FrontBank 150 135 ⟨150,150,135,135⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step240CompleteLog=some s2Step240CompletePlan := by
  let Q := s2Step240EarlyControlPlan
  have hq := s2Step240EarlyControl_plan_checked
  have fv1 : s2Step240CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step240CompleteOut.fv.payload[2]?.getD s2Step240CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step240CompleteOut.fv.payload[3]?.getD s2Step240CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step240CompleteOut.fv.payload[4]?.getD s2Step240CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step240EntryFBefore s2Step240EarlyControlArena s2Step240FrontBank 150 135 ⟨150,150,135,135⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step240CompleteLog s2Step240FrontPlan Q
    s2Step240Front_checked s2Step240Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step240Complete_owned s2Step240Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step240EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 834 s2Step240CompleteOut.fv.second (s2Step240CompleteOut.fv.payload[2]?.getD s2Step240CompleteOut.fv.sign) (s2Step240CompleteOut.fv.payload[3]?.getD s2Step240CompleteOut.fv.sign) (s2Step240CompleteOut.fv.payload[4]?.getD s2Step240CompleteOut.fv.sign) 842 49 s2Step240EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep240Arena : Arena := s2Step240EntryFBefore
def s2PrivateStep240Bank : WindowBank := s2Step240FrontBank
def s2PrivateStep240Spec : HmrSourceWalkStepLog := ⟨150,135,⟨150,150,135,135⟩,49,.early s2Step240CompleteLog⟩
def s2PrivateStep240Plan : HmrSourceStepPlan := .early s2Step240CompletePlan
theorem s2PrivateStep240_source : s2PrivateStep240Spec=s2ObservedLogs240[0] := rfl
theorem s2PrivateStep240_checked : compileHmrSourceStepLog s2PrivateStep240Arena s2PrivateStep240Bank
    s2PrivateStep240Spec.fgWidth s2PrivateStep240Spec.vWidth s2PrivateStep240Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 240 s2PrivateStep240Spec.need none s2PrivateStep240Spec.log=some s2PrivateStep240Plan := by
  change compileHmrSourceStepLog s2Step240EntryFBefore s2Step240FrontBank 150 135 ⟨150,150,135,135⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 240 49 none (.early s2Step240CompleteLog)=some (.early s2Step240CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 240<498)]
  rw [s2Step240Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
