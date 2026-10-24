import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep263
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

private def s2Step265CompleteMoves : List (Wire × Wire) := [(844,650)]

private def s2Step265EarlyControlLog : HmrEarlyControlLog := ⟨[844, 779, 782, 817, 788],[836],[891],[794, 830, 800, 894, 896, 901],[]⟩

private def s2Step265FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [836, 891], [], [779]],[[794], [788], [782], [817]],[[], [], [], []]⟩,[829],[877],[830],[800],[894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step265CompleteLog : HmrEarlyStepLog := ⟨s2Step265FrontLog,s2Step265CompleteMoves,s2Step265EarlyControlLog⟩

private def s2Step265ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step265ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step265ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136],769⟩

private def s2Step265ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879],771⟩

private def s2Step265FrontOut : WindowBank := ⟨s2Step265ExitFOut,s2Step265ExitGOut,s2Step265ExitFvOut,s2Step265ExitGvOut⟩

private def s2Step265CompleteOut : WindowBank := s2Step265FrontOut.repacked s2Step265CompleteMoves

private def s2Step265EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step265EarlyControlPositiveArena,[836],s2Step265EarlyControlEqualityArena,[891],⟨⟨829,false⟩,[⟨⟨836,false⟩,891⟩]⟩⟩

private def s2Step265EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,844⟩,⟨⟨774,false⟩,779⟩,⟨⟨775,false⟩,782⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,788⟩]⟩

private def s2Step265EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step265EarlyControlZeroArena,s2Step265EarlyControlZeroPlan,s2Step265EarlyControlClassPlan,s2Step265EarlyControlFlagArena,s2Step265EarlyControlFittedArena,s2Step265EarlyControlHistoryArena,s2Step265EarlyControlSigmaArena,s2Step265EarlyControlOutputArena,s2Step265EarlyControlLog⟩

private def s2Step265CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step265Counter_bounded : s2Step265CounterWork.toFinset⊆arenaWires := by norm_num [s2Step265CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step265HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265CounterDuring : Arena := ⟨s2Step265HeadFvAfter.live∪s2Step265CounterWork.toFinset,Finset.union_subset s2Step265HeadFvAfter.bounded s2Step265Counter_bounded⟩

private def s2Step265EntryFFresh : List Wire := []

private def s2Step265EntryFvFresh : List Wire := []

private def s2Step265EntryGFresh : List Wire := [836, 891]

private def s2Step265EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EntryGvFresh : List Wire := [779]

private def s2Step265ExitFExtra : List Wire := [650, 788]

private def s2Step265ExitFvExtra : List Wire := [817]

private def s2Step265ExitGExtra : List Wire := [836, 891, 794]

private def s2Step265ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<650) ∨ (651≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265ExitGvExtra : List Wire := [779, 782]

private def s2Step265Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265Add0Work : List Wire := [894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step265Add0_bounded : s2Step265Add0Work.toFinset⊆arenaWires := by
  have h : s2Step265Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step265Add0During : Arena := ⟨s2Step265Add0Arena.live∪s2Step265Add0Work.toFinset,Finset.union_subset s2Step265Add0Arena.bounded s2Step265Add0_bounded⟩

private def s2Step265Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265Add1Work : List Wire := [894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step265Add1_bounded : s2Step265Add1Work.toFinset⊆arenaWires := by
  have h : s2Step265Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step265Add1During : Arena := ⟨s2Step265Add1Arena.live∪s2Step265Add1Work.toFinset,Finset.union_subset s2Step265Add1Arena.bounded s2Step265Add1_bounded⟩

private def s2Step265F4FlagArena : Arena := ⟨s2Step265HeadFvAfter.live∪{830},Finset.union_subset s2Step265HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step265F4Plan : HmrHybridF4Plan := ⟨s2Step265F4FlagArena,[830],s2Step265Add0Arena,[800],s2Step265Add0During,s2Step265Add0Work,s2Step265Add1During,s2Step265Add1Work⟩

private def s2Step265HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 788],768⟩

private def s2Step265HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 817],770⟩

private def s2Step265HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891, 794],769⟩

private def s2Step265HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779, 782],771⟩

private def s2Step265FrontHead : WindowBank := ⟨s2Step265HeadFOut,s2Step265HeadGOut,s2Step265HeadFvOut,s2Step265HeadGvOut⟩

private def s2Step265EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step265EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step265EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891],769⟩

private def s2Step265EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779],771⟩

private def s2Step265FrontPair : WindowBank := ⟨s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut⟩

private def s2Step265FrontSigmaArena : Arena := ⟨s2Step265EntryGvAfter.live∪{829},Finset.union_subset s2Step265EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step265HeadFFresh : List Wire := [788]

private def s2Step265HeadFvFresh : List Wire := [817]

private def s2Step265HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265HeadGFresh : List Wire := [794]

private def s2Step265HeadGvFresh : List Wire := [782]

private def s2Step265FrontPlan : HmrSourceFront := ⟨s2Step265EntryGvAfter,s2Step265FrontPair,(growRow 768 s2Step265EntryFFresh ++ (growRow 769 s2Step265EntryGFresh ++ (growRow 770 s2Step265EntryFvFresh ++ (growRow 771 s2Step265EntryGvFresh ++ [])))),s2Step265FrontSigmaArena,[829],s2Step265HeadGBefore,[877],
  s2Step265HeadFvAfter,s2Step265FrontHead,(growRow 769 s2Step265HeadGFresh ++ (growRow 768 s2Step265HeadFFresh ++ (growRow 771 s2Step265HeadGvFresh ++ (growRow 770 s2Step265HeadFvFresh ++ [])))),s2Step265F4Plan,s2Step265CounterDuring,s2Step265CounterWork,s2Step265ExitGvAfter,s2Step265FrontOut,(shrinkRow 769 s2Step265ExitGExtra ++ (shrinkRow 768 s2Step265ExitFExtra ++ (shrinkRow 770 s2Step265ExitFvExtra ++ (shrinkRow 771 s2Step265ExitGvExtra ++ []))))⟩

private def s2Step265CompletePlan : HmrEarlyStepPlan := ⟨s2Step265FrontPlan,s2Step265EarlyControlArena,s2Step265EarlyControlPlan,s2Step265CompleteMoves⟩

