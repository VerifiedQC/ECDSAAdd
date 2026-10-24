import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep264
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

private def s2Step266CompleteMoves : List (Wire × Wire) := [(786,136)]

private def s2Step266EarlyControlLog : HmrEarlyControlLog := ⟨[786, 788, 836, 817, 877],[782],[891],[794, 830, 800, 894, 896, 901],[]⟩

private def s2Step266FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [877], [], [829]],[[782], [817], [788], [836]],[[], [], [], []]⟩,[844],[779],[891],[794],[830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[891, 794, 830, 800]⟩

private def s2Step266CompleteLog : HmrEarlyStepLog := ⟨s2Step266FrontLog,s2Step266CompleteMoves,s2Step266EarlyControlLog⟩

private def s2Step266ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step266ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step266ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135],769⟩

private def s2Step266ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private def s2Step266FrontOut : WindowBank := ⟨s2Step266ExitFOut,s2Step266ExitGOut,s2Step266ExitFvOut,s2Step266ExitGvOut⟩

private def s2Step266CompleteOut : WindowBank := s2Step266FrontOut.repacked s2Step266CompleteMoves

private def s2Step266EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step266EarlyControlPositiveArena,[782],s2Step266EarlyControlEqualityArena,[891],⟨⟨844,false⟩,[⟨⟨782,false⟩,891⟩]⟩⟩

private def s2Step266EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,786⟩,⟨⟨774,false⟩,788⟩,⟨⟨775,false⟩,836⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,877⟩]⟩

private def s2Step266EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step266EarlyControlZeroArena,s2Step266EarlyControlZeroPlan,s2Step266EarlyControlClassPlan,s2Step266EarlyControlFlagArena,s2Step266EarlyControlFittedArena,s2Step266EarlyControlHistoryArena,s2Step266EarlyControlSigmaArena,s2Step266EarlyControlOutputArena,s2Step266EarlyControlLog⟩

private def s2Step266CounterWork : List Wire := [891, 794, 830, 800]

private theorem s2Step266Counter_bounded : s2Step266CounterWork.toFinset⊆arenaWires := by norm_num [s2Step266CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step266HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266CounterDuring : Arena := ⟨s2Step266HeadFvAfter.live∪s2Step266CounterWork.toFinset,Finset.union_subset s2Step266HeadFvAfter.bounded s2Step266Counter_bounded⟩

private def s2Step266EntryFFresh : List Wire := []

private def s2Step266EntryFvFresh : List Wire := []

private def s2Step266EntryGFresh : List Wire := [877]

private def s2Step266EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EntryGvFresh : List Wire := [829]

private def s2Step266ExitFExtra : List Wire := [817]

private def s2Step266ExitFvExtra : List Wire := [836]

private def s2Step266ExitGExtra : List Wire := [136, 877, 782]

private def s2Step266ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266ExitGvExtra : List Wire := [788]

private def s2Step266Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step266Add0_bounded : s2Step266Add0Work.toFinset⊆arenaWires := by
  have h : s2Step266Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step266Add0During : Arena := ⟨s2Step266Add0Arena.live∪s2Step266Add0Work.toFinset,Finset.union_subset s2Step266Add0Arena.bounded s2Step266Add0_bounded⟩

private def s2Step266Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step266Add1_bounded : s2Step266Add1Work.toFinset⊆arenaWires := by
  have h : s2Step266Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step266Add1During : Arena := ⟨s2Step266Add1Arena.live∪s2Step266Add1Work.toFinset,Finset.union_subset s2Step266Add1Arena.bounded s2Step266Add1_bounded⟩

private def s2Step266F4FlagArena : Arena := ⟨s2Step266HeadFvAfter.live∪{891},Finset.union_subset s2Step266HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step266F4Plan : HmrHybridF4Plan := ⟨s2Step266F4FlagArena,[891],s2Step266Add0Arena,[794],s2Step266Add0During,s2Step266Add0Work,s2Step266Add1During,s2Step266Add1Work⟩

private def s2Step266HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817],768⟩

private def s2Step266HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 836],770⟩

private def s2Step266HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877, 782],769⟩

private def s2Step266HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 788],771⟩

private def s2Step266FrontHead : WindowBank := ⟨s2Step266HeadFOut,s2Step266HeadGOut,s2Step266HeadFvOut,s2Step266HeadGvOut⟩

private def s2Step266EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step266EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step266EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877],769⟩

private def s2Step266EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private def s2Step266FrontPair : WindowBank := ⟨s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut⟩

private def s2Step266FrontSigmaArena : Arena := ⟨s2Step266EntryGvAfter.live∪{844},Finset.union_subset s2Step266EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step266HeadFFresh : List Wire := [817]

private def s2Step266HeadFvFresh : List Wire := [836]

private def s2Step266HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266HeadGFresh : List Wire := [782]

private def s2Step266HeadGvFresh : List Wire := [788]

private def s2Step266FrontPlan : HmrSourceFront := ⟨s2Step266EntryGvAfter,s2Step266FrontPair,(growRow 768 s2Step266EntryFFresh ++ (growRow 769 s2Step266EntryGFresh ++ (growRow 770 s2Step266EntryFvFresh ++ (growRow 771 s2Step266EntryGvFresh ++ [])))),s2Step266FrontSigmaArena,[844],s2Step266HeadGBefore,[779],
  s2Step266HeadFvAfter,s2Step266FrontHead,(growRow 769 s2Step266HeadGFresh ++ (growRow 768 s2Step266HeadFFresh ++ (growRow 771 s2Step266HeadGvFresh ++ (growRow 770 s2Step266HeadFvFresh ++ [])))),s2Step266F4Plan,s2Step266CounterDuring,s2Step266CounterWork,s2Step266ExitGvAfter,s2Step266FrontOut,(shrinkRow 769 s2Step266ExitGExtra ++ (shrinkRow 768 s2Step266ExitFExtra ++ (shrinkRow 770 s2Step266ExitFvExtra ++ (shrinkRow 771 s2Step266ExitGvExtra ++ []))))⟩

private def s2Step266CompletePlan : HmrEarlyStepPlan := ⟨s2Step266FrontPlan,s2Step266EarlyControlArena,s2Step266EarlyControlPlan,s2Step266CompleteMoves⟩

