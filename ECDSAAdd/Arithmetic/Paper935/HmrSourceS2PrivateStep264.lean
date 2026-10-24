import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep262
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

private def s2Step264CompleteMoves : List (Wire × Wire) := [(779,137)]

private def s2Step264EarlyControlLog : HmrEarlyControlLog := ⟨[779, 829, 877, 794, 788],[782],[817],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step264FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [794], [], [879]],[[788], [877], [829], [885]],[[], [], [], []]⟩,[891],[836],[782],[817],[830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[782, 817, 830, 800]⟩

private def s2Step264CompleteLog : HmrEarlyStepLog := ⟨s2Step264FrontLog,s2Step264CompleteMoves,s2Step264EarlyControlLog⟩

private def s2Step264ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step264ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step264ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136],769⟩

private def s2Step264ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879],771⟩

private def s2Step264FrontOut : WindowBank := ⟨s2Step264ExitFOut,s2Step264ExitGOut,s2Step264ExitFvOut,s2Step264ExitGvOut⟩

private def s2Step264CompleteOut : WindowBank := s2Step264FrontOut.repacked s2Step264CompleteMoves

private def s2Step264EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step264EarlyControlPositiveArena,[782],s2Step264EarlyControlEqualityArena,[817],⟨⟨891,false⟩,[⟨⟨782,false⟩,817⟩]⟩⟩

private def s2Step264EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<904)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,779⟩,⟨⟨774,false⟩,829⟩,⟨⟨775,false⟩,877⟩,⟨⟨776,false⟩,794⟩,⟨⟨777,false⟩,788⟩]⟩

private def s2Step264EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step264EarlyControlZeroArena,s2Step264EarlyControlZeroPlan,s2Step264EarlyControlClassPlan,s2Step264EarlyControlFlagArena,s2Step264EarlyControlFittedArena,s2Step264EarlyControlHistoryArena,s2Step264EarlyControlSigmaArena,s2Step264EarlyControlOutputArena,s2Step264EarlyControlLog⟩

private def s2Step264CounterWork : List Wire := [782, 817, 830, 800]

private theorem s2Step264Counter_bounded : s2Step264CounterWork.toFinset⊆arenaWires := by norm_num [s2Step264CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step264HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264CounterDuring : Arena := ⟨s2Step264HeadFvAfter.live∪s2Step264CounterWork.toFinset,Finset.union_subset s2Step264HeadFvAfter.bounded s2Step264Counter_bounded⟩

private def s2Step264EntryFFresh : List Wire := []

private def s2Step264EntryFvFresh : List Wire := []

private def s2Step264EntryGFresh : List Wire := [794]

private def s2Step264EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EntryGvFresh : List Wire := [879]

private def s2Step264ExitFExtra : List Wire := [877]

private def s2Step264ExitGExtra : List Wire := [137, 794, 788]

private def s2Step264ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264ExitGvExtra : List Wire := [829]

private def s2Step264Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step264Add0_bounded : s2Step264Add0Work.toFinset⊆arenaWires := by
  have h : s2Step264Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step264Add0During : Arena := ⟨s2Step264Add0Arena.live∪s2Step264Add0Work.toFinset,Finset.union_subset s2Step264Add0Arena.bounded s2Step264Add0_bounded⟩

private def s2Step264Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step264Add1_bounded : s2Step264Add1Work.toFinset⊆arenaWires := by
  have h : s2Step264Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step264Add1During : Arena := ⟨s2Step264Add1Arena.live∪s2Step264Add1Work.toFinset,Finset.union_subset s2Step264Add1Arena.bounded s2Step264Add1_bounded⟩

private def s2Step264F4FlagArena : Arena := ⟨s2Step264HeadFvAfter.live∪{782},Finset.union_subset s2Step264HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step264F4Plan : HmrHybridF4Plan := ⟨s2Step264F4FlagArena,[782],s2Step264Add0Arena,[817],s2Step264Add0During,s2Step264Add0Work,s2Step264Add1During,s2Step264Add1Work⟩

private def s2Step264HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877],768⟩

private def s2Step264HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step264HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794, 788],769⟩

private def s2Step264HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private def s2Step264FrontHead : WindowBank := ⟨s2Step264HeadFOut,s2Step264HeadGOut,s2Step264HeadFvOut,s2Step264HeadGvOut⟩

private def s2Step264EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step264EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩

private def s2Step264EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794],769⟩

private def s2Step264EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879],771⟩

private def s2Step264FrontPair : WindowBank := ⟨s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut⟩

private def s2Step264FrontSigmaArena : Arena := ⟨s2Step264EntryGvAfter.live∪{891},Finset.union_subset s2Step264EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step264HeadFFresh : List Wire := [877]

private def s2Step264HeadFvFresh : List Wire := [885]

private def s2Step264HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264HeadGFresh : List Wire := [788]

private def s2Step264HeadGvFresh : List Wire := [829]

private def s2Step264FrontPlan : HmrSourceFront := ⟨s2Step264EntryGvAfter,s2Step264FrontPair,(growRow 768 s2Step264EntryFFresh ++ (growRow 769 s2Step264EntryGFresh ++ (growRow 770 s2Step264EntryFvFresh ++ (growRow 771 s2Step264EntryGvFresh ++ [])))),s2Step264FrontSigmaArena,[891],s2Step264HeadGBefore,[836],
  s2Step264HeadFvAfter,s2Step264FrontHead,(growRow 769 s2Step264HeadGFresh ++ (growRow 768 s2Step264HeadFFresh ++ (growRow 771 s2Step264HeadGvFresh ++ (growRow 770 s2Step264HeadFvFresh ++ [])))),s2Step264F4Plan,s2Step264CounterDuring,s2Step264CounterWork,s2Step264ExitGvAfter,s2Step264FrontOut,(shrinkRow 769 s2Step264ExitGExtra ++ (shrinkRow 768 s2Step264ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step264ExitGvExtra ++ []))))⟩

private def s2Step264CompletePlan : HmrEarlyStepPlan := ⟨s2Step264FrontPlan,s2Step264EarlyControlArena,s2Step264EarlyControlPlan,s2Step264CompleteMoves⟩