private theorem s2Step265Complete_apart : List.Disjoint (s2Step265CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step265CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step265Complete_owned : (s2Step265CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private def s2Step265CompleteMoveArena : Arena := ⟨s2Step265ExitGvAfter.live∪{650},Finset.union_subset s2Step265ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step265Complete_repack : s2Step265ExitGvAfter.checkRepack s2Step265CompleteMoves=some s2Step265EarlyControlArena := by
  have owned : 844∈s2Step265ExitGvAfter.live := by norm_num [s2Step265ExitGvAfter,arenaWires]
  have reserve : s2Step265ExitGvAfter.reserve {650}=some s2Step265CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step265ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step265CompleteMoveArena.retireSet {844}=s2Step265EarlyControlArena := by
    unfold Arena.retireSet s2Step265EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step265CompleteMoveArena,s2Step265ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step265CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step265CompleteMoveArena.retireSet {844}).checkRepack []=some s2Step265EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step265EarlyControl_branchOwned : ([877] : List Wire).toFinset⊆s2Step265EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlSigmaArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_branch : compileHmrBranchRetirement s2Step265EarlyControlSigmaArena 877=some s2Step265EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step265EarlyControl_branchOwned
  · ext q
    simp [s2Step265EarlyControlOutputArena,s2Step265EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step265EarlyControl_classEqualityBorrow : s2Step265EarlyControlPositiveArena.checkBorrow (([829, 836] : List Wire).length-1) s2Step265EarlyControlLog.classWork=some s2Step265EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step265EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step265EarlyControlEqualityArena,s2Step265EarlyControlPositiveArena,s2Step265EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step265EarlyControl_classEqualityOwned : ([829, 836] : List Wire).toFinset⊆s2Step265EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_classEquality : compileHmrEqualityLog s2Step265EarlyControlPositiveArena [829, 836] 0 s2Step265EarlyControlLog.classWork=some (s2Step265EarlyControlEqualityArena,s2Step265EarlyControlLog.classWork,s2Step265EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step265EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step265EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step265EarlyControl_classOwned : ([777, 788, 829] : List Wire).toFinset⊆s2Step265EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_positiveBorrow : s2Step265EarlyControlZeroArena.checkBorrow (1) s2Step265EarlyControlLog.positiveWork=some s2Step265EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step265EarlyControlZeroArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step265EarlyControlPositiveArena,s2Step265EarlyControlZeroArena,s2Step265EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step265EarlyControl_class : compileHmrSourceClassLog s2Step265EarlyControlZeroArena false 777 s2Step265EarlyControlZeroPlan.top 0 829 s2Step265EarlyControlLog.positiveWork s2Step265EarlyControlLog.classWork=some s2Step265EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step265EarlyControlClassPlan s2Step265EarlyControlZeroArena false 777 s2Step265EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step265EarlyControl_classOwned
  · exact s2Step265EarlyControl_positiveBorrow
  · exact s2Step265EarlyControl_classEquality

private theorem s2Step265EarlyControl_entryRecordOwned : ([877, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_entrySigmaOwned : ([829, 254] : List Wire).toFinset⊆s2Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_fitBorrow : s2Step265EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step265EarlyControlLog.recordFresh=some s2Step265EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step265EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step265EarlyControlFittedArena,s2Step265EarlyControlFlagArena,s2Step265EarlyControlLog,arenaWires]

private theorem s2Step265EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step265EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_fit : compileHmrRecordGrowLog s2Step265EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step265EarlyControlLog.recordFresh=some s2Step265EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step265EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step265EarlyControl_fitBorrow

private theorem s2Step265EarlyControl_flagsBorrow : s2Step265EarlyControlEqualityArena.checkBorrow (6) s2Step265EarlyControlLog.flagWork=some s2Step265EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step265EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step265EarlyControlFlagArena,s2Step265EarlyControlEqualityArena,s2Step265EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step265EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s2Step265EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_flags : compileHmrFlagsLog s2Step265EarlyControlClassPlan.equalityArena s2Step265EarlyControlClassPlan.equality.top 253 252 251 s2Step265EarlyControlLog.flagWork=some s2Step265EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step265EarlyControl_flagsOwned⟩
  · exact s2Step265EarlyControl_flagsBorrow

private theorem s2Step265EarlyControl_historyBorrow : s2Step265EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step265EarlyControlLog.recordFresh=some s2Step265EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step265EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step265EarlyControlHistoryArena,s2Step265EarlyControlArena,s2Step265EarlyControlLog,arenaWires]

private theorem s2Step265EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_history : compileHmrRecordGrowLog s2Step265EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step265EarlyControlLog.recordFresh=some s2Step265EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step265EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step265EarlyControl_historyBorrow

private theorem s2Step265EarlyControl_sigmaOwned : ([254, 829] : List Wire).toFinset⊆s2Step265EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step265EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlHistoryArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_sigmaRelease : s2Step265EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step265EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step265EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step265EarlyControlSigmaArena,s2Step265EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step265EarlyControl_sigma : compileHmrSigmaDropLog s2Step265EarlyControlHistoryArena false 0 0 254 829 []=some s2Step265EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step265EarlyControl_sigmaOwned⟩
  · exact s2Step265EarlyControl_sigmaRelease

private theorem s2Step265EarlyControl_zeroBorrow : s2Step265EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step265EarlyControlLog.zeroWork=some s2Step265EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step265EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step265EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step265EarlyControlZeroArena,s2Step265EarlyControlArena,s2Step265EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step265EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step265EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step265EarlyControlArena (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EarlyControl_zero : compileHmrEqualityLog s2Step265EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step265EarlyControlLog.zeroWork=some (s2Step265EarlyControlZeroArena,s2Step265EarlyControlLog.zeroWork,s2Step265EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step265EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step265EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step265EarlyControl_logged : s2Step265EarlyControlPlan.Logged s2Step265EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 829 254 253 252 251 877 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step265EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step265EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step265EarlyControl_zero
  · exact s2Step265EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step265EarlyControl_flags
  · exact s2Step265EarlyControl_fit
  · exact s2Step265EarlyControl_history
  · exact s2Step265EarlyControl_sigma
  · exact s2Step265EarlyControl_branch

private theorem s2Step265EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step265EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 829 254 253 252 251 877 52 s2Step265EarlyControlLog=some s2Step265EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step265EarlyControlPlan s2Step265EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 829 254 253 252 251 877 52 s2Step265EarlyControl_logged

private def s2Step265EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step265EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step265EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136],769⟩

private def s2Step265EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879],771⟩

private def s2Step265FrontBank : WindowBank := ⟨s2Step265EntryFRow,s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow⟩

private def s2Step265Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 788, 768]

private def s2Step265Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891, 794, 769]

private def s2Step265Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 817, 770]

private def s2Step265Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779, 782, 771]

private theorem s2Step265Counter_apart : Disjoint s2Step265HeadFvAfter.live s2Step265CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step265HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265Counter_borrowed : s2Step265HeadFvAfter.checkBorrow 4 s2Step265CounterWork=some s2Step265CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step265HeadFvAfter s2Step265CounterDuring s2Step265CounterWork.toFinset s2Step265Counter_bounded s2Step265Counter_apart rfl

private theorem s2Step265Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step265HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step265HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265Counter_checked : compileHmrCounterStepLog s2Step265HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step265CounterWork=some s2Step265CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step265HeadFvAfter.live := fun q hq => s2Step265Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step265Counter_borrowed

private def s2Step265EntryFAfter : Arena := s2Step265EntryFBefore

