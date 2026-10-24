import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep258
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

private def s2Step260CompleteMoves : List (Wire × Wire) := [(867,652)]

private def s2Step260EarlyControlLog : HmrEarlyControlLog := ⟨[867, 891, 794, 792, 829],[885],[782],[817, 830, 800, 894, 896, 901],[902]⟩

private def s2Step260FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [829], [], []],[[885], [792], [891], [794]],[[], [], [], []]⟩,[814],[788],[782],[817],[830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[782, 817, 830, 800]⟩

private def s2Step260CompleteLog : HmrEarlyStepLog := ⟨s2Step260FrontLog,s2Step260CompleteMoves,s2Step260EarlyControlLog⟩

private def s2Step260ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651],768⟩

private def s2Step260ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step260ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],769⟩

private def s2Step260ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step260FrontOut : WindowBank := ⟨s2Step260ExitFOut,s2Step260ExitGOut,s2Step260ExitFvOut,s2Step260ExitGvOut⟩

private def s2Step260CompleteOut : WindowBank := s2Step260FrontOut.repacked s2Step260CompleteMoves

private def s2Step260EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step260EarlyControlPositiveArena,[885],s2Step260EarlyControlEqualityArena,[782],⟨⟨814,false⟩,[⟨⟨885,false⟩,782⟩]⟩⟩

private def s2Step260EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<902)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,867⟩,⟨⟨774,false⟩,891⟩,⟨⟨775,false⟩,794⟩,⟨⟨776,false⟩,792⟩,⟨⟨777,false⟩,829⟩]⟩

private def s2Step260EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step260EarlyControlZeroArena,s2Step260EarlyControlZeroPlan,s2Step260EarlyControlClassPlan,s2Step260EarlyControlFlagArena,s2Step260EarlyControlFittedArena,s2Step260EarlyControlHistoryArena,s2Step260EarlyControlSigmaArena,s2Step260EarlyControlOutputArena,s2Step260EarlyControlLog⟩

private def s2Step260CounterWork : List Wire := [782, 817, 830, 800]

private theorem s2Step260Counter_bounded : s2Step260CounterWork.toFinset⊆arenaWires := by norm_num [s2Step260CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step260HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260CounterDuring : Arena := ⟨s2Step260HeadFvAfter.live∪s2Step260CounterWork.toFinset,Finset.union_subset s2Step260HeadFvAfter.bounded s2Step260Counter_bounded⟩

private def s2Step260EntryFFresh : List Wire := []

private def s2Step260EntryFvFresh : List Wire := []

private def s2Step260EntryGFresh : List Wire := [829]

private def s2Step260EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260EntryGvAfter : Arena := s2Step260EntryGAfter

private def s2Step260EntryGvFresh : List Wire := []

private def s2Step260ExitFExtra : List Wire := [652, 792]

private def s2Step260ExitFvExtra : List Wire := [794]

private def s2Step260ExitGExtra : List Wire := [829, 885]

private def s2Step260ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<652) ∨ (653≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260ExitGvExtra : List Wire := [891]

private def s2Step260Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260Add0Work : List Wire := [830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step260Add0_bounded : s2Step260Add0Work.toFinset⊆arenaWires := by
  have h : s2Step260Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step260Add0During : Arena := ⟨s2Step260Add0Arena.live∪s2Step260Add0Work.toFinset,Finset.union_subset s2Step260Add0Arena.bounded s2Step260Add0_bounded⟩

private def s2Step260Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260Add1Work : List Wire := [830, 800, 894, 896, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step260Add1_bounded : s2Step260Add1Work.toFinset⊆arenaWires := by
  have h : s2Step260Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step260Add1During : Arena := ⟨s2Step260Add1Arena.live∪s2Step260Add1Work.toFinset,Finset.union_subset s2Step260Add1Arena.bounded s2Step260Add1_bounded⟩

private def s2Step260F4FlagArena : Arena := ⟨s2Step260HeadFvAfter.live∪{782},Finset.union_subset s2Step260HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step260F4Plan : HmrHybridF4Plan := ⟨s2Step260F4FlagArena,[782],s2Step260Add0Arena,[817],s2Step260Add0During,s2Step260Add0Work,s2Step260Add1During,s2Step260Add1Work⟩

private def s2Step260HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 792],768⟩

private def s2Step260HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 794],770⟩

private def s2Step260HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829, 885],769⟩

private def s2Step260HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 891],771⟩

private def s2Step260FrontHead : WindowBank := ⟨s2Step260HeadFOut,s2Step260HeadGOut,s2Step260HeadFvOut,s2Step260HeadGvOut⟩

private def s2Step260EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩

private def s2Step260EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step260EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829],769⟩

private def s2Step260EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step260FrontPair : WindowBank := ⟨s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut⟩

private def s2Step260FrontSigmaArena : Arena := ⟨s2Step260EntryGvAfter.live∪{814},Finset.union_subset s2Step260EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step260HeadFFresh : List Wire := [792]

private def s2Step260HeadFvFresh : List Wire := [794]

private def s2Step260HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260HeadGFresh : List Wire := [885]

private def s2Step260HeadGvFresh : List Wire := [891]

private def s2Step260FrontPlan : HmrSourceFront := ⟨s2Step260EntryGvAfter,s2Step260FrontPair,(growRow 768 s2Step260EntryFFresh ++ (growRow 769 s2Step260EntryGFresh ++ (growRow 770 s2Step260EntryFvFresh ++ (growRow 771 s2Step260EntryGvFresh ++ [])))),s2Step260FrontSigmaArena,[814],s2Step260HeadGBefore,[788],
  s2Step260HeadFvAfter,s2Step260FrontHead,(growRow 769 s2Step260HeadGFresh ++ (growRow 768 s2Step260HeadFFresh ++ (growRow 771 s2Step260HeadGvFresh ++ (growRow 770 s2Step260HeadFvFresh ++ [])))),s2Step260F4Plan,s2Step260CounterDuring,s2Step260CounterWork,s2Step260ExitGvAfter,s2Step260FrontOut,(shrinkRow 769 s2Step260ExitGExtra ++ (shrinkRow 768 s2Step260ExitFExtra ++ (shrinkRow 770 s2Step260ExitFvExtra ++ (shrinkRow 771 s2Step260ExitGvExtra ++ []))))⟩

private def s2Step260CompletePlan : HmrEarlyStepPlan := ⟨s2Step260FrontPlan,s2Step260EarlyControlArena,s2Step260EarlyControlPlan,s2Step260CompleteMoves⟩