private theorem s2Step266Complete_apart : List.Disjoint (s2Step266CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] := by
  have nd : ((s2Step266CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step266Complete_owned : (s2Step266CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private def s2Step266CompleteMoveArena : Arena := ⟨s2Step266ExitGvAfter.live∪{136},Finset.union_subset s2Step266ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step266Complete_repack : s2Step266ExitGvAfter.checkRepack s2Step266CompleteMoves=some s2Step266EarlyControlArena := by
  have owned : 786∈s2Step266ExitGvAfter.live := by norm_num [s2Step266ExitGvAfter,arenaWires]
  have reserve : s2Step266ExitGvAfter.reserve {136}=some s2Step266CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step266ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step266CompleteMoveArena.retireSet {786}=s2Step266EarlyControlArena := by
    unfold Arena.retireSet s2Step266EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step266CompleteMoveArena,s2Step266ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step266CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step266CompleteMoveArena.retireSet {786}).checkRepack []=some s2Step266EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step266EarlyControl_branchOwned : ([779] : List Wire).toFinset⊆s2Step266EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_branch : compileHmrBranchRetirement s2Step266EarlyControlSigmaArena 779=some s2Step266EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step266EarlyControl_branchOwned
  · ext q
    simp [s2Step266EarlyControlOutputArena,s2Step266EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step266EarlyControl_classEqualityBorrow : s2Step266EarlyControlPositiveArena.checkBorrow (([844, 782] : List Wire).length-1) s2Step266EarlyControlLog.classWork=some s2Step266EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step266EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step266EarlyControlEqualityArena,s2Step266EarlyControlPositiveArena,s2Step266EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step266EarlyControl_classEqualityOwned : ([844, 782] : List Wire).toFinset⊆s2Step266EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlPositiveArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_classEquality : compileHmrEqualityLog s2Step266EarlyControlPositiveArena [844, 782] 0 s2Step266EarlyControlLog.classWork=some (s2Step266EarlyControlEqualityArena,s2Step266EarlyControlLog.classWork,s2Step266EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step266EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step266EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step266EarlyControl_classOwned : ([777, 877, 844] : List Wire).toFinset⊆s2Step266EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_positiveBorrow : s2Step266EarlyControlZeroArena.checkBorrow (1) s2Step266EarlyControlLog.positiveWork=some s2Step266EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step266EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step266EarlyControlPositiveArena,s2Step266EarlyControlZeroArena,s2Step266EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step266EarlyControl_class : compileHmrSourceClassLog s2Step266EarlyControlZeroArena false 777 s2Step266EarlyControlZeroPlan.top 0 844 s2Step266EarlyControlLog.positiveWork s2Step266EarlyControlLog.classWork=some s2Step266EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step266EarlyControlClassPlan s2Step266EarlyControlZeroArena false 777 s2Step266EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step266EarlyControl_classOwned
  · exact s2Step266EarlyControl_positiveBorrow
  · exact s2Step266EarlyControl_classEquality

private theorem s2Step266EarlyControl_entryRecordOwned : ([779, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_fitBorrow : s2Step266EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step266EarlyControlLog.recordFresh=some s2Step266EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step266EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step266EarlyControlFittedArena,s2Step266EarlyControlFlagArena,s2Step266EarlyControlLog,arenaWires]

private theorem s2Step266EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step266EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlFlagArena (fun q => (0≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_fit : compileHmrRecordGrowLog s2Step266EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step266EarlyControlLog.recordFresh=some s2Step266EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step266EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step266EarlyControl_fitBorrow

private theorem s2Step266EarlyControl_flagsBorrow : s2Step266EarlyControlEqualityArena.checkBorrow (6) s2Step266EarlyControlLog.flagWork=some s2Step266EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step266EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step266EarlyControlFlagArena,s2Step266EarlyControlEqualityArena,s2Step266EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step266EarlyControl_flagsOwned : ([891, 253, 252, 251] : List Wire).toFinset⊆s2Step266EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlEqualityArena (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_flags : compileHmrFlagsLog s2Step266EarlyControlClassPlan.equalityArena s2Step266EarlyControlClassPlan.equality.top 253 252 251 s2Step266EarlyControlLog.flagWork=some s2Step266EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step266EarlyControl_flagsOwned⟩
  · exact s2Step266EarlyControl_flagsBorrow

private theorem s2Step266EarlyControl_historyBorrow : s2Step266EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).length)) s2Step266EarlyControlLog.recordFresh=some s2Step266EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step266EarlyControlHistoryArena,s2Step266EarlyControlArena,s2Step266EarlyControlLog,arenaWires]

private theorem s2Step266EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] : List Wire).toFinset⊆s2Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_history : compileHmrRecordGrowLog s2Step266EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step266EarlyControlLog.recordFresh=some s2Step266EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step266EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step266EarlyControl_historyBorrow

private theorem s2Step266EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step266EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step266EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_sigmaRelease : s2Step266EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step266EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step266EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step266EarlyControlSigmaArena,s2Step266EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step266EarlyControl_sigma : compileHmrSigmaDropLog s2Step266EarlyControlHistoryArena false 0 0 254 844 []=some s2Step266EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step266EarlyControl_sigmaOwned⟩
  · exact s2Step266EarlyControl_sigmaRelease

private theorem s2Step266EarlyControl_zeroBorrow : s2Step266EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step266EarlyControlLog.zeroWork=some s2Step266EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step266EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
      decide +kernel
    · ext q
      simp [s2Step266EarlyControlZeroArena,s2Step266EarlyControlArena,s2Step266EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step266EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step266EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step266EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<786) ∨ (787≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EarlyControl_zero : compileHmrEqualityLog s2Step266EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step266EarlyControlLog.zeroWork=some (s2Step266EarlyControlZeroArena,s2Step266EarlyControlLog.zeroWork,s2Step266EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step266EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step266EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step266EarlyControl_logged : s2Step266EarlyControlPlan.Logged s2Step266EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 844 254 253 252 251 779 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step266EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step266EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step266EarlyControl_zero
  · exact s2Step266EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step266EarlyControl_flags
  · exact s2Step266EarlyControl_fit
  · exact s2Step266EarlyControl_history
  · exact s2Step266EarlyControl_sigma
  · exact s2Step266EarlyControl_branch

private theorem s2Step266EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step266EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 844 254 253 252 251 779 52 s2Step266EarlyControlLog=some s2Step266EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step266EarlyControlPlan s2Step266EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 844 254 253 252 251 779 52 s2Step266EarlyControl_logged

private def s2Step266EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step266EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step266EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136],769⟩

private def s2Step266EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879],771⟩

private def s2Step266FrontBank : WindowBank := ⟨s2Step266EntryFRow,s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow⟩

private def s2Step266Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817, 768]

private def s2Step266Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877, 782, 769]

private def s2Step266Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 836, 770]

private def s2Step266Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 788, 771]

private theorem s2Step266Counter_apart : Disjoint s2Step266HeadFvAfter.live s2Step266CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step266HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266Counter_borrowed : s2Step266HeadFvAfter.checkBorrow 4 s2Step266CounterWork=some s2Step266CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step266HeadFvAfter s2Step266CounterDuring s2Step266CounterWork.toFinset s2Step266Counter_bounded s2Step266Counter_apart rfl

private theorem s2Step266Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step266HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step266HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266Counter_checked : compileHmrCounterStepLog s2Step266HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step266CounterWork=some s2Step266CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step266HeadFvAfter.live := fun q hq => s2Step266Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step266Counter_borrowed

private def s2Step266EntryFAfter : Arena := s2Step266EntryFBefore

