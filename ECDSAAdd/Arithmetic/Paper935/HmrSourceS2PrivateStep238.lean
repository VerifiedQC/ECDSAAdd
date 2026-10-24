import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep236
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

private def s2Step238CompleteMoves : List (Wire × Wire) := [(832,662),(834,663)]

private def s2Step238EarlyControlLog : HmrEarlyControlLog := ⟨[834, 832, 826, 809, 842],[810],[792],[800, 885, 891, 894, 896, 899],[]⟩

private def s2Step238FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [814, 792], [], [806, 797]],[[800], [810], [826], [842]],[[], [], [], []]⟩,[819],[793],[885],[891],[894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[885, 891, 894, 896]⟩

private def s2Step238CompleteLog : HmrEarlyStepLog := ⟨s2Step238FrontLog,s2Step238CompleteMoves,s2Step238EarlyControlLog⟩

private def s2Step238ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661],768⟩

private def s2Step238ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882],770⟩

private def s2Step238ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814],769⟩

private def s2Step238ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step238FrontOut : WindowBank := ⟨s2Step238ExitFOut,s2Step238ExitGOut,s2Step238ExitFvOut,s2Step238ExitGvOut⟩

private def s2Step238CompleteOut : WindowBank := s2Step238FrontOut.repacked s2Step238CompleteMoves

private def s2Step238EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step238EarlyControlPositiveArena,[810],s2Step238EarlyControlEqualityArena,[792],⟨⟨819,false⟩,[⟨⟨810,false⟩,792⟩]⟩⟩

private def s2Step238EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<900)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,834⟩,⟨⟨774,false⟩,832⟩,⟨⟨775,false⟩,826⟩,⟨⟨776,false⟩,809⟩,⟨⟨777,false⟩,842⟩]⟩

private def s2Step238EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step238EarlyControlZeroArena,s2Step238EarlyControlZeroPlan,s2Step238EarlyControlClassPlan,s2Step238EarlyControlFlagArena,s2Step238EarlyControlFittedArena,s2Step238EarlyControlHistoryArena,s2Step238EarlyControlSigmaArena,s2Step238EarlyControlOutputArena,s2Step238EarlyControlLog⟩

private def s2Step238CounterWork : List Wire := [885, 891, 894, 896]

private theorem s2Step238Counter_bounded : s2Step238CounterWork.toFinset⊆arenaWires := by norm_num [s2Step238CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step238HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238CounterDuring : Arena := ⟨s2Step238HeadFvAfter.live∪s2Step238CounterWork.toFinset,Finset.union_subset s2Step238HeadFvAfter.bounded s2Step238Counter_bounded⟩

private def s2Step238EntryFFresh : List Wire := []

private def s2Step238EntryFvFresh : List Wire := []

private def s2Step238EntryGFresh : List Wire := [814, 792]

private def s2Step238EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EntryGvFresh : List Wire := [806, 797]

private def s2Step238ExitFExtra : List Wire := [662, 663, 810]

private def s2Step238ExitFvExtra : List Wire := [809, 842]

private def s2Step238ExitGExtra : List Wire := [792, 800]

private def s2Step238ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<662) ∨ (664≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238ExitGvExtra : List Wire := [826]

private def s2Step238Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238Add0Work : List Wire := [894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step238Add0_bounded : s2Step238Add0Work.toFinset⊆arenaWires := by
  have h : s2Step238Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step238Add0During : Arena := ⟨s2Step238Add0Arena.live∪s2Step238Add0Work.toFinset,Finset.union_subset s2Step238Add0Arena.bounded s2Step238Add0_bounded⟩

private def s2Step238Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238Add1Work : List Wire := [894, 896, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step238Add1_bounded : s2Step238Add1Work.toFinset⊆arenaWires := by
  have h : s2Step238Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step238Add1During : Arena := ⟨s2Step238Add1Arena.live∪s2Step238Add1Work.toFinset,Finset.union_subset s2Step238Add1Arena.bounded s2Step238Add1_bounded⟩

private def s2Step238F4FlagArena : Arena := ⟨s2Step238HeadFvAfter.live∪{885},Finset.union_subset s2Step238HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step238F4Plan : HmrHybridF4Plan := ⟨s2Step238F4FlagArena,[885],s2Step238Add0Arena,[891],s2Step238Add0During,s2Step238Add0Work,s2Step238Add1During,s2Step238Add1Work⟩

private def s2Step238HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 810],768⟩

private def s2Step238HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809, 842],770⟩

private def s2Step238HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792, 800],769⟩

private def s2Step238HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 826],771⟩

private def s2Step238FrontHead : WindowBank := ⟨s2Step238HeadFOut,s2Step238HeadGOut,s2Step238HeadFvOut,s2Step238HeadGvOut⟩

private def s2Step238EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩

private def s2Step238EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩

private def s2Step238EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792],769⟩

private def s2Step238EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private def s2Step238FrontPair : WindowBank := ⟨s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut⟩

private def s2Step238FrontSigmaArena : Arena := ⟨s2Step238EntryGvAfter.live∪{819},Finset.union_subset s2Step238EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step238HeadFFresh : List Wire := [810]

private def s2Step238HeadFvFresh : List Wire := [842]

private def s2Step238HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238HeadGFresh : List Wire := [800]

private def s2Step238HeadGvFresh : List Wire := [826]

private def s2Step238FrontPlan : HmrSourceFront := ⟨s2Step238EntryGvAfter,s2Step238FrontPair,(growRow 768 s2Step238EntryFFresh ++ (growRow 769 s2Step238EntryGFresh ++ (growRow 770 s2Step238EntryFvFresh ++ (growRow 771 s2Step238EntryGvFresh ++ [])))),s2Step238FrontSigmaArena,[819],s2Step238HeadGBefore,[793],
  s2Step238HeadFvAfter,s2Step238FrontHead,(growRow 769 s2Step238HeadGFresh ++ (growRow 768 s2Step238HeadFFresh ++ (growRow 771 s2Step238HeadGvFresh ++ (growRow 770 s2Step238HeadFvFresh ++ [])))),s2Step238F4Plan,s2Step238CounterDuring,s2Step238CounterWork,s2Step238ExitGvAfter,s2Step238FrontOut,(shrinkRow 769 s2Step238ExitGExtra ++ (shrinkRow 768 s2Step238ExitFExtra ++ (shrinkRow 770 s2Step238ExitFvExtra ++ (shrinkRow 771 s2Step238ExitGvExtra ++ []))))⟩

private def s2Step238CompletePlan : HmrEarlyStepPlan := ⟨s2Step238FrontPlan,s2Step238EarlyControlArena,s2Step238EarlyControlPlan,s2Step238CompleteMoves⟩