private theorem s2Step260Complete_apart : List.Disjoint (s2Step260CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [814, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] := by
  have nd : ((s2Step260CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[814, 788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step260Complete_owned : (s2Step260CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step260EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private def s2Step260CompleteMoveArena : Arena := ⟨s2Step260ExitGvAfter.live∪{652},Finset.union_subset s2Step260ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step260Complete_repack : s2Step260ExitGvAfter.checkRepack s2Step260CompleteMoves=some s2Step260EarlyControlArena := by
  have owned : 867∈s2Step260ExitGvAfter.live := by norm_num [s2Step260ExitGvAfter,arenaWires]
  have reserve : s2Step260ExitGvAfter.reserve {652}=some s2Step260CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step260ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step260CompleteMoveArena.retireSet {867}=s2Step260EarlyControlArena := by
    unfold Arena.retireSet s2Step260EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step260CompleteMoveArena,s2Step260ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step260CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step260CompleteMoveArena.retireSet {867}).checkRepack []=some s2Step260EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step260EarlyControl_branchOwned : ([788] : List Wire).toFinset⊆s2Step260EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlSigmaArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_branch : compileHmrBranchRetirement s2Step260EarlyControlSigmaArena 788=some s2Step260EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step260EarlyControl_branchOwned
  · ext q
    simp [s2Step260EarlyControlOutputArena,s2Step260EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step260EarlyControl_classEqualityBorrow : s2Step260EarlyControlPositiveArena.checkBorrow (([814, 885] : List Wire).length-1) s2Step260EarlyControlLog.classWork=some s2Step260EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step260EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step260EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step260EarlyControlEqualityArena,s2Step260EarlyControlPositiveArena,s2Step260EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step260EarlyControl_classEqualityOwned : ([814, 885] : List Wire).toFinset⊆s2Step260EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlPositiveArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_classEquality : compileHmrEqualityLog s2Step260EarlyControlPositiveArena [814, 885] 0 s2Step260EarlyControlLog.classWork=some (s2Step260EarlyControlEqualityArena,s2Step260EarlyControlLog.classWork,s2Step260EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step260EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step260EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step260EarlyControl_classOwned : ([777, 829, 814] : List Wire).toFinset⊆s2Step260EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_positiveBorrow : s2Step260EarlyControlZeroArena.checkBorrow (1) s2Step260EarlyControlLog.positiveWork=some s2Step260EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step260EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step260EarlyControlZeroArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step260EarlyControlPositiveArena,s2Step260EarlyControlZeroArena,s2Step260EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step260EarlyControl_class : compileHmrSourceClassLog s2Step260EarlyControlZeroArena false 777 s2Step260EarlyControlZeroPlan.top 0 814 s2Step260EarlyControlLog.positiveWork s2Step260EarlyControlLog.classWork=some s2Step260EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step260EarlyControlClassPlan s2Step260EarlyControlZeroArena false 777 s2Step260EarlyControlZeroPlan.top 0 814
  constructor
  · decide +kernel
  · exact s2Step260EarlyControl_classOwned
  · exact s2Step260EarlyControl_positiveBorrow
  · exact s2Step260EarlyControl_classEquality

private theorem s2Step260EarlyControl_entryRecordOwned : ([788, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step260EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_entrySigmaOwned : ([814, 254] : List Wire).toFinset⊆s2Step260EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_fitBorrow : s2Step260EarlyControlFlagArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step260EarlyControlLog.recordFresh=some s2Step260EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step260EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step260EarlyControlFlagArena (fun q => (0≤q ∧ q<902)) rfl
      decide +kernel
    · ext q
      simp [s2Step260EarlyControlFittedArena,s2Step260EarlyControlFlagArena,s2Step260EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step260EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step260EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlFlagArena (fun q => (0≤q ∧ q<902)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_fit : compileHmrRecordGrowLog s2Step260EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 52 s2Step260EarlyControlLog.recordFresh=some s2Step260EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step260EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step260EarlyControl_fitBorrow

private theorem s2Step260EarlyControl_flagsBorrow : s2Step260EarlyControlEqualityArena.checkBorrow (6) s2Step260EarlyControlLog.flagWork=some s2Step260EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step260EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step260EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step260EarlyControlFlagArena,s2Step260EarlyControlEqualityArena,s2Step260EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step260EarlyControl_flagsOwned : ([782, 253, 252, 251] : List Wire).toFinset⊆s2Step260EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_flags : compileHmrFlagsLog s2Step260EarlyControlClassPlan.equalityArena s2Step260EarlyControlClassPlan.equality.top 253 252 251 s2Step260EarlyControlLog.flagWork=some s2Step260EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step260EarlyControl_flagsOwned⟩
  · exact s2Step260EarlyControl_flagsBorrow

private theorem s2Step260EarlyControl_historyBorrow : s2Step260EarlyControlArena.checkBorrow ((52-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).length)) s2Step260EarlyControlLog.recordFresh=some s2Step260EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step260EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step260EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step260EarlyControlHistoryArena,s2Step260EarlyControlArena,s2Step260EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step260EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] : List Wire).toFinset⊆s2Step260EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_history : compileHmrRecordGrowLog s2Step260EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 52 s2Step260EarlyControlLog.recordFresh=some s2Step260EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step260EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step260EarlyControl_historyBorrow

private theorem s2Step260EarlyControl_sigmaOwned : ([254, 814] : List Wire).toFinset⊆s2Step260EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_sigmaReleaseOwned : ([814] : List Wire).toFinset⊆s2Step260EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlHistoryArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_sigmaRelease : s2Step260EarlyControlHistoryArena.release {814} (fun _ => false)=some s2Step260EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step260EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step260EarlyControlSigmaArena,s2Step260EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step260EarlyControl_sigma : compileHmrSigmaDropLog s2Step260EarlyControlHistoryArena false 0 0 254 814 []=some s2Step260EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step260EarlyControl_sigmaOwned⟩
  · exact s2Step260EarlyControl_sigmaRelease

private theorem s2Step260EarlyControl_zeroBorrow : s2Step260EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step260EarlyControlLog.zeroWork=some s2Step260EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step260EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step260EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
      decide +kernel
    · ext q
      simp [s2Step260EarlyControlZeroArena,s2Step260EarlyControlArena,s2Step260EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step260EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step260EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step260EarlyControlArena (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<867) ∨ (868≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EarlyControl_zero : compileHmrEqualityLog s2Step260EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step260EarlyControlLog.zeroWork=some (s2Step260EarlyControlZeroArena,s2Step260EarlyControlLog.zeroWork,s2Step260EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step260EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step260EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step260EarlyControl_logged : s2Step260EarlyControlPlan.Logged s2Step260EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 788 52 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step260EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step260EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step260EarlyControl_zero
  · exact s2Step260EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step260EarlyControl_flags
  · exact s2Step260EarlyControl_fit
  · exact s2Step260EarlyControl_history
  · exact s2Step260EarlyControl_sigma
  · exact s2Step260EarlyControl_branch

private theorem s2Step260EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step260EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 788 52 s2Step260EarlyControlLog=some s2Step260EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step260EarlyControlPlan s2Step260EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 254 253 252 251 788 52 s2Step260EarlyControl_logged

private def s2Step260EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩

private def s2Step260EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step260EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139],769⟩

private def s2Step260EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private def s2Step260FrontBank : WindowBank := ⟨s2Step260EntryFRow,s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow⟩

private def s2Step260Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 792, 768]

private def s2Step260Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829, 885, 769]

private def s2Step260Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 794, 770]

private def s2Step260Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 891, 771]

private theorem s2Step260Counter_apart : Disjoint s2Step260HeadFvAfter.live s2Step260CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step260HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260Counter_borrowed : s2Step260HeadFvAfter.checkBorrow 4 s2Step260CounterWork=some s2Step260CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step260HeadFvAfter s2Step260CounterDuring s2Step260CounterWork.toFinset s2Step260Counter_bounded s2Step260Counter_apart rfl

private theorem s2Step260Counter_owned : (814::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step260HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step260HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260Counter_checked : compileHmrCounterStepLog s2Step260HeadFvAfter true 814 [772, 773, 774, 775, 776, 777] s2Step260CounterWork=some s2Step260CounterDuring := by
  have owned : ∀q∈814::[772, 773, 774, 775, 776, 777],q∈s2Step260HeadFvAfter.live := fun q hq => s2Step260Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step260Counter_borrowed

private def s2Step260EntryFAfter : Arena := s2Step260EntryFBefore

private theorem s2Step260EntryBank_incomingDistinct : ([s2Step260EntryFRow,s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260EntryF_Incoming : rowsOwned s2Step260EntryFBefore [s2Step260EntryFRow,s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260EntryFRow,s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow] 0 s2Step260EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260EntryBank_outgoingOwned : rowsOwned s2Step260EntryGvAfter [s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step260EntryGvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260EntryF_Outgoing : rowsOwned s2Step260EntryGvAfter [s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut] :=
  hmrRows_owned_drop s2Step260EntryGvAfter [s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut] 0 s2Step260EntryBank_outgoingOwned

private theorem s2Step260EntryF_distinct : (s2Step260EntryFRow.sign::s2Step260EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260EntryF_owned : (s2Step260EntryFRow.sign::s2Step260EntryFRow.payload).toFinset⊆s2Step260EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EntryF_reserved : s2Step260EntryFBefore.reserve s2Step260EntryFFresh.toFinset=some s2Step260EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step260EntryFFresh,arenaWires]
  · norm_num [s2Step260EntryFBefore,s2Step260EntryFFresh,arenaWires]
  · simp only [s2Step260EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step260EntryF_checked : planRowResizeLog s2Step260EntryFBefore s2Step260EntryFRow 141 s2Step260EntryFFresh=
    some (s2Step260EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩,growRow 768 s2Step260EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step260EntryFBefore s2Step260EntryFAfter s2Step260EntryFRow 141 s2Step260EntryFFresh
    s2Step260EntryF_distinct s2Step260EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step260EntryF_reserved
  have rowEq : WindowRow.mk (s2Step260EntryFRow.payload++s2Step260EntryFFresh) s2Step260EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step260EntryFvAfter : Arena := s2Step260EntryGAfter

private def s2Step260EntryFvBefore : Arena := s2Step260EntryGAfter

private theorem s2Step260EntryFv_Incoming : rowsOwned s2Step260EntryFvBefore [s2Step260EntryFvRow,s2Step260EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260EntryFRow,s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow] 2 s2Step260EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260EntryFv_Outgoing : rowsOwned s2Step260EntryGvAfter [s2Step260EntryFvOut,s2Step260EntryGvOut] :=
  hmrRows_owned_drop s2Step260EntryGvAfter [s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut] 2 s2Step260EntryBank_outgoingOwned

private theorem s2Step260EntryFv_distinct : (s2Step260EntryFvRow.sign::s2Step260EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260EntryFv_owned : (s2Step260EntryFvRow.sign::s2Step260EntryFvRow.payload).toFinset⊆s2Step260EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260EntryFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EntryFv_reserved : s2Step260EntryFvBefore.reserve s2Step260EntryFvFresh.toFinset=some s2Step260EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step260EntryFvFresh,arenaWires]
  · norm_num [s2Step260EntryFvBefore,s2Step260EntryGAfter,s2Step260EntryFvFresh,arenaWires]
  · simp only [s2Step260EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step260EntryFv_checked : planRowResizeLog s2Step260EntryFvBefore s2Step260EntryFvRow 145 s2Step260EntryFvFresh=
    some (s2Step260EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩,growRow 770 s2Step260EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step260EntryFvBefore s2Step260EntryFvAfter s2Step260EntryFvRow 145 s2Step260EntryFvFresh
    s2Step260EntryFv_distinct s2Step260EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step260EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step260EntryFvRow.payload++s2Step260EntryFvFresh) s2Step260EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step260EntryGBefore : Arena := s2Step260EntryFBefore

private theorem s2Step260EntryG_Incoming : rowsOwned s2Step260EntryGBefore [s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260EntryFRow,s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow] 1 s2Step260EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260EntryG_Outgoing : rowsOwned s2Step260EntryGvAfter [s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut] :=
  hmrRows_owned_drop s2Step260EntryGvAfter [s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut] 1 s2Step260EntryBank_outgoingOwned

private theorem s2Step260EntryG_distinct : (s2Step260EntryGRow.sign::s2Step260EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260EntryG_owned : (s2Step260EntryGRow.sign::s2Step260EntryGRow.payload).toFinset⊆s2Step260EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260EntryGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EntryG_reserved : s2Step260EntryGBefore.reserve s2Step260EntryGFresh.toFinset=some s2Step260EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step260EntryGFresh,arenaWires]
  · norm_num [s2Step260EntryGBefore,s2Step260EntryFBefore,s2Step260EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step260EntryGAfter,s2Step260EntryGBefore,s2Step260EntryFBefore,s2Step260EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step260EntryG_checked : planRowResizeLog s2Step260EntryGBefore s2Step260EntryGRow 141 s2Step260EntryGFresh=
    some (s2Step260EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829],769⟩,growRow 769 s2Step260EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step260EntryGBefore s2Step260EntryGAfter s2Step260EntryGRow 141 s2Step260EntryGFresh
    s2Step260EntryG_distinct s2Step260EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step260EntryG_reserved
  have rowEq : WindowRow.mk (s2Step260EntryGRow.payload++s2Step260EntryGFresh) s2Step260EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step260EntryGvBefore : Arena := s2Step260EntryGAfter

private theorem s2Step260EntryGv_Incoming : rowsOwned s2Step260EntryGvBefore [s2Step260EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260EntryFRow,s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow] 3 s2Step260EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260EntryGv_Outgoing : rowsOwned s2Step260EntryGvAfter [s2Step260EntryGvOut] :=
  hmrRows_owned_drop s2Step260EntryGvAfter [s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut] 3 s2Step260EntryBank_outgoingOwned

private theorem s2Step260EntryGv_distinct : (s2Step260EntryGvRow.sign::s2Step260EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260EntryGv_owned : (s2Step260EntryGvRow.sign::s2Step260EntryGvRow.payload).toFinset⊆s2Step260EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260EntryGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260EntryGv_reserved : s2Step260EntryGvBefore.reserve s2Step260EntryGvFresh.toFinset=some s2Step260EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step260EntryGvFresh,arenaWires]
  · norm_num [s2Step260EntryGvBefore,s2Step260EntryGAfter,s2Step260EntryGvFresh,arenaWires]
  · simp only [s2Step260EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step260EntryGv_checked : planRowResizeLog s2Step260EntryGvBefore s2Step260EntryGvRow 145 s2Step260EntryGvFresh=
    some (s2Step260EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩,growRow 771 s2Step260EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step260EntryGvBefore s2Step260EntryGvAfter s2Step260EntryGvRow 145 s2Step260EntryGvFresh
    s2Step260EntryGv_distinct s2Step260EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step260EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step260EntryGvRow.payload++s2Step260EntryGvFresh) s2Step260EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step260EntryBank_rows : planWindowRowsLog s2Step260EntryFBefore [(s2Step260EntryFRow,141),(s2Step260EntryGRow,141),(s2Step260EntryFvRow,145),(s2Step260EntryGvRow,145)] [s2Step260EntryFFresh,s2Step260EntryGFresh,s2Step260EntryFvFresh,s2Step260EntryGvFresh]=
    some (s2Step260EntryGvAfter,[s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut],(growRow 768 s2Step260EntryFFresh ++ (growRow 769 s2Step260EntryGFresh ++ (growRow 770 s2Step260EntryFvFresh ++ (growRow 771 s2Step260EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step260EntryGvAfter [] []=some (s2Step260EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step260EntryGvBefore s2Step260EntryGvAfter s2Step260EntryGvAfter
    s2Step260EntryGvRow s2Step260EntryGvOut 145 s2Step260EntryGvFresh [] [] []
    (growRow 771 s2Step260EntryGvFresh) ([]) s2Step260EntryGv_Incoming s2Step260EntryGv_checked h4 s2Step260EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step260EntryFvBefore s2Step260EntryFvAfter s2Step260EntryGvAfter
    s2Step260EntryFvRow s2Step260EntryFvOut 145 s2Step260EntryFvFresh [(s2Step260EntryGvRow,145)] [s2Step260EntryGvFresh] [s2Step260EntryGvOut]
    (growRow 770 s2Step260EntryFvFresh) ((growRow 771 s2Step260EntryGvFresh ++ [])) s2Step260EntryFv_Incoming s2Step260EntryFv_checked h3 s2Step260EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step260EntryGBefore s2Step260EntryGAfter s2Step260EntryGvAfter
    s2Step260EntryGRow s2Step260EntryGOut 141 s2Step260EntryGFresh [(s2Step260EntryFvRow,145),(s2Step260EntryGvRow,145)] [s2Step260EntryFvFresh,s2Step260EntryGvFresh] [s2Step260EntryFvOut,s2Step260EntryGvOut]
    (growRow 769 s2Step260EntryGFresh) ((growRow 770 s2Step260EntryFvFresh ++ (growRow 771 s2Step260EntryGvFresh ++ []))) s2Step260EntryG_Incoming s2Step260EntryG_checked h2 s2Step260EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step260EntryFBefore s2Step260EntryFAfter s2Step260EntryGvAfter
    s2Step260EntryFRow s2Step260EntryFOut 141 s2Step260EntryFFresh [(s2Step260EntryGRow,141),(s2Step260EntryFvRow,145),(s2Step260EntryGvRow,145)] [s2Step260EntryGFresh,s2Step260EntryFvFresh,s2Step260EntryGvFresh] [s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut]
    (growRow 768 s2Step260EntryFFresh) ((growRow 769 s2Step260EntryGFresh ++ (growRow 770 s2Step260EntryFvFresh ++ (growRow 771 s2Step260EntryGvFresh ++ [])))) s2Step260EntryF_Incoming s2Step260EntryF_checked h1 s2Step260EntryF_Outgoing
  exact h0

private theorem s2Step260EntryBank_checked : compileHmrBankResizeLog .entry s2Step260EntryFBefore ⟨s2Step260EntryFRow,s2Step260EntryGRow,s2Step260EntryFvRow,s2Step260EntryGvRow⟩ ⟨141,141,145,145⟩ [s2Step260EntryFFresh,s2Step260EntryGFresh,s2Step260EntryFvFresh,s2Step260EntryGvFresh]=
    some (s2Step260EntryGvAfter,⟨s2Step260EntryFOut,s2Step260EntryGOut,s2Step260EntryFvOut,s2Step260EntryGvOut⟩,(growRow 768 s2Step260EntryFFresh ++ (growRow 769 s2Step260EntryGFresh ++ (growRow 770 s2Step260EntryFvFresh ++ (growRow 771 s2Step260EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step260EntryBank_rows]
  rfl

private def s2Step260ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<652) ∨ (653≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260ExitFBefore : Arena := s2Step260ExitGAfter

private def s2Step260ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 792],768⟩

private def s2Step260ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 794],770⟩

private def s2Step260ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829, 885],769⟩

private def s2Step260ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 891],771⟩

private theorem s2Step260ExitBank_incomingDistinct : ([s2Step260ExitGRow,s2Step260ExitFRow,s2Step260ExitFvRow,s2Step260ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260ExitF_Incoming : rowsOwned s2Step260ExitFBefore [s2Step260ExitFRow,s2Step260ExitFvRow,s2Step260ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260ExitGRow,s2Step260ExitFRow,s2Step260ExitFvRow,s2Step260ExitGvRow] 1 s2Step260ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260ExitBank_outgoingOwned : rowsOwned s2Step260ExitGvAfter [s2Step260ExitGOut,s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step260ExitGvAfter (fun q => (0≤q ∧ q<652) ∨ (653≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260ExitF_Outgoing : rowsOwned s2Step260ExitGvAfter [s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut] :=
  hmrRows_owned_drop s2Step260ExitGvAfter [s2Step260ExitGOut,s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut] 1 s2Step260ExitBank_outgoingOwned

private theorem s2Step260ExitF_distinct : (s2Step260ExitFRow.sign::s2Step260ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260ExitF_owned : (s2Step260ExitFRow.sign::s2Step260ExitFRow.payload).toFinset⊆s2Step260ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260ExitFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260ExitF_retired : s2Step260ExitFBefore.retireSet s2Step260ExitFExtra.toFinset=s2Step260ExitFAfter := by
  unfold Arena.retireSet s2Step260ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step260ExitFBefore,s2Step260ExitGAfter,s2Step260ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step260ExitF_checked : planRowResizeLog s2Step260ExitFBefore s2Step260ExitFRow 140 []=
    some (s2Step260ExitFAfter,s2Step260ExitFOut,shrinkRow 768 s2Step260ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step260ExitFBefore s2Step260ExitFRow 140 s2Step260ExitF_distinct s2Step260ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step260ExitFRow.payload.take 140) s2Step260ExitFRow.sign=s2Step260ExitFOut := by decide +kernel
  have hi : s2Step260ExitFRow.payload.drop 140=s2Step260ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step260ExitF_retired] at result
  exact result

private def s2Step260ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<652) ∨ (653≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260ExitFvBefore : Arena := s2Step260ExitFAfter

private theorem s2Step260ExitFv_Incoming : rowsOwned s2Step260ExitFvBefore [s2Step260ExitFvRow,s2Step260ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260ExitGRow,s2Step260ExitFRow,s2Step260ExitFvRow,s2Step260ExitGvRow] 2 s2Step260ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260ExitFvBefore (fun q => (0≤q ∧ q<652) ∨ (653≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260ExitFv_Outgoing : rowsOwned s2Step260ExitGvAfter [s2Step260ExitFvOut,s2Step260ExitGvOut] :=
  hmrRows_owned_drop s2Step260ExitGvAfter [s2Step260ExitGOut,s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut] 2 s2Step260ExitBank_outgoingOwned

private theorem s2Step260ExitFv_distinct : (s2Step260ExitFvRow.sign::s2Step260ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260ExitFv_owned : (s2Step260ExitFvRow.sign::s2Step260ExitFvRow.payload).toFinset⊆s2Step260ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260ExitFvBefore (fun q => (0≤q ∧ q<652) ∨ (653≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260ExitFv_retired : s2Step260ExitFvBefore.retireSet s2Step260ExitFvExtra.toFinset=s2Step260ExitFvAfter := by
  unfold Arena.retireSet s2Step260ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step260ExitFvBefore,s2Step260ExitFAfter,s2Step260ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step260ExitFv_checked : planRowResizeLog s2Step260ExitFvBefore s2Step260ExitFvRow 145 []=
    some (s2Step260ExitFvAfter,s2Step260ExitFvOut,shrinkRow 770 s2Step260ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step260ExitFvBefore s2Step260ExitFvRow 145 s2Step260ExitFv_distinct s2Step260ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step260ExitFvRow.payload.take 145) s2Step260ExitFvRow.sign=s2Step260ExitFvOut := by decide +kernel
  have hi : s2Step260ExitFvRow.payload.drop 145=s2Step260ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step260ExitFv_retired] at result
  exact result

private def s2Step260ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private theorem s2Step260ExitG_Incoming : rowsOwned s2Step260ExitGBefore [s2Step260ExitGRow,s2Step260ExitFRow,s2Step260ExitFvRow,s2Step260ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260ExitGRow,s2Step260ExitFRow,s2Step260ExitFvRow,s2Step260ExitGvRow] 0 s2Step260ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260ExitG_Outgoing : rowsOwned s2Step260ExitGvAfter [s2Step260ExitGOut,s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut] :=
  hmrRows_owned_drop s2Step260ExitGvAfter [s2Step260ExitGOut,s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut] 0 s2Step260ExitBank_outgoingOwned

private theorem s2Step260ExitG_distinct : (s2Step260ExitGRow.sign::s2Step260ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260ExitG_owned : (s2Step260ExitGRow.sign::s2Step260ExitGRow.payload).toFinset⊆s2Step260ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260ExitGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260ExitG_retired : s2Step260ExitGBefore.retireSet s2Step260ExitGExtra.toFinset=s2Step260ExitGAfter := by
  unfold Arena.retireSet s2Step260ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step260ExitGBefore,s2Step260ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step260ExitG_checked : planRowResizeLog s2Step260ExitGBefore s2Step260ExitGRow 140 []=
    some (s2Step260ExitGAfter,s2Step260ExitGOut,shrinkRow 769 s2Step260ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step260ExitGBefore s2Step260ExitGRow 140 s2Step260ExitG_distinct s2Step260ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step260ExitGRow.payload.take 140) s2Step260ExitGRow.sign=s2Step260ExitGOut := by decide +kernel
  have hi : s2Step260ExitGRow.payload.drop 140=s2Step260ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step260ExitG_retired] at result
  exact result

private def s2Step260ExitGvBefore : Arena := s2Step260ExitFvAfter

private theorem s2Step260ExitGv_Incoming : rowsOwned s2Step260ExitGvBefore [s2Step260ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260ExitGRow,s2Step260ExitFRow,s2Step260ExitFvRow,s2Step260ExitGvRow] 3 s2Step260ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260ExitGvBefore (fun q => (0≤q ∧ q<652) ∨ (653≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260ExitGv_Outgoing : rowsOwned s2Step260ExitGvAfter [s2Step260ExitGvOut] :=
  hmrRows_owned_drop s2Step260ExitGvAfter [s2Step260ExitGOut,s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut] 3 s2Step260ExitBank_outgoingOwned

private theorem s2Step260ExitGv_distinct : (s2Step260ExitGvRow.sign::s2Step260ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260ExitGv_owned : (s2Step260ExitGvRow.sign::s2Step260ExitGvRow.payload).toFinset⊆s2Step260ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260ExitGvBefore (fun q => (0≤q ∧ q<652) ∨ (653≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260ExitGv_retired : s2Step260ExitGvBefore.retireSet s2Step260ExitGvExtra.toFinset=s2Step260ExitGvAfter := by
  unfold Arena.retireSet s2Step260ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step260ExitGvBefore,s2Step260ExitFvAfter,s2Step260ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step260ExitGv_checked : planRowResizeLog s2Step260ExitGvBefore s2Step260ExitGvRow 145 []=
    some (s2Step260ExitGvAfter,s2Step260ExitGvOut,shrinkRow 771 s2Step260ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step260ExitGvBefore s2Step260ExitGvRow 145 s2Step260ExitGv_distinct s2Step260ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step260ExitGvRow.payload.take 145) s2Step260ExitGvRow.sign=s2Step260ExitGvOut := by decide +kernel
  have hi : s2Step260ExitGvRow.payload.drop 145=s2Step260ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step260ExitGv_retired] at result
  exact result

private theorem s2Step260ExitBank_rows : planWindowRowsLog s2Step260ExitGBefore [(s2Step260ExitGRow,140),(s2Step260ExitFRow,140),(s2Step260ExitFvRow,145),(s2Step260ExitGvRow,145)] [[],[],[],[]]=
    some (s2Step260ExitGvAfter,[s2Step260ExitGOut,s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut],(shrinkRow 769 s2Step260ExitGExtra ++ (shrinkRow 768 s2Step260ExitFExtra ++ (shrinkRow 770 s2Step260ExitFvExtra ++ (shrinkRow 771 s2Step260ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step260ExitGvAfter [] []=some (s2Step260ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step260ExitGvBefore s2Step260ExitGvAfter s2Step260ExitGvAfter
    s2Step260ExitGvRow s2Step260ExitGvOut 145 [] [] [] []
    (shrinkRow 771 s2Step260ExitGvExtra) ([]) s2Step260ExitGv_Incoming s2Step260ExitGv_checked h4 s2Step260ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step260ExitFvBefore s2Step260ExitFvAfter s2Step260ExitGvAfter
    s2Step260ExitFvRow s2Step260ExitFvOut 145 [] [(s2Step260ExitGvRow,145)] [[]] [s2Step260ExitGvOut]
    (shrinkRow 770 s2Step260ExitFvExtra) ((shrinkRow 771 s2Step260ExitGvExtra ++ [])) s2Step260ExitFv_Incoming s2Step260ExitFv_checked h3 s2Step260ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step260ExitFBefore s2Step260ExitFAfter s2Step260ExitGvAfter
    s2Step260ExitFRow s2Step260ExitFOut 140 [] [(s2Step260ExitFvRow,145),(s2Step260ExitGvRow,145)] [[],[]] [s2Step260ExitFvOut,s2Step260ExitGvOut]
    (shrinkRow 768 s2Step260ExitFExtra) ((shrinkRow 770 s2Step260ExitFvExtra ++ (shrinkRow 771 s2Step260ExitGvExtra ++ []))) s2Step260ExitF_Incoming s2Step260ExitF_checked h2 s2Step260ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step260ExitGBefore s2Step260ExitGAfter s2Step260ExitGvAfter
    s2Step260ExitGRow s2Step260ExitGOut 140 [] [(s2Step260ExitFRow,140),(s2Step260ExitFvRow,145),(s2Step260ExitGvRow,145)] [[],[],[]] [s2Step260ExitFOut,s2Step260ExitFvOut,s2Step260ExitGvOut]
    (shrinkRow 769 s2Step260ExitGExtra) ((shrinkRow 768 s2Step260ExitFExtra ++ (shrinkRow 770 s2Step260ExitFvExtra ++ (shrinkRow 771 s2Step260ExitGvExtra ++ [])))) s2Step260ExitG_Incoming s2Step260ExitG_checked h1 s2Step260ExitG_Outgoing
  exact h0

private theorem s2Step260ExitBank_checked : compileHmrBankResizeLog .exit s2Step260ExitGBefore ⟨s2Step260ExitFRow,s2Step260ExitGRow,s2Step260ExitFvRow,s2Step260ExitGvRow⟩ ⟨140,140,145,145⟩ [[],[],[],[]]=
    some (s2Step260ExitGvAfter,⟨s2Step260ExitFOut,s2Step260ExitGOut,s2Step260ExitFvOut,s2Step260ExitGvOut⟩,(shrinkRow 769 s2Step260ExitGExtra ++ (shrinkRow 768 s2Step260ExitFExtra ++ (shrinkRow 770 s2Step260ExitFvExtra ++ (shrinkRow 771 s2Step260ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step260ExitBank_rows]
  rfl

private theorem s2Step260Add0_apart : Disjoint s2Step260Add0Arena.live s2Step260Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step260Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260Add0_card : s2Step260Add0Arena.live.card=897 := by
  decide +kernel

private theorem s2Step260Add0_borrowed : s2Step260Add0Arena.checkBorrow (hmrHybridCount s2Step260Add0Arena s2Step260Add0B.length) s2Step260Add0Work=some s2Step260Add0During := by
  have len : s2Step260Add0Work.length=hmrHybridCount s2Step260Add0Arena s2Step260Add0B.length := by
    rw [hmrHybridCount,s2Step260Add0_card]
    decide +kernel
  have nd : s2Step260Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step260Add0Arena s2Step260Add0During s2Step260Add0Work.toFinset s2Step260Add0_bounded s2Step260Add0_apart rfl

private theorem s2Step260Add0_distinct : (782::788::817::(s2Step260Add0A++s2Step260Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260Add0_owned : (782::788::817::(s2Step260Add0A++s2Step260Add0B)).toFinset⊆s2Step260Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step260Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260Add0_checked : compileHmrHybridCinLog s2Step260Add0Arena 788 782 817 s2Step260Add0A s2Step260Add0B s2Step260Add0Work=some s2Step260Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step260Add0Arena s2Step260Add0During 788 782 817 s2Step260Add0A s2Step260Add0B s2Step260Add0Work
    (by decide +kernel) (by decide +kernel) s2Step260Add0_distinct
    (fun q hq => s2Step260Add0_owned (List.mem_toFinset.mpr hq)) s2Step260Add0_borrowed

private theorem s2Step260Add1_apart : Disjoint s2Step260Add1Arena.live s2Step260Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step260Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260Add1_card : s2Step260Add1Arena.live.card=897 := by
  decide +kernel

private theorem s2Step260Add1_borrowed : s2Step260Add1Arena.checkBorrow (hmrHybridCount s2Step260Add1Arena s2Step260Add1B.length) s2Step260Add1Work=some s2Step260Add1During := by
  have len : s2Step260Add1Work.length=hmrHybridCount s2Step260Add1Arena s2Step260Add1B.length := by
    rw [hmrHybridCount,s2Step260Add1_card]
    decide +kernel
  have nd : s2Step260Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step260Add1Arena s2Step260Add1During s2Step260Add1Work.toFinset s2Step260Add1_bounded s2Step260Add1_apart rfl

private theorem s2Step260Add1_distinct : (782::788::817::(s2Step260Add1A++s2Step260Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260Add1_owned : (782::788::817::(s2Step260Add1A++s2Step260Add1B)).toFinset⊆s2Step260Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step260Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260Add1_checked : compileHmrHybridCinLog s2Step260Add1Arena 788 782 817 s2Step260Add1A s2Step260Add1B s2Step260Add1Work=some s2Step260Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step260Add1Arena s2Step260Add1During 788 782 817 s2Step260Add1A s2Step260Add1B s2Step260Add1Work
    (by decide +kernel) (by decide +kernel) s2Step260Add1_distinct
    (fun q hq => s2Step260Add1_owned (List.mem_toFinset.mpr hq)) s2Step260Add1_borrowed

private theorem s2Step260F4_apart : Disjoint (s2Step260Add0A++s2Step260Add0B).toFinset (s2Step260Add1A++s2Step260Add1B).toFinset := by
  have nd : ((s2Step260Add0A++s2Step260Add0B)++(s2Step260Add1A++s2Step260Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step260F4_carry : s2Step260F4FlagArena.checkBorrow 1 [817]=some s2Step260Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step260F4FlagArena,s2Step260HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step260F4FlagArena,s2Step260HeadFvAfter,s2Step260Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step260F4_distinct : (814::788::782::817::((s2Step260Add0A++s2Step260Add1A)++(s2Step260Add0B++s2Step260Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260F4_flag : s2Step260HeadFvAfter.checkBorrow 1 [782]=some s2Step260F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step260HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step260F4_owned : (814::788::((s2Step260Add0A++s2Step260Add1A)++(s2Step260Add0B++s2Step260Add1B))).toFinset⊆s2Step260HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step260HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260F4_checked : compileHmrHybridF4Log s2Step260HeadFvAfter 814 788 s2Step260Add0A s2Step260Add0B s2Step260Add1A s2Step260Add1B [782] [817] s2Step260Add0Work s2Step260Add1Work=some s2Step260F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step260HeadFvAfter s2Step260F4FlagArena s2Step260Add0Arena s2Step260Add0During s2Step260Add1During 814 788
    s2Step260Add0A s2Step260Add0B s2Step260Add1A s2Step260Add1B [782] [817] s2Step260Add0Work s2Step260Add1Work
    (fun q hq => s2Step260F4_owned (List.mem_toFinset.mpr hq)) s2Step260F4_flag s2Step260F4_carry
    s2Step260F4_distinct s2Step260F4_apart s2Step260Add0_checked s2Step260Add1_checked

private theorem s2Step260Front_branch : s2Step260FrontSigmaArena.checkBorrow 1 [788]=some s2Step260HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step260FrontSigmaArena,s2Step260EntryGvAfter,s2Step260EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step260FrontSigmaArena,s2Step260EntryGvAfter,s2Step260EntryGAfter,s2Step260HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step260Front_entry : HmrFrontEntryValid s2Step260EntryFBefore s2Step260FrontBank 141 145 ⟨140,140,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step260FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step260EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step260EntryFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<788) ∨ (789≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<814) ∨ (815≤q ∧ q<817) ∨ (818≤q ∧ q<829) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step260FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step260Front_sigma : s2Step260EntryGvAfter.checkBorrow 1 [814]=some s2Step260FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step260EntryGvAfter,s2Step260EntryGAfter,arenaWires]
  · rfl

private def s2Step260HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260HeadFBefore : Arena := s2Step260HeadGAfter

private def s2Step260HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652],768⟩

private def s2Step260HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807],770⟩

private def s2Step260HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829],769⟩

private def s2Step260HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840],771⟩

private theorem s2Step260HeadBank_incomingDistinct : ([s2Step260HeadGRow,s2Step260HeadFRow,s2Step260HeadGvRow,s2Step260HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260HeadF_Incoming : rowsOwned s2Step260HeadFBefore [s2Step260HeadFRow,s2Step260HeadGvRow,s2Step260HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260HeadGRow,s2Step260HeadFRow,s2Step260HeadGvRow,s2Step260HeadFvRow] 1 s2Step260HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260HeadBank_outgoingOwned : rowsOwned s2Step260HeadFvAfter [s2Step260HeadGOut,s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step260HeadFvAfter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260HeadF_Outgoing : rowsOwned s2Step260HeadFvAfter [s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut] :=
  hmrRows_owned_drop s2Step260HeadFvAfter [s2Step260HeadGOut,s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut] 1 s2Step260HeadBank_outgoingOwned

private theorem s2Step260HeadF_distinct : (s2Step260HeadFRow.sign::s2Step260HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260HeadF_owned : (s2Step260HeadFRow.sign::s2Step260HeadFRow.payload).toFinset⊆s2Step260HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260HeadFBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260HeadF_reserved : s2Step260HeadFBefore.reserve s2Step260HeadFFresh.toFinset=some s2Step260HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step260HeadFFresh,arenaWires]
  · norm_num [s2Step260HeadFBefore,s2Step260HeadGAfter,s2Step260HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step260HeadFAfter,s2Step260HeadFBefore,s2Step260HeadGAfter,s2Step260HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step260HeadF_checked : planRowResizeLog s2Step260HeadFBefore s2Step260HeadFRow 142 s2Step260HeadFFresh=
    some (s2Step260HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 792],768⟩,growRow 768 s2Step260HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step260HeadFBefore s2Step260HeadFAfter s2Step260HeadFRow 142 s2Step260HeadFFresh
    s2Step260HeadF_distinct s2Step260HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step260HeadF_reserved
  have rowEq : WindowRow.mk (s2Step260HeadFRow.payload++s2Step260HeadFFresh) s2Step260HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 792],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step260HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)),Finset.filter_subset _ _⟩

private def s2Step260HeadFvBefore : Arena := s2Step260HeadGvAfter

private theorem s2Step260HeadFv_Incoming : rowsOwned s2Step260HeadFvBefore [s2Step260HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260HeadGRow,s2Step260HeadFRow,s2Step260HeadGvRow,s2Step260HeadFvRow] 3 s2Step260HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260HeadFv_Outgoing : rowsOwned s2Step260HeadFvAfter [s2Step260HeadFvOut] :=
  hmrRows_owned_drop s2Step260HeadFvAfter [s2Step260HeadGOut,s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut] 3 s2Step260HeadBank_outgoingOwned

private theorem s2Step260HeadFv_distinct : (s2Step260HeadFvRow.sign::s2Step260HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260HeadFv_owned : (s2Step260HeadFvRow.sign::s2Step260HeadFvRow.payload).toFinset⊆s2Step260HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260HeadFvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260HeadFv_reserved : s2Step260HeadFvBefore.reserve s2Step260HeadFvFresh.toFinset=some s2Step260HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step260HeadFvFresh,arenaWires]
  · norm_num [s2Step260HeadFvBefore,s2Step260HeadGvAfter,s2Step260HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step260HeadFvAfter,s2Step260HeadFvBefore,s2Step260HeadGvAfter,s2Step260HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step260HeadFv_checked : planRowResizeLog s2Step260HeadFvBefore s2Step260HeadFvRow 146 s2Step260HeadFvFresh=
    some (s2Step260HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 794],770⟩,growRow 770 s2Step260HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step260HeadFvBefore s2Step260HeadFvAfter s2Step260HeadFvRow 146 s2Step260HeadFvFresh
    s2Step260HeadFv_distinct s2Step260HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step260HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step260HeadFvRow.payload++s2Step260HeadFvFresh) s2Step260HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 877, 879, 779, 786, 781, 791, 789, 815, 845, 783, 801, 790, 811, 804, 805, 821, 787, 882, 832, 793, 826, 831, 824, 834, 810, 835, 842, 809, 807, 794],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step260HeadG_Incoming : rowsOwned s2Step260HeadGBefore [s2Step260HeadGRow,s2Step260HeadFRow,s2Step260HeadGvRow,s2Step260HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260HeadGRow,s2Step260HeadFRow,s2Step260HeadGvRow,s2Step260HeadFvRow] 0 s2Step260HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260HeadG_Outgoing : rowsOwned s2Step260HeadFvAfter [s2Step260HeadGOut,s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut] :=
  hmrRows_owned_drop s2Step260HeadFvAfter [s2Step260HeadGOut,s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut] 0 s2Step260HeadBank_outgoingOwned

private theorem s2Step260HeadG_distinct : (s2Step260HeadGRow.sign::s2Step260HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260HeadG_owned : (s2Step260HeadGRow.sign::s2Step260HeadGRow.payload).toFinset⊆s2Step260HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260HeadGBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<885) ∨ (886≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260HeadG_reserved : s2Step260HeadGBefore.reserve s2Step260HeadGFresh.toFinset=some s2Step260HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step260HeadGFresh,arenaWires]
  · norm_num [s2Step260HeadGBefore,s2Step260HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step260HeadGAfter,s2Step260HeadGBefore,s2Step260HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step260HeadG_checked : planRowResizeLog s2Step260HeadGBefore s2Step260HeadGRow 142 s2Step260HeadGFresh=
    some (s2Step260HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829, 885],769⟩,growRow 769 s2Step260HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step260HeadGBefore s2Step260HeadGAfter s2Step260HeadGRow 142 s2Step260HeadGFresh
    s2Step260HeadG_distinct s2Step260HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step260HeadG_reserved
  have rowEq : WindowRow.mk (s2Step260HeadGRow.payload++s2Step260HeadGFresh) s2Step260HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 829, 885],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step260HeadGvBefore : Arena := s2Step260HeadFAfter

private theorem s2Step260HeadGv_Incoming : rowsOwned s2Step260HeadGvBefore [s2Step260HeadGvRow,s2Step260HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step260HeadGRow,s2Step260HeadFRow,s2Step260HeadGvRow,s2Step260HeadFvRow] 2 s2Step260HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step260HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
    decide +kernel

private theorem s2Step260HeadGv_Outgoing : rowsOwned s2Step260HeadFvAfter [s2Step260HeadGvOut,s2Step260HeadFvOut] :=
  hmrRows_owned_drop s2Step260HeadFvAfter [s2Step260HeadGOut,s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut] 2 s2Step260HeadBank_outgoingOwned

private theorem s2Step260HeadGv_distinct : (s2Step260HeadGvRow.sign::s2Step260HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step260HeadGv_owned : (s2Step260HeadGvRow.sign::s2Step260HeadGvRow.payload).toFinset⊆s2Step260HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step260HeadGvBefore (fun q => (0≤q ∧ q<782) ∨ (783≤q ∧ q<794) ∨ (795≤q ∧ q<800) ∨ (801≤q ∧ q<817) ∨ (818≤q ∧ q<830) ∨ (831≤q ∧ q<891) ∨ (892≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901)) rfl
  decide +kernel

private theorem s2Step260HeadGv_reserved : s2Step260HeadGvBefore.reserve s2Step260HeadGvFresh.toFinset=some s2Step260HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step260HeadGvFresh,arenaWires]
  · norm_num [s2Step260HeadGvBefore,s2Step260HeadFAfter,s2Step260HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step260HeadGvAfter,s2Step260HeadGvBefore,s2Step260HeadFAfter,s2Step260HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step260HeadGv_checked : planRowResizeLog s2Step260HeadGvBefore s2Step260HeadGvRow 146 s2Step260HeadGvFresh=
    some (s2Step260HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 891],771⟩,growRow 771 s2Step260HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step260HeadGvBefore s2Step260HeadGvAfter s2Step260HeadGvRow 146 s2Step260HeadGvFresh
    s2Step260HeadGv_distinct s2Step260HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step260HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step260HeadGvRow.payload++s2Step260HeadGvFresh) s2Step260HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 867, 836, 844, 816, 841, 822, 851, 839, 778, 798, 796, 780, 812, 808, 849, 847, 820, 785, 806, 797, 846, 819, 802, 799, 825, 803, 837, 827, 784, 840, 891],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step260HeadBank_rows : planWindowRowsLog s2Step260HeadGBefore [(s2Step260HeadGRow,142),(s2Step260HeadFRow,142),(s2Step260HeadGvRow,146),(s2Step260HeadFvRow,146)] [s2Step260HeadGFresh,s2Step260HeadFFresh,s2Step260HeadGvFresh,s2Step260HeadFvFresh]=
    some (s2Step260HeadFvAfter,[s2Step260HeadGOut,s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut],(growRow 769 s2Step260HeadGFresh ++ (growRow 768 s2Step260HeadFFresh ++ (growRow 771 s2Step260HeadGvFresh ++ (growRow 770 s2Step260HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step260HeadFvAfter [] []=some (s2Step260HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step260HeadFvBefore s2Step260HeadFvAfter s2Step260HeadFvAfter
    s2Step260HeadFvRow s2Step260HeadFvOut 146 s2Step260HeadFvFresh [] [] []
    (growRow 770 s2Step260HeadFvFresh) ([]) s2Step260HeadFv_Incoming s2Step260HeadFv_checked h4 s2Step260HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step260HeadGvBefore s2Step260HeadGvAfter s2Step260HeadFvAfter
    s2Step260HeadGvRow s2Step260HeadGvOut 146 s2Step260HeadGvFresh [(s2Step260HeadFvRow,146)] [s2Step260HeadFvFresh] [s2Step260HeadFvOut]
    (growRow 771 s2Step260HeadGvFresh) ((growRow 770 s2Step260HeadFvFresh ++ [])) s2Step260HeadGv_Incoming s2Step260HeadGv_checked h3 s2Step260HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step260HeadFBefore s2Step260HeadFAfter s2Step260HeadFvAfter
    s2Step260HeadFRow s2Step260HeadFOut 142 s2Step260HeadFFresh [(s2Step260HeadGvRow,146),(s2Step260HeadFvRow,146)] [s2Step260HeadGvFresh,s2Step260HeadFvFresh] [s2Step260HeadGvOut,s2Step260HeadFvOut]
    (growRow 768 s2Step260HeadFFresh) ((growRow 771 s2Step260HeadGvFresh ++ (growRow 770 s2Step260HeadFvFresh ++ []))) s2Step260HeadF_Incoming s2Step260HeadF_checked h2 s2Step260HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step260HeadGBefore s2Step260HeadGAfter s2Step260HeadFvAfter
    s2Step260HeadGRow s2Step260HeadGOut 142 s2Step260HeadGFresh [(s2Step260HeadFRow,142),(s2Step260HeadGvRow,146),(s2Step260HeadFvRow,146)] [s2Step260HeadFFresh,s2Step260HeadGvFresh,s2Step260HeadFvFresh] [s2Step260HeadFOut,s2Step260HeadGvOut,s2Step260HeadFvOut]
    (growRow 769 s2Step260HeadGFresh) ((growRow 768 s2Step260HeadFFresh ++ (growRow 771 s2Step260HeadGvFresh ++ (growRow 770 s2Step260HeadFvFresh ++ [])))) s2Step260HeadG_Incoming s2Step260HeadG_checked h1 s2Step260HeadG_Outgoing
  exact h0

private theorem s2Step260HeadBank_checked : compileHmrBankResizeLog .headroom s2Step260HeadGBefore ⟨s2Step260HeadFRow,s2Step260HeadGRow,s2Step260HeadFvRow,s2Step260HeadGvRow⟩ ⟨142,142,146,146⟩ [s2Step260HeadGFresh,s2Step260HeadFFresh,s2Step260HeadGvFresh,s2Step260HeadFvFresh]=
    some (s2Step260HeadFvAfter,⟨s2Step260HeadFOut,s2Step260HeadGOut,s2Step260HeadFvOut,s2Step260HeadGvOut⟩,(growRow 769 s2Step260HeadGFresh ++ (growRow 768 s2Step260HeadFFresh ++ (growRow 771 s2Step260HeadGvFresh ++ (growRow 770 s2Step260HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step260HeadBank_rows]
  rfl

private theorem s2Step260Front_checked : compileHmrSourceFrontLog s2Step260EntryFBefore s2Step260FrontBank 141 145 ⟨140,140,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step260FrontLog=some s2Step260FrontPlan := by
  have pairEq : s2Step260FrontPair=⟨s2Step260HeadFRow,s2Step260HeadGRow,s2Step260HeadFvRow,s2Step260HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step260FrontHead=⟨s2Step260ExitFRow,s2Step260ExitGRow,s2Step260ExitFvRow,s2Step260ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step260Add0A=s2Step260FrontHead.f.wires := by decide +kernel
  have gEq : s2Step260Add0B=s2Step260FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step260Add1A=s2Step260FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step260Add1B=s2Step260FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step260EntryFBefore s2Step260FrontBank 141 145 ⟨140,140,145,145⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step260FrontLog s2Step260FrontPlan
  · exact s2Step260Front_entry
  · exact s2Step260EntryBank_checked
  · exact s2Step260Front_sigma
  · rfl
  · exact s2Step260Front_branch
  · rfl
  · simpa only [s2Step260FrontPlan,pairEq] using s2Step260HeadBank_checked
  · simpa only [s2Step260FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step260F4_checked
  · exact s2Step260Counter_checked
  · rfl
  · simpa only [s2Step260FrontPlan,headEq] using s2Step260ExitBank_checked

private theorem s2Step260Complete_explicit_checked : compileHmrEarlyStepLog s2Step260EntryFBefore s2Step260FrontBank 141 145 ⟨140,140,145,145⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 52 s2Step260CompleteLog=some s2Step260CompletePlan := by
  let Q := s2Step260EarlyControlPlan
  have hq := s2Step260EarlyControl_plan_checked
  have fv1 : s2Step260CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step260CompleteOut.fv.payload[2]?.getD s2Step260CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step260CompleteOut.fv.payload[3]?.getD s2Step260CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step260CompleteOut.fv.payload[4]?.getD s2Step260CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step260EntryFBefore s2Step260EarlyControlArena s2Step260FrontBank 141 145 ⟨140,140,145,145⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 52 s2Step260CompleteLog s2Step260FrontPlan Q
    s2Step260Front_checked s2Step260Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step260Complete_owned s2Step260Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step260EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 777 814 s2Step260CompleteOut.fv.second (s2Step260CompleteOut.fv.payload[2]?.getD s2Step260CompleteOut.fv.sign) (s2Step260CompleteOut.fv.payload[3]?.getD s2Step260CompleteOut.fv.sign) (s2Step260CompleteOut.fv.payload[4]?.getD s2Step260CompleteOut.fv.sign) 788 52 s2Step260EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep260Arena : Arena := s2Step260EntryFBefore
def s2PrivateStep260Bank : WindowBank := s2Step260FrontBank
def s2PrivateStep260Spec : HmrSourceWalkStepLog := ⟨141,145,⟨140,140,145,145⟩,52,.early s2Step260CompleteLog⟩
def s2PrivateStep260Plan : HmrSourceStepPlan := .early s2Step260CompletePlan
theorem s2PrivateStep260_source : s2PrivateStep260Spec=s2ObservedLogs256[4] := rfl
theorem s2PrivateStep260_checked : compileHmrSourceStepLog s2PrivateStep260Arena s2PrivateStep260Bank
    s2PrivateStep260Spec.fgWidth s2PrivateStep260Spec.vWidth s2PrivateStep260Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900]
    6 498 260 s2PrivateStep260Spec.need none s2PrivateStep260Spec.log=some s2PrivateStep260Plan := by
  change compileHmrSourceStepLog s2Step260EntryFBefore s2Step260FrontBank 141 145 ⟨140,140,145,145⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900] 6 498 260 52 none (.early s2Step260CompleteLog)=some (.early s2Step260CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 260<498)]
  rw [s2Step260Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
