import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep261
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

private def s2Step263CompleteMoves : List (Wire × Wire) := []

private def s2Step263EarlyControlLog : HmrEarlyControlLog := ⟨[891, 836, 788, 877, 829],[885],[782],[817, 830, 800, 894, 896, 901],[]⟩

private def s2Step263FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [788], [], [814]],[[877], [836], [891], [867]],[[], [], [], []]⟩,[879],[794],[829],[885],[782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[829, 885, 782, 817]⟩

private def s2Step263CompleteLog : HmrEarlyStepLog := ⟨s2Step263FrontLog,s2Step263CompleteMoves,s2Step263EarlyControlLog⟩

private def s2Step263ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step263ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩

private def s2Step263ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137],769⟩

private def s2Step263ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814],771⟩

private def s2Step263FrontOut : WindowBank := ⟨s2Step263ExitFOut,s2Step263ExitGOut,s2Step263ExitFvOut,s2Step263ExitGvOut⟩

private def s2Step263CompleteOut : WindowBank := s2Step263FrontOut.repacked s2Step263CompleteMoves

private def s2Step263EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step263EarlyControlPositiveArena,[885],s2Step263EarlyControlEqualityArena,[782],⟨⟨879,false⟩,[⟨⟨885,false⟩,782⟩]⟩⟩

private def s2Step263EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,891⟩,⟨⟨774,false⟩,836⟩,⟨⟨775,false⟩,788⟩,⟨⟨776,false⟩,877⟩,⟨⟨777,false⟩,829⟩]⟩

private def s2Step263EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step263EarlyControlZeroArena,s2Step263EarlyControlZeroPlan,s2Step263EarlyControlClassPlan,s2Step263EarlyControlFlagArena,s2Step263EarlyControlFittedArena,s2Step263EarlyControlHistoryArena,s2Step263EarlyControlSigmaArena,s2Step263EarlyControlOutputArena,s2Step263EarlyControlLog⟩

private def s2Step263CounterWork : List Wire := [829, 885, 782, 817]

private theorem s2Step263Counter_bounded : s2Step263CounterWork.toFinset⊆arenaWires := by norm_num [s2Step263CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step263HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263CounterDuring : Arena := ⟨s2Step263HeadFvAfter.live∪s2Step263CounterWork.toFinset,Finset.union_subset s2Step263HeadFvAfter.bounded s2Step263Counter_bounded⟩

private def s2Step263EntryFFresh : List Wire := []

private def s2Step263EntryFvFresh : List Wire := []

private def s2Step263EntryGFresh : List Wire := [788]

private def s2Step263EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EntryGvFresh : List Wire := [814]

private def s2Step263ExitFExtra : List Wire := [836]

private def s2Step263ExitGExtra : List Wire := [788, 877]

private def s2Step263ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263ExitGvExtra : List Wire := [891]

private def s2Step263Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263Add0Work : List Wire := [782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step263Add0_bounded : s2Step263Add0Work.toFinset⊆arenaWires := by
  have h : s2Step263Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step263Add0During : Arena := ⟨s2Step263Add0Arena.live∪s2Step263Add0Work.toFinset,Finset.union_subset s2Step263Add0Arena.bounded s2Step263Add0_bounded⟩

private def s2Step263Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263Add1Work : List Wire := [782, 817, 830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step263Add1_bounded : s2Step263Add1Work.toFinset⊆arenaWires := by
  have h : s2Step263Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step263Add1During : Arena := ⟨s2Step263Add1Arena.live∪s2Step263Add1Work.toFinset,Finset.union_subset s2Step263Add1Arena.bounded s2Step263Add1_bounded⟩

private def s2Step263F4FlagArena : Arena := ⟨s2Step263HeadFvAfter.live∪{829},Finset.union_subset s2Step263HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step263F4Plan : HmrHybridF4Plan := ⟨s2Step263F4FlagArena,[829],s2Step263Add0Arena,[885],s2Step263Add0During,s2Step263Add0Work,s2Step263Add1During,s2Step263Add1Work⟩

private def s2Step263HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 836],768⟩

private def s2Step263HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩

private def s2Step263HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788, 877],769⟩

private def s2Step263HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 891],771⟩

private def s2Step263FrontHead : WindowBank := ⟨s2Step263HeadFOut,s2Step263HeadGOut,s2Step263HeadFvOut,s2Step263HeadGvOut⟩

private def s2Step263EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step263EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step263EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788],769⟩

private def s2Step263EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814],771⟩

private def s2Step263FrontPair : WindowBank := ⟨s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut⟩

private def s2Step263FrontSigmaArena : Arena := ⟨s2Step263EntryGvAfter.live∪{879},Finset.union_subset s2Step263EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step263HeadFFresh : List Wire := [836]

private def s2Step263HeadFvFresh : List Wire := [867]

private def s2Step263HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263HeadGFresh : List Wire := [877]

private def s2Step263HeadGvFresh : List Wire := [891]

private def s2Step263FrontPlan : HmrSourceFront := ⟨s2Step263EntryGvAfter,s2Step263FrontPair,(growRow 768 s2Step263EntryFFresh ++ (growRow 769 s2Step263EntryGFresh ++ (growRow 770 s2Step263EntryFvFresh ++ (growRow 771 s2Step263EntryGvFresh ++ [])))),s2Step263FrontSigmaArena,[879],s2Step263HeadGBefore,[794],
  s2Step263HeadFvAfter,s2Step263FrontHead,(growRow 769 s2Step263HeadGFresh ++ (growRow 768 s2Step263HeadFFresh ++ (growRow 771 s2Step263HeadGvFresh ++ (growRow 770 s2Step263HeadFvFresh ++ [])))),s2Step263F4Plan,s2Step263CounterDuring,s2Step263CounterWork,s2Step263ExitGvAfter,s2Step263FrontOut,(shrinkRow 769 s2Step263ExitGExtra ++ (shrinkRow 768 s2Step263ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step263ExitGvExtra ++ []))))⟩

private def s2Step263CompletePlan : HmrEarlyStepPlan := ⟨s2Step263FrontPlan,s2Step263EarlyControlArena,s2Step263EarlyControlPlan,s2Step263CompleteMoves⟩