private theorem s2Step264Complete_apart : List.Disjoint (s2Step264CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [891, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step264CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[891, 836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step264Complete_owned : (s2Step264CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private def s2Step264CompleteMoveArena : Arena := ⟨s2Step264ExitGvAfter.live∪{137},Finset.union_subset s2Step264ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step264Complete_repack : s2Step264ExitGvAfter.checkRepack s2Step264CompleteMoves=some s2Step264EarlyControlArena := by
  have owned : 779∈s2Step264ExitGvAfter.live := by norm_num [s2Step264ExitGvAfter,arenaWires]
  have reserve : s2Step264ExitGvAfter.reserve {137}=some s2Step264CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step264ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step264CompleteMoveArena.retireSet {779}=s2Step264EarlyControlArena := by
    unfold Arena.retireSet s2Step264EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step264CompleteMoveArena,s2Step264ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step264CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step264CompleteMoveArena.retireSet {779}).checkRepack []=some s2Step264EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step264EarlyControl_branchOwned : ([836] : List Wire).toFinset⊆s2Step264EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_branch : compileHmrBranchRetirement s2Step264EarlyControlSigmaArena 836=some s2Step264EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step264EarlyControl_branchOwned
  · ext q
    simp [s2Step264EarlyControlOutputArena,s2Step264EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step264EarlyControl_classEqualityBorrow : s2Step264EarlyControlPositiveArena.checkBorrow (([891, 782] : List Wire).length-1) s2Step264EarlyControlLog.classWork=some s2Step264EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step264EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step264EarlyControlEqualityArena,s2Step264EarlyControlPositiveArena,s2Step264EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step264EarlyControl_classEqualityOwned : ([891, 782] : List Wire).toFinset⊆s2Step264EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_classEquality : compileHmrEqualityLog s2Step264EarlyControlPositiveArena [891, 782] 0 s2Step264EarlyControlLog.classWork=some (s2Step264EarlyControlEqualityArena,s2Step264EarlyControlLog.classWork,s2Step264EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step264EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step264EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step264EarlyControl_classOwned : ([777, 788, 891] : List Wire).toFinset⊆s2Step264EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_positiveBorrow : s2Step264EarlyControlZeroArena.checkBorrow (1) s2Step264EarlyControlLog.positiveWork=some s2Step264EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step264EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step264EarlyControlPositiveArena,s2Step264EarlyControlZeroArena,s2Step264EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step264EarlyControl_class : compileHmrSourceClassLog s2Step264EarlyControlZeroArena false 777 s2Step264EarlyControlZeroPlan.top 0 891 s2Step264EarlyControlLog.positiveWork s2Step264EarlyControlLog.classWork=some s2Step264EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step264EarlyControlClassPlan s2Step264EarlyControlZeroArena false 777 s2Step264EarlyControlZeroPlan.top 0 891
  constructor
  · decide +kernel
  · exact s2Step264EarlyControl_classOwned
  · exact s2Step264EarlyControl_positiveBorrow
  · exact s2Step264EarlyControl_classEquality

private theorem s2Step264EarlyControl_entryRecordOwned : ([836, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_entrySigmaOwned : ([891, 254] : List Wire).toFinset⊆s2Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_fitBorrow : s2Step264EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step264EarlyControlLog.recordFresh=some s2Step264EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step264EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
      decide +kernel
    · ext q
      simp [s2Step264EarlyControlFittedArena,s2Step264EarlyControlFlagArena,s2Step264EarlyControlLog,arenaWires]

private theorem s2Step264EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step264EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlFlagArena (fun q => (0≤q ∧ q<904)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_fit : compileHmrRecordGrowLog s2Step264EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step264EarlyControlLog.recordFresh=some s2Step264EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step264EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step264EarlyControl_fitBorrow

private theorem s2Step264EarlyControl_flagsBorrow : s2Step264EarlyControlEqualityArena.checkBorrow (6) s2Step264EarlyControlLog.flagWork=some s2Step264EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step264EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step264EarlyControlFlagArena,s2Step264EarlyControlEqualityArena,s2Step264EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step264EarlyControl_flagsOwned : ([817, 253, 252, 251] : List Wire).toFinset⊆s2Step264EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_flags : compileHmrFlagsLog s2Step264EarlyControlClassPlan.equalityArena s2Step264EarlyControlClassPlan.equality.top 253 252 251 s2Step264EarlyControlLog.flagWork=some s2Step264EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step264EarlyControl_flagsOwned⟩
  · exact s2Step264EarlyControl_flagsBorrow

private theorem s2Step264EarlyControl_historyBorrow : s2Step264EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step264EarlyControlLog.recordFresh=some s2Step264EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step264EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step264EarlyControlHistoryArena,s2Step264EarlyControlArena,s2Step264EarlyControlLog,arenaWires]

private theorem s2Step264EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_history : compileHmrRecordGrowLog s2Step264EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step264EarlyControlLog.recordFresh=some s2Step264EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step264EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step264EarlyControl_historyBorrow

private theorem s2Step264EarlyControl_sigmaOwned : ([254, 891] : List Wire).toFinset⊆s2Step264EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_sigmaReleaseOwned : ([891] : List Wire).toFinset⊆s2Step264EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_sigmaRelease : s2Step264EarlyControlHistoryArena.release {891} (fun _ => false)=some s2Step264EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step264EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step264EarlyControlSigmaArena,s2Step264EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step264EarlyControl_sigma : compileHmrSigmaDropLog s2Step264EarlyControlHistoryArena false 0 0 254 891 []=some s2Step264EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step264EarlyControl_sigmaOwned⟩
  · exact s2Step264EarlyControl_sigmaRelease

private theorem s2Step264EarlyControl_zeroBorrow : s2Step264EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step264EarlyControlLog.zeroWork=some s2Step264EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step264EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step264EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step264EarlyControlZeroArena,s2Step264EarlyControlArena,s2Step264EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step264EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step264EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step264EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EarlyControl_zero : compileHmrEqualityLog s2Step264EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step264EarlyControlLog.zeroWork=some (s2Step264EarlyControlZeroArena,s2Step264EarlyControlLog.zeroWork,s2Step264EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step264EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step264EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step264EarlyControl_logged : s2Step264EarlyControlPlan.Logged s2Step264EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 891 254 253 252 251 836 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step264EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step264EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step264EarlyControl_zero
  · exact s2Step264EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step264EarlyControl_flags
  · exact s2Step264EarlyControl_fit
  · exact s2Step264EarlyControl_history
  · exact s2Step264EarlyControl_sigma
  · exact s2Step264EarlyControl_branch

private theorem s2Step264EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step264EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 891 254 253 252 251 836 52 s2Step264EarlyControlLog=some s2Step264EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step264EarlyControlPlan s2Step264EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 891 254 253 252 251 836 52 s2Step264EarlyControl_logged

private def s2Step264EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step264EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩

private def s2Step264EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137],769⟩

private def s2Step264EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814],771⟩

private def s2Step264FrontBank : WindowBank := ⟨s2Step264EntryFRow,s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow⟩

private def s2Step264Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877, 768]

private def s2Step264Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794, 788, 769]

private def s2Step264Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 770]

private def s2Step264Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 771]

private theorem s2Step264Counter_apart : Disjoint s2Step264HeadFvAfter.live s2Step264CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step264HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264Counter_borrowed : s2Step264HeadFvAfter.checkBorrow 4 s2Step264CounterWork=some s2Step264CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step264HeadFvAfter s2Step264CounterDuring s2Step264CounterWork.toFinset s2Step264Counter_bounded s2Step264Counter_apart rfl

private theorem s2Step264Counter_owned : (891::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step264HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step264HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264Counter_checked : compileHmrCounterStepLog s2Step264HeadFvAfter true 891 [772, 773, 774, 775, 776, 777] s2Step264CounterWork=some s2Step264CounterDuring := by
  have owned : ∀q∈891::[772, 773, 774, 775, 776, 777],q∈s2Step264HeadFvAfter.live := fun q hq => s2Step264Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step264Counter_borrowed

private def s2Step264EntryFAfter : Arena := s2Step264EntryFBefore

private theorem s2Step264EntryBank_incomingDistinct : ([s2Step264EntryFRow,s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264EntryF_Incoming : rowsOwned s2Step264EntryFBefore [s2Step264EntryFRow,s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264EntryFRow,s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow] 0 s2Step264EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264EntryBank_outgoingOwned : rowsOwned s2Step264EntryGvAfter [s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step264EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264EntryF_Outgoing : rowsOwned s2Step264EntryGvAfter [s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut] :=
  hmrRows_owned_drop s2Step264EntryGvAfter [s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut] 0 s2Step264EntryBank_outgoingOwned

private theorem s2Step264EntryF_distinct : (s2Step264EntryFRow.sign::s2Step264EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264EntryF_owned : (s2Step264EntryFRow.sign::s2Step264EntryFRow.payload).toFinset⊆s2Step264EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EntryF_reserved : s2Step264EntryFBefore.reserve s2Step264EntryFFresh.toFinset=some s2Step264EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step264EntryFFresh,arenaWires]
  · norm_num [s2Step264EntryFBefore,s2Step264EntryFFresh,arenaWires]
  · simp only [s2Step264EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step264EntryF_checked : planRowResizeLog s2Step264EntryFBefore s2Step264EntryFRow 139 s2Step264EntryFFresh=
    some (s2Step264EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩,growRow 768 s2Step264EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step264EntryFBefore s2Step264EntryFAfter s2Step264EntryFRow 139 s2Step264EntryFFresh
    s2Step264EntryF_distinct s2Step264EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264EntryF_reserved
  have rowEq : WindowRow.mk (s2Step264EntryFRow.payload++s2Step264EntryFFresh) s2Step264EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step264EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264EntryFvAfter : Arena := s2Step264EntryGAfter

private def s2Step264EntryFvBefore : Arena := s2Step264EntryGAfter

private theorem s2Step264EntryFv_Incoming : rowsOwned s2Step264EntryFvBefore [s2Step264EntryFvRow,s2Step264EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264EntryFRow,s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow] 2 s2Step264EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264EntryFv_Outgoing : rowsOwned s2Step264EntryGvAfter [s2Step264EntryFvOut,s2Step264EntryGvOut] :=
  hmrRows_owned_drop s2Step264EntryGvAfter [s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut] 2 s2Step264EntryBank_outgoingOwned

private theorem s2Step264EntryFv_distinct : (s2Step264EntryFvRow.sign::s2Step264EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264EntryFv_owned : (s2Step264EntryFvRow.sign::s2Step264EntryFvRow.payload).toFinset⊆s2Step264EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EntryFv_reserved : s2Step264EntryFvBefore.reserve s2Step264EntryFvFresh.toFinset=some s2Step264EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step264EntryFvFresh,arenaWires]
  · norm_num [s2Step264EntryFvBefore,s2Step264EntryGAfter,s2Step264EntryFvFresh,arenaWires]
  · simp only [s2Step264EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step264EntryFv_checked : planRowResizeLog s2Step264EntryFvBefore s2Step264EntryFvRow 147 s2Step264EntryFvFresh=
    some (s2Step264EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩,growRow 770 s2Step264EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step264EntryFvBefore s2Step264EntryFvAfter s2Step264EntryFvRow 147 s2Step264EntryFvFresh
    s2Step264EntryFv_distinct s2Step264EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step264EntryFvRow.payload++s2Step264EntryFvFresh) s2Step264EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step264EntryGBefore : Arena := s2Step264EntryFBefore

private theorem s2Step264EntryG_Incoming : rowsOwned s2Step264EntryGBefore [s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264EntryFRow,s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow] 1 s2Step264EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264EntryG_Outgoing : rowsOwned s2Step264EntryGvAfter [s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut] :=
  hmrRows_owned_drop s2Step264EntryGvAfter [s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut] 1 s2Step264EntryBank_outgoingOwned

private theorem s2Step264EntryG_distinct : (s2Step264EntryGRow.sign::s2Step264EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264EntryG_owned : (s2Step264EntryGRow.sign::s2Step264EntryGRow.payload).toFinset⊆s2Step264EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EntryG_reserved : s2Step264EntryGBefore.reserve s2Step264EntryGFresh.toFinset=some s2Step264EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step264EntryGFresh,arenaWires]
  · norm_num [s2Step264EntryGBefore,s2Step264EntryFBefore,s2Step264EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step264EntryGAfter,s2Step264EntryGBefore,s2Step264EntryFBefore,s2Step264EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step264EntryG_checked : planRowResizeLog s2Step264EntryGBefore s2Step264EntryGRow 139 s2Step264EntryGFresh=
    some (s2Step264EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794],769⟩,growRow 769 s2Step264EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step264EntryGBefore s2Step264EntryGAfter s2Step264EntryGRow 139 s2Step264EntryGFresh
    s2Step264EntryG_distinct s2Step264EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264EntryG_reserved
  have rowEq : WindowRow.mk (s2Step264EntryGRow.payload++s2Step264EntryGFresh) s2Step264EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step264EntryGvBefore : Arena := s2Step264EntryGAfter

private theorem s2Step264EntryGv_Incoming : rowsOwned s2Step264EntryGvBefore [s2Step264EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264EntryFRow,s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow] 3 s2Step264EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264EntryGv_Outgoing : rowsOwned s2Step264EntryGvAfter [s2Step264EntryGvOut] :=
  hmrRows_owned_drop s2Step264EntryGvAfter [s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut] 3 s2Step264EntryBank_outgoingOwned

private theorem s2Step264EntryGv_distinct : (s2Step264EntryGvRow.sign::s2Step264EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264EntryGv_owned : (s2Step264EntryGvRow.sign::s2Step264EntryGvRow.payload).toFinset⊆s2Step264EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264EntryGv_reserved : s2Step264EntryGvBefore.reserve s2Step264EntryGvFresh.toFinset=some s2Step264EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step264EntryGvFresh,arenaWires]
  · norm_num [s2Step264EntryGvBefore,s2Step264EntryGAfter,s2Step264EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step264EntryGvAfter,s2Step264EntryGvBefore,s2Step264EntryGAfter,s2Step264EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step264EntryGv_checked : planRowResizeLog s2Step264EntryGvBefore s2Step264EntryGvRow 147 s2Step264EntryGvFresh=
    some (s2Step264EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879],771⟩,growRow 771 s2Step264EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step264EntryGvBefore s2Step264EntryGvAfter s2Step264EntryGvRow 147 s2Step264EntryGvFresh
    s2Step264EntryGv_distinct s2Step264EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step264EntryGvRow.payload++s2Step264EntryGvFresh) s2Step264EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step264EntryBank_rows : planWindowRowsLog s2Step264EntryFBefore [(s2Step264EntryFRow,139),(s2Step264EntryGRow,139),(s2Step264EntryFvRow,147),(s2Step264EntryGvRow,147)] [s2Step264EntryFFresh,s2Step264EntryGFresh,s2Step264EntryFvFresh,s2Step264EntryGvFresh]=
    some (s2Step264EntryGvAfter,[s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut],(growRow 768 s2Step264EntryFFresh ++ (growRow 769 s2Step264EntryGFresh ++ (growRow 770 s2Step264EntryFvFresh ++ (growRow 771 s2Step264EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step264EntryGvAfter [] []=some (s2Step264EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step264EntryGvBefore s2Step264EntryGvAfter s2Step264EntryGvAfter
    s2Step264EntryGvRow s2Step264EntryGvOut 147 s2Step264EntryGvFresh [] [] []
    (growRow 771 s2Step264EntryGvFresh) ([]) s2Step264EntryGv_Incoming s2Step264EntryGv_checked h4 s2Step264EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step264EntryFvBefore s2Step264EntryFvAfter s2Step264EntryGvAfter
    s2Step264EntryFvRow s2Step264EntryFvOut 147 s2Step264EntryFvFresh [(s2Step264EntryGvRow,147)] [s2Step264EntryGvFresh] [s2Step264EntryGvOut]
    (growRow 770 s2Step264EntryFvFresh) ((growRow 771 s2Step264EntryGvFresh ++ [])) s2Step264EntryFv_Incoming s2Step264EntryFv_checked h3 s2Step264EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step264EntryGBefore s2Step264EntryGAfter s2Step264EntryGvAfter
    s2Step264EntryGRow s2Step264EntryGOut 139 s2Step264EntryGFresh [(s2Step264EntryFvRow,147),(s2Step264EntryGvRow,147)] [s2Step264EntryFvFresh,s2Step264EntryGvFresh] [s2Step264EntryFvOut,s2Step264EntryGvOut]
    (growRow 769 s2Step264EntryGFresh) ((growRow 770 s2Step264EntryFvFresh ++ (growRow 771 s2Step264EntryGvFresh ++ []))) s2Step264EntryG_Incoming s2Step264EntryG_checked h2 s2Step264EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step264EntryFBefore s2Step264EntryFAfter s2Step264EntryGvAfter
    s2Step264EntryFRow s2Step264EntryFOut 139 s2Step264EntryFFresh [(s2Step264EntryGRow,139),(s2Step264EntryFvRow,147),(s2Step264EntryGvRow,147)] [s2Step264EntryGFresh,s2Step264EntryFvFresh,s2Step264EntryGvFresh] [s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut]
    (growRow 768 s2Step264EntryFFresh) ((growRow 769 s2Step264EntryGFresh ++ (growRow 770 s2Step264EntryFvFresh ++ (growRow 771 s2Step264EntryGvFresh ++ [])))) s2Step264EntryF_Incoming s2Step264EntryF_checked h1 s2Step264EntryF_Outgoing
  exact h0

private theorem s2Step264EntryBank_checked : compileHmrBankResizeLog .entry s2Step264EntryFBefore ⟨s2Step264EntryFRow,s2Step264EntryGRow,s2Step264EntryFvRow,s2Step264EntryGvRow⟩ ⟨139,139,147,147⟩ [s2Step264EntryFFresh,s2Step264EntryGFresh,s2Step264EntryFvFresh,s2Step264EntryGvFresh]=
    some (s2Step264EntryGvAfter,⟨s2Step264EntryFOut,s2Step264EntryGOut,s2Step264EntryFvOut,s2Step264EntryGvOut⟩,(growRow 768 s2Step264EntryFFresh ++ (growRow 769 s2Step264EntryGFresh ++ (growRow 770 s2Step264EntryFvFresh ++ (growRow 771 s2Step264EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step264EntryBank_rows]
  rfl

private def s2Step264ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264ExitFBefore : Arena := s2Step264ExitGAfter

private def s2Step264ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877],768⟩

private def s2Step264ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step264ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794, 788],769⟩

private def s2Step264ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private theorem s2Step264ExitBank_incomingDistinct : ([s2Step264ExitGRow,s2Step264ExitFRow,s2Step264ExitFvRow,s2Step264ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264ExitF_Incoming : rowsOwned s2Step264ExitFBefore [s2Step264ExitFRow,s2Step264ExitFvRow,s2Step264ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264ExitGRow,s2Step264ExitFRow,s2Step264ExitFvRow,s2Step264ExitGvRow] 1 s2Step264ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264ExitFBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264ExitBank_outgoingOwned : rowsOwned s2Step264ExitGvAfter [s2Step264ExitGOut,s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step264ExitGvAfter (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264ExitF_Outgoing : rowsOwned s2Step264ExitGvAfter [s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut] :=
  hmrRows_owned_drop s2Step264ExitGvAfter [s2Step264ExitGOut,s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut] 1 s2Step264ExitBank_outgoingOwned

private theorem s2Step264ExitF_distinct : (s2Step264ExitFRow.sign::s2Step264ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264ExitF_owned : (s2Step264ExitFRow.sign::s2Step264ExitFRow.payload).toFinset⊆s2Step264ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264ExitFBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264ExitF_retired : s2Step264ExitFBefore.retireSet s2Step264ExitFExtra.toFinset=s2Step264ExitFAfter := by
  unfold Arena.retireSet s2Step264ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step264ExitFBefore,s2Step264ExitGAfter,s2Step264ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step264ExitF_checked : planRowResizeLog s2Step264ExitFBefore s2Step264ExitFRow 139 []=
    some (s2Step264ExitFAfter,s2Step264ExitFOut,shrinkRow 768 s2Step264ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step264ExitFBefore s2Step264ExitFRow 139 s2Step264ExitF_distinct s2Step264ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step264ExitFRow.payload.take 139) s2Step264ExitFRow.sign=s2Step264ExitFOut := by decide +kernel
  have hi : s2Step264ExitFRow.payload.drop 139=s2Step264ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step264ExitF_retired] at result
  exact result

private def s2Step264ExitFvAfter : Arena := s2Step264ExitFAfter

private def s2Step264ExitFvBefore : Arena := s2Step264ExitFAfter

private theorem s2Step264ExitFv_Incoming : rowsOwned s2Step264ExitFvBefore [s2Step264ExitFvRow,s2Step264ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264ExitGRow,s2Step264ExitFRow,s2Step264ExitFvRow,s2Step264ExitGvRow] 2 s2Step264ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264ExitFvBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264ExitFv_Outgoing : rowsOwned s2Step264ExitGvAfter [s2Step264ExitFvOut,s2Step264ExitGvOut] :=
  hmrRows_owned_drop s2Step264ExitGvAfter [s2Step264ExitGOut,s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut] 2 s2Step264ExitBank_outgoingOwned

private theorem s2Step264ExitFv_distinct : (s2Step264ExitFvRow.sign::s2Step264ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264ExitFv_owned : (s2Step264ExitFvRow.sign::s2Step264ExitFvRow.payload).toFinset⊆s2Step264ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264ExitFvBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264ExitFv_reserved : s2Step264ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step264ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step264ExitFv_checked : planRowResizeLog s2Step264ExitFvBefore s2Step264ExitFvRow 148 []=
    some (s2Step264ExitFvAfter,s2Step264ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step264ExitFvBefore s2Step264ExitFvAfter s2Step264ExitFvRow 148 []
    s2Step264ExitFv_distinct s2Step264ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step264ExitFvRow.payload++[]) s2Step264ExitFvRow.sign=s2Step264ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step264ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step264ExitG_Incoming : rowsOwned s2Step264ExitGBefore [s2Step264ExitGRow,s2Step264ExitFRow,s2Step264ExitFvRow,s2Step264ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264ExitGRow,s2Step264ExitFRow,s2Step264ExitFvRow,s2Step264ExitGvRow] 0 s2Step264ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264ExitG_Outgoing : rowsOwned s2Step264ExitGvAfter [s2Step264ExitGOut,s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut] :=
  hmrRows_owned_drop s2Step264ExitGvAfter [s2Step264ExitGOut,s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut] 0 s2Step264ExitBank_outgoingOwned

private theorem s2Step264ExitG_distinct : (s2Step264ExitGRow.sign::s2Step264ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264ExitG_owned : (s2Step264ExitGRow.sign::s2Step264ExitGRow.payload).toFinset⊆s2Step264ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264ExitG_retired : s2Step264ExitGBefore.retireSet s2Step264ExitGExtra.toFinset=s2Step264ExitGAfter := by
  unfold Arena.retireSet s2Step264ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step264ExitGBefore,s2Step264ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step264ExitG_checked : planRowResizeLog s2Step264ExitGBefore s2Step264ExitGRow 137 []=
    some (s2Step264ExitGAfter,s2Step264ExitGOut,shrinkRow 769 s2Step264ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step264ExitGBefore s2Step264ExitGRow 137 s2Step264ExitG_distinct s2Step264ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step264ExitGRow.payload.take 137) s2Step264ExitGRow.sign=s2Step264ExitGOut := by decide +kernel
  have hi : s2Step264ExitGRow.payload.drop 137=s2Step264ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step264ExitG_retired] at result
  exact result

private def s2Step264ExitGvBefore : Arena := s2Step264ExitFAfter

private theorem s2Step264ExitGv_Incoming : rowsOwned s2Step264ExitGvBefore [s2Step264ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264ExitGRow,s2Step264ExitFRow,s2Step264ExitFvRow,s2Step264ExitGvRow] 3 s2Step264ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264ExitGvBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264ExitGv_Outgoing : rowsOwned s2Step264ExitGvAfter [s2Step264ExitGvOut] :=
  hmrRows_owned_drop s2Step264ExitGvAfter [s2Step264ExitGOut,s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut] 3 s2Step264ExitBank_outgoingOwned

private theorem s2Step264ExitGv_distinct : (s2Step264ExitGvRow.sign::s2Step264ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264ExitGv_owned : (s2Step264ExitGvRow.sign::s2Step264ExitGvRow.payload).toFinset⊆s2Step264ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264ExitGvBefore (fun q => (0≤q ∧ q<137) ∨ (138≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264ExitGv_retired : s2Step264ExitGvBefore.retireSet s2Step264ExitGvExtra.toFinset=s2Step264ExitGvAfter := by
  unfold Arena.retireSet s2Step264ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step264ExitGvBefore,s2Step264ExitFAfter,s2Step264ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step264ExitGv_checked : planRowResizeLog s2Step264ExitGvBefore s2Step264ExitGvRow 147 []=
    some (s2Step264ExitGvAfter,s2Step264ExitGvOut,shrinkRow 771 s2Step264ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step264ExitGvBefore s2Step264ExitGvRow 147 s2Step264ExitGv_distinct s2Step264ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step264ExitGvRow.payload.take 147) s2Step264ExitGvRow.sign=s2Step264ExitGvOut := by decide +kernel
  have hi : s2Step264ExitGvRow.payload.drop 147=s2Step264ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step264ExitGv_retired] at result
  exact result

private theorem s2Step264ExitBank_rows : planWindowRowsLog s2Step264ExitGBefore [(s2Step264ExitGRow,137),(s2Step264ExitFRow,139),(s2Step264ExitFvRow,148),(s2Step264ExitGvRow,147)] [[],[],[],[]]=
    some (s2Step264ExitGvAfter,[s2Step264ExitGOut,s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut],(shrinkRow 769 s2Step264ExitGExtra ++ (shrinkRow 768 s2Step264ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step264ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step264ExitGvAfter [] []=some (s2Step264ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step264ExitGvBefore s2Step264ExitGvAfter s2Step264ExitGvAfter
    s2Step264ExitGvRow s2Step264ExitGvOut 147 [] [] [] []
    (shrinkRow 771 s2Step264ExitGvExtra) ([]) s2Step264ExitGv_Incoming s2Step264ExitGv_checked h4 s2Step264ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step264ExitFvBefore s2Step264ExitFvAfter s2Step264ExitGvAfter
    s2Step264ExitFvRow s2Step264ExitFvOut 148 [] [(s2Step264ExitGvRow,147)] [[]] [s2Step264ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step264ExitGvExtra ++ [])) s2Step264ExitFv_Incoming s2Step264ExitFv_checked h3 s2Step264ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step264ExitFBefore s2Step264ExitFAfter s2Step264ExitGvAfter
    s2Step264ExitFRow s2Step264ExitFOut 139 [] [(s2Step264ExitFvRow,148),(s2Step264ExitGvRow,147)] [[],[]] [s2Step264ExitFvOut,s2Step264ExitGvOut]
    (shrinkRow 768 s2Step264ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step264ExitGvExtra ++ []))) s2Step264ExitF_Incoming s2Step264ExitF_checked h2 s2Step264ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step264ExitGBefore s2Step264ExitGAfter s2Step264ExitGvAfter
    s2Step264ExitGRow s2Step264ExitGOut 137 [] [(s2Step264ExitFRow,139),(s2Step264ExitFvRow,148),(s2Step264ExitGvRow,147)] [[],[],[]] [s2Step264ExitFOut,s2Step264ExitFvOut,s2Step264ExitGvOut]
    (shrinkRow 769 s2Step264ExitGExtra) ((shrinkRow 768 s2Step264ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step264ExitGvExtra ++ [])))) s2Step264ExitG_Incoming s2Step264ExitG_checked h1 s2Step264ExitG_Outgoing
  exact h0

private theorem s2Step264ExitBank_checked : compileHmrBankResizeLog .exit s2Step264ExitGBefore ⟨s2Step264ExitFRow,s2Step264ExitGRow,s2Step264ExitFvRow,s2Step264ExitGvRow⟩ ⟨139,137,148,147⟩ [[],[],[],[]]=
    some (s2Step264ExitGvAfter,⟨s2Step264ExitFOut,s2Step264ExitGOut,s2Step264ExitFvOut,s2Step264ExitGvOut⟩,(shrinkRow 769 s2Step264ExitGExtra ++ (shrinkRow 768 s2Step264ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step264ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step264ExitBank_rows]
  rfl

private theorem s2Step264Add0_apart : Disjoint s2Step264Add0Arena.live s2Step264Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step264Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264Add0_card : s2Step264Add0Arena.live.card=898 := by
  decide +kernel

private theorem s2Step264Add0_borrowed : s2Step264Add0Arena.checkBorrow (hmrHybridCount s2Step264Add0Arena s2Step264Add0B.length) s2Step264Add0Work=some s2Step264Add0During := by
  have len : s2Step264Add0Work.length=hmrHybridCount s2Step264Add0Arena s2Step264Add0B.length := by
    rw [hmrHybridCount,s2Step264Add0_card]
    decide +kernel
  have nd : s2Step264Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step264Add0Arena s2Step264Add0During s2Step264Add0Work.toFinset s2Step264Add0_bounded s2Step264Add0_apart rfl

private theorem s2Step264Add0_distinct : (782::836::817::(s2Step264Add0A++s2Step264Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264Add0_owned : (782::836::817::(s2Step264Add0A++s2Step264Add0B)).toFinset⊆s2Step264Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step264Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264Add0_checked : compileHmrHybridCinLog s2Step264Add0Arena 836 782 817 s2Step264Add0A s2Step264Add0B s2Step264Add0Work=some s2Step264Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step264Add0Arena s2Step264Add0During 836 782 817 s2Step264Add0A s2Step264Add0B s2Step264Add0Work
    (by decide +kernel) (by decide +kernel) s2Step264Add0_distinct
    (fun q hq => s2Step264Add0_owned (List.mem_toFinset.mpr hq)) s2Step264Add0_borrowed

private theorem s2Step264Add1_apart : Disjoint s2Step264Add1Arena.live s2Step264Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step264Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264Add1_card : s2Step264Add1Arena.live.card=898 := by
  decide +kernel

private theorem s2Step264Add1_borrowed : s2Step264Add1Arena.checkBorrow (hmrHybridCount s2Step264Add1Arena s2Step264Add1B.length) s2Step264Add1Work=some s2Step264Add1During := by
  have len : s2Step264Add1Work.length=hmrHybridCount s2Step264Add1Arena s2Step264Add1B.length := by
    rw [hmrHybridCount,s2Step264Add1_card]
    decide +kernel
  have nd : s2Step264Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step264Add1Arena s2Step264Add1During s2Step264Add1Work.toFinset s2Step264Add1_bounded s2Step264Add1_apart rfl

private theorem s2Step264Add1_distinct : (782::836::817::(s2Step264Add1A++s2Step264Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264Add1_owned : (782::836::817::(s2Step264Add1A++s2Step264Add1B)).toFinset⊆s2Step264Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step264Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264Add1_checked : compileHmrHybridCinLog s2Step264Add1Arena 836 782 817 s2Step264Add1A s2Step264Add1B s2Step264Add1Work=some s2Step264Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step264Add1Arena s2Step264Add1During 836 782 817 s2Step264Add1A s2Step264Add1B s2Step264Add1Work
    (by decide +kernel) (by decide +kernel) s2Step264Add1_distinct
    (fun q hq => s2Step264Add1_owned (List.mem_toFinset.mpr hq)) s2Step264Add1_borrowed

private theorem s2Step264F4_apart : Disjoint (s2Step264Add0A++s2Step264Add0B).toFinset (s2Step264Add1A++s2Step264Add1B).toFinset := by
  have nd : ((s2Step264Add0A++s2Step264Add0B)++(s2Step264Add1A++s2Step264Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step264F4_carry : s2Step264F4FlagArena.checkBorrow 1 [817]=some s2Step264Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step264F4FlagArena,s2Step264HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step264F4FlagArena,s2Step264HeadFvAfter,s2Step264Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step264F4_distinct : (891::836::782::817::((s2Step264Add0A++s2Step264Add1A)++(s2Step264Add0B++s2Step264Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264F4_flag : s2Step264HeadFvAfter.checkBorrow 1 [782]=some s2Step264F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step264HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step264F4_owned : (891::836::((s2Step264Add0A++s2Step264Add1A)++(s2Step264Add0B++s2Step264Add1B))).toFinset⊆s2Step264HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step264HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264F4_checked : compileHmrHybridF4Log s2Step264HeadFvAfter 891 836 s2Step264Add0A s2Step264Add0B s2Step264Add1A s2Step264Add1B [782] [817] s2Step264Add0Work s2Step264Add1Work=some s2Step264F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step264HeadFvAfter s2Step264F4FlagArena s2Step264Add0Arena s2Step264Add0During s2Step264Add1During 891 836
    s2Step264Add0A s2Step264Add0B s2Step264Add1A s2Step264Add1B [782] [817] s2Step264Add0Work s2Step264Add1Work
    (fun q hq => s2Step264F4_owned (List.mem_toFinset.mpr hq)) s2Step264F4_flag s2Step264F4_carry
    s2Step264F4_distinct s2Step264F4_apart s2Step264Add0_checked s2Step264Add1_checked

private theorem s2Step264Front_branch : s2Step264FrontSigmaArena.checkBorrow 1 [836]=some s2Step264HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step264FrontSigmaArena,s2Step264EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step264FrontSigmaArena,s2Step264EntryGvAfter,s2Step264HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step264Front_entry : HmrFrontEntryValid s2Step264EntryFBefore s2Step264FrontBank 139 147 ⟨139,137,148,147⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step264FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step264EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step264EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step264FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step264Front_sigma : s2Step264EntryGvAfter.checkBorrow 1 [891]=some s2Step264FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step264EntryGvAfter,arenaWires]
  · rfl

private def s2Step264HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264HeadFBefore : Arena := s2Step264HeadGAfter

private def s2Step264HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step264HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩

private def s2Step264HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794],769⟩

private def s2Step264HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879],771⟩

private theorem s2Step264HeadBank_incomingDistinct : ([s2Step264HeadGRow,s2Step264HeadFRow,s2Step264HeadGvRow,s2Step264HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264HeadF_Incoming : rowsOwned s2Step264HeadFBefore [s2Step264HeadFRow,s2Step264HeadGvRow,s2Step264HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264HeadGRow,s2Step264HeadFRow,s2Step264HeadGvRow,s2Step264HeadFvRow] 1 s2Step264HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264HeadBank_outgoingOwned : rowsOwned s2Step264HeadFvAfter [s2Step264HeadGOut,s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step264HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264HeadF_Outgoing : rowsOwned s2Step264HeadFvAfter [s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut] :=
  hmrRows_owned_drop s2Step264HeadFvAfter [s2Step264HeadGOut,s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut] 1 s2Step264HeadBank_outgoingOwned

private theorem s2Step264HeadF_distinct : (s2Step264HeadFRow.sign::s2Step264HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264HeadF_owned : (s2Step264HeadFRow.sign::s2Step264HeadFRow.payload).toFinset⊆s2Step264HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264HeadF_reserved : s2Step264HeadFBefore.reserve s2Step264HeadFFresh.toFinset=some s2Step264HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step264HeadFFresh,arenaWires]
  · norm_num [s2Step264HeadFBefore,s2Step264HeadGAfter,s2Step264HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step264HeadFAfter,s2Step264HeadFBefore,s2Step264HeadGAfter,s2Step264HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step264HeadF_checked : planRowResizeLog s2Step264HeadFBefore s2Step264HeadFRow 140 s2Step264HeadFFresh=
    some (s2Step264HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877],768⟩,growRow 768 s2Step264HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step264HeadFBefore s2Step264HeadFAfter s2Step264HeadFRow 140 s2Step264HeadFFresh
    s2Step264HeadF_distinct s2Step264HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264HeadF_reserved
  have rowEq : WindowRow.mk (s2Step264HeadFRow.payload++s2Step264HeadFFresh) s2Step264HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 877],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step264HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step264HeadFvBefore : Arena := s2Step264HeadGvAfter

private theorem s2Step264HeadFv_Incoming : rowsOwned s2Step264HeadFvBefore [s2Step264HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264HeadGRow,s2Step264HeadFRow,s2Step264HeadGvRow,s2Step264HeadFvRow] 3 s2Step264HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264HeadFv_Outgoing : rowsOwned s2Step264HeadFvAfter [s2Step264HeadFvOut] :=
  hmrRows_owned_drop s2Step264HeadFvAfter [s2Step264HeadGOut,s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut] 3 s2Step264HeadBank_outgoingOwned

private theorem s2Step264HeadFv_distinct : (s2Step264HeadFvRow.sign::s2Step264HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264HeadFv_owned : (s2Step264HeadFvRow.sign::s2Step264HeadFvRow.payload).toFinset⊆s2Step264HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264HeadFv_reserved : s2Step264HeadFvBefore.reserve s2Step264HeadFvFresh.toFinset=some s2Step264HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step264HeadFvFresh,arenaWires]
  · norm_num [s2Step264HeadFvBefore,s2Step264HeadGvAfter,s2Step264HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step264HeadFvAfter,s2Step264HeadFvBefore,s2Step264HeadGvAfter,s2Step264HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step264HeadFv_checked : planRowResizeLog s2Step264HeadFvBefore s2Step264HeadFvRow 148 s2Step264HeadFvFresh=
    some (s2Step264HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩,growRow 770 s2Step264HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step264HeadFvBefore s2Step264HeadFvAfter s2Step264HeadFvRow 148 s2Step264HeadFvFresh
    s2Step264HeadFv_distinct s2Step264HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step264HeadFvRow.payload++s2Step264HeadFvFresh) s2Step264HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step264HeadG_Incoming : rowsOwned s2Step264HeadGBefore [s2Step264HeadGRow,s2Step264HeadFRow,s2Step264HeadGvRow,s2Step264HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264HeadGRow,s2Step264HeadFRow,s2Step264HeadGvRow,s2Step264HeadFvRow] 0 s2Step264HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264HeadG_Outgoing : rowsOwned s2Step264HeadFvAfter [s2Step264HeadGOut,s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut] :=
  hmrRows_owned_drop s2Step264HeadFvAfter [s2Step264HeadGOut,s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut] 0 s2Step264HeadBank_outgoingOwned

private theorem s2Step264HeadG_distinct : (s2Step264HeadGRow.sign::s2Step264HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264HeadG_owned : (s2Step264HeadGRow.sign::s2Step264HeadGRow.payload).toFinset⊆s2Step264HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264HeadG_reserved : s2Step264HeadGBefore.reserve s2Step264HeadGFresh.toFinset=some s2Step264HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step264HeadGFresh,arenaWires]
  · norm_num [s2Step264HeadGBefore,s2Step264HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step264HeadGAfter,s2Step264HeadGBefore,s2Step264HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step264HeadG_checked : planRowResizeLog s2Step264HeadGBefore s2Step264HeadGRow 140 s2Step264HeadGFresh=
    some (s2Step264HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794, 788],769⟩,growRow 769 s2Step264HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step264HeadGBefore s2Step264HeadGAfter s2Step264HeadGRow 140 s2Step264HeadGFresh
    s2Step264HeadG_distinct s2Step264HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264HeadG_reserved
  have rowEq : WindowRow.mk (s2Step264HeadGRow.payload++s2Step264HeadGFresh) s2Step264HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 794, 788],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step264HeadGvBefore : Arena := s2Step264HeadFAfter

private theorem s2Step264HeadGv_Incoming : rowsOwned s2Step264HeadGvBefore [s2Step264HeadGvRow,s2Step264HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step264HeadGRow,s2Step264HeadFRow,s2Step264HeadGvRow,s2Step264HeadFvRow] 2 s2Step264HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step264HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step264HeadGv_Outgoing : rowsOwned s2Step264HeadFvAfter [s2Step264HeadGvOut,s2Step264HeadFvOut] :=
  hmrRows_owned_drop s2Step264HeadFvAfter [s2Step264HeadGOut,s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut] 2 s2Step264HeadBank_outgoingOwned

private theorem s2Step264HeadGv_distinct : (s2Step264HeadGvRow.sign::s2Step264HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step264HeadGv_owned : (s2Step264HeadGvRow.sign::s2Step264HeadGvRow.payload).toFinset⊆s2Step264HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step264HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step264HeadGv_reserved : s2Step264HeadGvBefore.reserve s2Step264HeadGvFresh.toFinset=some s2Step264HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step264HeadGvFresh,arenaWires]
  · norm_num [s2Step264HeadGvBefore,s2Step264HeadFAfter,s2Step264HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step264HeadGvAfter,s2Step264HeadGvBefore,s2Step264HeadFAfter,s2Step264HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step264HeadGv_checked : planRowResizeLog s2Step264HeadGvBefore s2Step264HeadGvRow 148 s2Step264HeadGvFresh=
    some (s2Step264HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩,growRow 771 s2Step264HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step264HeadGvBefore s2Step264HeadGvAfter s2Step264HeadGvRow 148 s2Step264HeadGvFresh
    s2Step264HeadGv_distinct s2Step264HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step264HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step264HeadGvRow.payload++s2Step264HeadGvFresh) s2Step264HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step264HeadBank_rows : planWindowRowsLog s2Step264HeadGBefore [(s2Step264HeadGRow,140),(s2Step264HeadFRow,140),(s2Step264HeadGvRow,148),(s2Step264HeadFvRow,148)] [s2Step264HeadGFresh,s2Step264HeadFFresh,s2Step264HeadGvFresh,s2Step264HeadFvFresh]=
    some (s2Step264HeadFvAfter,[s2Step264HeadGOut,s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut],(growRow 769 s2Step264HeadGFresh ++ (growRow 768 s2Step264HeadFFresh ++ (growRow 771 s2Step264HeadGvFresh ++ (growRow 770 s2Step264HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step264HeadFvAfter [] []=some (s2Step264HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step264HeadFvBefore s2Step264HeadFvAfter s2Step264HeadFvAfter
    s2Step264HeadFvRow s2Step264HeadFvOut 148 s2Step264HeadFvFresh [] [] []
    (growRow 770 s2Step264HeadFvFresh) ([]) s2Step264HeadFv_Incoming s2Step264HeadFv_checked h4 s2Step264HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step264HeadGvBefore s2Step264HeadGvAfter s2Step264HeadFvAfter
    s2Step264HeadGvRow s2Step264HeadGvOut 148 s2Step264HeadGvFresh [(s2Step264HeadFvRow,148)] [s2Step264HeadFvFresh] [s2Step264HeadFvOut]
    (growRow 771 s2Step264HeadGvFresh) ((growRow 770 s2Step264HeadFvFresh ++ [])) s2Step264HeadGv_Incoming s2Step264HeadGv_checked h3 s2Step264HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step264HeadFBefore s2Step264HeadFAfter s2Step264HeadFvAfter
    s2Step264HeadFRow s2Step264HeadFOut 140 s2Step264HeadFFresh [(s2Step264HeadGvRow,148),(s2Step264HeadFvRow,148)] [s2Step264HeadGvFresh,s2Step264HeadFvFresh] [s2Step264HeadGvOut,s2Step264HeadFvOut]
    (growRow 768 s2Step264HeadFFresh) ((growRow 771 s2Step264HeadGvFresh ++ (growRow 770 s2Step264HeadFvFresh ++ []))) s2Step264HeadF_Incoming s2Step264HeadF_checked h2 s2Step264HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step264HeadGBefore s2Step264HeadGAfter s2Step264HeadFvAfter
    s2Step264HeadGRow s2Step264HeadGOut 140 s2Step264HeadGFresh [(s2Step264HeadFRow,140),(s2Step264HeadGvRow,148),(s2Step264HeadFvRow,148)] [s2Step264HeadFFresh,s2Step264HeadGvFresh,s2Step264HeadFvFresh] [s2Step264HeadFOut,s2Step264HeadGvOut,s2Step264HeadFvOut]
    (growRow 769 s2Step264HeadGFresh) ((growRow 768 s2Step264HeadFFresh ++ (growRow 771 s2Step264HeadGvFresh ++ (growRow 770 s2Step264HeadFvFresh ++ [])))) s2Step264HeadG_Incoming s2Step264HeadG_checked h1 s2Step264HeadG_Outgoing
  exact h0

private theorem s2Step264HeadBank_checked : compileHmrBankResizeLog .headroom s2Step264HeadGBefore ⟨s2Step264HeadFRow,s2Step264HeadGRow,s2Step264HeadFvRow,s2Step264HeadGvRow⟩ ⟨140,140,148,148⟩ [s2Step264HeadGFresh,s2Step264HeadFFresh,s2Step264HeadGvFresh,s2Step264HeadFvFresh]=
    some (s2Step264HeadFvAfter,⟨s2Step264HeadFOut,s2Step264HeadGOut,s2Step264HeadFvOut,s2Step264HeadGvOut⟩,(growRow 769 s2Step264HeadGFresh ++ (growRow 768 s2Step264HeadFFresh ++ (growRow 771 s2Step264HeadGvFresh ++ (growRow 770 s2Step264HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step264HeadBank_rows]
  rfl

private theorem s2Step264Front_checked : compileHmrSourceFrontLog s2Step264EntryFBefore s2Step264FrontBank 139 147 ⟨139,137,148,147⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step264FrontLog=some s2Step264FrontPlan := by
  have pairEq : s2Step264FrontPair=⟨s2Step264HeadFRow,s2Step264HeadGRow,s2Step264HeadFvRow,s2Step264HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step264FrontHead=⟨s2Step264ExitFRow,s2Step264ExitGRow,s2Step264ExitFvRow,s2Step264ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step264Add0A=s2Step264FrontHead.f.wires := by decide +kernel
  have gEq : s2Step264Add0B=s2Step264FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step264Add1A=s2Step264FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step264Add1B=s2Step264FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step264EntryFBefore s2Step264FrontBank 139 147 ⟨139,137,148,147⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step264FrontLog s2Step264FrontPlan
  · exact s2Step264Front_entry
  · exact s2Step264EntryBank_checked
  · exact s2Step264Front_sigma
  · rfl
  · exact s2Step264Front_branch
  · rfl
  · simpa only [s2Step264FrontPlan,pairEq] using s2Step264HeadBank_checked
  · simpa only [s2Step264FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step264F4_checked
  · exact s2Step264Counter_checked
  · rfl
  · simpa only [s2Step264FrontPlan,headEq] using s2Step264ExitBank_checked

private theorem s2Step264Complete_explicit_checked : compileHmrEarlyStepLog s2Step264EntryFBefore s2Step264FrontBank 139 147 ⟨139,137,148,147⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step264CompleteLog=some s2Step264CompletePlan := by
  let Q := s2Step264EarlyControlPlan
  have hq := s2Step264EarlyControl_plan_checked
  have fv1 : s2Step264CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step264CompleteOut.fv.payload[2]?.getD s2Step264CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step264CompleteOut.fv.payload[3]?.getD s2Step264CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step264CompleteOut.fv.payload[4]?.getD s2Step264CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step264EntryFBefore s2Step264EarlyControlArena s2Step264FrontBank 139 147 ⟨139,137,148,147⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step264CompleteLog s2Step264FrontPlan Q
    s2Step264Front_checked s2Step264Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step264Complete_owned s2Step264Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step264EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 891 s2Step264CompleteOut.fv.second (s2Step264CompleteOut.fv.payload[2]?.getD s2Step264CompleteOut.fv.sign) (s2Step264CompleteOut.fv.payload[3]?.getD s2Step264CompleteOut.fv.sign) (s2Step264CompleteOut.fv.payload[4]?.getD s2Step264CompleteOut.fv.sign) 836 52 s2Step264EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep264Arena : Arena := s2Step264EntryFBefore
def s2PrivateStep264Bank : WindowBank := s2Step264FrontBank
def s2PrivateStep264Spec : HmrSourceWalkStepLog := ⟨139,147,⟨139,137,148,147⟩,52,.early s2Step264CompleteLog⟩
def s2PrivateStep264Plan : HmrSourceStepPlan := .early s2Step264CompletePlan
theorem s2PrivateStep264_source : s2PrivateStep264Spec=s2ObservedLogs256[8] := rfl
theorem s2PrivateStep264_checked : compileHmrSourceStepLog s2PrivateStep264Arena s2PrivateStep264Bank
    s2PrivateStep264Spec.fgWidth s2PrivateStep264Spec.vWidth s2PrivateStep264Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 264 s2PrivateStep264Spec.need none s2PrivateStep264Spec.log=some s2PrivateStep264Plan := by
  change compileHmrSourceStepLog s2Step264EntryFBefore s2Step264FrontBank 139 147 ⟨139,137,148,147⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 264 52 none (.early s2Step264CompleteLog)=some (.early s2Step264CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 264<498)]
  rw [s2Step264Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