private theorem s2Step266EntryBank_incomingDistinct : ([s2Step266EntryFRow,s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266EntryF_Incoming : rowsOwned s2Step266EntryFBefore [s2Step266EntryFRow,s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266EntryFRow,s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow] 0 s2Step266EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266EntryBank_outgoingOwned : rowsOwned s2Step266EntryGvAfter [s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step266EntryGvAfter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266EntryF_Outgoing : rowsOwned s2Step266EntryGvAfter [s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut] :=
  hmrRows_owned_drop s2Step266EntryGvAfter [s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut] 0 s2Step266EntryBank_outgoingOwned

private theorem s2Step266EntryF_distinct : (s2Step266EntryFRow.sign::s2Step266EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266EntryF_owned : (s2Step266EntryFRow.sign::s2Step266EntryFRow.payload).toFinset⊆s2Step266EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EntryF_reserved : s2Step266EntryFBefore.reserve s2Step266EntryFFresh.toFinset=some s2Step266EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step266EntryFFresh,arenaWires]
  · norm_num [s2Step266EntryFBefore,s2Step266EntryFFresh,arenaWires]
  · simp only [s2Step266EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step266EntryF_checked : planRowResizeLog s2Step266EntryFBefore s2Step266EntryFRow 138 s2Step266EntryFFresh=
    some (s2Step266EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩,growRow 768 s2Step266EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step266EntryFBefore s2Step266EntryFAfter s2Step266EntryFRow 138 s2Step266EntryFFresh
    s2Step266EntryF_distinct s2Step266EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step266EntryF_reserved
  have rowEq : WindowRow.mk (s2Step266EntryFRow.payload++s2Step266EntryFFresh) s2Step266EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step266EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266EntryFvAfter : Arena := s2Step266EntryGAfter

private def s2Step266EntryFvBefore : Arena := s2Step266EntryGAfter

private theorem s2Step266EntryFv_Incoming : rowsOwned s2Step266EntryFvBefore [s2Step266EntryFvRow,s2Step266EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266EntryFRow,s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow] 2 s2Step266EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266EntryFv_Outgoing : rowsOwned s2Step266EntryGvAfter [s2Step266EntryFvOut,s2Step266EntryGvOut] :=
  hmrRows_owned_drop s2Step266EntryGvAfter [s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut] 2 s2Step266EntryBank_outgoingOwned

private theorem s2Step266EntryFv_distinct : (s2Step266EntryFvRow.sign::s2Step266EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266EntryFv_owned : (s2Step266EntryFvRow.sign::s2Step266EntryFvRow.payload).toFinset⊆s2Step266EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266EntryFvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EntryFv_reserved : s2Step266EntryFvBefore.reserve s2Step266EntryFvFresh.toFinset=some s2Step266EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step266EntryFvFresh,arenaWires]
  · norm_num [s2Step266EntryFvBefore,s2Step266EntryGAfter,s2Step266EntryFvFresh,arenaWires]
  · simp only [s2Step266EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step266EntryFv_checked : planRowResizeLog s2Step266EntryFvBefore s2Step266EntryFvRow 148 s2Step266EntryFvFresh=
    some (s2Step266EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩,growRow 770 s2Step266EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step266EntryFvBefore s2Step266EntryFvAfter s2Step266EntryFvRow 148 s2Step266EntryFvFresh
    s2Step266EntryFv_distinct s2Step266EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step266EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step266EntryFvRow.payload++s2Step266EntryFvFresh) s2Step266EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step266EntryGBefore : Arena := s2Step266EntryFBefore

private theorem s2Step266EntryG_Incoming : rowsOwned s2Step266EntryGBefore [s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266EntryFRow,s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow] 1 s2Step266EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266EntryG_Outgoing : rowsOwned s2Step266EntryGvAfter [s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut] :=
  hmrRows_owned_drop s2Step266EntryGvAfter [s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut] 1 s2Step266EntryBank_outgoingOwned

private theorem s2Step266EntryG_distinct : (s2Step266EntryGRow.sign::s2Step266EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266EntryG_owned : (s2Step266EntryGRow.sign::s2Step266EntryGRow.payload).toFinset⊆s2Step266EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266EntryGBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EntryG_reserved : s2Step266EntryGBefore.reserve s2Step266EntryGFresh.toFinset=some s2Step266EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step266EntryGFresh,arenaWires]
  · norm_num [s2Step266EntryGBefore,s2Step266EntryFBefore,s2Step266EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step266EntryGAfter,s2Step266EntryGBefore,s2Step266EntryFBefore,s2Step266EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step266EntryG_checked : planRowResizeLog s2Step266EntryGBefore s2Step266EntryGRow 138 s2Step266EntryGFresh=
    some (s2Step266EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877],769⟩,growRow 769 s2Step266EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step266EntryGBefore s2Step266EntryGAfter s2Step266EntryGRow 138 s2Step266EntryGFresh
    s2Step266EntryG_distinct s2Step266EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step266EntryG_reserved
  have rowEq : WindowRow.mk (s2Step266EntryGRow.payload++s2Step266EntryGFresh) s2Step266EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step266EntryGvBefore : Arena := s2Step266EntryGAfter

private theorem s2Step266EntryGv_Incoming : rowsOwned s2Step266EntryGvBefore [s2Step266EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266EntryFRow,s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow] 3 s2Step266EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266EntryGv_Outgoing : rowsOwned s2Step266EntryGvAfter [s2Step266EntryGvOut] :=
  hmrRows_owned_drop s2Step266EntryGvAfter [s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut] 3 s2Step266EntryBank_outgoingOwned

private theorem s2Step266EntryGv_distinct : (s2Step266EntryGvRow.sign::s2Step266EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266EntryGv_owned : (s2Step266EntryGvRow.sign::s2Step266EntryGvRow.payload).toFinset⊆s2Step266EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266EntryGvBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266EntryGv_reserved : s2Step266EntryGvBefore.reserve s2Step266EntryGvFresh.toFinset=some s2Step266EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step266EntryGvFresh,arenaWires]
  · norm_num [s2Step266EntryGvBefore,s2Step266EntryGAfter,s2Step266EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step266EntryGvAfter,s2Step266EntryGvBefore,s2Step266EntryGAfter,s2Step266EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step266EntryGv_checked : planRowResizeLog s2Step266EntryGvBefore s2Step266EntryGvRow 148 s2Step266EntryGvFresh=
    some (s2Step266EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩,growRow 771 s2Step266EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step266EntryGvBefore s2Step266EntryGvAfter s2Step266EntryGvRow 148 s2Step266EntryGvFresh
    s2Step266EntryGv_distinct s2Step266EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step266EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step266EntryGvRow.payload++s2Step266EntryGvFresh) s2Step266EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step266EntryBank_rows : planWindowRowsLog s2Step266EntryFBefore [(s2Step266EntryFRow,138),(s2Step266EntryGRow,138),(s2Step266EntryFvRow,148),(s2Step266EntryGvRow,148)] [s2Step266EntryFFresh,s2Step266EntryGFresh,s2Step266EntryFvFresh,s2Step266EntryGvFresh]=
    some (s2Step266EntryGvAfter,[s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut],(growRow 768 s2Step266EntryFFresh ++ (growRow 769 s2Step266EntryGFresh ++ (growRow 770 s2Step266EntryFvFresh ++ (growRow 771 s2Step266EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step266EntryGvAfter [] []=some (s2Step266EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step266EntryGvBefore s2Step266EntryGvAfter s2Step266EntryGvAfter
    s2Step266EntryGvRow s2Step266EntryGvOut 148 s2Step266EntryGvFresh [] [] []
    (growRow 771 s2Step266EntryGvFresh) ([]) s2Step266EntryGv_Incoming s2Step266EntryGv_checked h4 s2Step266EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step266EntryFvBefore s2Step266EntryFvAfter s2Step266EntryGvAfter
    s2Step266EntryFvRow s2Step266EntryFvOut 148 s2Step266EntryFvFresh [(s2Step266EntryGvRow,148)] [s2Step266EntryGvFresh] [s2Step266EntryGvOut]
    (growRow 770 s2Step266EntryFvFresh) ((growRow 771 s2Step266EntryGvFresh ++ [])) s2Step266EntryFv_Incoming s2Step266EntryFv_checked h3 s2Step266EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step266EntryGBefore s2Step266EntryGAfter s2Step266EntryGvAfter
    s2Step266EntryGRow s2Step266EntryGOut 138 s2Step266EntryGFresh [(s2Step266EntryFvRow,148),(s2Step266EntryGvRow,148)] [s2Step266EntryFvFresh,s2Step266EntryGvFresh] [s2Step266EntryFvOut,s2Step266EntryGvOut]
    (growRow 769 s2Step266EntryGFresh) ((growRow 770 s2Step266EntryFvFresh ++ (growRow 771 s2Step266EntryGvFresh ++ []))) s2Step266EntryG_Incoming s2Step266EntryG_checked h2 s2Step266EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step266EntryFBefore s2Step266EntryFAfter s2Step266EntryGvAfter
    s2Step266EntryFRow s2Step266EntryFOut 138 s2Step266EntryFFresh [(s2Step266EntryGRow,138),(s2Step266EntryFvRow,148),(s2Step266EntryGvRow,148)] [s2Step266EntryGFresh,s2Step266EntryFvFresh,s2Step266EntryGvFresh] [s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut]
    (growRow 768 s2Step266EntryFFresh) ((growRow 769 s2Step266EntryGFresh ++ (growRow 770 s2Step266EntryFvFresh ++ (growRow 771 s2Step266EntryGvFresh ++ [])))) s2Step266EntryF_Incoming s2Step266EntryF_checked h1 s2Step266EntryF_Outgoing
  exact h0

private theorem s2Step266EntryBank_checked : compileHmrBankResizeLog .entry s2Step266EntryFBefore ⟨s2Step266EntryFRow,s2Step266EntryGRow,s2Step266EntryFvRow,s2Step266EntryGvRow⟩ ⟨138,138,148,148⟩ [s2Step266EntryFFresh,s2Step266EntryGFresh,s2Step266EntryFvFresh,s2Step266EntryGvFresh]=
    some (s2Step266EntryGvAfter,⟨s2Step266EntryFOut,s2Step266EntryGOut,s2Step266EntryFvOut,s2Step266EntryGvOut⟩,(growRow 768 s2Step266EntryFFresh ++ (growRow 769 s2Step266EntryGFresh ++ (growRow 770 s2Step266EntryFvFresh ++ (growRow 771 s2Step266EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step266EntryBank_rows]
  rfl

private def s2Step266ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266ExitFBefore : Arena := s2Step266ExitGAfter

private def s2Step266ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817],768⟩

private def s2Step266ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 836],770⟩

private def s2Step266ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877, 782],769⟩

private def s2Step266ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 788],771⟩

private theorem s2Step266ExitBank_incomingDistinct : ([s2Step266ExitGRow,s2Step266ExitFRow,s2Step266ExitFvRow,s2Step266ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266ExitF_Incoming : rowsOwned s2Step266ExitFBefore [s2Step266ExitFRow,s2Step266ExitFvRow,s2Step266ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266ExitGRow,s2Step266ExitFRow,s2Step266ExitFvRow,s2Step266ExitGvRow] 1 s2Step266ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266ExitFBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266ExitBank_outgoingOwned : rowsOwned s2Step266ExitGvAfter [s2Step266ExitGOut,s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step266ExitGvAfter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266ExitF_Outgoing : rowsOwned s2Step266ExitGvAfter [s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut] :=
  hmrRows_owned_drop s2Step266ExitGvAfter [s2Step266ExitGOut,s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut] 1 s2Step266ExitBank_outgoingOwned

private theorem s2Step266ExitF_distinct : (s2Step266ExitFRow.sign::s2Step266ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266ExitF_owned : (s2Step266ExitFRow.sign::s2Step266ExitFRow.payload).toFinset⊆s2Step266ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266ExitFBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266ExitF_retired : s2Step266ExitFBefore.retireSet s2Step266ExitFExtra.toFinset=s2Step266ExitFAfter := by
  unfold Arena.retireSet s2Step266ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step266ExitFBefore,s2Step266ExitGAfter,s2Step266ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step266ExitF_checked : planRowResizeLog s2Step266ExitFBefore s2Step266ExitFRow 138 []=
    some (s2Step266ExitFAfter,s2Step266ExitFOut,shrinkRow 768 s2Step266ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step266ExitFBefore s2Step266ExitFRow 138 s2Step266ExitF_distinct s2Step266ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step266ExitFRow.payload.take 138) s2Step266ExitFRow.sign=s2Step266ExitFOut := by decide +kernel
  have hi : s2Step266ExitFRow.payload.drop 138=s2Step266ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step266ExitF_retired] at result
  exact result

private def s2Step266ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266ExitFvBefore : Arena := s2Step266ExitFAfter

private theorem s2Step266ExitFv_Incoming : rowsOwned s2Step266ExitFvBefore [s2Step266ExitFvRow,s2Step266ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266ExitGRow,s2Step266ExitFRow,s2Step266ExitFvRow,s2Step266ExitGvRow] 2 s2Step266ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266ExitFvBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266ExitFv_Outgoing : rowsOwned s2Step266ExitGvAfter [s2Step266ExitFvOut,s2Step266ExitGvOut] :=
  hmrRows_owned_drop s2Step266ExitGvAfter [s2Step266ExitGOut,s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut] 2 s2Step266ExitBank_outgoingOwned

private theorem s2Step266ExitFv_distinct : (s2Step266ExitFvRow.sign::s2Step266ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266ExitFv_owned : (s2Step266ExitFvRow.sign::s2Step266ExitFvRow.payload).toFinset⊆s2Step266ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266ExitFvBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266ExitFv_retired : s2Step266ExitFvBefore.retireSet s2Step266ExitFvExtra.toFinset=s2Step266ExitFvAfter := by
  unfold Arena.retireSet s2Step266ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step266ExitFvBefore,s2Step266ExitFAfter,s2Step266ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step266ExitFv_checked : planRowResizeLog s2Step266ExitFvBefore s2Step266ExitFvRow 148 []=
    some (s2Step266ExitFvAfter,s2Step266ExitFvOut,shrinkRow 770 s2Step266ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step266ExitFvBefore s2Step266ExitFvRow 148 s2Step266ExitFv_distinct s2Step266ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step266ExitFvRow.payload.take 148) s2Step266ExitFvRow.sign=s2Step266ExitFvOut := by decide +kernel
  have hi : s2Step266ExitFvRow.payload.drop 148=s2Step266ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step266ExitFv_retired] at result
  exact result

private def s2Step266ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private theorem s2Step266ExitG_Incoming : rowsOwned s2Step266ExitGBefore [s2Step266ExitGRow,s2Step266ExitFRow,s2Step266ExitFvRow,s2Step266ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266ExitGRow,s2Step266ExitFRow,s2Step266ExitFvRow,s2Step266ExitGvRow] 0 s2Step266ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266ExitG_Outgoing : rowsOwned s2Step266ExitGvAfter [s2Step266ExitGOut,s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut] :=
  hmrRows_owned_drop s2Step266ExitGvAfter [s2Step266ExitGOut,s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut] 0 s2Step266ExitBank_outgoingOwned

private theorem s2Step266ExitG_distinct : (s2Step266ExitGRow.sign::s2Step266ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266ExitG_owned : (s2Step266ExitGRow.sign::s2Step266ExitGRow.payload).toFinset⊆s2Step266ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266ExitGBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266ExitG_retired : s2Step266ExitGBefore.retireSet s2Step266ExitGExtra.toFinset=s2Step266ExitGAfter := by
  unfold Arena.retireSet s2Step266ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step266ExitGBefore,s2Step266ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step266ExitG_checked : planRowResizeLog s2Step266ExitGBefore s2Step266ExitGRow 136 []=
    some (s2Step266ExitGAfter,s2Step266ExitGOut,shrinkRow 769 s2Step266ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step266ExitGBefore s2Step266ExitGRow 136 s2Step266ExitG_distinct s2Step266ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step266ExitGRow.payload.take 136) s2Step266ExitGRow.sign=s2Step266ExitGOut := by decide +kernel
  have hi : s2Step266ExitGRow.payload.drop 136=s2Step266ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step266ExitG_retired] at result
  exact result

private def s2Step266ExitGvBefore : Arena := s2Step266ExitFvAfter

private theorem s2Step266ExitGv_Incoming : rowsOwned s2Step266ExitGvBefore [s2Step266ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266ExitGRow,s2Step266ExitFRow,s2Step266ExitFvRow,s2Step266ExitGvRow] 3 s2Step266ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266ExitGvBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266ExitGv_Outgoing : rowsOwned s2Step266ExitGvAfter [s2Step266ExitGvOut] :=
  hmrRows_owned_drop s2Step266ExitGvAfter [s2Step266ExitGOut,s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut] 3 s2Step266ExitBank_outgoingOwned

private theorem s2Step266ExitGv_distinct : (s2Step266ExitGvRow.sign::s2Step266ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266ExitGv_owned : (s2Step266ExitGvRow.sign::s2Step266ExitGvRow.payload).toFinset⊆s2Step266ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266ExitGvBefore (fun q => (0≤q ∧ q<136) ∨ (137≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266ExitGv_retired : s2Step266ExitGvBefore.retireSet s2Step266ExitGvExtra.toFinset=s2Step266ExitGvAfter := by
  unfold Arena.retireSet s2Step266ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step266ExitGvBefore,s2Step266ExitFvAfter,s2Step266ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step266ExitGv_checked : planRowResizeLog s2Step266ExitGvBefore s2Step266ExitGvRow 148 []=
    some (s2Step266ExitGvAfter,s2Step266ExitGvOut,shrinkRow 771 s2Step266ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step266ExitGvBefore s2Step266ExitGvRow 148 s2Step266ExitGv_distinct s2Step266ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step266ExitGvRow.payload.take 148) s2Step266ExitGvRow.sign=s2Step266ExitGvOut := by decide +kernel
  have hi : s2Step266ExitGvRow.payload.drop 148=s2Step266ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step266ExitGv_retired] at result
  exact result

private theorem s2Step266ExitBank_rows : planWindowRowsLog s2Step266ExitGBefore [(s2Step266ExitGRow,136),(s2Step266ExitFRow,138),(s2Step266ExitFvRow,148),(s2Step266ExitGvRow,148)] [[],[],[],[]]=
    some (s2Step266ExitGvAfter,[s2Step266ExitGOut,s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut],(shrinkRow 769 s2Step266ExitGExtra ++ (shrinkRow 768 s2Step266ExitFExtra ++ (shrinkRow 770 s2Step266ExitFvExtra ++ (shrinkRow 771 s2Step266ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step266ExitGvAfter [] []=some (s2Step266ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step266ExitGvBefore s2Step266ExitGvAfter s2Step266ExitGvAfter
    s2Step266ExitGvRow s2Step266ExitGvOut 148 [] [] [] []
    (shrinkRow 771 s2Step266ExitGvExtra) ([]) s2Step266ExitGv_Incoming s2Step266ExitGv_checked h4 s2Step266ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step266ExitFvBefore s2Step266ExitFvAfter s2Step266ExitGvAfter
    s2Step266ExitFvRow s2Step266ExitFvOut 148 [] [(s2Step266ExitGvRow,148)] [[]] [s2Step266ExitGvOut]
    (shrinkRow 770 s2Step266ExitFvExtra) ((shrinkRow 771 s2Step266ExitGvExtra ++ [])) s2Step266ExitFv_Incoming s2Step266ExitFv_checked h3 s2Step266ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step266ExitFBefore s2Step266ExitFAfter s2Step266ExitGvAfter
    s2Step266ExitFRow s2Step266ExitFOut 138 [] [(s2Step266ExitFvRow,148),(s2Step266ExitGvRow,148)] [[],[]] [s2Step266ExitFvOut,s2Step266ExitGvOut]
    (shrinkRow 768 s2Step266ExitFExtra) ((shrinkRow 770 s2Step266ExitFvExtra ++ (shrinkRow 771 s2Step266ExitGvExtra ++ []))) s2Step266ExitF_Incoming s2Step266ExitF_checked h2 s2Step266ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step266ExitGBefore s2Step266ExitGAfter s2Step266ExitGvAfter
    s2Step266ExitGRow s2Step266ExitGOut 136 [] [(s2Step266ExitFRow,138),(s2Step266ExitFvRow,148),(s2Step266ExitGvRow,148)] [[],[],[]] [s2Step266ExitFOut,s2Step266ExitFvOut,s2Step266ExitGvOut]
    (shrinkRow 769 s2Step266ExitGExtra) ((shrinkRow 768 s2Step266ExitFExtra ++ (shrinkRow 770 s2Step266ExitFvExtra ++ (shrinkRow 771 s2Step266ExitGvExtra ++ [])))) s2Step266ExitG_Incoming s2Step266ExitG_checked h1 s2Step266ExitG_Outgoing
  exact h0

private theorem s2Step266ExitBank_checked : compileHmrBankResizeLog .exit s2Step266ExitGBefore ⟨s2Step266ExitFRow,s2Step266ExitGRow,s2Step266ExitFvRow,s2Step266ExitGvRow⟩ ⟨138,136,148,148⟩ [[],[],[],[]]=
    some (s2Step266ExitGvAfter,⟨s2Step266ExitFOut,s2Step266ExitGOut,s2Step266ExitFvOut,s2Step266ExitGvOut⟩,(shrinkRow 769 s2Step266ExitGExtra ++ (shrinkRow 768 s2Step266ExitFExtra ++ (shrinkRow 770 s2Step266ExitFvExtra ++ (shrinkRow 771 s2Step266ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step266ExitBank_rows]
  rfl

private theorem s2Step266Add0_apart : Disjoint s2Step266Add0Arena.live s2Step266Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step266Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266Add0_card : s2Step266Add0Arena.live.card=898 := by
  decide +kernel

private theorem s2Step266Add0_borrowed : s2Step266Add0Arena.checkBorrow (hmrHybridCount s2Step266Add0Arena s2Step266Add0B.length) s2Step266Add0Work=some s2Step266Add0During := by
  have len : s2Step266Add0Work.length=hmrHybridCount s2Step266Add0Arena s2Step266Add0B.length := by
    rw [hmrHybridCount,s2Step266Add0_card]
    decide +kernel
  have nd : s2Step266Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step266Add0Arena s2Step266Add0During s2Step266Add0Work.toFinset s2Step266Add0_bounded s2Step266Add0_apart rfl

private theorem s2Step266Add0_distinct : (891::779::794::(s2Step266Add0A++s2Step266Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266Add0_owned : (891::779::794::(s2Step266Add0A++s2Step266Add0B)).toFinset⊆s2Step266Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step266Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266Add0_checked : compileHmrHybridCinLog s2Step266Add0Arena 779 891 794 s2Step266Add0A s2Step266Add0B s2Step266Add0Work=some s2Step266Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step266Add0Arena s2Step266Add0During 779 891 794 s2Step266Add0A s2Step266Add0B s2Step266Add0Work
    (by decide +kernel) (by decide +kernel) s2Step266Add0_distinct
    (fun q hq => s2Step266Add0_owned (List.mem_toFinset.mpr hq)) s2Step266Add0_borrowed

private theorem s2Step266Add1_apart : Disjoint s2Step266Add1Arena.live s2Step266Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step266Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266Add1_card : s2Step266Add1Arena.live.card=898 := by
  decide +kernel

private theorem s2Step266Add1_borrowed : s2Step266Add1Arena.checkBorrow (hmrHybridCount s2Step266Add1Arena s2Step266Add1B.length) s2Step266Add1Work=some s2Step266Add1During := by
  have len : s2Step266Add1Work.length=hmrHybridCount s2Step266Add1Arena s2Step266Add1B.length := by
    rw [hmrHybridCount,s2Step266Add1_card]
    decide +kernel
  have nd : s2Step266Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step266Add1Arena s2Step266Add1During s2Step266Add1Work.toFinset s2Step266Add1_bounded s2Step266Add1_apart rfl

private theorem s2Step266Add1_distinct : (891::779::794::(s2Step266Add1A++s2Step266Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266Add1_owned : (891::779::794::(s2Step266Add1A++s2Step266Add1B)).toFinset⊆s2Step266Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step266Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266Add1_checked : compileHmrHybridCinLog s2Step266Add1Arena 779 891 794 s2Step266Add1A s2Step266Add1B s2Step266Add1Work=some s2Step266Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step266Add1Arena s2Step266Add1During 779 891 794 s2Step266Add1A s2Step266Add1B s2Step266Add1Work
    (by decide +kernel) (by decide +kernel) s2Step266Add1_distinct
    (fun q hq => s2Step266Add1_owned (List.mem_toFinset.mpr hq)) s2Step266Add1_borrowed

private theorem s2Step266F4_apart : Disjoint (s2Step266Add0A++s2Step266Add0B).toFinset (s2Step266Add1A++s2Step266Add1B).toFinset := by
  have nd : ((s2Step266Add0A++s2Step266Add0B)++(s2Step266Add1A++s2Step266Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step266F4_carry : s2Step266F4FlagArena.checkBorrow 1 [794]=some s2Step266Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step266F4FlagArena,s2Step266HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step266F4FlagArena,s2Step266HeadFvAfter,s2Step266Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step266F4_distinct : (844::779::891::794::((s2Step266Add0A++s2Step266Add1A)++(s2Step266Add0B++s2Step266Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266F4_flag : s2Step266HeadFvAfter.checkBorrow 1 [891]=some s2Step266F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step266HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step266F4_owned : (844::779::((s2Step266Add0A++s2Step266Add1A)++(s2Step266Add0B++s2Step266Add1B))).toFinset⊆s2Step266HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step266HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266F4_checked : compileHmrHybridF4Log s2Step266HeadFvAfter 844 779 s2Step266Add0A s2Step266Add0B s2Step266Add1A s2Step266Add1B [891] [794] s2Step266Add0Work s2Step266Add1Work=some s2Step266F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step266HeadFvAfter s2Step266F4FlagArena s2Step266Add0Arena s2Step266Add0During s2Step266Add1During 844 779
    s2Step266Add0A s2Step266Add0B s2Step266Add1A s2Step266Add1B [891] [794] s2Step266Add0Work s2Step266Add1Work
    (fun q hq => s2Step266F4_owned (List.mem_toFinset.mpr hq)) s2Step266F4_flag s2Step266F4_carry
    s2Step266F4_distinct s2Step266F4_apart s2Step266Add0_checked s2Step266Add1_checked

private theorem s2Step266Front_branch : s2Step266FrontSigmaArena.checkBorrow 1 [779]=some s2Step266HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step266FrontSigmaArena,s2Step266EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step266FrontSigmaArena,s2Step266EntryGvAfter,s2Step266HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step266Front_entry : HmrFrontEntryValid s2Step266EntryFBefore s2Step266FrontBank 138 148 ⟨138,136,148,148⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step266FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step266EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step266EntryFBefore (fun q => (0≤q ∧ q<779) ∨ (780≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<844) ∨ (845≤q ∧ q<877) ∨ (878≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step266FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step266Front_sigma : s2Step266EntryGvAfter.checkBorrow 1 [844]=some s2Step266FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step266EntryGvAfter,arenaWires]
  · rfl

private def s2Step266HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266HeadFBefore : Arena := s2Step266HeadGAfter

private def s2Step266HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649],768⟩

private def s2Step266HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885],770⟩

private def s2Step266HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877],769⟩

private def s2Step266HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829],771⟩

private theorem s2Step266HeadBank_incomingDistinct : ([s2Step266HeadGRow,s2Step266HeadFRow,s2Step266HeadGvRow,s2Step266HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266HeadF_Incoming : rowsOwned s2Step266HeadFBefore [s2Step266HeadFRow,s2Step266HeadGvRow,s2Step266HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266HeadGRow,s2Step266HeadFRow,s2Step266HeadGvRow,s2Step266HeadFvRow] 1 s2Step266HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266HeadBank_outgoingOwned : rowsOwned s2Step266HeadFvAfter [s2Step266HeadGOut,s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step266HeadFvAfter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266HeadF_Outgoing : rowsOwned s2Step266HeadFvAfter [s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut] :=
  hmrRows_owned_drop s2Step266HeadFvAfter [s2Step266HeadGOut,s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut] 1 s2Step266HeadBank_outgoingOwned

private theorem s2Step266HeadF_distinct : (s2Step266HeadFRow.sign::s2Step266HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266HeadF_owned : (s2Step266HeadFRow.sign::s2Step266HeadFRow.payload).toFinset⊆s2Step266HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266HeadFBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266HeadF_reserved : s2Step266HeadFBefore.reserve s2Step266HeadFFresh.toFinset=some s2Step266HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step266HeadFFresh,arenaWires]
  · norm_num [s2Step266HeadFBefore,s2Step266HeadGAfter,s2Step266HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step266HeadFAfter,s2Step266HeadFBefore,s2Step266HeadGAfter,s2Step266HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step266HeadF_checked : planRowResizeLog s2Step266HeadFBefore s2Step266HeadFRow 139 s2Step266HeadFFresh=
    some (s2Step266HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817],768⟩,growRow 768 s2Step266HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step266HeadFBefore s2Step266HeadFAfter s2Step266HeadFRow 139 s2Step266HeadFFresh
    s2Step266HeadF_distinct s2Step266HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step266HeadF_reserved
  have rowEq : WindowRow.mk (s2Step266HeadFRow.payload++s2Step266HeadFFresh) s2Step266HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 817],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step266HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step266HeadFvBefore : Arena := s2Step266HeadGvAfter

private theorem s2Step266HeadFv_Incoming : rowsOwned s2Step266HeadFvBefore [s2Step266HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266HeadGRow,s2Step266HeadFRow,s2Step266HeadGvRow,s2Step266HeadFvRow] 3 s2Step266HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266HeadFv_Outgoing : rowsOwned s2Step266HeadFvAfter [s2Step266HeadFvOut] :=
  hmrRows_owned_drop s2Step266HeadFvAfter [s2Step266HeadGOut,s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut] 3 s2Step266HeadBank_outgoingOwned

private theorem s2Step266HeadFv_distinct : (s2Step266HeadFvRow.sign::s2Step266HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266HeadFv_owned : (s2Step266HeadFvRow.sign::s2Step266HeadFvRow.payload).toFinset⊆s2Step266HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266HeadFvBefore (fun q => (0≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266HeadFv_reserved : s2Step266HeadFvBefore.reserve s2Step266HeadFvFresh.toFinset=some s2Step266HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step266HeadFvFresh,arenaWires]
  · norm_num [s2Step266HeadFvBefore,s2Step266HeadGvAfter,s2Step266HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step266HeadFvAfter,s2Step266HeadFvBefore,s2Step266HeadGvAfter,s2Step266HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step266HeadFv_checked : planRowResizeLog s2Step266HeadFvBefore s2Step266HeadFvRow 149 s2Step266HeadFvFresh=
    some (s2Step266HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 836],770⟩,growRow 770 s2Step266HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step266HeadFvBefore s2Step266HeadFvAfter s2Step266HeadFvRow 149 s2Step266HeadFvFresh
    s2Step266HeadFv_distinct s2Step266HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step266HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step266HeadFvRow.payload++s2Step266HeadFvFresh) s2Step266HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 792, 867, 885, 836],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step266HeadG_Incoming : rowsOwned s2Step266HeadGBefore [s2Step266HeadGRow,s2Step266HeadFRow,s2Step266HeadGvRow,s2Step266HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266HeadGRow,s2Step266HeadFRow,s2Step266HeadGvRow,s2Step266HeadFvRow] 0 s2Step266HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266HeadG_Outgoing : rowsOwned s2Step266HeadFvAfter [s2Step266HeadGOut,s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut] :=
  hmrRows_owned_drop s2Step266HeadFvAfter [s2Step266HeadGOut,s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut] 0 s2Step266HeadBank_outgoingOwned

private theorem s2Step266HeadG_distinct : (s2Step266HeadGRow.sign::s2Step266HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266HeadG_owned : (s2Step266HeadGRow.sign::s2Step266HeadGRow.payload).toFinset⊆s2Step266HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266HeadG_reserved : s2Step266HeadGBefore.reserve s2Step266HeadGFresh.toFinset=some s2Step266HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step266HeadGFresh,arenaWires]
  · norm_num [s2Step266HeadGBefore,s2Step266HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step266HeadGAfter,s2Step266HeadGBefore,s2Step266HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step266HeadG_checked : planRowResizeLog s2Step266HeadGBefore s2Step266HeadGRow 139 s2Step266HeadGFresh=
    some (s2Step266HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877, 782],769⟩,growRow 769 s2Step266HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step266HeadGBefore s2Step266HeadGAfter s2Step266HeadGRow 139 s2Step266HeadGFresh
    s2Step266HeadG_distinct s2Step266HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step266HeadG_reserved
  have rowEq : WindowRow.mk (s2Step266HeadGRow.payload++s2Step266HeadGFresh) s2Step266HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 877, 782],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step266HeadGvBefore : Arena := s2Step266HeadFAfter

private theorem s2Step266HeadGv_Incoming : rowsOwned s2Step266HeadGvBefore [s2Step266HeadGvRow,s2Step266HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step266HeadGRow,s2Step266HeadFRow,s2Step266HeadGvRow,s2Step266HeadFvRow] 2 s2Step266HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step266HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
    decide +kernel

private theorem s2Step266HeadGv_Outgoing : rowsOwned s2Step266HeadFvAfter [s2Step266HeadGvOut,s2Step266HeadFvOut] :=
  hmrRows_owned_drop s2Step266HeadFvAfter [s2Step266HeadGOut,s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut] 2 s2Step266HeadBank_outgoingOwned

private theorem s2Step266HeadGv_distinct : (s2Step266HeadGvRow.sign::s2Step266HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step266HeadGv_owned : (s2Step266HeadGvRow.sign::s2Step266HeadGvRow.payload).toFinset⊆s2Step266HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step266HeadGvBefore (fun q => (0≤q ∧ q<788) ∨ (789≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<836) ∨ (837≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step266HeadGv_reserved : s2Step266HeadGvBefore.reserve s2Step266HeadGvFresh.toFinset=some s2Step266HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step266HeadGvFresh,arenaWires]
  · norm_num [s2Step266HeadGvBefore,s2Step266HeadFAfter,s2Step266HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step266HeadGvAfter,s2Step266HeadGvBefore,s2Step266HeadFAfter,s2Step266HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step266HeadGv_checked : planRowResizeLog s2Step266HeadGvBefore s2Step266HeadGvRow 149 s2Step266HeadGvFresh=
    some (s2Step266HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 788],771⟩,growRow 771 s2Step266HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step266HeadGvBefore s2Step266HeadGvAfter s2Step266HeadGvRow 149 s2Step266HeadGvFresh
    s2Step266HeadGv_distinct s2Step266HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step266HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step266HeadGvRow.payload++s2Step266HeadGvFresh) s2Step266HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 814, 879, 829, 788],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step266HeadBank_rows : planWindowRowsLog s2Step266HeadGBefore [(s2Step266HeadGRow,139),(s2Step266HeadFRow,139),(s2Step266HeadGvRow,149),(s2Step266HeadFvRow,149)] [s2Step266HeadGFresh,s2Step266HeadFFresh,s2Step266HeadGvFresh,s2Step266HeadFvFresh]=
    some (s2Step266HeadFvAfter,[s2Step266HeadGOut,s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut],(growRow 769 s2Step266HeadGFresh ++ (growRow 768 s2Step266HeadFFresh ++ (growRow 771 s2Step266HeadGvFresh ++ (growRow 770 s2Step266HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step266HeadFvAfter [] []=some (s2Step266HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step266HeadFvBefore s2Step266HeadFvAfter s2Step266HeadFvAfter
    s2Step266HeadFvRow s2Step266HeadFvOut 149 s2Step266HeadFvFresh [] [] []
    (growRow 770 s2Step266HeadFvFresh) ([]) s2Step266HeadFv_Incoming s2Step266HeadFv_checked h4 s2Step266HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step266HeadGvBefore s2Step266HeadGvAfter s2Step266HeadFvAfter
    s2Step266HeadGvRow s2Step266HeadGvOut 149 s2Step266HeadGvFresh [(s2Step266HeadFvRow,149)] [s2Step266HeadFvFresh] [s2Step266HeadFvOut]
    (growRow 771 s2Step266HeadGvFresh) ((growRow 770 s2Step266HeadFvFresh ++ [])) s2Step266HeadGv_Incoming s2Step266HeadGv_checked h3 s2Step266HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step266HeadFBefore s2Step266HeadFAfter s2Step266HeadFvAfter
    s2Step266HeadFRow s2Step266HeadFOut 139 s2Step266HeadFFresh [(s2Step266HeadGvRow,149),(s2Step266HeadFvRow,149)] [s2Step266HeadGvFresh,s2Step266HeadFvFresh] [s2Step266HeadGvOut,s2Step266HeadFvOut]
    (growRow 768 s2Step266HeadFFresh) ((growRow 771 s2Step266HeadGvFresh ++ (growRow 770 s2Step266HeadFvFresh ++ []))) s2Step266HeadF_Incoming s2Step266HeadF_checked h2 s2Step266HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step266HeadGBefore s2Step266HeadGAfter s2Step266HeadFvAfter
    s2Step266HeadGRow s2Step266HeadGOut 139 s2Step266HeadGFresh [(s2Step266HeadFRow,139),(s2Step266HeadGvRow,149),(s2Step266HeadFvRow,149)] [s2Step266HeadFFresh,s2Step266HeadGvFresh,s2Step266HeadFvFresh] [s2Step266HeadFOut,s2Step266HeadGvOut,s2Step266HeadFvOut]
    (growRow 769 s2Step266HeadGFresh) ((growRow 768 s2Step266HeadFFresh ++ (growRow 771 s2Step266HeadGvFresh ++ (growRow 770 s2Step266HeadFvFresh ++ [])))) s2Step266HeadG_Incoming s2Step266HeadG_checked h1 s2Step266HeadG_Outgoing
  exact h0

private theorem s2Step266HeadBank_checked : compileHmrBankResizeLog .headroom s2Step266HeadGBefore ⟨s2Step266HeadFRow,s2Step266HeadGRow,s2Step266HeadFvRow,s2Step266HeadGvRow⟩ ⟨139,139,149,149⟩ [s2Step266HeadGFresh,s2Step266HeadFFresh,s2Step266HeadGvFresh,s2Step266HeadFvFresh]=
    some (s2Step266HeadFvAfter,⟨s2Step266HeadFOut,s2Step266HeadGOut,s2Step266HeadFvOut,s2Step266HeadGvOut⟩,(growRow 769 s2Step266HeadGFresh ++ (growRow 768 s2Step266HeadFFresh ++ (growRow 771 s2Step266HeadGvFresh ++ (growRow 770 s2Step266HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step266HeadBank_rows]
  rfl

private theorem s2Step266Front_checked : compileHmrSourceFrontLog s2Step266EntryFBefore s2Step266FrontBank 138 148 ⟨138,136,148,148⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step266FrontLog=some s2Step266FrontPlan := by
  have pairEq : s2Step266FrontPair=⟨s2Step266HeadFRow,s2Step266HeadGRow,s2Step266HeadFvRow,s2Step266HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step266FrontHead=⟨s2Step266ExitFRow,s2Step266ExitGRow,s2Step266ExitFvRow,s2Step266ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step266Add0A=s2Step266FrontHead.f.wires := by decide +kernel
  have gEq : s2Step266Add0B=s2Step266FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step266Add1A=s2Step266FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step266Add1B=s2Step266FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step266EntryFBefore s2Step266FrontBank 138 148 ⟨138,136,148,148⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step266FrontLog s2Step266FrontPlan
  · exact s2Step266Front_entry
  · exact s2Step266EntryBank_checked
  · exact s2Step266Front_sigma
  · rfl
  · exact s2Step266Front_branch
  · rfl
  · simpa only [s2Step266FrontPlan,pairEq] using s2Step266HeadBank_checked
  · simpa only [s2Step266FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step266F4_checked
  · exact s2Step266Counter_checked
  · rfl
  · simpa only [s2Step266FrontPlan,headEq] using s2Step266ExitBank_checked

private theorem s2Step266Complete_explicit_checked : compileHmrEarlyStepLog s2Step266EntryFBefore s2Step266FrontBank 138 148 ⟨138,136,148,148⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step266CompleteLog=some s2Step266CompletePlan := by
  let Q := s2Step266EarlyControlPlan
  have hq := s2Step266EarlyControl_plan_checked
  have fv1 : s2Step266CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step266CompleteOut.fv.payload[2]?.getD s2Step266CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step266CompleteOut.fv.payload[3]?.getD s2Step266CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step266CompleteOut.fv.payload[4]?.getD s2Step266CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step266EntryFBefore s2Step266EarlyControlArena s2Step266FrontBank 138 148 ⟨138,136,148,148⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 52 s2Step266CompleteLog s2Step266FrontPlan Q
    s2Step266Front_checked s2Step266Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step266Complete_owned s2Step266Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step266EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 777 844 s2Step266CompleteOut.fv.second (s2Step266CompleteOut.fv.payload[2]?.getD s2Step266CompleteOut.fv.sign) (s2Step266CompleteOut.fv.payload[3]?.getD s2Step266CompleteOut.fv.sign) (s2Step266CompleteOut.fv.payload[4]?.getD s2Step266CompleteOut.fv.sign) 779 52 s2Step266EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep266Arena : Arena := s2Step266EntryFBefore
def s2PrivateStep266Bank : WindowBank := s2Step266FrontBank
def s2PrivateStep266Spec : HmrSourceWalkStepLog := ⟨138,148,⟨138,136,148,148⟩,52,.early s2Step266CompleteLog⟩
def s2PrivateStep266Plan : HmrSourceStepPlan := .early s2Step266CompletePlan
theorem s2PrivateStep266_source : s2PrivateStep266Spec=s2ObservedLogs256[10] := rfl
theorem s2PrivateStep266_checked : compileHmrSourceStepLog s2PrivateStep266Arena s2PrivateStep266Bank
    s2PrivateStep266Spec.fgWidth s2PrivateStep266Spec.vWidth s2PrivateStep266Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902]
    6 498 266 s2PrivateStep266Spec.need none s2PrivateStep266Spec.log=some s2PrivateStep266Plan := by
  change compileHmrSourceStepLog s2Step266EntryFBefore s2Step266FrontBank 138 148 ⟨138,136,148,148⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902] 6 498 266 52 none (.early s2Step266CompleteLog)=some (.early s2Step266CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 266<498)]
  rw [s2Step266Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