private theorem s2Step265EntryBank_incomingDistinct : ([s2Step265EntryFRow,s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265EntryF_Incoming : rowsOwned s2Step265EntryFBefore [s2Step265EntryFRow,s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265EntryFRow,s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow] 0 s2Step265EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265EntryBank_outgoingOwned : rowsOwned s2Step265EntryGvAfter [s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step265EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265EntryF_Outgoing : rowsOwned s2Step265EntryGvAfter [s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut] :=
  hmrRows_owned_drop s2Step265EntryGvAfter [s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut] 0 s2Step265EntryBank_outgoingOwned

private theorem s2Step265EntryF_distinct : (s2Step265EntryFRow.sign::s2Step265EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265EntryF_owned : (s2Step265EntryFRow.sign::s2Step265EntryFRow.payload).toFinset⊆s2Step265EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EntryF_reserved : s2Step265EntryFBefore.reserve s2Step265EntryFFresh.toFinset=some s2Step265EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step265EntryFFresh,arenaWires]
  · norm_num [s2Step265EntryFBefore,s2Step265EntryFFresh,arenaWires]
  · simp only [s2Step265EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step265EntryF_checked : planRowResizeLog s2Step265EntryFBefore s2Step265EntryFRow 139 s2Step265EntryFFresh=
    some (s2Step265EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩,growRow 768 s2Step265EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step265EntryFBefore s2Step265EntryFAfter s2Step265EntryFRow 139 s2Step265EntryFFresh
    s2Step265EntryF_distinct s2Step265EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step265EntryF_reserved
  have rowEq : WindowRow.mk (s2Step265EntryFRow.payload++s2Step265EntryFFresh) s2Step265EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step265EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265EntryFvAfter : Arena := s2Step265EntryGAfter

private def s2Step265EntryFvBefore : Arena := s2Step265EntryGAfter

private theorem s2Step265EntryFv_Incoming : rowsOwned s2Step265EntryFvBefore [s2Step265EntryFvRow,s2Step265EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265EntryFRow,s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow] 2 s2Step265EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265EntryFv_Outgoing : rowsOwned s2Step265EntryGvAfter [s2Step265EntryFvOut,s2Step265EntryGvOut] :=
  hmrRows_owned_drop s2Step265EntryGvAfter [s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut] 2 s2Step265EntryBank_outgoingOwned

private theorem s2Step265EntryFv_distinct : (s2Step265EntryFvRow.sign::s2Step265EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265EntryFv_owned : (s2Step265EntryFvRow.sign::s2Step265EntryFvRow.payload).toFinset⊆s2Step265EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EntryFv_reserved : s2Step265EntryFvBefore.reserve s2Step265EntryFvFresh.toFinset=some s2Step265EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step265EntryFvFresh,arenaWires]
  · norm_num [s2Step265EntryFvBefore,s2Step265EntryGAfter,s2Step265EntryFvFresh,arenaWires]
  · simp only [s2Step265EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step265EntryFv_checked : planRowResizeLog s2Step265EntryFvBefore s2Step265EntryFvRow 148 s2Step265EntryFvFresh=
    some (s2Step265EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩,growRow 770 s2Step265EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step265EntryFvBefore s2Step265EntryFvAfter s2Step265EntryFvRow 148 s2Step265EntryFvFresh
    s2Step265EntryFv_distinct s2Step265EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step265EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step265EntryFvRow.payload++s2Step265EntryFvFresh) s2Step265EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step265EntryGBefore : Arena := s2Step265EntryFBefore

private theorem s2Step265EntryG_Incoming : rowsOwned s2Step265EntryGBefore [s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265EntryFRow,s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow] 1 s2Step265EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265EntryG_Outgoing : rowsOwned s2Step265EntryGvAfter [s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut] :=
  hmrRows_owned_drop s2Step265EntryGvAfter [s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut] 1 s2Step265EntryBank_outgoingOwned

private theorem s2Step265EntryG_distinct : (s2Step265EntryGRow.sign::s2Step265EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265EntryG_owned : (s2Step265EntryGRow.sign::s2Step265EntryGRow.payload).toFinset⊆s2Step265EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EntryG_reserved : s2Step265EntryGBefore.reserve s2Step265EntryGFresh.toFinset=some s2Step265EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step265EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step265EntryGBefore,s2Step265EntryFBefore,s2Step265EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step265EntryGAfter,s2Step265EntryGBefore,s2Step265EntryFBefore,s2Step265EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step265EntryG_checked : planRowResizeLog s2Step265EntryGBefore s2Step265EntryGRow 139 s2Step265EntryGFresh=
    some (s2Step265EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891],769⟩,growRow 769 s2Step265EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step265EntryGBefore s2Step265EntryGAfter s2Step265EntryGRow 139 s2Step265EntryGFresh
    s2Step265EntryG_distinct s2Step265EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step265EntryG_reserved
  have rowEq : WindowRow.mk (s2Step265EntryGRow.payload++s2Step265EntryGFresh) s2Step265EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step265EntryGvBefore : Arena := s2Step265EntryGAfter

private theorem s2Step265EntryGv_Incoming : rowsOwned s2Step265EntryGvBefore [s2Step265EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265EntryFRow,s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow] 3 s2Step265EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265EntryGv_Outgoing : rowsOwned s2Step265EntryGvAfter [s2Step265EntryGvOut] :=
  hmrRows_owned_drop s2Step265EntryGvAfter [s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut] 3 s2Step265EntryBank_outgoingOwned

private theorem s2Step265EntryGv_distinct : (s2Step265EntryGvRow.sign::s2Step265EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265EntryGv_owned : (s2Step265EntryGvRow.sign::s2Step265EntryGvRow.payload).toFinset⊆s2Step265EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265EntryGv_reserved : s2Step265EntryGvBefore.reserve s2Step265EntryGvFresh.toFinset=some s2Step265EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step265EntryGvFresh,arenaWires]
  · norm_num [s2Step265EntryGvBefore,s2Step265EntryGAfter,s2Step265EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step265EntryGvAfter,s2Step265EntryGvBefore,s2Step265EntryGAfter,s2Step265EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step265EntryGv_checked : planRowResizeLog s2Step265EntryGvBefore s2Step265EntryGvRow 148 s2Step265EntryGvFresh=
    some (s2Step265EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779],771⟩,growRow 771 s2Step265EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step265EntryGvBefore s2Step265EntryGvAfter s2Step265EntryGvRow 148 s2Step265EntryGvFresh
    s2Step265EntryGv_distinct s2Step265EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step265EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step265EntryGvRow.payload++s2Step265EntryGvFresh) s2Step265EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step265EntryBank_rows : planWindowRowsLog s2Step265EntryFBefore [(s2Step265EntryFRow,139),(s2Step265EntryGRow,139),(s2Step265EntryFvRow,148),(s2Step265EntryGvRow,148)] [s2Step265EntryFFresh,s2Step265EntryGFresh,s2Step265EntryFvFresh,s2Step265EntryGvFresh]=
    some (s2Step265EntryGvAfter,[s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut],(growRow 768 s2Step265EntryFFresh ++ (growRow 769 s2Step265EntryGFresh ++ (growRow 770 s2Step265EntryFvFresh ++ (growRow 771 s2Step265EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step265EntryGvAfter [] []=some (s2Step265EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step265EntryGvBefore s2Step265EntryGvAfter s2Step265EntryGvAfter
    s2Step265EntryGvRow s2Step265EntryGvOut 148 s2Step265EntryGvFresh [] [] []
    (growRow 771 s2Step265EntryGvFresh) ([]) s2Step265EntryGv_Incoming s2Step265EntryGv_checked h4 s2Step265EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step265EntryFvBefore s2Step265EntryFvAfter s2Step265EntryGvAfter
    s2Step265EntryFvRow s2Step265EntryFvOut 148 s2Step265EntryFvFresh [(s2Step265EntryGvRow,148)] [s2Step265EntryGvFresh] [s2Step265EntryGvOut]
    (growRow 770 s2Step265EntryFvFresh) ((growRow 771 s2Step265EntryGvFresh ++ [])) s2Step265EntryFv_Incoming s2Step265EntryFv_checked h3 s2Step265EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step265EntryGBefore s2Step265EntryGAfter s2Step265EntryGvAfter
    s2Step265EntryGRow s2Step265EntryGOut 139 s2Step265EntryGFresh [(s2Step265EntryFvRow,148),(s2Step265EntryGvRow,148)] [s2Step265EntryFvFresh,s2Step265EntryGvFresh] [s2Step265EntryFvOut,s2Step265EntryGvOut]
    (growRow 769 s2Step265EntryGFresh) ((growRow 770 s2Step265EntryFvFresh ++ (growRow 771 s2Step265EntryGvFresh ++ []))) s2Step265EntryG_Incoming s2Step265EntryG_checked h2 s2Step265EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step265EntryFBefore s2Step265EntryFAfter s2Step265EntryGvAfter
    s2Step265EntryFRow s2Step265EntryFOut 139 s2Step265EntryFFresh [(s2Step265EntryGRow,139),(s2Step265EntryFvRow,148),(s2Step265EntryGvRow,148)] [s2Step265EntryGFresh,s2Step265EntryFvFresh,s2Step265EntryGvFresh] [s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut]
    (growRow 768 s2Step265EntryFFresh) ((growRow 769 s2Step265EntryGFresh ++ (growRow 770 s2Step265EntryFvFresh ++ (growRow 771 s2Step265EntryGvFresh ++ [])))) s2Step265EntryF_Incoming s2Step265EntryF_checked h1 s2Step265EntryF_Outgoing
  exact h0

private theorem s2Step265EntryBank_checked : compileHmrBankResizeLog .entry s2Step265EntryFBefore ⟨s2Step265EntryFRow,s2Step265EntryGRow,s2Step265EntryFvRow,s2Step265EntryGvRow⟩ ⟨139,139,148,148⟩ [s2Step265EntryFFresh,s2Step265EntryGFresh,s2Step265EntryFvFresh,s2Step265EntryGvFresh]=
    some (s2Step265EntryGvAfter,⟨s2Step265EntryFOut,s2Step265EntryGOut,s2Step265EntryFvOut,s2Step265EntryGvOut⟩,(growRow 768 s2Step265EntryFFresh ++ (growRow 769 s2Step265EntryGFresh ++ (growRow 770 s2Step265EntryFvFresh ++ (growRow 771 s2Step265EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step265EntryBank_rows]
  rfl

private def s2Step265ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<650) ∨ (651≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265ExitFBefore : Arena := s2Step265ExitGAfter

private def s2Step265ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 788],768⟩

private def s2Step265ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 817],770⟩

private def s2Step265ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891, 794],769⟩

private def s2Step265ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779, 782],771⟩

private theorem s2Step265ExitBank_incomingDistinct : ([s2Step265ExitGRow,s2Step265ExitFRow,s2Step265ExitFvRow,s2Step265ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265ExitF_Incoming : rowsOwned s2Step265ExitFBefore [s2Step265ExitFRow,s2Step265ExitFvRow,s2Step265ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265ExitGRow,s2Step265ExitFRow,s2Step265ExitFvRow,s2Step265ExitGvRow] 1 s2Step265ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265ExitBank_outgoingOwned : rowsOwned s2Step265ExitGvAfter [s2Step265ExitGOut,s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step265ExitGvAfter (fun q => (0≤q ∧ q<650) ∨ (651≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265ExitF_Outgoing : rowsOwned s2Step265ExitGvAfter [s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut] :=
  hmrRows_owned_drop s2Step265ExitGvAfter [s2Step265ExitGOut,s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut] 1 s2Step265ExitBank_outgoingOwned

private theorem s2Step265ExitF_distinct : (s2Step265ExitFRow.sign::s2Step265ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265ExitF_owned : (s2Step265ExitFRow.sign::s2Step265ExitFRow.payload).toFinset⊆s2Step265ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265ExitFBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265ExitF_retired : s2Step265ExitFBefore.retireSet s2Step265ExitFExtra.toFinset=s2Step265ExitFAfter := by
  unfold Arena.retireSet s2Step265ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step265ExitFBefore,s2Step265ExitGAfter,s2Step265ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step265ExitF_checked : planRowResizeLog s2Step265ExitFBefore s2Step265ExitFRow 138 []=
    some (s2Step265ExitFAfter,s2Step265ExitFOut,shrinkRow 768 s2Step265ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step265ExitFBefore s2Step265ExitFRow 138 s2Step265ExitF_distinct s2Step265ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step265ExitFRow.payload.take 138) s2Step265ExitFRow.sign=s2Step265ExitFOut := by decide +kernel
  have hi : s2Step265ExitFRow.payload.drop 138=s2Step265ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step265ExitF_retired] at result
  exact result

private def s2Step265ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<650) ∨ (651≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265ExitFvBefore : Arena := s2Step265ExitFAfter

private theorem s2Step265ExitFv_Incoming : rowsOwned s2Step265ExitFvBefore [s2Step265ExitFvRow,s2Step265ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265ExitGRow,s2Step265ExitFRow,s2Step265ExitFvRow,s2Step265ExitGvRow] 2 s2Step265ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265ExitFvBefore (fun q => (0≤q ∧ q<650) ∨ (651≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265ExitFv_Outgoing : rowsOwned s2Step265ExitGvAfter [s2Step265ExitFvOut,s2Step265ExitGvOut] :=
  hmrRows_owned_drop s2Step265ExitGvAfter [s2Step265ExitGOut,s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut] 2 s2Step265ExitBank_outgoingOwned

private theorem s2Step265ExitFv_distinct : (s2Step265ExitFvRow.sign::s2Step265ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265ExitFv_owned : (s2Step265ExitFvRow.sign::s2Step265ExitFvRow.payload).toFinset⊆s2Step265ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265ExitFvBefore (fun q => (0≤q ∧ q<650) ∨ (651≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265ExitFv_retired : s2Step265ExitFvBefore.retireSet s2Step265ExitFvExtra.toFinset=s2Step265ExitFvAfter := by
  unfold Arena.retireSet s2Step265ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step265ExitFvBefore,s2Step265ExitFAfter,s2Step265ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step265ExitFv_checked : planRowResizeLog s2Step265ExitFvBefore s2Step265ExitFvRow 148 []=
    some (s2Step265ExitFvAfter,s2Step265ExitFvOut,shrinkRow 770 s2Step265ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step265ExitFvBefore s2Step265ExitFvRow 148 s2Step265ExitFv_distinct s2Step265ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step265ExitFvRow.payload.take 148) s2Step265ExitFvRow.sign=s2Step265ExitFvOut := by decide +kernel
  have hi : s2Step265ExitFvRow.payload.drop 148=s2Step265ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step265ExitFv_retired] at result
  exact result

private def s2Step265ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step265ExitG_Incoming : rowsOwned s2Step265ExitGBefore [s2Step265ExitGRow,s2Step265ExitFRow,s2Step265ExitFvRow,s2Step265ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265ExitGRow,s2Step265ExitFRow,s2Step265ExitFvRow,s2Step265ExitGvRow] 0 s2Step265ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265ExitG_Outgoing : rowsOwned s2Step265ExitGvAfter [s2Step265ExitGOut,s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut] :=
  hmrRows_owned_drop s2Step265ExitGvAfter [s2Step265ExitGOut,s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut] 0 s2Step265ExitBank_outgoingOwned

private theorem s2Step265ExitG_distinct : (s2Step265ExitGRow.sign::s2Step265ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265ExitG_owned : (s2Step265ExitGRow.sign::s2Step265ExitGRow.payload).toFinset⊆s2Step265ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265ExitG_retired : s2Step265ExitGBefore.retireSet s2Step265ExitGExtra.toFinset=s2Step265ExitGAfter := by
  unfold Arena.retireSet s2Step265ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step265ExitGBefore,s2Step265ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step265ExitG_checked : planRowResizeLog s2Step265ExitGBefore s2Step265ExitGRow 137 []=
    some (s2Step265ExitGAfter,s2Step265ExitGOut,shrinkRow 769 s2Step265ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step265ExitGBefore s2Step265ExitGRow 137 s2Step265ExitG_distinct s2Step265ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step265ExitGRow.payload.take 137) s2Step265ExitGRow.sign=s2Step265ExitGOut := by decide +kernel
  have hi : s2Step265ExitGRow.payload.drop 137=s2Step265ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step265ExitG_retired] at result
  exact result

private def s2Step265ExitGvBefore : Arena := s2Step265ExitFvAfter

private theorem s2Step265ExitGv_Incoming : rowsOwned s2Step265ExitGvBefore [s2Step265ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265ExitGRow,s2Step265ExitFRow,s2Step265ExitFvRow,s2Step265ExitGvRow] 3 s2Step265ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265ExitGvBefore (fun q => (0≤q ∧ q<650) ∨ (651≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265ExitGv_Outgoing : rowsOwned s2Step265ExitGvAfter [s2Step265ExitGvOut] :=
  hmrRows_owned_drop s2Step265ExitGvAfter [s2Step265ExitGOut,s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut] 3 s2Step265ExitBank_outgoingOwned

private theorem s2Step265ExitGv_distinct : (s2Step265ExitGvRow.sign::s2Step265ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265ExitGv_owned : (s2Step265ExitGvRow.sign::s2Step265ExitGvRow.payload).toFinset⊆s2Step265ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265ExitGvBefore (fun q => (0≤q ∧ q<650) ∨ (651≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265ExitGv_retired : s2Step265ExitGvBefore.retireSet s2Step265ExitGvExtra.toFinset=s2Step265ExitGvAfter := by
  unfold Arena.retireSet s2Step265ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step265ExitGvBefore,s2Step265ExitFvAfter,s2Step265ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step265ExitGv_checked : planRowResizeLog s2Step265ExitGvBefore s2Step265ExitGvRow 147 []=
    some (s2Step265ExitGvAfter,s2Step265ExitGvOut,shrinkRow 771 s2Step265ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step265ExitGvBefore s2Step265ExitGvRow 147 s2Step265ExitGv_distinct s2Step265ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step265ExitGvRow.payload.take 147) s2Step265ExitGvRow.sign=s2Step265ExitGvOut := by decide +kernel
  have hi : s2Step265ExitGvRow.payload.drop 147=s2Step265ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step265ExitGv_retired] at result
  exact result

private theorem s2Step265ExitBank_rows : planWindowRowsLog s2Step265ExitGBefore [(s2Step265ExitGRow,137),(s2Step265ExitFRow,138),(s2Step265ExitFvRow,148),(s2Step265ExitGvRow,147)] [[],[],[],[]]=
    some (s2Step265ExitGvAfter,[s2Step265ExitGOut,s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut],(shrinkRow 769 s2Step265ExitGExtra ++ (shrinkRow 768 s2Step265ExitFExtra ++ (shrinkRow 770 s2Step265ExitFvExtra ++ (shrinkRow 771 s2Step265ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step265ExitGvAfter [] []=some (s2Step265ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step265ExitGvBefore s2Step265ExitGvAfter s2Step265ExitGvAfter
    s2Step265ExitGvRow s2Step265ExitGvOut 147 [] [] [] []
    (shrinkRow 771 s2Step265ExitGvExtra) ([]) s2Step265ExitGv_Incoming s2Step265ExitGv_checked h4 s2Step265ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step265ExitFvBefore s2Step265ExitFvAfter s2Step265ExitGvAfter
    s2Step265ExitFvRow s2Step265ExitFvOut 148 [] [(s2Step265ExitGvRow,147)] [[]] [s2Step265ExitGvOut]
    (shrinkRow 770 s2Step265ExitFvExtra) ((shrinkRow 771 s2Step265ExitGvExtra ++ [])) s2Step265ExitFv_Incoming s2Step265ExitFv_checked h3 s2Step265ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step265ExitFBefore s2Step265ExitFAfter s2Step265ExitGvAfter
    s2Step265ExitFRow s2Step265ExitFOut 138 [] [(s2Step265ExitFvRow,148),(s2Step265ExitGvRow,147)] [[],[]] [s2Step265ExitFvOut,s2Step265ExitGvOut]
    (shrinkRow 768 s2Step265ExitFExtra) ((shrinkRow 770 s2Step265ExitFvExtra ++ (shrinkRow 771 s2Step265ExitGvExtra ++ []))) s2Step265ExitF_Incoming s2Step265ExitF_checked h2 s2Step265ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step265ExitGBefore s2Step265ExitGAfter s2Step265ExitGvAfter
    s2Step265ExitGRow s2Step265ExitGOut 137 [] [(s2Step265ExitFRow,138),(s2Step265ExitFvRow,148),(s2Step265ExitGvRow,147)] [[],[],[]] [s2Step265ExitFOut,s2Step265ExitFvOut,s2Step265ExitGvOut]
    (shrinkRow 769 s2Step265ExitGExtra) ((shrinkRow 768 s2Step265ExitFExtra ++ (shrinkRow 770 s2Step265ExitFvExtra ++ (shrinkRow 771 s2Step265ExitGvExtra ++ [])))) s2Step265ExitG_Incoming s2Step265ExitG_checked h1 s2Step265ExitG_Outgoing
  exact h0

private theorem s2Step265ExitBank_checked : compileHmrBankResizeLog .exit s2Step265ExitGBefore ⟨s2Step265ExitFRow,s2Step265ExitGRow,s2Step265ExitFvRow,s2Step265ExitGvRow⟩ ⟨138,137,148,147⟩ [[],[],[],[]]=
    some (s2Step265ExitGvAfter,⟨s2Step265ExitFOut,s2Step265ExitGOut,s2Step265ExitFvOut,s2Step265ExitGvOut⟩,(shrinkRow 769 s2Step265ExitGExtra ++ (shrinkRow 768 s2Step265ExitFExtra ++ (shrinkRow 770 s2Step265ExitFvExtra ++ (shrinkRow 771 s2Step265ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step265ExitBank_rows]
  rfl

private theorem s2Step265Add0_apart : Disjoint s2Step265Add0Arena.live s2Step265Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step265Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265Add0_card : s2Step265Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step265Add0_borrowed : s2Step265Add0Arena.checkBorrow (hmrHybridCount s2Step265Add0Arena s2Step265Add0B.length) s2Step265Add0Work=some s2Step265Add0During := by
  have len : s2Step265Add0Work.length=hmrHybridCount s2Step265Add0Arena s2Step265Add0B.length := by
    rw [hmrHybridCount,s2Step265Add0_card]
    decide +kernel
  have nd : s2Step265Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step265Add0Arena s2Step265Add0During s2Step265Add0Work.toFinset s2Step265Add0_bounded s2Step265Add0_apart rfl

private theorem s2Step265Add0_distinct : (830::877::800::(s2Step265Add0A++s2Step265Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265Add0_owned : (830::877::800::(s2Step265Add0A++s2Step265Add0B)).toFinset⊆s2Step265Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step265Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265Add0_checked : compileHmrHybridCinLog s2Step265Add0Arena 877 830 800 s2Step265Add0A s2Step265Add0B s2Step265Add0Work=some s2Step265Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step265Add0Arena s2Step265Add0During 877 830 800 s2Step265Add0A s2Step265Add0B s2Step265Add0Work
    (by decide +kernel) (by decide +kernel) s2Step265Add0_distinct
    (fun q hq => s2Step265Add0_owned (List.mem_toFinset.mpr hq)) s2Step265Add0_borrowed

private theorem s2Step265Add1_apart : Disjoint s2Step265Add1Arena.live s2Step265Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step265Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265Add1_card : s2Step265Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step265Add1_borrowed : s2Step265Add1Arena.checkBorrow (hmrHybridCount s2Step265Add1Arena s2Step265Add1B.length) s2Step265Add1Work=some s2Step265Add1During := by
  have len : s2Step265Add1Work.length=hmrHybridCount s2Step265Add1Arena s2Step265Add1B.length := by
    rw [hmrHybridCount,s2Step265Add1_card]
    decide +kernel
  have nd : s2Step265Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step265Add1Arena s2Step265Add1During s2Step265Add1Work.toFinset s2Step265Add1_bounded s2Step265Add1_apart rfl

private theorem s2Step265Add1_distinct : (830::877::800::(s2Step265Add1A++s2Step265Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265Add1_owned : (830::877::800::(s2Step265Add1A++s2Step265Add1B)).toFinset⊆s2Step265Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step265Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265Add1_checked : compileHmrHybridCinLog s2Step265Add1Arena 877 830 800 s2Step265Add1A s2Step265Add1B s2Step265Add1Work=some s2Step265Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step265Add1Arena s2Step265Add1During 877 830 800 s2Step265Add1A s2Step265Add1B s2Step265Add1Work
    (by decide +kernel) (by decide +kernel) s2Step265Add1_distinct
    (fun q hq => s2Step265Add1_owned (List.mem_toFinset.mpr hq)) s2Step265Add1_borrowed

private theorem s2Step265F4_apart : Disjoint (s2Step265Add0A++s2Step265Add0B).toFinset (s2Step265Add1A++s2Step265Add1B).toFinset := by
  have nd : ((s2Step265Add0A++s2Step265Add0B)++(s2Step265Add1A++s2Step265Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step265F4_carry : s2Step265F4FlagArena.checkBorrow 1 [800]=some s2Step265Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step265F4FlagArena,s2Step265HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step265F4FlagArena,s2Step265HeadFvAfter,s2Step265Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step265F4_distinct : (829::877::830::800::((s2Step265Add0A++s2Step265Add1A)++(s2Step265Add0B++s2Step265Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265F4_flag : s2Step265HeadFvAfter.checkBorrow 1 [830]=some s2Step265F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step265HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step265F4_owned : (829::877::((s2Step265Add0A++s2Step265Add1A)++(s2Step265Add0B++s2Step265Add1B))).toFinset⊆s2Step265HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step265HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265F4_checked : compileHmrHybridF4Log s2Step265HeadFvAfter 829 877 s2Step265Add0A s2Step265Add0B s2Step265Add1A s2Step265Add1B [830] [800] s2Step265Add0Work s2Step265Add1Work=some s2Step265F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step265HeadFvAfter s2Step265F4FlagArena s2Step265Add0Arena s2Step265Add0During s2Step265Add1During 829 877
    s2Step265Add0A s2Step265Add0B s2Step265Add1A s2Step265Add1B [830] [800] s2Step265Add0Work s2Step265Add1Work
    (fun q hq => s2Step265F4_owned (List.mem_toFinset.mpr hq)) s2Step265F4_flag s2Step265F4_carry
    s2Step265F4_distinct s2Step265F4_apart s2Step265Add0_checked s2Step265Add1_checked

private theorem s2Step265Front_branch : s2Step265FrontSigmaArena.checkBorrow 1 [877]=some s2Step265HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step265FrontSigmaArena,s2Step265EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step265FrontSigmaArena,s2Step265EntryGvAfter,s2Step265HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step265Front_entry : HmrFrontEntryValid s2Step265EntryFBefore s2Step265FrontBank 139 148 ⟨138,137,148,147⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step265FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step265EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step265EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step265FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step265Front_sigma : s2Step265EntryGvAfter.checkBorrow 1 [829]=some s2Step265FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step265EntryGvAfter,arenaWires]
  · rfl

private def s2Step265HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265HeadFBefore : Arena := s2Step265HeadGAfter

private def s2Step265HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650],768⟩

private def s2Step265HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step265HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891],769⟩

private def s2Step265HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779],771⟩

private theorem s2Step265HeadBank_incomingDistinct : ([s2Step265HeadGRow,s2Step265HeadFRow,s2Step265HeadGvRow,s2Step265HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265HeadF_Incoming : rowsOwned s2Step265HeadFBefore [s2Step265HeadFRow,s2Step265HeadGvRow,s2Step265HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265HeadGRow,s2Step265HeadFRow,s2Step265HeadGvRow,s2Step265HeadFvRow] 1 s2Step265HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265HeadBank_outgoingOwned : rowsOwned s2Step265HeadFvAfter [s2Step265HeadGOut,s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step265HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265HeadF_Outgoing : rowsOwned s2Step265HeadFvAfter [s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut] :=
  hmrRows_owned_drop s2Step265HeadFvAfter [s2Step265HeadGOut,s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut] 1 s2Step265HeadBank_outgoingOwned

private theorem s2Step265HeadF_distinct : (s2Step265HeadFRow.sign::s2Step265HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265HeadF_owned : (s2Step265HeadFRow.sign::s2Step265HeadFRow.payload).toFinset⊆s2Step265HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265HeadF_reserved : s2Step265HeadFBefore.reserve s2Step265HeadFFresh.toFinset=some s2Step265HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step265HeadFFresh,arenaWires]
  · norm_num [s2Step265HeadFBefore,s2Step265HeadGAfter,s2Step265HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step265HeadFAfter,s2Step265HeadFBefore,s2Step265HeadGAfter,s2Step265HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step265HeadF_checked : planRowResizeLog s2Step265HeadFBefore s2Step265HeadFRow 140 s2Step265HeadFFresh=
    some (s2Step265HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 788],768⟩,growRow 768 s2Step265HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step265HeadFBefore s2Step265HeadFAfter s2Step265HeadFRow 140 s2Step265HeadFFresh
    s2Step265HeadF_distinct s2Step265HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step265HeadF_reserved
  have rowEq : WindowRow.mk (s2Step265HeadFRow.payload++s2Step265HeadFFresh) s2Step265HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 788],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step265HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step265HeadFvBefore : Arena := s2Step265HeadGvAfter

private theorem s2Step265HeadFv_Incoming : rowsOwned s2Step265HeadFvBefore [s2Step265HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265HeadGRow,s2Step265HeadFRow,s2Step265HeadGvRow,s2Step265HeadFvRow] 3 s2Step265HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265HeadFv_Outgoing : rowsOwned s2Step265HeadFvAfter [s2Step265HeadFvOut] :=
  hmrRows_owned_drop s2Step265HeadFvAfter [s2Step265HeadGOut,s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut] 3 s2Step265HeadBank_outgoingOwned

private theorem s2Step265HeadFv_distinct : (s2Step265HeadFvRow.sign::s2Step265HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265HeadFv_owned : (s2Step265HeadFvRow.sign::s2Step265HeadFvRow.payload).toFinset⊆s2Step265HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265HeadFv_reserved : s2Step265HeadFvBefore.reserve s2Step265HeadFvFresh.toFinset=some s2Step265HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step265HeadFvFresh,arenaWires]
  · norm_num [s2Step265HeadFvBefore,s2Step265HeadGvAfter,s2Step265HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step265HeadFvAfter,s2Step265HeadFvBefore,s2Step265HeadGvAfter,s2Step265HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step265HeadFv_checked : planRowResizeLog s2Step265HeadFvBefore s2Step265HeadFvRow 149 s2Step265HeadFvFresh=
    some (s2Step265HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 817],770⟩,growRow 770 s2Step265HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step265HeadFvBefore s2Step265HeadFvAfter s2Step265HeadFvRow 149 s2Step265HeadFvFresh
    s2Step265HeadFv_distinct s2Step265HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step265HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step265HeadFvRow.payload++s2Step265HeadFvFresh) s2Step265HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step265HeadG_Incoming : rowsOwned s2Step265HeadGBefore [s2Step265HeadGRow,s2Step265HeadFRow,s2Step265HeadGvRow,s2Step265HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265HeadGRow,s2Step265HeadFRow,s2Step265HeadGvRow,s2Step265HeadFvRow] 0 s2Step265HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265HeadG_Outgoing : rowsOwned s2Step265HeadFvAfter [s2Step265HeadGOut,s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut] :=
  hmrRows_owned_drop s2Step265HeadFvAfter [s2Step265HeadGOut,s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut] 0 s2Step265HeadBank_outgoingOwned

private theorem s2Step265HeadG_distinct : (s2Step265HeadGRow.sign::s2Step265HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265HeadG_owned : (s2Step265HeadGRow.sign::s2Step265HeadGRow.payload).toFinset⊆s2Step265HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265HeadG_reserved : s2Step265HeadGBefore.reserve s2Step265HeadGFresh.toFinset=some s2Step265HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step265HeadGFresh,arenaWires]
  · norm_num [s2Step265HeadGBefore,s2Step265HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step265HeadGAfter,s2Step265HeadGBefore,s2Step265HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step265HeadG_checked : planRowResizeLog s2Step265HeadGBefore s2Step265HeadGRow 140 s2Step265HeadGFresh=
    some (s2Step265HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891, 794],769⟩,growRow 769 s2Step265HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step265HeadGBefore s2Step265HeadGAfter s2Step265HeadGRow 140 s2Step265HeadGFresh
    s2Step265HeadG_distinct s2Step265HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step265HeadG_reserved
  have rowEq : WindowRow.mk (s2Step265HeadGRow.payload++s2Step265HeadGFresh) s2Step265HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 836, 891, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step265HeadGvBefore : Arena := s2Step265HeadFAfter

private theorem s2Step265HeadGv_Incoming : rowsOwned s2Step265HeadGvBefore [s2Step265HeadGvRow,s2Step265HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step265HeadGRow,s2Step265HeadFRow,s2Step265HeadGvRow,s2Step265HeadFvRow] 2 s2Step265HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step265HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step265HeadGv_Outgoing : rowsOwned s2Step265HeadFvAfter [s2Step265HeadGvOut,s2Step265HeadFvOut] :=
  hmrRows_owned_drop s2Step265HeadFvAfter [s2Step265HeadGOut,s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut] 2 s2Step265HeadBank_outgoingOwned

private theorem s2Step265HeadGv_distinct : (s2Step265HeadGvRow.sign::s2Step265HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step265HeadGv_owned : (s2Step265HeadGvRow.sign::s2Step265HeadGvRow.payload).toFinset⊆s2Step265HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step265HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step265HeadGv_reserved : s2Step265HeadGvBefore.reserve s2Step265HeadGvFresh.toFinset=some s2Step265HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step265HeadGvFresh,arenaWires]
  · norm_num [s2Step265HeadGvBefore,s2Step265HeadFAfter,s2Step265HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step265HeadGvAfter,s2Step265HeadGvBefore,s2Step265HeadFAfter,s2Step265HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step265HeadGv_checked : planRowResizeLog s2Step265HeadGvBefore s2Step265HeadGvRow 149 s2Step265HeadGvFresh=
    some (s2Step265HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779, 782],771⟩,growRow 771 s2Step265HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step265HeadGvBefore s2Step265HeadGvAfter s2Step265HeadGvRow 149 s2Step265HeadGvFresh
    s2Step265HeadGv_distinct s2Step265HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step265HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step265HeadGvRow.payload++s2Step265HeadGvFresh) s2Step265HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 779, 782],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step265HeadBank_rows : planWindowRowsLog s2Step265HeadGBefore [(s2Step265HeadGRow,140),(s2Step265HeadFRow,140),(s2Step265HeadGvRow,149),(s2Step265HeadFvRow,149)] [s2Step265HeadGFresh,s2Step265HeadFFresh,s2Step265HeadGvFresh,s2Step265HeadFvFresh]=
    some (s2Step265HeadFvAfter,[s2Step265HeadGOut,s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut],(growRow 769 s2Step265HeadGFresh ++ (growRow 768 s2Step265HeadFFresh ++ (growRow 771 s2Step265HeadGvFresh ++ (growRow 770 s2Step265HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step265HeadFvAfter [] []=some (s2Step265HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step265HeadFvBefore s2Step265HeadFvAfter s2Step265HeadFvAfter
    s2Step265HeadFvRow s2Step265HeadFvOut 149 s2Step265HeadFvFresh [] [] []
    (growRow 770 s2Step265HeadFvFresh) ([]) s2Step265HeadFv_Incoming s2Step265HeadFv_checked h4 s2Step265HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step265HeadGvBefore s2Step265HeadGvAfter s2Step265HeadFvAfter
    s2Step265HeadGvRow s2Step265HeadGvOut 149 s2Step265HeadGvFresh [(s2Step265HeadFvRow,149)] [s2Step265HeadFvFresh] [s2Step265HeadFvOut]
    (growRow 771 s2Step265HeadGvFresh) ((growRow 770 s2Step265HeadFvFresh ++ [])) s2Step265HeadGv_Incoming s2Step265HeadGv_checked h3 s2Step265HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step265HeadFBefore s2Step265HeadFAfter s2Step265HeadFvAfter
    s2Step265HeadFRow s2Step265HeadFOut 140 s2Step265HeadFFresh [(s2Step265HeadGvRow,149),(s2Step265HeadFvRow,149)] [s2Step265HeadGvFresh,s2Step265HeadFvFresh] [s2Step265HeadGvOut,s2Step265HeadFvOut]
    (growRow 768 s2Step265HeadFFresh) ((growRow 771 s2Step265HeadGvFresh ++ (growRow 770 s2Step265HeadFvFresh ++ []))) s2Step265HeadF_Incoming s2Step265HeadF_checked h2 s2Step265HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step265HeadGBefore s2Step265HeadGAfter s2Step265HeadFvAfter
    s2Step265HeadGRow s2Step265HeadGOut 140 s2Step265HeadGFresh [(s2Step265HeadFRow,140),(s2Step265HeadGvRow,149),(s2Step265HeadFvRow,149)] [s2Step265HeadFFresh,s2Step265HeadGvFresh,s2Step265HeadFvFresh] [s2Step265HeadFOut,s2Step265HeadGvOut,s2Step265HeadFvOut]
    (growRow 769 s2Step265HeadGFresh) ((growRow 768 s2Step265HeadFFresh ++ (growRow 771 s2Step265HeadGvFresh ++ (growRow 770 s2Step265HeadFvFresh ++ [])))) s2Step265HeadG_Incoming s2Step265HeadG_checked h1 s2Step265HeadG_Outgoing
  exact h0

private theorem s2Step265HeadBank_checked : compileHmrBankResizeLog .headroom s2Step265HeadGBefore ⟨s2Step265HeadFRow,s2Step265HeadGRow,s2Step265HeadFvRow,s2Step265HeadGvRow⟩ ⟨140,140,149,149⟩ [s2Step265HeadGFresh,s2Step265HeadFFresh,s2Step265HeadGvFresh,s2Step265HeadFvFresh]=
    some (s2Step265HeadFvAfter,⟨s2Step265HeadFOut,s2Step265HeadGOut,s2Step265HeadFvOut,s2Step265HeadGvOut⟩,(growRow 769 s2Step265HeadGFresh ++ (growRow 768 s2Step265HeadFFresh ++ (growRow 771 s2Step265HeadGvFresh ++ (growRow 770 s2Step265HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step265HeadBank_rows]
  rfl

private theorem s2Step265Front_checked : compileHmrSourceFrontLog s2Step265EntryFBefore s2Step265FrontBank 139 148 ⟨138,137,148,147⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step265FrontLog=some s2Step265FrontPlan := by
  have pairEq : s2Step265FrontPair=⟨s2Step265HeadFRow,s2Step265HeadGRow,s2Step265HeadFvRow,s2Step265HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step265FrontHead=⟨s2Step265ExitFRow,s2Step265ExitGRow,s2Step265ExitFvRow,s2Step265ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step265Add0A=s2Step265FrontHead.f.wires := by decide +kernel
  have gEq : s2Step265Add0B=s2Step265FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step265Add1A=s2Step265FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step265Add1B=s2Step265FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step265EntryFBefore s2Step265FrontBank 139 148 ⟨138,137,148,147⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step265FrontLog s2Step265FrontPlan
  · exact s2Step265Front_entry
  · exact s2Step265EntryBank_checked
  · exact s2Step265Front_sigma
  · rfl
  · exact s2Step265Front_branch
  · rfl
  · simpa only [s2Step265FrontPlan,pairEq] using s2Step265HeadBank_checked
  · simpa only [s2Step265FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step265F4_checked
  · exact s2Step265Counter_checked
  · rfl
  · simpa only [s2Step265FrontPlan,headEq] using s2Step265ExitBank_checked

private theorem s2Step265Complete_explicit_checked : compileHmrEarlyStepLog s2Step265EntryFBefore s2Step265FrontBank 139 148 ⟨138,137,148,147⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step265CompleteLog=some s2Step265CompletePlan := by
  let Q := s2Step265EarlyControlPlan
  have hq := s2Step265EarlyControl_plan_checked
  have fv1 : s2Step265CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step265CompleteOut.fv.payload[2]?.getD s2Step265CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step265CompleteOut.fv.payload[3]?.getD s2Step265CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step265CompleteOut.fv.payload[4]?.getD s2Step265CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step265EntryFBefore s2Step265EarlyControlArena s2Step265FrontBank 139 148 ⟨138,137,148,147⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step265CompleteLog s2Step265FrontPlan Q
    s2Step265Front_checked s2Step265Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step265Complete_owned s2Step265Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step265EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 829 s2Step265CompleteOut.fv.second (s2Step265CompleteOut.fv.payload[2]?.getD s2Step265CompleteOut.fv.sign) (s2Step265CompleteOut.fv.payload[3]?.getD s2Step265CompleteOut.fv.sign) (s2Step265CompleteOut.fv.payload[4]?.getD s2Step265CompleteOut.fv.sign) 877 52 s2Step265EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep265Arena : Arena := s2Step265EntryFBefore
def s2PrivateStep265Bank : WindowBank := s2Step265FrontBank
def s2PrivateStep265Spec : HmrSourceWalkStepLog := ⟨139,148,⟨138,137,148,147⟩,52,.early s2Step265CompleteLog⟩
def s2PrivateStep265Plan : HmrSourceStepPlan := .early s2Step265CompletePlan
theorem s2PrivateStep265_source : s2PrivateStep265Spec=s2ObservedLogs256[9] := rfl
theorem s2PrivateStep265_checked : compileHmrSourceStepLog s2PrivateStep265Arena s2PrivateStep265Bank
    s2PrivateStep265Spec.fgWidth s2PrivateStep265Spec.vWidth s2PrivateStep265Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 265 s2PrivateStep265Spec.need none s2PrivateStep265Spec.log=some s2PrivateStep265Plan := by
  change compileHmrSourceStepLog s2Step265EntryFBefore s2Step265FrontBank 139 148 ⟨138,137,148,147⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 265 52 none (.early s2Step265CompleteLog)=some (.early s2Step265CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 265<498)]
  rw [s2Step265Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