private theorem s2Step238Complete_apart : List.Disjoint (s2Step238CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [819, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] := by
  have nd : ((s2Step238CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[819, 793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step238Complete_owned : (s2Step238CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private def s2Step238CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,663),(664,792),(793,800),(801,809),(811,826),(827,832),(833,842),(843,885),(886,891),(892,894),(895,896),(897,899)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step238CompleteRelocationMove0Borrowed : Arena := ⟨s2Step238ExitGvAfter.live∪{662},Finset.union_subset s2Step238ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step238CompleteRelocationMove1Borrowed : Arena := ⟨s2Step238CompleteRelocationMove0After.live∪{663},Finset.union_subset s2Step238CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step238CompleteRelocation_move0_owned : 832∈s2Step238ExitGvAfter.live := by norm_num [s2Step238ExitGvAfter,arenaWires]

private theorem s2Step238CompleteRelocation_move0_reserve : s2Step238ExitGvAfter.reserve {662}=some s2Step238CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step238ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step238CompleteRelocation_move0_retire : s2Step238CompleteRelocationMove0Borrowed.retireSet {832}=s2Step238CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step238CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step238CompleteRelocationMove0Borrowed,s2Step238ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step238CompleteRelocation_move1_owned : 834∈s2Step238CompleteRelocationMove0After.live := by norm_num [s2Step238CompleteRelocationMove0After,arenaWires]

private theorem s2Step238CompleteRelocation_move1_reserve : s2Step238CompleteRelocationMove0After.reserve {663}=some s2Step238CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step238CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step238CompleteRelocation_move1_retire : s2Step238CompleteRelocationMove1Borrowed.retireSet {834}=s2Step238EarlyControlArena := by
  unfold Arena.retireSet s2Step238EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step238CompleteRelocationMove1Borrowed,s2Step238CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step238CompleteRelocation_checked : s2Step238ExitGvAfter.checkRepack [(832,662),(834,663)]=some s2Step238EarlyControlArena := by
  have tail2 : s2Step238EarlyControlArena.checkRepack []=some s2Step238EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step238CompleteRelocationMove0After s2Step238CompleteRelocationMove1Borrowed s2Step238EarlyControlArena s2Step238EarlyControlArena 834 663 []
    s2Step238CompleteRelocation_move1_owned s2Step238CompleteRelocation_move1_reserve s2Step238CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step238ExitGvAfter s2Step238CompleteRelocationMove0Borrowed s2Step238CompleteRelocationMove0After s2Step238EarlyControlArena 832 662 [(834,663)]
    s2Step238CompleteRelocation_move0_owned s2Step238CompleteRelocation_move0_reserve s2Step238CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step238Complete_repack : s2Step238ExitGvAfter.checkRepack s2Step238CompleteMoves=some s2Step238EarlyControlArena := by
  simpa only [s2Step238CompleteMoves] using s2Step238CompleteRelocation_checked

private theorem s2Step238EarlyControl_branchOwned : ([793] : List Wire).toFinset⊆s2Step238EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlSigmaArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_branch : compileHmrBranchRetirement s2Step238EarlyControlSigmaArena 793=some s2Step238EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step238EarlyControl_branchOwned
  · ext q
    simp [s2Step238EarlyControlOutputArena,s2Step238EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step238EarlyControl_classEqualityBorrow : s2Step238EarlyControlPositiveArena.checkBorrow (([819, 810] : List Wire).length-1) s2Step238EarlyControlLog.classWork=some s2Step238EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step238EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step238EarlyControlEqualityArena,s2Step238EarlyControlPositiveArena,s2Step238EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step238EarlyControl_classEqualityOwned : ([819, 810] : List Wire).toFinset⊆s2Step238EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlPositiveArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_classEquality : compileHmrEqualityLog s2Step238EarlyControlPositiveArena [819, 810] 0 s2Step238EarlyControlLog.classWork=some (s2Step238EarlyControlEqualityArena,s2Step238EarlyControlLog.classWork,s2Step238EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step238EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step238EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step238EarlyControl_classOwned : ([777, 842, 819] : List Wire).toFinset⊆s2Step238EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_positiveBorrow : s2Step238EarlyControlZeroArena.checkBorrow (1) s2Step238EarlyControlLog.positiveWork=some s2Step238EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step238EarlyControlZeroArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step238EarlyControlPositiveArena,s2Step238EarlyControlZeroArena,s2Step238EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step238EarlyControl_class : compileHmrSourceClassLog s2Step238EarlyControlZeroArena false 777 s2Step238EarlyControlZeroPlan.top 0 819 s2Step238EarlyControlLog.positiveWork s2Step238EarlyControlLog.classWork=some s2Step238EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step238EarlyControlClassPlan s2Step238EarlyControlZeroArena false 777 s2Step238EarlyControlZeroPlan.top 0 819
  constructor
  · decide +kernel
  · exact s2Step238EarlyControl_classOwned
  · exact s2Step238EarlyControl_positiveBorrow
  · exact s2Step238EarlyControl_classEquality

private theorem s2Step238EarlyControl_entryRecordOwned : ([793, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_entrySigmaOwned : ([819, 254] : List Wire).toFinset⊆s2Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_fitBorrow : s2Step238EarlyControlFlagArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step238EarlyControlLog.recordFresh=some s2Step238EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step238EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
      decide +kernel
    · ext q
      simp [s2Step238EarlyControlFittedArena,s2Step238EarlyControlFlagArena,s2Step238EarlyControlLog,arenaWires]

private theorem s2Step238EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step238EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlFlagArena (fun q => (0≤q ∧ q<900)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_fit : compileHmrRecordGrowLog s2Step238EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step238EarlyControlLog.recordFresh=some s2Step238EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step238EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step238EarlyControl_fitBorrow

private theorem s2Step238EarlyControl_flagsBorrow : s2Step238EarlyControlEqualityArena.checkBorrow (6) s2Step238EarlyControlLog.flagWork=some s2Step238EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step238EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step238EarlyControlFlagArena,s2Step238EarlyControlEqualityArena,s2Step238EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step238EarlyControl_flagsOwned : ([792, 253, 252, 251] : List Wire).toFinset⊆s2Step238EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_flags : compileHmrFlagsLog s2Step238EarlyControlClassPlan.equalityArena s2Step238EarlyControlClassPlan.equality.top 253 252 251 s2Step238EarlyControlLog.flagWork=some s2Step238EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step238EarlyControl_flagsOwned⟩
  · exact s2Step238EarlyControl_flagsBorrow

private theorem s2Step238EarlyControl_historyBorrow : s2Step238EarlyControlArena.checkBorrow ((49-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).length)) s2Step238EarlyControlLog.recordFresh=some s2Step238EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step238EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step238EarlyControlHistoryArena,s2Step238EarlyControlArena,s2Step238EarlyControlLog,arenaWires]

private theorem s2Step238EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] : List Wire).toFinset⊆s2Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_history : compileHmrRecordGrowLog s2Step238EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step238EarlyControlLog.recordFresh=some s2Step238EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step238EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step238EarlyControl_historyBorrow

private theorem s2Step238EarlyControl_sigmaOwned : ([254, 819] : List Wire).toFinset⊆s2Step238EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_sigmaReleaseOwned : ([819] : List Wire).toFinset⊆s2Step238EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlHistoryArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_sigmaRelease : s2Step238EarlyControlHistoryArena.release {819} (fun _ => false)=some s2Step238EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step238EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step238EarlyControlSigmaArena,s2Step238EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step238EarlyControl_sigma : compileHmrSigmaDropLog s2Step238EarlyControlHistoryArena false 0 0 254 819 []=some s2Step238EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step238EarlyControl_sigmaOwned⟩
  · exact s2Step238EarlyControl_sigmaRelease

private theorem s2Step238EarlyControl_zeroBorrow : s2Step238EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step238EarlyControlLog.zeroWork=some s2Step238EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step238EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step238EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
      decide +kernel
    · ext q
      simp [s2Step238EarlyControlZeroArena,s2Step238EarlyControlArena,s2Step238EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step238EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step238EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step238EarlyControlArena (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<832) ∨ (833≤q ∧ q<834) ∨ (835≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EarlyControl_zero : compileHmrEqualityLog s2Step238EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step238EarlyControlLog.zeroWork=some (s2Step238EarlyControlZeroArena,s2Step238EarlyControlLog.zeroWork,s2Step238EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step238EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step238EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step238EarlyControl_logged : s2Step238EarlyControlPlan.Logged s2Step238EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 819 254 253 252 251 793 49 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step238EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step238EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step238EarlyControl_zero
  · exact s2Step238EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step238EarlyControl_flags
  · exact s2Step238EarlyControl_fit
  · exact s2Step238EarlyControl_history
  · exact s2Step238EarlyControl_sigma
  · exact s2Step238EarlyControl_branch

private theorem s2Step238EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step238EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 819 254 253 252 251 793 49 s2Step238EarlyControlLog=some s2Step238EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step238EarlyControlPlan s2Step238EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 819 254 253 252 251 793 49 s2Step238EarlyControl_logged

private def s2Step238EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩

private def s2Step238EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩

private def s2Step238EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149],769⟩

private def s2Step238EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785],771⟩

private def s2Step238FrontBank : WindowBank := ⟨s2Step238EntryFRow,s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow⟩

private def s2Step238Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 810, 768]

private def s2Step238Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792, 800, 769]

private def s2Step238Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809, 842, 770]

private def s2Step238Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 826, 771]

private theorem s2Step238Counter_apart : Disjoint s2Step238HeadFvAfter.live s2Step238CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step238HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238Counter_borrowed : s2Step238HeadFvAfter.checkBorrow 4 s2Step238CounterWork=some s2Step238CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step238HeadFvAfter s2Step238CounterDuring s2Step238CounterWork.toFinset s2Step238Counter_bounded s2Step238Counter_apart rfl

private theorem s2Step238Counter_owned : (819::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step238HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step238HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238Counter_checked : compileHmrCounterStepLog s2Step238HeadFvAfter true 819 [772, 773, 774, 775, 776, 777] s2Step238CounterWork=some s2Step238CounterDuring := by
  have owned : ∀q∈819::[772, 773, 774, 775, 776, 777],q∈s2Step238HeadFvAfter.live := fun q hq => s2Step238Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step238Counter_borrowed

private def s2Step238EntryFAfter : Arena := s2Step238EntryFBefore

private theorem s2Step238EntryBank_incomingDistinct : ([s2Step238EntryFRow,s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238EntryF_Incoming : rowsOwned s2Step238EntryFBefore [s2Step238EntryFRow,s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238EntryFRow,s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow] 0 s2Step238EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238EntryBank_outgoingOwned : rowsOwned s2Step238EntryGvAfter [s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step238EntryGvAfter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238EntryF_Outgoing : rowsOwned s2Step238EntryGvAfter [s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut] :=
  hmrRows_owned_drop s2Step238EntryGvAfter [s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut] 0 s2Step238EntryBank_outgoingOwned

private theorem s2Step238EntryF_distinct : (s2Step238EntryFRow.sign::s2Step238EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238EntryF_owned : (s2Step238EntryFRow.sign::s2Step238EntryFRow.payload).toFinset⊆s2Step238EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EntryF_reserved : s2Step238EntryFBefore.reserve s2Step238EntryFFresh.toFinset=some s2Step238EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step238EntryFFresh,arenaWires]
  · norm_num [s2Step238EntryFBefore,s2Step238EntryFFresh,arenaWires]
  · simp only [s2Step238EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step238EntryF_checked : planRowResizeLog s2Step238EntryFBefore s2Step238EntryFRow 152 s2Step238EntryFFresh=
    some (s2Step238EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩,growRow 768 s2Step238EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step238EntryFBefore s2Step238EntryFAfter s2Step238EntryFRow 152 s2Step238EntryFFresh
    s2Step238EntryF_distinct s2Step238EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step238EntryF_reserved
  have rowEq : WindowRow.mk (s2Step238EntryFRow.payload++s2Step238EntryFFresh) s2Step238EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step238EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238EntryFvAfter : Arena := s2Step238EntryGAfter

private def s2Step238EntryFvBefore : Arena := s2Step238EntryGAfter

private theorem s2Step238EntryFv_Incoming : rowsOwned s2Step238EntryFvBefore [s2Step238EntryFvRow,s2Step238EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238EntryFRow,s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow] 2 s2Step238EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238EntryFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238EntryFv_Outgoing : rowsOwned s2Step238EntryGvAfter [s2Step238EntryFvOut,s2Step238EntryGvOut] :=
  hmrRows_owned_drop s2Step238EntryGvAfter [s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut] 2 s2Step238EntryBank_outgoingOwned

private theorem s2Step238EntryFv_distinct : (s2Step238EntryFvRow.sign::s2Step238EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238EntryFv_owned : (s2Step238EntryFvRow.sign::s2Step238EntryFvRow.payload).toFinset⊆s2Step238EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238EntryFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EntryFv_reserved : s2Step238EntryFvBefore.reserve s2Step238EntryFvFresh.toFinset=some s2Step238EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step238EntryFvFresh,arenaWires]
  · norm_num [s2Step238EntryFvBefore,s2Step238EntryGAfter,s2Step238EntryFvFresh,arenaWires]
  · simp only [s2Step238EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step238EntryFv_checked : planRowResizeLog s2Step238EntryFvBefore s2Step238EntryFvRow 135 s2Step238EntryFvFresh=
    some (s2Step238EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩,growRow 770 s2Step238EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step238EntryFvBefore s2Step238EntryFvAfter s2Step238EntryFvRow 135 s2Step238EntryFvFresh
    s2Step238EntryFv_distinct s2Step238EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step238EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step238EntryFvRow.payload++s2Step238EntryFvFresh) s2Step238EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step238EntryGBefore : Arena := s2Step238EntryFBefore

private theorem s2Step238EntryG_Incoming : rowsOwned s2Step238EntryGBefore [s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238EntryFRow,s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow] 1 s2Step238EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238EntryG_Outgoing : rowsOwned s2Step238EntryGvAfter [s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut] :=
  hmrRows_owned_drop s2Step238EntryGvAfter [s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut] 1 s2Step238EntryBank_outgoingOwned

private theorem s2Step238EntryG_distinct : (s2Step238EntryGRow.sign::s2Step238EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238EntryG_owned : (s2Step238EntryGRow.sign::s2Step238EntryGRow.payload).toFinset⊆s2Step238EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238EntryGBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EntryG_reserved : s2Step238EntryGBefore.reserve s2Step238EntryGFresh.toFinset=some s2Step238EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step238EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step238EntryGBefore,s2Step238EntryFBefore,s2Step238EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step238EntryGAfter,s2Step238EntryGBefore,s2Step238EntryFBefore,s2Step238EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step238EntryG_checked : planRowResizeLog s2Step238EntryGBefore s2Step238EntryGRow 152 s2Step238EntryGFresh=
    some (s2Step238EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792],769⟩,growRow 769 s2Step238EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step238EntryGBefore s2Step238EntryGAfter s2Step238EntryGRow 152 s2Step238EntryGFresh
    s2Step238EntryG_distinct s2Step238EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step238EntryG_reserved
  have rowEq : WindowRow.mk (s2Step238EntryGRow.payload++s2Step238EntryGFresh) s2Step238EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step238EntryGvBefore : Arena := s2Step238EntryGAfter

private theorem s2Step238EntryGv_Incoming : rowsOwned s2Step238EntryGvBefore [s2Step238EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238EntryFRow,s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow] 3 s2Step238EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238EntryGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238EntryGv_Outgoing : rowsOwned s2Step238EntryGvAfter [s2Step238EntryGvOut] :=
  hmrRows_owned_drop s2Step238EntryGvAfter [s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut] 3 s2Step238EntryBank_outgoingOwned

private theorem s2Step238EntryGv_distinct : (s2Step238EntryGvRow.sign::s2Step238EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238EntryGv_owned : (s2Step238EntryGvRow.sign::s2Step238EntryGvRow.payload).toFinset⊆s2Step238EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238EntryGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238EntryGv_reserved : s2Step238EntryGvBefore.reserve s2Step238EntryGvFresh.toFinset=some s2Step238EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step238EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step238EntryGvBefore,s2Step238EntryGAfter,s2Step238EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step238EntryGvAfter,s2Step238EntryGvBefore,s2Step238EntryGAfter,s2Step238EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step238EntryGv_checked : planRowResizeLog s2Step238EntryGvBefore s2Step238EntryGvRow 135 s2Step238EntryGvFresh=
    some (s2Step238EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩,growRow 771 s2Step238EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step238EntryGvBefore s2Step238EntryGvAfter s2Step238EntryGvRow 135 s2Step238EntryGvFresh
    s2Step238EntryGv_distinct s2Step238EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step238EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step238EntryGvRow.payload++s2Step238EntryGvFresh) s2Step238EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step238EntryBank_rows : planWindowRowsLog s2Step238EntryFBefore [(s2Step238EntryFRow,152),(s2Step238EntryGRow,152),(s2Step238EntryFvRow,135),(s2Step238EntryGvRow,135)] [s2Step238EntryFFresh,s2Step238EntryGFresh,s2Step238EntryFvFresh,s2Step238EntryGvFresh]=
    some (s2Step238EntryGvAfter,[s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut],(growRow 768 s2Step238EntryFFresh ++ (growRow 769 s2Step238EntryGFresh ++ (growRow 770 s2Step238EntryFvFresh ++ (growRow 771 s2Step238EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step238EntryGvAfter [] []=some (s2Step238EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step238EntryGvBefore s2Step238EntryGvAfter s2Step238EntryGvAfter
    s2Step238EntryGvRow s2Step238EntryGvOut 135 s2Step238EntryGvFresh [] [] []
    (growRow 771 s2Step238EntryGvFresh) ([]) s2Step238EntryGv_Incoming s2Step238EntryGv_checked h4 s2Step238EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step238EntryFvBefore s2Step238EntryFvAfter s2Step238EntryGvAfter
    s2Step238EntryFvRow s2Step238EntryFvOut 135 s2Step238EntryFvFresh [(s2Step238EntryGvRow,135)] [s2Step238EntryGvFresh] [s2Step238EntryGvOut]
    (growRow 770 s2Step238EntryFvFresh) ((growRow 771 s2Step238EntryGvFresh ++ [])) s2Step238EntryFv_Incoming s2Step238EntryFv_checked h3 s2Step238EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step238EntryGBefore s2Step238EntryGAfter s2Step238EntryGvAfter
    s2Step238EntryGRow s2Step238EntryGOut 152 s2Step238EntryGFresh [(s2Step238EntryFvRow,135),(s2Step238EntryGvRow,135)] [s2Step238EntryFvFresh,s2Step238EntryGvFresh] [s2Step238EntryFvOut,s2Step238EntryGvOut]
    (growRow 769 s2Step238EntryGFresh) ((growRow 770 s2Step238EntryFvFresh ++ (growRow 771 s2Step238EntryGvFresh ++ []))) s2Step238EntryG_Incoming s2Step238EntryG_checked h2 s2Step238EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step238EntryFBefore s2Step238EntryFAfter s2Step238EntryGvAfter
    s2Step238EntryFRow s2Step238EntryFOut 152 s2Step238EntryFFresh [(s2Step238EntryGRow,152),(s2Step238EntryFvRow,135),(s2Step238EntryGvRow,135)] [s2Step238EntryGFresh,s2Step238EntryFvFresh,s2Step238EntryGvFresh] [s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut]
    (growRow 768 s2Step238EntryFFresh) ((growRow 769 s2Step238EntryGFresh ++ (growRow 770 s2Step238EntryFvFresh ++ (growRow 771 s2Step238EntryGvFresh ++ [])))) s2Step238EntryF_Incoming s2Step238EntryF_checked h1 s2Step238EntryF_Outgoing
  exact h0

private theorem s2Step238EntryBank_checked : compileHmrBankResizeLog .entry s2Step238EntryFBefore ⟨s2Step238EntryFRow,s2Step238EntryGRow,s2Step238EntryFvRow,s2Step238EntryGvRow⟩ ⟨152,152,135,135⟩ [s2Step238EntryFFresh,s2Step238EntryGFresh,s2Step238EntryFvFresh,s2Step238EntryGvFresh]=
    some (s2Step238EntryGvAfter,⟨s2Step238EntryFOut,s2Step238EntryGOut,s2Step238EntryFvOut,s2Step238EntryGvOut⟩,(growRow 768 s2Step238EntryFFresh ++ (growRow 769 s2Step238EntryGFresh ++ (growRow 770 s2Step238EntryFvFresh ++ (growRow 771 s2Step238EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step238EntryBank_rows]
  rfl

private def s2Step238ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<662) ∨ (664≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238ExitFBefore : Arena := s2Step238ExitGAfter

private def s2Step238ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 810],768⟩

private def s2Step238ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809, 842],770⟩

private def s2Step238ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792, 800],769⟩

private def s2Step238ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 826],771⟩

private theorem s2Step238ExitBank_incomingDistinct : ([s2Step238ExitGRow,s2Step238ExitFRow,s2Step238ExitFvRow,s2Step238ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238ExitF_Incoming : rowsOwned s2Step238ExitFBefore [s2Step238ExitFRow,s2Step238ExitFvRow,s2Step238ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238ExitGRow,s2Step238ExitFRow,s2Step238ExitFvRow,s2Step238ExitGvRow] 1 s2Step238ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238ExitBank_outgoingOwned : rowsOwned s2Step238ExitGvAfter [s2Step238ExitGOut,s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step238ExitGvAfter (fun q => (0≤q ∧ q<662) ∨ (664≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238ExitF_Outgoing : rowsOwned s2Step238ExitGvAfter [s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut] :=
  hmrRows_owned_drop s2Step238ExitGvAfter [s2Step238ExitGOut,s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut] 1 s2Step238ExitBank_outgoingOwned

private theorem s2Step238ExitF_distinct : (s2Step238ExitFRow.sign::s2Step238ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238ExitF_owned : (s2Step238ExitFRow.sign::s2Step238ExitFRow.payload).toFinset⊆s2Step238ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238ExitFBefore (fun q => (0≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238ExitF_retired : s2Step238ExitFBefore.retireSet s2Step238ExitFExtra.toFinset=s2Step238ExitFAfter := by
  unfold Arena.retireSet s2Step238ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step238ExitFBefore,s2Step238ExitGAfter,s2Step238ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step238ExitF_checked : planRowResizeLog s2Step238ExitFBefore s2Step238ExitFRow 150 []=
    some (s2Step238ExitFAfter,s2Step238ExitFOut,shrinkRow 768 s2Step238ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step238ExitFBefore s2Step238ExitFRow 150 s2Step238ExitF_distinct s2Step238ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step238ExitFRow.payload.take 150) s2Step238ExitFRow.sign=s2Step238ExitFOut := by decide +kernel
  have hi : s2Step238ExitFRow.payload.drop 150=s2Step238ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step238ExitF_retired] at result
  exact result

private def s2Step238ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<662) ∨ (664≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238ExitFvBefore : Arena := s2Step238ExitFAfter

private theorem s2Step238ExitFv_Incoming : rowsOwned s2Step238ExitFvBefore [s2Step238ExitFvRow,s2Step238ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238ExitGRow,s2Step238ExitFRow,s2Step238ExitFvRow,s2Step238ExitGvRow] 2 s2Step238ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238ExitFvBefore (fun q => (0≤q ∧ q<662) ∨ (664≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238ExitFv_Outgoing : rowsOwned s2Step238ExitGvAfter [s2Step238ExitFvOut,s2Step238ExitGvOut] :=
  hmrRows_owned_drop s2Step238ExitGvAfter [s2Step238ExitGOut,s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut] 2 s2Step238ExitBank_outgoingOwned

private theorem s2Step238ExitFv_distinct : (s2Step238ExitFvRow.sign::s2Step238ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238ExitFv_owned : (s2Step238ExitFvRow.sign::s2Step238ExitFvRow.payload).toFinset⊆s2Step238ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238ExitFvBefore (fun q => (0≤q ∧ q<662) ∨ (664≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238ExitFv_retired : s2Step238ExitFvBefore.retireSet s2Step238ExitFvExtra.toFinset=s2Step238ExitFvAfter := by
  unfold Arena.retireSet s2Step238ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step238ExitFvBefore,s2Step238ExitFAfter,s2Step238ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step238ExitFv_checked : planRowResizeLog s2Step238ExitFvBefore s2Step238ExitFvRow 134 []=
    some (s2Step238ExitFvAfter,s2Step238ExitFvOut,shrinkRow 770 s2Step238ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step238ExitFvBefore s2Step238ExitFvRow 134 s2Step238ExitFv_distinct s2Step238ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step238ExitFvRow.payload.take 134) s2Step238ExitFvRow.sign=s2Step238ExitFvOut := by decide +kernel
  have hi : s2Step238ExitFvRow.payload.drop 134=s2Step238ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step238ExitFv_retired] at result
  exact result

private def s2Step238ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private theorem s2Step238ExitG_Incoming : rowsOwned s2Step238ExitGBefore [s2Step238ExitGRow,s2Step238ExitFRow,s2Step238ExitFvRow,s2Step238ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238ExitGRow,s2Step238ExitFRow,s2Step238ExitFvRow,s2Step238ExitGvRow] 0 s2Step238ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238ExitGBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238ExitG_Outgoing : rowsOwned s2Step238ExitGvAfter [s2Step238ExitGOut,s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut] :=
  hmrRows_owned_drop s2Step238ExitGvAfter [s2Step238ExitGOut,s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut] 0 s2Step238ExitBank_outgoingOwned

private theorem s2Step238ExitG_distinct : (s2Step238ExitGRow.sign::s2Step238ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238ExitG_owned : (s2Step238ExitGRow.sign::s2Step238ExitGRow.payload).toFinset⊆s2Step238ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238ExitGBefore (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238ExitG_retired : s2Step238ExitGBefore.retireSet s2Step238ExitGExtra.toFinset=s2Step238ExitGAfter := by
  unfold Arena.retireSet s2Step238ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step238ExitGBefore,s2Step238ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step238ExitG_checked : planRowResizeLog s2Step238ExitGBefore s2Step238ExitGRow 151 []=
    some (s2Step238ExitGAfter,s2Step238ExitGOut,shrinkRow 769 s2Step238ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step238ExitGBefore s2Step238ExitGRow 151 s2Step238ExitG_distinct s2Step238ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step238ExitGRow.payload.take 151) s2Step238ExitGRow.sign=s2Step238ExitGOut := by decide +kernel
  have hi : s2Step238ExitGRow.payload.drop 151=s2Step238ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step238ExitG_retired] at result
  exact result

private def s2Step238ExitGvBefore : Arena := s2Step238ExitFvAfter

private theorem s2Step238ExitGv_Incoming : rowsOwned s2Step238ExitGvBefore [s2Step238ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238ExitGRow,s2Step238ExitFRow,s2Step238ExitFvRow,s2Step238ExitGvRow] 3 s2Step238ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238ExitGvBefore (fun q => (0≤q ∧ q<662) ∨ (664≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238ExitGv_Outgoing : rowsOwned s2Step238ExitGvAfter [s2Step238ExitGvOut] :=
  hmrRows_owned_drop s2Step238ExitGvAfter [s2Step238ExitGOut,s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut] 3 s2Step238ExitBank_outgoingOwned

private theorem s2Step238ExitGv_distinct : (s2Step238ExitGvRow.sign::s2Step238ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238ExitGv_owned : (s2Step238ExitGvRow.sign::s2Step238ExitGvRow.payload).toFinset⊆s2Step238ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238ExitGvBefore (fun q => (0≤q ∧ q<662) ∨ (664≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<809) ∨ (811≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238ExitGv_retired : s2Step238ExitGvBefore.retireSet s2Step238ExitGvExtra.toFinset=s2Step238ExitGvAfter := by
  unfold Arena.retireSet s2Step238ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step238ExitGvBefore,s2Step238ExitFvAfter,s2Step238ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step238ExitGv_checked : planRowResizeLog s2Step238ExitGvBefore s2Step238ExitGvRow 135 []=
    some (s2Step238ExitGvAfter,s2Step238ExitGvOut,shrinkRow 771 s2Step238ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step238ExitGvBefore s2Step238ExitGvRow 135 s2Step238ExitGv_distinct s2Step238ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step238ExitGvRow.payload.take 135) s2Step238ExitGvRow.sign=s2Step238ExitGvOut := by decide +kernel
  have hi : s2Step238ExitGvRow.payload.drop 135=s2Step238ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step238ExitGv_retired] at result
  exact result

private theorem s2Step238ExitBank_rows : planWindowRowsLog s2Step238ExitGBefore [(s2Step238ExitGRow,151),(s2Step238ExitFRow,150),(s2Step238ExitFvRow,134),(s2Step238ExitGvRow,135)] [[],[],[],[]]=
    some (s2Step238ExitGvAfter,[s2Step238ExitGOut,s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut],(shrinkRow 769 s2Step238ExitGExtra ++ (shrinkRow 768 s2Step238ExitFExtra ++ (shrinkRow 770 s2Step238ExitFvExtra ++ (shrinkRow 771 s2Step238ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step238ExitGvAfter [] []=some (s2Step238ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step238ExitGvBefore s2Step238ExitGvAfter s2Step238ExitGvAfter
    s2Step238ExitGvRow s2Step238ExitGvOut 135 [] [] [] []
    (shrinkRow 771 s2Step238ExitGvExtra) ([]) s2Step238ExitGv_Incoming s2Step238ExitGv_checked h4 s2Step238ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step238ExitFvBefore s2Step238ExitFvAfter s2Step238ExitGvAfter
    s2Step238ExitFvRow s2Step238ExitFvOut 134 [] [(s2Step238ExitGvRow,135)] [[]] [s2Step238ExitGvOut]
    (shrinkRow 770 s2Step238ExitFvExtra) ((shrinkRow 771 s2Step238ExitGvExtra ++ [])) s2Step238ExitFv_Incoming s2Step238ExitFv_checked h3 s2Step238ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step238ExitFBefore s2Step238ExitFAfter s2Step238ExitGvAfter
    s2Step238ExitFRow s2Step238ExitFOut 150 [] [(s2Step238ExitFvRow,134),(s2Step238ExitGvRow,135)] [[],[]] [s2Step238ExitFvOut,s2Step238ExitGvOut]
    (shrinkRow 768 s2Step238ExitFExtra) ((shrinkRow 770 s2Step238ExitFvExtra ++ (shrinkRow 771 s2Step238ExitGvExtra ++ []))) s2Step238ExitF_Incoming s2Step238ExitF_checked h2 s2Step238ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step238ExitGBefore s2Step238ExitGAfter s2Step238ExitGvAfter
    s2Step238ExitGRow s2Step238ExitGOut 151 [] [(s2Step238ExitFRow,150),(s2Step238ExitFvRow,134),(s2Step238ExitGvRow,135)] [[],[],[]] [s2Step238ExitFOut,s2Step238ExitFvOut,s2Step238ExitGvOut]
    (shrinkRow 769 s2Step238ExitGExtra) ((shrinkRow 768 s2Step238ExitFExtra ++ (shrinkRow 770 s2Step238ExitFvExtra ++ (shrinkRow 771 s2Step238ExitGvExtra ++ [])))) s2Step238ExitG_Incoming s2Step238ExitG_checked h1 s2Step238ExitG_Outgoing
  exact h0

private theorem s2Step238ExitBank_checked : compileHmrBankResizeLog .exit s2Step238ExitGBefore ⟨s2Step238ExitFRow,s2Step238ExitGRow,s2Step238ExitFvRow,s2Step238ExitGvRow⟩ ⟨150,151,134,135⟩ [[],[],[],[]]=
    some (s2Step238ExitGvAfter,⟨s2Step238ExitFOut,s2Step238ExitGOut,s2Step238ExitFvOut,s2Step238ExitGvOut⟩,(shrinkRow 769 s2Step238ExitGExtra ++ (shrinkRow 768 s2Step238ExitFExtra ++ (shrinkRow 770 s2Step238ExitFvExtra ++ (shrinkRow 771 s2Step238ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step238ExitBank_rows]
  rfl

private theorem s2Step238Add0_apart : Disjoint s2Step238Add0Arena.live s2Step238Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step238Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238Add0_card : s2Step238Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step238Add0_borrowed : s2Step238Add0Arena.checkBorrow (hmrHybridCount s2Step238Add0Arena s2Step238Add0B.length) s2Step238Add0Work=some s2Step238Add0During := by
  have len : s2Step238Add0Work.length=hmrHybridCount s2Step238Add0Arena s2Step238Add0B.length := by
    rw [hmrHybridCount,s2Step238Add0_card]
    decide +kernel
  have nd : s2Step238Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step238Add0Arena s2Step238Add0During s2Step238Add0Work.toFinset s2Step238Add0_bounded s2Step238Add0_apart rfl

private theorem s2Step238Add0_distinct : (885::793::891::(s2Step238Add0A++s2Step238Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238Add0_owned : (885::793::891::(s2Step238Add0A++s2Step238Add0B)).toFinset⊆s2Step238Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step238Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238Add0_checked : compileHmrHybridCinLog s2Step238Add0Arena 793 885 891 s2Step238Add0A s2Step238Add0B s2Step238Add0Work=some s2Step238Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step238Add0Arena s2Step238Add0During 793 885 891 s2Step238Add0A s2Step238Add0B s2Step238Add0Work
    (by decide +kernel) (by decide +kernel) s2Step238Add0_distinct
    (fun q hq => s2Step238Add0_owned (List.mem_toFinset.mpr hq)) s2Step238Add0_borrowed

private theorem s2Step238Add1_apart : Disjoint s2Step238Add1Arena.live s2Step238Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step238Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238Add1_card : s2Step238Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step238Add1_borrowed : s2Step238Add1Arena.checkBorrow (hmrHybridCount s2Step238Add1Arena s2Step238Add1B.length) s2Step238Add1Work=some s2Step238Add1During := by
  have len : s2Step238Add1Work.length=hmrHybridCount s2Step238Add1Arena s2Step238Add1B.length := by
    rw [hmrHybridCount,s2Step238Add1_card]
    decide +kernel
  have nd : s2Step238Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step238Add1Arena s2Step238Add1During s2Step238Add1Work.toFinset s2Step238Add1_bounded s2Step238Add1_apart rfl

private theorem s2Step238Add1_distinct : (885::793::891::(s2Step238Add1A++s2Step238Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238Add1_owned : (885::793::891::(s2Step238Add1A++s2Step238Add1B)).toFinset⊆s2Step238Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step238Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238Add1_checked : compileHmrHybridCinLog s2Step238Add1Arena 793 885 891 s2Step238Add1A s2Step238Add1B s2Step238Add1Work=some s2Step238Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step238Add1Arena s2Step238Add1During 793 885 891 s2Step238Add1A s2Step238Add1B s2Step238Add1Work
    (by decide +kernel) (by decide +kernel) s2Step238Add1_distinct
    (fun q hq => s2Step238Add1_owned (List.mem_toFinset.mpr hq)) s2Step238Add1_borrowed

private theorem s2Step238F4_apart : Disjoint (s2Step238Add0A++s2Step238Add0B).toFinset (s2Step238Add1A++s2Step238Add1B).toFinset := by
  have nd : ((s2Step238Add0A++s2Step238Add0B)++(s2Step238Add1A++s2Step238Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step238F4_carry : s2Step238F4FlagArena.checkBorrow 1 [891]=some s2Step238Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step238F4FlagArena,s2Step238HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step238F4FlagArena,s2Step238HeadFvAfter,s2Step238Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step238F4_distinct : (819::793::885::891::((s2Step238Add0A++s2Step238Add1A)++(s2Step238Add0B++s2Step238Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238F4_flag : s2Step238HeadFvAfter.checkBorrow 1 [885]=some s2Step238F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step238HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step238F4_owned : (819::793::((s2Step238Add0A++s2Step238Add1A)++(s2Step238Add0B++s2Step238Add1B))).toFinset⊆s2Step238HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step238HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238F4_checked : compileHmrHybridF4Log s2Step238HeadFvAfter 819 793 s2Step238Add0A s2Step238Add0B s2Step238Add1A s2Step238Add1B [885] [891] s2Step238Add0Work s2Step238Add1Work=some s2Step238F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step238HeadFvAfter s2Step238F4FlagArena s2Step238Add0Arena s2Step238Add0During s2Step238Add1During 819 793
    s2Step238Add0A s2Step238Add0B s2Step238Add1A s2Step238Add1B [885] [891] s2Step238Add0Work s2Step238Add1Work
    (fun q hq => s2Step238F4_owned (List.mem_toFinset.mpr hq)) s2Step238F4_flag s2Step238F4_carry
    s2Step238F4_distinct s2Step238F4_apart s2Step238Add0_checked s2Step238Add1_checked

private theorem s2Step238Front_branch : s2Step238FrontSigmaArena.checkBorrow 1 [793]=some s2Step238HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step238FrontSigmaArena,s2Step238EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step238FrontSigmaArena,s2Step238EntryGvAfter,s2Step238HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step238Front_entry : HmrFrontEntryValid s2Step238EntryFBefore s2Step238FrontBank 152 135 ⟨150,151,134,135⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step238FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step238EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step238EntryFBefore (fun q => (0≤q ∧ q<792) ∨ (794≤q ∧ q<797) ∨ (798≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<814) ∨ (815≤q ∧ q<819) ∨ (820≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step238FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step238Front_sigma : s2Step238EntryGvAfter.checkBorrow 1 [819]=some s2Step238FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step238EntryGvAfter,arenaWires]
  · rfl

private def s2Step238HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238HeadFBefore : Arena := s2Step238HeadGAfter

private def s2Step238HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663],768⟩

private def s2Step238HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809],770⟩

private def s2Step238HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792],769⟩

private def s2Step238HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797],771⟩

private theorem s2Step238HeadBank_incomingDistinct : ([s2Step238HeadGRow,s2Step238HeadFRow,s2Step238HeadGvRow,s2Step238HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238HeadF_Incoming : rowsOwned s2Step238HeadFBefore [s2Step238HeadFRow,s2Step238HeadGvRow,s2Step238HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238HeadGRow,s2Step238HeadFRow,s2Step238HeadGvRow,s2Step238HeadFvRow] 1 s2Step238HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238HeadFBefore (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238HeadBank_outgoingOwned : rowsOwned s2Step238HeadFvAfter [s2Step238HeadGOut,s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step238HeadFvAfter (fun q => (0≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238HeadF_Outgoing : rowsOwned s2Step238HeadFvAfter [s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut] :=
  hmrRows_owned_drop s2Step238HeadFvAfter [s2Step238HeadGOut,s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut] 1 s2Step238HeadBank_outgoingOwned

private theorem s2Step238HeadF_distinct : (s2Step238HeadFRow.sign::s2Step238HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238HeadF_owned : (s2Step238HeadFRow.sign::s2Step238HeadFRow.payload).toFinset⊆s2Step238HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238HeadFBefore (fun q => (0≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238HeadF_reserved : s2Step238HeadFBefore.reserve s2Step238HeadFFresh.toFinset=some s2Step238HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step238HeadFFresh,arenaWires]
  · norm_num [s2Step238HeadFBefore,s2Step238HeadGAfter,s2Step238HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step238HeadFAfter,s2Step238HeadFBefore,s2Step238HeadGAfter,s2Step238HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step238HeadF_checked : planRowResizeLog s2Step238HeadFBefore s2Step238HeadFRow 153 s2Step238HeadFFresh=
    some (s2Step238HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 810],768⟩,growRow 768 s2Step238HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step238HeadFBefore s2Step238HeadFAfter s2Step238HeadFRow 153 s2Step238HeadFFresh
    s2Step238HeadF_distinct s2Step238HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step238HeadF_reserved
  have rowEq : WindowRow.mk (s2Step238HeadFRow.payload++s2Step238HeadFFresh) s2Step238HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 810],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step238HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)),Finset.filter_subset _ _⟩

private def s2Step238HeadFvBefore : Arena := s2Step238HeadGvAfter

private theorem s2Step238HeadFv_Incoming : rowsOwned s2Step238HeadFvBefore [s2Step238HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238HeadGRow,s2Step238HeadFRow,s2Step238HeadGvRow,s2Step238HeadFvRow] 3 s2Step238HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238HeadFvBefore (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238HeadFv_Outgoing : rowsOwned s2Step238HeadFvAfter [s2Step238HeadFvOut] :=
  hmrRows_owned_drop s2Step238HeadFvAfter [s2Step238HeadGOut,s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut] 3 s2Step238HeadBank_outgoingOwned

private theorem s2Step238HeadFv_distinct : (s2Step238HeadFvRow.sign::s2Step238HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238HeadFv_owned : (s2Step238HeadFvRow.sign::s2Step238HeadFvRow.payload).toFinset⊆s2Step238HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238HeadFvBefore (fun q => (0≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238HeadFv_reserved : s2Step238HeadFvBefore.reserve s2Step238HeadFvFresh.toFinset=some s2Step238HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step238HeadFvFresh,arenaWires]
  · norm_num [s2Step238HeadFvBefore,s2Step238HeadGvAfter,s2Step238HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step238HeadFvAfter,s2Step238HeadFvBefore,s2Step238HeadGvAfter,s2Step238HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step238HeadFv_checked : planRowResizeLog s2Step238HeadFvBefore s2Step238HeadFvRow 136 s2Step238HeadFvFresh=
    some (s2Step238HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809, 842],770⟩,growRow 770 s2Step238HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step238HeadFvBefore s2Step238HeadFvAfter s2Step238HeadFvRow 136 s2Step238HeadFvFresh
    s2Step238HeadFv_distinct s2Step238HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step238HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step238HeadFvRow.payload++s2Step238HeadFvFresh) s2Step238HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 830, 846, 824, 799, 803, 784, 827, 817, 794, 788, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 809, 842],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step238HeadG_Incoming : rowsOwned s2Step238HeadGBefore [s2Step238HeadGRow,s2Step238HeadFRow,s2Step238HeadGvRow,s2Step238HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238HeadGRow,s2Step238HeadFRow,s2Step238HeadGvRow,s2Step238HeadFvRow] 0 s2Step238HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238HeadG_Outgoing : rowsOwned s2Step238HeadFvAfter [s2Step238HeadGOut,s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut] :=
  hmrRows_owned_drop s2Step238HeadFvAfter [s2Step238HeadGOut,s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut] 0 s2Step238HeadBank_outgoingOwned

private theorem s2Step238HeadG_distinct : (s2Step238HeadGRow.sign::s2Step238HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238HeadG_owned : (s2Step238HeadGRow.sign::s2Step238HeadGRow.payload).toFinset⊆s2Step238HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238HeadGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<810) ∨ (811≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238HeadG_reserved : s2Step238HeadGBefore.reserve s2Step238HeadGFresh.toFinset=some s2Step238HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step238HeadGFresh,arenaWires]
  · norm_num [s2Step238HeadGBefore,s2Step238HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step238HeadGAfter,s2Step238HeadGBefore,s2Step238HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step238HeadG_checked : planRowResizeLog s2Step238HeadGBefore s2Step238HeadGRow 153 s2Step238HeadGFresh=
    some (s2Step238HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792, 800],769⟩,growRow 769 s2Step238HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step238HeadGBefore s2Step238HeadGAfter s2Step238HeadGRow 153 s2Step238HeadGFresh
    s2Step238HeadG_distinct s2Step238HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step238HeadG_reserved
  have rowEq : WindowRow.mk (s2Step238HeadGRow.payload++s2Step238HeadGFresh) s2Step238HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 814, 792, 800],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step238HeadGvBefore : Arena := s2Step238HeadFAfter

private theorem s2Step238HeadGv_Incoming : rowsOwned s2Step238HeadGvBefore [s2Step238HeadGvRow,s2Step238HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step238HeadGRow,s2Step238HeadFRow,s2Step238HeadGvRow,s2Step238HeadFvRow] 2 s2Step238HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step238HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
    decide +kernel

private theorem s2Step238HeadGv_Outgoing : rowsOwned s2Step238HeadFvAfter [s2Step238HeadGvOut,s2Step238HeadFvOut] :=
  hmrRows_owned_drop s2Step238HeadFvAfter [s2Step238HeadGOut,s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut] 2 s2Step238HeadBank_outgoingOwned

private theorem s2Step238HeadGv_distinct : (s2Step238HeadGvRow.sign::s2Step238HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step238HeadGv_owned : (s2Step238HeadGvRow.sign::s2Step238HeadGvRow.payload).toFinset⊆s2Step238HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step238HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<842) ∨ (843≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<899)) rfl
  decide +kernel

private theorem s2Step238HeadGv_reserved : s2Step238HeadGvBefore.reserve s2Step238HeadGvFresh.toFinset=some s2Step238HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step238HeadGvFresh,arenaWires]
  · norm_num [s2Step238HeadGvBefore,s2Step238HeadFAfter,s2Step238HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step238HeadGvAfter,s2Step238HeadGvBefore,s2Step238HeadFAfter,s2Step238HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step238HeadGv_checked : planRowResizeLog s2Step238HeadGvBefore s2Step238HeadGvRow 136 s2Step238HeadGvFresh=
    some (s2Step238HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 826],771⟩,growRow 771 s2Step238HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step238HeadGvBefore s2Step238HeadGvAfter s2Step238HeadGvRow 136 s2Step238HeadGvFresh
    s2Step238HeadGv_distinct s2Step238HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step238HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step238HeadGvRow.payload++s2Step238HeadGvFresh) s2Step238HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 832, 834, 831, 802, 835, 825, 782, 837, 840, 807, 829, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step238HeadBank_rows : planWindowRowsLog s2Step238HeadGBefore [(s2Step238HeadGRow,153),(s2Step238HeadFRow,153),(s2Step238HeadGvRow,136),(s2Step238HeadFvRow,136)] [s2Step238HeadGFresh,s2Step238HeadFFresh,s2Step238HeadGvFresh,s2Step238HeadFvFresh]=
    some (s2Step238HeadFvAfter,[s2Step238HeadGOut,s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut],(growRow 769 s2Step238HeadGFresh ++ (growRow 768 s2Step238HeadFFresh ++ (growRow 771 s2Step238HeadGvFresh ++ (growRow 770 s2Step238HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step238HeadFvAfter [] []=some (s2Step238HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step238HeadFvBefore s2Step238HeadFvAfter s2Step238HeadFvAfter
    s2Step238HeadFvRow s2Step238HeadFvOut 136 s2Step238HeadFvFresh [] [] []
    (growRow 770 s2Step238HeadFvFresh) ([]) s2Step238HeadFv_Incoming s2Step238HeadFv_checked h4 s2Step238HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step238HeadGvBefore s2Step238HeadGvAfter s2Step238HeadFvAfter
    s2Step238HeadGvRow s2Step238HeadGvOut 136 s2Step238HeadGvFresh [(s2Step238HeadFvRow,136)] [s2Step238HeadFvFresh] [s2Step238HeadFvOut]
    (growRow 771 s2Step238HeadGvFresh) ((growRow 770 s2Step238HeadFvFresh ++ [])) s2Step238HeadGv_Incoming s2Step238HeadGv_checked h3 s2Step238HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step238HeadFBefore s2Step238HeadFAfter s2Step238HeadFvAfter
    s2Step238HeadFRow s2Step238HeadFOut 153 s2Step238HeadFFresh [(s2Step238HeadGvRow,136),(s2Step238HeadFvRow,136)] [s2Step238HeadGvFresh,s2Step238HeadFvFresh] [s2Step238HeadGvOut,s2Step238HeadFvOut]
    (growRow 768 s2Step238HeadFFresh) ((growRow 771 s2Step238HeadGvFresh ++ (growRow 770 s2Step238HeadFvFresh ++ []))) s2Step238HeadF_Incoming s2Step238HeadF_checked h2 s2Step238HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step238HeadGBefore s2Step238HeadGAfter s2Step238HeadFvAfter
    s2Step238HeadGRow s2Step238HeadGOut 153 s2Step238HeadGFresh [(s2Step238HeadFRow,153),(s2Step238HeadGvRow,136),(s2Step238HeadFvRow,136)] [s2Step238HeadFFresh,s2Step238HeadGvFresh,s2Step238HeadFvFresh] [s2Step238HeadFOut,s2Step238HeadGvOut,s2Step238HeadFvOut]
    (growRow 769 s2Step238HeadGFresh) ((growRow 768 s2Step238HeadFFresh ++ (growRow 771 s2Step238HeadGvFresh ++ (growRow 770 s2Step238HeadFvFresh ++ [])))) s2Step238HeadG_Incoming s2Step238HeadG_checked h1 s2Step238HeadG_Outgoing
  exact h0

private theorem s2Step238HeadBank_checked : compileHmrBankResizeLog .headroom s2Step238HeadGBefore ⟨s2Step238HeadFRow,s2Step238HeadGRow,s2Step238HeadFvRow,s2Step238HeadGvRow⟩ ⟨153,153,136,136⟩ [s2Step238HeadGFresh,s2Step238HeadFFresh,s2Step238HeadGvFresh,s2Step238HeadFvFresh]=
    some (s2Step238HeadFvAfter,⟨s2Step238HeadFOut,s2Step238HeadGOut,s2Step238HeadFvOut,s2Step238HeadGvOut⟩,(growRow 769 s2Step238HeadGFresh ++ (growRow 768 s2Step238HeadFFresh ++ (growRow 771 s2Step238HeadGvFresh ++ (growRow 770 s2Step238HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step238HeadBank_rows]
  rfl

private theorem s2Step238Front_checked : compileHmrSourceFrontLog s2Step238EntryFBefore s2Step238FrontBank 152 135 ⟨150,151,134,135⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step238FrontLog=some s2Step238FrontPlan := by
  have pairEq : s2Step238FrontPair=⟨s2Step238HeadFRow,s2Step238HeadGRow,s2Step238HeadFvRow,s2Step238HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step238FrontHead=⟨s2Step238ExitFRow,s2Step238ExitGRow,s2Step238ExitFvRow,s2Step238ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step238Add0A=s2Step238FrontHead.f.wires := by decide +kernel
  have gEq : s2Step238Add0B=s2Step238FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step238Add1A=s2Step238FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step238Add1B=s2Step238FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step238EntryFBefore s2Step238FrontBank 152 135 ⟨150,151,134,135⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step238FrontLog s2Step238FrontPlan
  · exact s2Step238Front_entry
  · exact s2Step238EntryBank_checked
  · exact s2Step238Front_sigma
  · rfl
  · exact s2Step238Front_branch
  · rfl
  · simpa only [s2Step238FrontPlan,pairEq] using s2Step238HeadBank_checked
  · simpa only [s2Step238FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step238F4_checked
  · exact s2Step238Counter_checked
  · rfl
  · simpa only [s2Step238FrontPlan,headEq] using s2Step238ExitBank_checked

private theorem s2Step238Complete_explicit_checked : compileHmrEarlyStepLog s2Step238EntryFBefore s2Step238FrontBank 152 135 ⟨150,151,134,135⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step238CompleteLog=some s2Step238CompletePlan := by
  let Q := s2Step238EarlyControlPlan
  have hq := s2Step238EarlyControl_plan_checked
  have fv1 : s2Step238CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step238CompleteOut.fv.payload[2]?.getD s2Step238CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step238CompleteOut.fv.payload[3]?.getD s2Step238CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step238CompleteOut.fv.payload[4]?.getD s2Step238CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step238EntryFBefore s2Step238EarlyControlArena s2Step238FrontBank 152 135 ⟨150,151,134,135⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 49 s2Step238CompleteLog s2Step238FrontPlan Q
    s2Step238Front_checked s2Step238Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step238Complete_owned s2Step238Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step238EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 777 819 s2Step238CompleteOut.fv.second (s2Step238CompleteOut.fv.payload[2]?.getD s2Step238CompleteOut.fv.sign) (s2Step238CompleteOut.fv.payload[3]?.getD s2Step238CompleteOut.fv.sign) (s2Step238CompleteOut.fv.payload[4]?.getD s2Step238CompleteOut.fv.sign) 793 49 s2Step238EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep238Arena : Arena := s2Step238EntryFBefore
def s2PrivateStep238Bank : WindowBank := s2Step238FrontBank
def s2PrivateStep238Spec : HmrSourceWalkStepLog := ⟨152,135,⟨150,151,134,135⟩,49,.early s2Step238CompleteLog⟩
def s2PrivateStep238Plan : HmrSourceStepPlan := .early s2Step238CompletePlan
theorem s2PrivateStep238_source : s2PrivateStep238Spec=s2ObservedLogs224[14] := rfl
theorem s2PrivateStep238_checked : compileHmrSourceStepLog s2PrivateStep238Arena s2PrivateStep238Bank
    s2PrivateStep238Spec.fgWidth s2PrivateStep238Spec.vWidth s2PrivateStep238Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898]
    6 498 238 s2PrivateStep238Spec.need none s2PrivateStep238Spec.log=some s2PrivateStep238Plan := by
  change compileHmrSourceStepLog s2Step238EntryFBefore s2Step238FrontBank 152 135 ⟨150,151,134,135⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898] 6 498 238 49 none (.early s2Step238CompleteLog)=some (.early s2Step238CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 238<498)]
  rw [s2Step238Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