private theorem s2Step263Complete_apart : List.Disjoint (s2Step263CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [879, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step263CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[879, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step263Complete_owned : (s2Step263CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step263EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263Complete_repack : s2Step263ExitGvAfter.checkRepack s2Step263CompleteMoves=some s2Step263EarlyControlArena := by rfl

private theorem s2Step263EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s2Step263EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_branch : compileHmrBranchRetirement s2Step263EarlyControlSigmaArena 794=some s2Step263EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step263EarlyControl_branchOwned
  · ext q
    simp [s2Step263EarlyControlOutputArena,s2Step263EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step263EarlyControl_classEqualityBorrow : s2Step263EarlyControlPositiveArena.checkBorrow (([879, 885] : List Wire).length-1) s2Step263EarlyControlLog.classWork=some s2Step263EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step263EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step263EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step263EarlyControlEqualityArena,s2Step263EarlyControlPositiveArena,s2Step263EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step263EarlyControl_classEqualityOwned : ([879, 885] : List Wire).toFinset⊆s2Step263EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_classEquality : compileHmrEqualityLog s2Step263EarlyControlPositiveArena [879, 885] 0 s2Step263EarlyControlLog.classWork=some (s2Step263EarlyControlEqualityArena,s2Step263EarlyControlLog.classWork,s2Step263EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step263EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step263EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step263EarlyControl_classOwned : ([777, 829, 879] : List Wire).toFinset⊆s2Step263EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_positiveBorrow : s2Step263EarlyControlZeroArena.checkBorrow (1) s2Step263EarlyControlLog.positiveWork=some s2Step263EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step263EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step263EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step263EarlyControlPositiveArena,s2Step263EarlyControlZeroArena,s2Step263EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step263EarlyControl_class : compileHmrSourceClassLog s2Step263EarlyControlZeroArena false 777 s2Step263EarlyControlZeroPlan.top 0 879 s2Step263EarlyControlLog.positiveWork s2Step263EarlyControlLog.classWork=some s2Step263EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step263EarlyControlClassPlan s2Step263EarlyControlZeroArena false 777 s2Step263EarlyControlZeroPlan.top 0 879
  constructor
  · decide +kernel
  · exact s2Step263EarlyControl_classOwned
  · exact s2Step263EarlyControl_positiveBorrow
  · exact s2Step263EarlyControl_classEquality

private theorem s2Step263EarlyControl_entryRecordOwned : ([794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step263EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_entrySigmaOwned : ([879, 254] : List Wire).toFinset⊆s2Step263EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_fitBorrow : s2Step263EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step263EarlyControlLog.recordFresh=some s2Step263EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step263EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step263EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step263EarlyControlFittedArena,s2Step263EarlyControlFlagArena,s2Step263EarlyControlLog,arenaWires]

private theorem s2Step263EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step263EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_fit : compileHmrRecordGrowLog s2Step263EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step263EarlyControlLog.recordFresh=some s2Step263EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step263EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step263EarlyControl_fitBorrow

private theorem s2Step263EarlyControl_flagsBorrow : s2Step263EarlyControlEqualityArena.checkBorrow (6) s2Step263EarlyControlLog.flagWork=some s2Step263EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step263EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step263EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step263EarlyControlFlagArena,s2Step263EarlyControlEqualityArena,s2Step263EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step263EarlyControl_flagsOwned : ([782, 253, 252, 251] : List Wire).toFinset⊆s2Step263EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_flags : compileHmrFlagsLog s2Step263EarlyControlClassPlan.equalityArena s2Step263EarlyControlClassPlan.equality.top 253 252 251 s2Step263EarlyControlLog.flagWork=some s2Step263EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step263EarlyControl_flagsOwned⟩
  · exact s2Step263EarlyControl_flagsBorrow

private theorem s2Step263EarlyControl_historyBorrow : s2Step263EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step263EarlyControlLog.recordFresh=some s2Step263EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step263EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step263EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step263EarlyControlHistoryArena,s2Step263EarlyControlArena,s2Step263EarlyControlLog,arenaWires]

private theorem s2Step263EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step263EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_history : compileHmrRecordGrowLog s2Step263EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step263EarlyControlLog.recordFresh=some s2Step263EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step263EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step263EarlyControl_historyBorrow

private theorem s2Step263EarlyControl_sigmaOwned : ([254, 879] : List Wire).toFinset⊆s2Step263EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_sigmaReleaseOwned : ([879] : List Wire).toFinset⊆s2Step263EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_sigmaRelease : s2Step263EarlyControlHistoryArena.release {879} (fun _ => false)=some s2Step263EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step263EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step263EarlyControlSigmaArena,s2Step263EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step263EarlyControl_sigma : compileHmrSigmaDropLog s2Step263EarlyControlHistoryArena false 0 0 254 879 []=some s2Step263EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step263EarlyControl_sigmaOwned⟩
  · exact s2Step263EarlyControl_sigmaRelease

private theorem s2Step263EarlyControl_zeroBorrow : s2Step263EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step263EarlyControlLog.zeroWork=some s2Step263EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step263EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step263EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step263EarlyControlZeroArena,s2Step263EarlyControlArena,s2Step263EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step263EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step263EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step263EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EarlyControl_zero : compileHmrEqualityLog s2Step263EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step263EarlyControlLog.zeroWork=some (s2Step263EarlyControlZeroArena,s2Step263EarlyControlLog.zeroWork,s2Step263EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step263EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step263EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step263EarlyControl_logged : s2Step263EarlyControlPlan.Logged s2Step263EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 879 254 253 252 251 794 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step263EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step263EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step263EarlyControl_zero
  · exact s2Step263EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step263EarlyControl_flags
  · exact s2Step263EarlyControl_fit
  · exact s2Step263EarlyControl_history
  · exact s2Step263EarlyControl_sigma
  · exact s2Step263EarlyControl_branch

private theorem s2Step263EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step263EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 879 254 253 252 251 794 52 s2Step263EarlyControlLog=some s2Step263EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step263EarlyControlPlan s2Step263EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 879 254 253 252 251 794 52 s2Step263EarlyControl_logged

private def s2Step263EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step263EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step263EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137],769⟩

private def s2Step263EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step263FrontBank : WindowBank := ⟨s2Step263EntryFRow,s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow⟩

private def s2Step263Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 836, 768]

private def s2Step263Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788, 877, 769]

private def s2Step263Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 770]

private def s2Step263Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 891, 771]

private theorem s2Step263Counter_apart : Disjoint s2Step263HeadFvAfter.live s2Step263CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step263HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263Counter_borrowed : s2Step263HeadFvAfter.checkBorrow 4 s2Step263CounterWork=some s2Step263CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step263HeadFvAfter s2Step263CounterDuring s2Step263CounterWork.toFinset s2Step263Counter_bounded s2Step263Counter_apart rfl

private theorem s2Step263Counter_owned : (879::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step263HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step263HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263Counter_checked : compileHmrCounterStepLog s2Step263HeadFvAfter true 879 [772, 773, 774, 775, 776, 777] s2Step263CounterWork=some s2Step263CounterDuring := by
  have owned : ∀q∈879::[772, 773, 774, 775, 776, 777],q∈s2Step263HeadFvAfter.live := fun q hq => s2Step263Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step263Counter_borrowed

private def s2Step263EntryFAfter : Arena := s2Step263EntryFBefore

private theorem s2Step263EntryBank_incomingDistinct : ([s2Step263EntryFRow,s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263EntryF_Incoming : rowsOwned s2Step263EntryFBefore [s2Step263EntryFRow,s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263EntryFRow,s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow] 0 s2Step263EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263EntryBank_outgoingOwned : rowsOwned s2Step263EntryGvAfter [s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step263EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263EntryF_Outgoing : rowsOwned s2Step263EntryGvAfter [s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut] :=
  hmrRows_owned_drop s2Step263EntryGvAfter [s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut] 0 s2Step263EntryBank_outgoingOwned

private theorem s2Step263EntryF_distinct : (s2Step263EntryFRow.sign::s2Step263EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263EntryF_owned : (s2Step263EntryFRow.sign::s2Step263EntryFRow.payload).toFinset⊆s2Step263EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EntryF_reserved : s2Step263EntryFBefore.reserve s2Step263EntryFFresh.toFinset=some s2Step263EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step263EntryFFresh,arenaWires]
  · norm_num [s2Step263EntryFBefore,s2Step263EntryFFresh,arenaWires]
  · simp only [s2Step263EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step263EntryF_checked : planRowResizeLog s2Step263EntryFBefore s2Step263EntryFRow 139 s2Step263EntryFFresh=
    some (s2Step263EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩,growRow 768 s2Step263EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step263EntryFBefore s2Step263EntryFAfter s2Step263EntryFRow 139 s2Step263EntryFFresh
    s2Step263EntryF_distinct s2Step263EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263EntryF_reserved
  have rowEq : WindowRow.mk (s2Step263EntryFRow.payload++s2Step263EntryFFresh) s2Step263EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step263EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263EntryFvAfter : Arena := s2Step263EntryGAfter

private def s2Step263EntryFvBefore : Arena := s2Step263EntryGAfter

private theorem s2Step263EntryFv_Incoming : rowsOwned s2Step263EntryFvBefore [s2Step263EntryFvRow,s2Step263EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263EntryFRow,s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow] 2 s2Step263EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263EntryFv_Outgoing : rowsOwned s2Step263EntryGvAfter [s2Step263EntryFvOut,s2Step263EntryGvOut] :=
  hmrRows_owned_drop s2Step263EntryGvAfter [s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut] 2 s2Step263EntryBank_outgoingOwned

private theorem s2Step263EntryFv_distinct : (s2Step263EntryFvRow.sign::s2Step263EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263EntryFv_owned : (s2Step263EntryFvRow.sign::s2Step263EntryFvRow.payload).toFinset⊆s2Step263EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EntryFv_reserved : s2Step263EntryFvBefore.reserve s2Step263EntryFvFresh.toFinset=some s2Step263EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step263EntryFvFresh,arenaWires]
  · norm_num [s2Step263EntryFvBefore,s2Step263EntryGAfter,s2Step263EntryFvFresh,arenaWires]
  · simp only [s2Step263EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step263EntryFv_checked : planRowResizeLog s2Step263EntryFvBefore s2Step263EntryFvRow 146 s2Step263EntryFvFresh=
    some (s2Step263EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩,growRow 770 s2Step263EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step263EntryFvBefore s2Step263EntryFvAfter s2Step263EntryFvRow 146 s2Step263EntryFvFresh
    s2Step263EntryFv_distinct s2Step263EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step263EntryFvRow.payload++s2Step263EntryFvFresh) s2Step263EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step263EntryGBefore : Arena := s2Step263EntryFBefore

private theorem s2Step263EntryG_Incoming : rowsOwned s2Step263EntryGBefore [s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263EntryFRow,s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow] 1 s2Step263EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263EntryG_Outgoing : rowsOwned s2Step263EntryGvAfter [s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut] :=
  hmrRows_owned_drop s2Step263EntryGvAfter [s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut] 1 s2Step263EntryBank_outgoingOwned

private theorem s2Step263EntryG_distinct : (s2Step263EntryGRow.sign::s2Step263EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263EntryG_owned : (s2Step263EntryGRow.sign::s2Step263EntryGRow.payload).toFinset⊆s2Step263EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EntryG_reserved : s2Step263EntryGBefore.reserve s2Step263EntryGFresh.toFinset=some s2Step263EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step263EntryGFresh,arenaWires]
  · norm_num [s2Step263EntryGBefore,s2Step263EntryFBefore,s2Step263EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step263EntryGAfter,s2Step263EntryGBefore,s2Step263EntryFBefore,s2Step263EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step263EntryG_checked : planRowResizeLog s2Step263EntryGBefore s2Step263EntryGRow 139 s2Step263EntryGFresh=
    some (s2Step263EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788],769⟩,growRow 769 s2Step263EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step263EntryGBefore s2Step263EntryGAfter s2Step263EntryGRow 139 s2Step263EntryGFresh
    s2Step263EntryG_distinct s2Step263EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263EntryG_reserved
  have rowEq : WindowRow.mk (s2Step263EntryGRow.payload++s2Step263EntryGFresh) s2Step263EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step263EntryGvBefore : Arena := s2Step263EntryGAfter

private theorem s2Step263EntryGv_Incoming : rowsOwned s2Step263EntryGvBefore [s2Step263EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263EntryFRow,s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow] 3 s2Step263EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263EntryGv_Outgoing : rowsOwned s2Step263EntryGvAfter [s2Step263EntryGvOut] :=
  hmrRows_owned_drop s2Step263EntryGvAfter [s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut] 3 s2Step263EntryBank_outgoingOwned

private theorem s2Step263EntryGv_distinct : (s2Step263EntryGvRow.sign::s2Step263EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263EntryGv_owned : (s2Step263EntryGvRow.sign::s2Step263EntryGvRow.payload).toFinset⊆s2Step263EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263EntryGv_reserved : s2Step263EntryGvBefore.reserve s2Step263EntryGvFresh.toFinset=some s2Step263EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step263EntryGvFresh,arenaWires]
  · norm_num [s2Step263EntryGvBefore,s2Step263EntryGAfter,s2Step263EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step263EntryGvAfter,s2Step263EntryGvBefore,s2Step263EntryGAfter,s2Step263EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step263EntryGv_checked : planRowResizeLog s2Step263EntryGvBefore s2Step263EntryGvRow 146 s2Step263EntryGvFresh=
    some (s2Step263EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814],771⟩,growRow 771 s2Step263EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step263EntryGvBefore s2Step263EntryGvAfter s2Step263EntryGvRow 146 s2Step263EntryGvFresh
    s2Step263EntryGv_distinct s2Step263EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step263EntryGvRow.payload++s2Step263EntryGvFresh) s2Step263EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step263EntryBank_rows : planWindowRowsLog s2Step263EntryFBefore [(s2Step263EntryFRow,139),(s2Step263EntryGRow,139),(s2Step263EntryFvRow,146),(s2Step263EntryGvRow,146)] [s2Step263EntryFFresh,s2Step263EntryGFresh,s2Step263EntryFvFresh,s2Step263EntryGvFresh]=
    some (s2Step263EntryGvAfter,[s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut],(growRow 768 s2Step263EntryFFresh ++ (growRow 769 s2Step263EntryGFresh ++ (growRow 770 s2Step263EntryFvFresh ++ (growRow 771 s2Step263EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step263EntryGvAfter [] []=some (s2Step263EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step263EntryGvBefore s2Step263EntryGvAfter s2Step263EntryGvAfter
    s2Step263EntryGvRow s2Step263EntryGvOut 146 s2Step263EntryGvFresh [] [] []
    (growRow 771 s2Step263EntryGvFresh) ([]) s2Step263EntryGv_Incoming s2Step263EntryGv_checked h4 s2Step263EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step263EntryFvBefore s2Step263EntryFvAfter s2Step263EntryGvAfter
    s2Step263EntryFvRow s2Step263EntryFvOut 146 s2Step263EntryFvFresh [(s2Step263EntryGvRow,146)] [s2Step263EntryGvFresh] [s2Step263EntryGvOut]
    (growRow 770 s2Step263EntryFvFresh) ((growRow 771 s2Step263EntryGvFresh ++ [])) s2Step263EntryFv_Incoming s2Step263EntryFv_checked h3 s2Step263EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step263EntryGBefore s2Step263EntryGAfter s2Step263EntryGvAfter
    s2Step263EntryGRow s2Step263EntryGOut 139 s2Step263EntryGFresh [(s2Step263EntryFvRow,146),(s2Step263EntryGvRow,146)] [s2Step263EntryFvFresh,s2Step263EntryGvFresh] [s2Step263EntryFvOut,s2Step263EntryGvOut]
    (growRow 769 s2Step263EntryGFresh) ((growRow 770 s2Step263EntryFvFresh ++ (growRow 771 s2Step263EntryGvFresh ++ []))) s2Step263EntryG_Incoming s2Step263EntryG_checked h2 s2Step263EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step263EntryFBefore s2Step263EntryFAfter s2Step263EntryGvAfter
    s2Step263EntryFRow s2Step263EntryFOut 139 s2Step263EntryFFresh [(s2Step263EntryGRow,139),(s2Step263EntryFvRow,146),(s2Step263EntryGvRow,146)] [s2Step263EntryGFresh,s2Step263EntryFvFresh,s2Step263EntryGvFresh] [s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut]
    (growRow 768 s2Step263EntryFFresh) ((growRow 769 s2Step263EntryGFresh ++ (growRow 770 s2Step263EntryFvFresh ++ (growRow 771 s2Step263EntryGvFresh ++ [])))) s2Step263EntryF_Incoming s2Step263EntryF_checked h1 s2Step263EntryF_Outgoing
  exact h0

private theorem s2Step263EntryBank_checked : compileHmrBankResizeLog .entry s2Step263EntryFBefore ⟨s2Step263EntryFRow,s2Step263EntryGRow,s2Step263EntryFvRow,s2Step263EntryGvRow⟩ ⟨139,139,146,146⟩ [s2Step263EntryFFresh,s2Step263EntryGFresh,s2Step263EntryFvFresh,s2Step263EntryGvFresh]=
    some (s2Step263EntryGvAfter,⟨s2Step263EntryFOut,s2Step263EntryGOut,s2Step263EntryFvOut,s2Step263EntryGvOut⟩,(growRow 768 s2Step263EntryFFresh ++ (growRow 769 s2Step263EntryGFresh ++ (growRow 770 s2Step263EntryFvFresh ++ (growRow 771 s2Step263EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step263EntryBank_rows]
  rfl

private def s2Step263ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263ExitFBefore : Arena := s2Step263ExitGAfter

private def s2Step263ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 836],768⟩

private def s2Step263ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩

private def s2Step263ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788, 877],769⟩

private def s2Step263ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 891],771⟩

private theorem s2Step263ExitBank_incomingDistinct : ([s2Step263ExitGRow,s2Step263ExitFRow,s2Step263ExitFvRow,s2Step263ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263ExitF_Incoming : rowsOwned s2Step263ExitFBefore [s2Step263ExitFRow,s2Step263ExitFvRow,s2Step263ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263ExitGRow,s2Step263ExitFRow,s2Step263ExitFvRow,s2Step263ExitGvRow] 1 s2Step263ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263ExitBank_outgoingOwned : rowsOwned s2Step263ExitGvAfter [s2Step263ExitGOut,s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step263ExitGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263ExitF_Outgoing : rowsOwned s2Step263ExitGvAfter [s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut] :=
  hmrRows_owned_drop s2Step263ExitGvAfter [s2Step263ExitGOut,s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut] 1 s2Step263ExitBank_outgoingOwned

private theorem s2Step263ExitF_distinct : (s2Step263ExitFRow.sign::s2Step263ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263ExitF_owned : (s2Step263ExitFRow.sign::s2Step263ExitFRow.payload).toFinset⊆s2Step263ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263ExitF_retired : s2Step263ExitFBefore.retireSet s2Step263ExitFExtra.toFinset=s2Step263ExitFAfter := by
  unfold Arena.retireSet s2Step263ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step263ExitFBefore,s2Step263ExitGAfter,s2Step263ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step263ExitF_checked : planRowResizeLog s2Step263ExitFBefore s2Step263ExitFRow 139 []=
    some (s2Step263ExitFAfter,s2Step263ExitFOut,shrinkRow 768 s2Step263ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step263ExitFBefore s2Step263ExitFRow 139 s2Step263ExitF_distinct s2Step263ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step263ExitFRow.payload.take 139) s2Step263ExitFRow.sign=s2Step263ExitFOut := by decide +kernel
  have hi : s2Step263ExitFRow.payload.drop 139=s2Step263ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step263ExitF_retired] at result
  exact result

private def s2Step263ExitFvAfter : Arena := s2Step263ExitFAfter

private def s2Step263ExitFvBefore : Arena := s2Step263ExitFAfter

private theorem s2Step263ExitFv_Incoming : rowsOwned s2Step263ExitFvBefore [s2Step263ExitFvRow,s2Step263ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263ExitGRow,s2Step263ExitFRow,s2Step263ExitFvRow,s2Step263ExitGvRow] 2 s2Step263ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263ExitFv_Outgoing : rowsOwned s2Step263ExitGvAfter [s2Step263ExitFvOut,s2Step263ExitGvOut] :=
  hmrRows_owned_drop s2Step263ExitGvAfter [s2Step263ExitGOut,s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut] 2 s2Step263ExitBank_outgoingOwned

private theorem s2Step263ExitFv_distinct : (s2Step263ExitFvRow.sign::s2Step263ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263ExitFv_owned : (s2Step263ExitFvRow.sign::s2Step263ExitFvRow.payload).toFinset⊆s2Step263ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263ExitFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263ExitFv_reserved : s2Step263ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step263ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step263ExitFv_checked : planRowResizeLog s2Step263ExitFvBefore s2Step263ExitFvRow 147 []=
    some (s2Step263ExitFvAfter,s2Step263ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step263ExitFvBefore s2Step263ExitFvAfter s2Step263ExitFvRow 147 []
    s2Step263ExitFv_distinct s2Step263ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step263ExitFvRow.payload++[]) s2Step263ExitFvRow.sign=s2Step263ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step263ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step263ExitG_Incoming : rowsOwned s2Step263ExitGBefore [s2Step263ExitGRow,s2Step263ExitFRow,s2Step263ExitFvRow,s2Step263ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263ExitGRow,s2Step263ExitFRow,s2Step263ExitFvRow,s2Step263ExitGvRow] 0 s2Step263ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263ExitG_Outgoing : rowsOwned s2Step263ExitGvAfter [s2Step263ExitGOut,s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut] :=
  hmrRows_owned_drop s2Step263ExitGvAfter [s2Step263ExitGOut,s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut] 0 s2Step263ExitBank_outgoingOwned

private theorem s2Step263ExitG_distinct : (s2Step263ExitGRow.sign::s2Step263ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263ExitG_owned : (s2Step263ExitGRow.sign::s2Step263ExitGRow.payload).toFinset⊆s2Step263ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263ExitG_retired : s2Step263ExitGBefore.retireSet s2Step263ExitGExtra.toFinset=s2Step263ExitGAfter := by
  unfold Arena.retireSet s2Step263ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step263ExitGBefore,s2Step263ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step263ExitG_checked : planRowResizeLog s2Step263ExitGBefore s2Step263ExitGRow 138 []=
    some (s2Step263ExitGAfter,s2Step263ExitGOut,shrinkRow 769 s2Step263ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step263ExitGBefore s2Step263ExitGRow 138 s2Step263ExitG_distinct s2Step263ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step263ExitGRow.payload.take 138) s2Step263ExitGRow.sign=s2Step263ExitGOut := by decide +kernel
  have hi : s2Step263ExitGRow.payload.drop 138=s2Step263ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step263ExitG_retired] at result
  exact result

private def s2Step263ExitGvBefore : Arena := s2Step263ExitFAfter

private theorem s2Step263ExitGv_Incoming : rowsOwned s2Step263ExitGvBefore [s2Step263ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263ExitGRow,s2Step263ExitFRow,s2Step263ExitFvRow,s2Step263ExitGvRow] 3 s2Step263ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263ExitGv_Outgoing : rowsOwned s2Step263ExitGvAfter [s2Step263ExitGvOut] :=
  hmrRows_owned_drop s2Step263ExitGvAfter [s2Step263ExitGOut,s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut] 3 s2Step263ExitBank_outgoingOwned

private theorem s2Step263ExitGv_distinct : (s2Step263ExitGvRow.sign::s2Step263ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263ExitGv_owned : (s2Step263ExitGvRow.sign::s2Step263ExitGvRow.payload).toFinset⊆s2Step263ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263ExitGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263ExitGv_retired : s2Step263ExitGvBefore.retireSet s2Step263ExitGvExtra.toFinset=s2Step263ExitGvAfter := by
  unfold Arena.retireSet s2Step263ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step263ExitGvBefore,s2Step263ExitFAfter,s2Step263ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step263ExitGv_checked : planRowResizeLog s2Step263ExitGvBefore s2Step263ExitGvRow 146 []=
    some (s2Step263ExitGvAfter,s2Step263ExitGvOut,shrinkRow 771 s2Step263ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step263ExitGvBefore s2Step263ExitGvRow 146 s2Step263ExitGv_distinct s2Step263ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step263ExitGvRow.payload.take 146) s2Step263ExitGvRow.sign=s2Step263ExitGvOut := by decide +kernel
  have hi : s2Step263ExitGvRow.payload.drop 146=s2Step263ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step263ExitGv_retired] at result
  exact result

private theorem s2Step263ExitBank_rows : planWindowRowsLog s2Step263ExitGBefore [(s2Step263ExitGRow,138),(s2Step263ExitFRow,139),(s2Step263ExitFvRow,147),(s2Step263ExitGvRow,146)] [[],[],[],[]]=
    some (s2Step263ExitGvAfter,[s2Step263ExitGOut,s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut],(shrinkRow 769 s2Step263ExitGExtra ++ (shrinkRow 768 s2Step263ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step263ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step263ExitGvAfter [] []=some (s2Step263ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step263ExitGvBefore s2Step263ExitGvAfter s2Step263ExitGvAfter
    s2Step263ExitGvRow s2Step263ExitGvOut 146 [] [] [] []
    (shrinkRow 771 s2Step263ExitGvExtra) ([]) s2Step263ExitGv_Incoming s2Step263ExitGv_checked h4 s2Step263ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step263ExitFvBefore s2Step263ExitFvAfter s2Step263ExitGvAfter
    s2Step263ExitFvRow s2Step263ExitFvOut 147 [] [(s2Step263ExitGvRow,146)] [[]] [s2Step263ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step263ExitGvExtra ++ [])) s2Step263ExitFv_Incoming s2Step263ExitFv_checked h3 s2Step263ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step263ExitFBefore s2Step263ExitFAfter s2Step263ExitGvAfter
    s2Step263ExitFRow s2Step263ExitFOut 139 [] [(s2Step263ExitFvRow,147),(s2Step263ExitGvRow,146)] [[],[]] [s2Step263ExitFvOut,s2Step263ExitGvOut]
    (shrinkRow 768 s2Step263ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step263ExitGvExtra ++ []))) s2Step263ExitF_Incoming s2Step263ExitF_checked h2 s2Step263ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step263ExitGBefore s2Step263ExitGAfter s2Step263ExitGvAfter
    s2Step263ExitGRow s2Step263ExitGOut 138 [] [(s2Step263ExitFRow,139),(s2Step263ExitFvRow,147),(s2Step263ExitGvRow,146)] [[],[],[]] [s2Step263ExitFOut,s2Step263ExitFvOut,s2Step263ExitGvOut]
    (shrinkRow 769 s2Step263ExitGExtra) ((shrinkRow 768 s2Step263ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step263ExitGvExtra ++ [])))) s2Step263ExitG_Incoming s2Step263ExitG_checked h1 s2Step263ExitG_Outgoing
  exact h0

private theorem s2Step263ExitBank_checked : compileHmrBankResizeLog .exit s2Step263ExitGBefore ⟨s2Step263ExitFRow,s2Step263ExitGRow,s2Step263ExitFvRow,s2Step263ExitGvRow⟩ ⟨139,138,147,146⟩ [[],[],[],[]]=
    some (s2Step263ExitGvAfter,⟨s2Step263ExitFOut,s2Step263ExitGOut,s2Step263ExitFvOut,s2Step263ExitGvOut⟩,(shrinkRow 769 s2Step263ExitGExtra ++ (shrinkRow 768 s2Step263ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step263ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step263ExitBank_rows]
  rfl

private theorem s2Step263Add0_apart : Disjoint s2Step263Add0Arena.live s2Step263Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step263Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263Add0_card : s2Step263Add0Arena.live.card=896 := by
  decide +kernel

private theorem s2Step263Add0_borrowed : s2Step263Add0Arena.checkBorrow (hmrHybridCount s2Step263Add0Arena s2Step263Add0B.length) s2Step263Add0Work=some s2Step263Add0During := by
  have len : s2Step263Add0Work.length=hmrHybridCount s2Step263Add0Arena s2Step263Add0B.length := by
    rw [hmrHybridCount,s2Step263Add0_card]
    decide +kernel
  have nd : s2Step263Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step263Add0Arena s2Step263Add0During s2Step263Add0Work.toFinset s2Step263Add0_bounded s2Step263Add0_apart rfl

private theorem s2Step263Add0_distinct : (829::794::885::(s2Step263Add0A++s2Step263Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263Add0_owned : (829::794::885::(s2Step263Add0A++s2Step263Add0B)).toFinset⊆s2Step263Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step263Add0Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263Add0_checked : compileHmrHybridCinLog s2Step263Add0Arena 794 829 885 s2Step263Add0A s2Step263Add0B s2Step263Add0Work=some s2Step263Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step263Add0Arena s2Step263Add0During 794 829 885 s2Step263Add0A s2Step263Add0B s2Step263Add0Work
    (by decide +kernel) (by decide +kernel) s2Step263Add0_distinct
    (fun q hq => s2Step263Add0_owned (List.mem_toFinset.mpr hq)) s2Step263Add0_borrowed

private theorem s2Step263Add1_apart : Disjoint s2Step263Add1Arena.live s2Step263Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step263Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263Add1_card : s2Step263Add1Arena.live.card=896 := by
  decide +kernel

private theorem s2Step263Add1_borrowed : s2Step263Add1Arena.checkBorrow (hmrHybridCount s2Step263Add1Arena s2Step263Add1B.length) s2Step263Add1Work=some s2Step263Add1During := by
  have len : s2Step263Add1Work.length=hmrHybridCount s2Step263Add1Arena s2Step263Add1B.length := by
    rw [hmrHybridCount,s2Step263Add1_card]
    decide +kernel
  have nd : s2Step263Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step263Add1Arena s2Step263Add1During s2Step263Add1Work.toFinset s2Step263Add1_bounded s2Step263Add1_apart rfl

private theorem s2Step263Add1_distinct : (829::794::885::(s2Step263Add1A++s2Step263Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263Add1_owned : (829::794::885::(s2Step263Add1A++s2Step263Add1B)).toFinset⊆s2Step263Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step263Add1Arena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263Add1_checked : compileHmrHybridCinLog s2Step263Add1Arena 794 829 885 s2Step263Add1A s2Step263Add1B s2Step263Add1Work=some s2Step263Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step263Add1Arena s2Step263Add1During 794 829 885 s2Step263Add1A s2Step263Add1B s2Step263Add1Work
    (by decide +kernel) (by decide +kernel) s2Step263Add1_distinct
    (fun q hq => s2Step263Add1_owned (List.mem_toFinset.mpr hq)) s2Step263Add1_borrowed

private theorem s2Step263F4_apart : Disjoint (s2Step263Add0A++s2Step263Add0B).toFinset (s2Step263Add1A++s2Step263Add1B).toFinset := by
  have nd : ((s2Step263Add0A++s2Step263Add0B)++(s2Step263Add1A++s2Step263Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step263F4_carry : s2Step263F4FlagArena.checkBorrow 1 [885]=some s2Step263Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step263F4FlagArena,s2Step263HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step263F4FlagArena,s2Step263HeadFvAfter,s2Step263Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step263F4_distinct : (879::794::829::885::((s2Step263Add0A++s2Step263Add1A)++(s2Step263Add0B++s2Step263Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263F4_flag : s2Step263HeadFvAfter.checkBorrow 1 [829]=some s2Step263F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step263HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step263F4_owned : (879::794::((s2Step263Add0A++s2Step263Add1A)++(s2Step263Add0B++s2Step263Add1B))).toFinset⊆s2Step263HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step263HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263F4_checked : compileHmrHybridF4Log s2Step263HeadFvAfter 879 794 s2Step263Add0A s2Step263Add0B s2Step263Add1A s2Step263Add1B [829] [885] s2Step263Add0Work s2Step263Add1Work=some s2Step263F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step263HeadFvAfter s2Step263F4FlagArena s2Step263Add0Arena s2Step263Add0During s2Step263Add1During 879 794
    s2Step263Add0A s2Step263Add0B s2Step263Add1A s2Step263Add1B [829] [885] s2Step263Add0Work s2Step263Add1Work
    (fun q hq => s2Step263F4_owned (List.mem_toFinset.mpr hq)) s2Step263F4_flag s2Step263F4_carry
    s2Step263F4_distinct s2Step263F4_apart s2Step263Add0_checked s2Step263Add1_checked

private theorem s2Step263Front_branch : s2Step263FrontSigmaArena.checkBorrow 1 [794]=some s2Step263HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step263FrontSigmaArena,s2Step263EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step263FrontSigmaArena,s2Step263EntryGvAfter,s2Step263HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step263Front_entry : HmrFrontEntryValid s2Step263EntryFBefore s2Step263FrontBank 139 146 ⟨139,138,147,146⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step263FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step263EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step263EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step263FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step263Front_sigma : s2Step263EntryGvAfter.checkBorrow 1 [879]=some s2Step263FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step263EntryGvAfter,arenaWires]
  · rfl

private def s2Step263HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263HeadFBefore : Arena := s2Step263HeadGAfter

private def s2Step263HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step263HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792],770⟩

private def s2Step263HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788],769⟩

private def s2Step263HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814],771⟩

private theorem s2Step263HeadBank_incomingDistinct : ([s2Step263HeadGRow,s2Step263HeadFRow,s2Step263HeadGvRow,s2Step263HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263HeadF_Incoming : rowsOwned s2Step263HeadFBefore [s2Step263HeadFRow,s2Step263HeadGvRow,s2Step263HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263HeadGRow,s2Step263HeadFRow,s2Step263HeadGvRow,s2Step263HeadFvRow] 1 s2Step263HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263HeadBank_outgoingOwned : rowsOwned s2Step263HeadFvAfter [s2Step263HeadGOut,s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step263HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263HeadF_Outgoing : rowsOwned s2Step263HeadFvAfter [s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut] :=
  hmrRows_owned_drop s2Step263HeadFvAfter [s2Step263HeadGOut,s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut] 1 s2Step263HeadBank_outgoingOwned

private theorem s2Step263HeadF_distinct : (s2Step263HeadFRow.sign::s2Step263HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263HeadF_owned : (s2Step263HeadFRow.sign::s2Step263HeadFRow.payload).toFinset⊆s2Step263HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263HeadF_reserved : s2Step263HeadFBefore.reserve s2Step263HeadFFresh.toFinset=some s2Step263HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step263HeadFFresh,arenaWires]
  · norm_num [s2Step263HeadFBefore,s2Step263HeadGAfter,s2Step263HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step263HeadFAfter,s2Step263HeadFBefore,s2Step263HeadGAfter,s2Step263HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step263HeadF_checked : planRowResizeLog s2Step263HeadFBefore s2Step263HeadFRow 140 s2Step263HeadFFresh=
    some (s2Step263HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 836],768⟩,growRow 768 s2Step263HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step263HeadFBefore s2Step263HeadFAfter s2Step263HeadFRow 140 s2Step263HeadFFresh
    s2Step263HeadF_distinct s2Step263HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263HeadF_reserved
  have rowEq : WindowRow.mk (s2Step263HeadFRow.payload++s2Step263HeadFFresh) s2Step263HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 836],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step263HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step263HeadFvBefore : Arena := s2Step263HeadGvAfter

private theorem s2Step263HeadFv_Incoming : rowsOwned s2Step263HeadFvBefore [s2Step263HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263HeadGRow,s2Step263HeadFRow,s2Step263HeadGvRow,s2Step263HeadFvRow] 3 s2Step263HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263HeadFv_Outgoing : rowsOwned s2Step263HeadFvAfter [s2Step263HeadFvOut] :=
  hmrRows_owned_drop s2Step263HeadFvAfter [s2Step263HeadGOut,s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut] 3 s2Step263HeadBank_outgoingOwned

private theorem s2Step263HeadFv_distinct : (s2Step263HeadFvRow.sign::s2Step263HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263HeadFv_owned : (s2Step263HeadFvRow.sign::s2Step263HeadFvRow.payload).toFinset⊆s2Step263HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263HeadFv_reserved : s2Step263HeadFvBefore.reserve s2Step263HeadFvFresh.toFinset=some s2Step263HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step263HeadFvFresh,arenaWires]
  · norm_num [s2Step263HeadFvBefore,s2Step263HeadGvAfter,s2Step263HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step263HeadFvAfter,s2Step263HeadFvBefore,s2Step263HeadGvAfter,s2Step263HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step263HeadFv_checked : planRowResizeLog s2Step263HeadFvBefore s2Step263HeadFvRow 147 s2Step263HeadFvFresh=
    some (s2Step263HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩,growRow 770 s2Step263HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step263HeadFvBefore s2Step263HeadFvAfter s2Step263HeadFvRow 147 s2Step263HeadFvFresh
    s2Step263HeadFv_distinct s2Step263HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step263HeadFvRow.payload++s2Step263HeadFvFresh) s2Step263HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step263HeadG_Incoming : rowsOwned s2Step263HeadGBefore [s2Step263HeadGRow,s2Step263HeadFRow,s2Step263HeadGvRow,s2Step263HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263HeadGRow,s2Step263HeadFRow,s2Step263HeadGvRow,s2Step263HeadFvRow] 0 s2Step263HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263HeadG_Outgoing : rowsOwned s2Step263HeadFvAfter [s2Step263HeadGOut,s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut] :=
  hmrRows_owned_drop s2Step263HeadFvAfter [s2Step263HeadGOut,s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut] 0 s2Step263HeadBank_outgoingOwned

private theorem s2Step263HeadG_distinct : (s2Step263HeadGRow.sign::s2Step263HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263HeadG_owned : (s2Step263HeadGRow.sign::s2Step263HeadGRow.payload).toFinset⊆s2Step263HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263HeadG_reserved : s2Step263HeadGBefore.reserve s2Step263HeadGFresh.toFinset=some s2Step263HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step263HeadGFresh,arenaWires]
  · norm_num [s2Step263HeadGBefore,s2Step263HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step263HeadGAfter,s2Step263HeadGBefore,s2Step263HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step263HeadG_checked : planRowResizeLog s2Step263HeadGBefore s2Step263HeadGRow 140 s2Step263HeadGFresh=
    some (s2Step263HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788, 877],769⟩,growRow 769 s2Step263HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step263HeadGBefore s2Step263HeadGAfter s2Step263HeadGRow 140 s2Step263HeadGFresh
    s2Step263HeadG_distinct s2Step263HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263HeadG_reserved
  have rowEq : WindowRow.mk (s2Step263HeadGRow.payload++s2Step263HeadGFresh) s2Step263HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 788, 877],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step263HeadGvBefore : Arena := s2Step263HeadFAfter

private theorem s2Step263HeadGv_Incoming : rowsOwned s2Step263HeadGvBefore [s2Step263HeadGvRow,s2Step263HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step263HeadGRow,s2Step263HeadFRow,s2Step263HeadGvRow,s2Step263HeadFvRow] 2 s2Step263HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step263HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step263HeadGv_Outgoing : rowsOwned s2Step263HeadFvAfter [s2Step263HeadGvOut,s2Step263HeadFvOut] :=
  hmrRows_owned_drop s2Step263HeadFvAfter [s2Step263HeadGOut,s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut] 2 s2Step263HeadBank_outgoingOwned

private theorem s2Step263HeadGv_distinct : (s2Step263HeadGvRow.sign::s2Step263HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step263HeadGv_owned : (s2Step263HeadGvRow.sign::s2Step263HeadGvRow.payload).toFinset⊆s2Step263HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step263HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step263HeadGv_reserved : s2Step263HeadGvBefore.reserve s2Step263HeadGvFresh.toFinset=some s2Step263HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step263HeadGvFresh,arenaWires]
  · norm_num [s2Step263HeadGvBefore,s2Step263HeadFAfter,s2Step263HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step263HeadGvAfter,s2Step263HeadGvBefore,s2Step263HeadFAfter,s2Step263HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step263HeadGv_checked : planRowResizeLog s2Step263HeadGvBefore s2Step263HeadGvRow 147 s2Step263HeadGvFresh=
    some (s2Step263HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 891],771⟩,growRow 771 s2Step263HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step263HeadGvBefore s2Step263HeadGvAfter s2Step263HeadGvRow 147 s2Step263HeadGvFresh
    s2Step263HeadGv_distinct s2Step263HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step263HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step263HeadGvRow.payload++s2Step263HeadGvFresh) s2Step263HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 891],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step263HeadBank_rows : planWindowRowsLog s2Step263HeadGBefore [(s2Step263HeadGRow,140),(s2Step263HeadFRow,140),(s2Step263HeadGvRow,147),(s2Step263HeadFvRow,147)] [s2Step263HeadGFresh,s2Step263HeadFFresh,s2Step263HeadGvFresh,s2Step263HeadFvFresh]=
    some (s2Step263HeadFvAfter,[s2Step263HeadGOut,s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut],(growRow 769 s2Step263HeadGFresh ++ (growRow 768 s2Step263HeadFFresh ++ (growRow 771 s2Step263HeadGvFresh ++ (growRow 770 s2Step263HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step263HeadFvAfter [] []=some (s2Step263HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step263HeadFvBefore s2Step263HeadFvAfter s2Step263HeadFvAfter
    s2Step263HeadFvRow s2Step263HeadFvOut 147 s2Step263HeadFvFresh [] [] []
    (growRow 770 s2Step263HeadFvFresh) ([]) s2Step263HeadFv_Incoming s2Step263HeadFv_checked h4 s2Step263HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step263HeadGvBefore s2Step263HeadGvAfter s2Step263HeadFvAfter
    s2Step263HeadGvRow s2Step263HeadGvOut 147 s2Step263HeadGvFresh [(s2Step263HeadFvRow,147)] [s2Step263HeadFvFresh] [s2Step263HeadFvOut]
    (growRow 771 s2Step263HeadGvFresh) ((growRow 770 s2Step263HeadFvFresh ++ [])) s2Step263HeadGv_Incoming s2Step263HeadGv_checked h3 s2Step263HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step263HeadFBefore s2Step263HeadFAfter s2Step263HeadFvAfter
    s2Step263HeadFRow s2Step263HeadFOut 140 s2Step263HeadFFresh [(s2Step263HeadGvRow,147),(s2Step263HeadFvRow,147)] [s2Step263HeadGvFresh,s2Step263HeadFvFresh] [s2Step263HeadGvOut,s2Step263HeadFvOut]
    (growRow 768 s2Step263HeadFFresh) ((growRow 771 s2Step263HeadGvFresh ++ (growRow 770 s2Step263HeadFvFresh ++ []))) s2Step263HeadF_Incoming s2Step263HeadF_checked h2 s2Step263HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step263HeadGBefore s2Step263HeadGAfter s2Step263HeadFvAfter
    s2Step263HeadGRow s2Step263HeadGOut 140 s2Step263HeadGFresh [(s2Step263HeadFRow,140),(s2Step263HeadGvRow,147),(s2Step263HeadFvRow,147)] [s2Step263HeadFFresh,s2Step263HeadGvFresh,s2Step263HeadFvFresh] [s2Step263HeadFOut,s2Step263HeadGvOut,s2Step263HeadFvOut]
    (growRow 769 s2Step263HeadGFresh) ((growRow 768 s2Step263HeadFFresh ++ (growRow 771 s2Step263HeadGvFresh ++ (growRow 770 s2Step263HeadFvFresh ++ [])))) s2Step263HeadG_Incoming s2Step263HeadG_checked h1 s2Step263HeadG_Outgoing
  exact h0

private theorem s2Step263HeadBank_checked : compileHmrBankResizeLog .headroom s2Step263HeadGBefore ⟨s2Step263HeadFRow,s2Step263HeadGRow,s2Step263HeadFvRow,s2Step263HeadGvRow⟩ ⟨140,140,147,147⟩ [s2Step263HeadGFresh,s2Step263HeadFFresh,s2Step263HeadGvFresh,s2Step263HeadFvFresh]=
    some (s2Step263HeadFvAfter,⟨s2Step263HeadFOut,s2Step263HeadGOut,s2Step263HeadFvOut,s2Step263HeadGvOut⟩,(growRow 769 s2Step263HeadGFresh ++ (growRow 768 s2Step263HeadFFresh ++ (growRow 771 s2Step263HeadGvFresh ++ (growRow 770 s2Step263HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step263HeadBank_rows]
  rfl

private theorem s2Step263Front_checked : compileHmrSourceFrontLog s2Step263EntryFBefore s2Step263FrontBank 139 146 ⟨139,138,147,146⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step263FrontLog=some s2Step263FrontPlan := by
  have pairEq : s2Step263FrontPair=⟨s2Step263HeadFRow,s2Step263HeadGRow,s2Step263HeadFvRow,s2Step263HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step263FrontHead=⟨s2Step263ExitFRow,s2Step263ExitGRow,s2Step263ExitFvRow,s2Step263ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step263Add0A=s2Step263FrontHead.f.wires := by decide +kernel
  have gEq : s2Step263Add0B=s2Step263FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step263Add1A=s2Step263FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step263Add1B=s2Step263FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step263EntryFBefore s2Step263FrontBank 139 146 ⟨139,138,147,146⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step263FrontLog s2Step263FrontPlan
  · exact s2Step263Front_entry
  · exact s2Step263EntryBank_checked
  · exact s2Step263Front_sigma
  · rfl
  · exact s2Step263Front_branch
  · rfl
  · simpa only [s2Step263FrontPlan,pairEq] using s2Step263HeadBank_checked
  · simpa only [s2Step263FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step263F4_checked
  · exact s2Step263Counter_checked
  · rfl
  · simpa only [s2Step263FrontPlan,headEq] using s2Step263ExitBank_checked

private theorem s2Step263Complete_explicit_checked : compileHmrEarlyStepLog s2Step263EntryFBefore s2Step263FrontBank 139 146 ⟨139,138,147,146⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step263CompleteLog=some s2Step263CompletePlan := by
  let Q := s2Step263EarlyControlPlan
  have hq := s2Step263EarlyControl_plan_checked
  have fv1 : s2Step263CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step263CompleteOut.fv.payload[2]?.getD s2Step263CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step263CompleteOut.fv.payload[3]?.getD s2Step263CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step263CompleteOut.fv.payload[4]?.getD s2Step263CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step263EntryFBefore s2Step263EarlyControlArena s2Step263FrontBank 139 146 ⟨139,138,147,146⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step263CompleteLog s2Step263FrontPlan Q
    s2Step263Front_checked s2Step263Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step263Complete_owned s2Step263Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step263EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 879 s2Step263CompleteOut.fv.second (s2Step263CompleteOut.fv.payload[2]?.getD s2Step263CompleteOut.fv.sign) (s2Step263CompleteOut.fv.payload[3]?.getD s2Step263CompleteOut.fv.sign) (s2Step263CompleteOut.fv.payload[4]?.getD s2Step263CompleteOut.fv.sign) 794 52 s2Step263EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep263Arena : Arena := s2Step263EntryFBefore
def s2PrivateStep263Bank : WindowBank := s2Step263FrontBank
def s2PrivateStep263Spec : HmrSourceWalkStepLog := ⟨139,146,⟨139,138,147,146⟩,52,.early s2Step263CompleteLog⟩
def s2PrivateStep263Plan : HmrSourceStepPlan := .early s2Step263CompletePlan
theorem s2PrivateStep263_source : s2PrivateStep263Spec=s2ObservedLogs256[7] := rfl
theorem s2PrivateStep263_checked : compileHmrSourceStepLog s2PrivateStep263Arena s2PrivateStep263Bank
    s2PrivateStep263Spec.fgWidth s2PrivateStep263Spec.vWidth s2PrivateStep263Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 263 s2PrivateStep263Spec.need none s2PrivateStep263Spec.log=some s2PrivateStep263Plan := by
  change compileHmrSourceStepLog s2Step263EntryFBefore s2Step263FrontBank 139 146 ⟨139,138,147,146⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 263 52 none (.early s2Step263CompleteLog)=some (.early s2Step263CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 263<498)]
  rw [s2Step263Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
