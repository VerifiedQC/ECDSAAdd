import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep310
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

private def s2Step312CompleteMoves : List (Wire × Wire) := [(837,626)]

private def s2Step312EarlyControlLog : HmrEarlyControlLog := ⟨[837, 810, 824, 834, 787],[806],[846],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step312FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [834], [], [811]],[[787], [824], [810], [793]],[[], [], [], []]⟩,[835],[803],[806],[846],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800]⟩

private def s2Step312CompleteLog : HmrEarlyStepLog := ⟨s2Step312FrontLog,s2Step312CompleteMoves,s2Step312EarlyControlLog⟩

private def s2Step312ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩

private def s2Step312ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step312ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],769⟩

private def s2Step312ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811],771⟩

private def s2Step312FrontOut : WindowBank := ⟨s2Step312ExitFOut,s2Step312ExitGOut,s2Step312ExitFvOut,s2Step312ExitGvOut⟩

private def s2Step312CompleteOut : WindowBank := s2Step312FrontOut.repacked s2Step312CompleteMoves

private def s2Step312EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step312EarlyControlPositiveArena,[806],s2Step312EarlyControlEqualityArena,[846],⟨⟨835,false⟩,[⟨⟨806,false⟩,846⟩]⟩⟩

private def s2Step312EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,837⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,824⟩,⟨⟨776,false⟩,834⟩,⟨⟨777,false⟩,787⟩]⟩

private def s2Step312EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step312EarlyControlZeroArena,s2Step312EarlyControlZeroPlan,s2Step312EarlyControlClassPlan,s2Step312EarlyControlFlagArena,s2Step312EarlyControlFittedArena,s2Step312EarlyControlHistoryArena,s2Step312EarlyControlSigmaArena,s2Step312EarlyControlOutputArena,s2Step312EarlyControlLog⟩

private def s2Step312CounterWork : List Wire := [806, 846, 830, 800]

private theorem s2Step312Counter_bounded : s2Step312CounterWork.toFinset⊆arenaWires := by norm_num [s2Step312CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step312HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312CounterDuring : Arena := ⟨s2Step312HeadFvAfter.live∪s2Step312CounterWork.toFinset,Finset.union_subset s2Step312HeadFvAfter.bounded s2Step312Counter_bounded⟩

private def s2Step312EntryFFresh : List Wire := []

private def s2Step312EntryFvFresh : List Wire := []

private def s2Step312EntryGFresh : List Wire := [834]

private def s2Step312EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EntryGvFresh : List Wire := [811]

private def s2Step312ExitFExtra : List Wire := [626, 824]

private def s2Step312ExitGExtra : List Wire := [834, 787]

private def s2Step312ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<626) ∨ (627≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312ExitGvExtra : List Wire := [810]

private def s2Step312Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step312Add0_bounded : s2Step312Add0Work.toFinset⊆arenaWires := by
  have h : s2Step312Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step312Add0During : Arena := ⟨s2Step312Add0Arena.live∪s2Step312Add0Work.toFinset,Finset.union_subset s2Step312Add0Arena.bounded s2Step312Add0_bounded⟩

private def s2Step312Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step312Add1_bounded : s2Step312Add1Work.toFinset⊆arenaWires := by
  have h : s2Step312Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step312Add1During : Arena := ⟨s2Step312Add1Arena.live∪s2Step312Add1Work.toFinset,Finset.union_subset s2Step312Add1Arena.bounded s2Step312Add1_bounded⟩

private def s2Step312F4FlagArena : Arena := ⟨s2Step312HeadFvAfter.live∪{806},Finset.union_subset s2Step312HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step312F4Plan : HmrHybridF4Plan := ⟨s2Step312F4FlagArena,[806],s2Step312Add0Arena,[846],s2Step312Add0During,s2Step312Add0Work,s2Step312Add1During,s2Step312Add1Work⟩

private def s2Step312HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 824],768⟩

private def s2Step312HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step312HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834, 787],769⟩

private def s2Step312HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 810],771⟩

private def s2Step312FrontHead : WindowBank := ⟨s2Step312HeadFOut,s2Step312HeadGOut,s2Step312HeadFvOut,s2Step312HeadGvOut⟩

private def s2Step312EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step312EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step312EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834],769⟩

private def s2Step312EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811],771⟩

private def s2Step312FrontPair : WindowBank := ⟨s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut⟩

private def s2Step312FrontSigmaArena : Arena := ⟨s2Step312EntryGvAfter.live∪{835},Finset.union_subset s2Step312EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step312HeadFFresh : List Wire := [824]

private def s2Step312HeadFvFresh : List Wire := [793]

private def s2Step312HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312HeadGFresh : List Wire := [787]

private def s2Step312HeadGvFresh : List Wire := [810]

private def s2Step312FrontPlan : HmrSourceFront := ⟨s2Step312EntryGvAfter,s2Step312FrontPair,(growRow 768 s2Step312EntryFFresh ++ (growRow 769 s2Step312EntryGFresh ++ (growRow 770 s2Step312EntryFvFresh ++ (growRow 771 s2Step312EntryGvFresh ++ [])))),s2Step312FrontSigmaArena,[835],s2Step312HeadGBefore,[803],
  s2Step312HeadFvAfter,s2Step312FrontHead,(growRow 769 s2Step312HeadGFresh ++ (growRow 768 s2Step312HeadFFresh ++ (growRow 771 s2Step312HeadGvFresh ++ (growRow 770 s2Step312HeadFvFresh ++ [])))),s2Step312F4Plan,s2Step312CounterDuring,s2Step312CounterWork,s2Step312ExitGvAfter,s2Step312FrontOut,(shrinkRow 769 s2Step312ExitGExtra ++ (shrinkRow 768 s2Step312ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step312ExitGvExtra ++ []))))⟩

private def s2Step312CompletePlan : HmrEarlyStepPlan := ⟨s2Step312FrontPlan,s2Step312EarlyControlArena,s2Step312EarlyControlPlan,s2Step312CompleteMoves⟩

private theorem s2Step312Complete_apart : List.Disjoint (s2Step312CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [835, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step312CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[835, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step312Complete_owned : (s2Step312CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step312EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step312CompleteMoveArena : Arena := ⟨s2Step312ExitGvAfter.live∪{626},Finset.union_subset s2Step312ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step312Complete_repack : s2Step312ExitGvAfter.checkRepack s2Step312CompleteMoves=some s2Step312EarlyControlArena := by
  have owned : 837∈s2Step312ExitGvAfter.live := by norm_num [s2Step312ExitGvAfter,arenaWires]
  have reserve : s2Step312ExitGvAfter.reserve {626}=some s2Step312CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step312ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step312CompleteMoveArena.retireSet {837}=s2Step312EarlyControlArena := by
    unfold Arena.retireSet s2Step312EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step312CompleteMoveArena,s2Step312ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step312CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step312CompleteMoveArena.retireSet {837}).checkRepack []=some s2Step312EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step312EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s2Step312EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_branch : compileHmrBranchRetirement s2Step312EarlyControlSigmaArena 803=some s2Step312EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step312EarlyControl_branchOwned
  · ext q
    simp [s2Step312EarlyControlOutputArena,s2Step312EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step312EarlyControl_classEqualityBorrow : s2Step312EarlyControlPositiveArena.checkBorrow (([835, 806] : List Wire).length-1) s2Step312EarlyControlLog.classWork=some s2Step312EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step312EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step312EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step312EarlyControlEqualityArena,s2Step312EarlyControlPositiveArena,s2Step312EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step312EarlyControl_classEqualityOwned : ([835, 806] : List Wire).toFinset⊆s2Step312EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_classEquality : compileHmrEqualityLog s2Step312EarlyControlPositiveArena [835, 806] 0 s2Step312EarlyControlLog.classWork=some (s2Step312EarlyControlEqualityArena,s2Step312EarlyControlLog.classWork,s2Step312EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step312EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step312EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step312EarlyControl_classOwned : ([777, 787, 835] : List Wire).toFinset⊆s2Step312EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_positiveBorrow : s2Step312EarlyControlZeroArena.checkBorrow (1) s2Step312EarlyControlLog.positiveWork=some s2Step312EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step312EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step312EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step312EarlyControlPositiveArena,s2Step312EarlyControlZeroArena,s2Step312EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step312EarlyControl_class : compileHmrSourceClassLog s2Step312EarlyControlZeroArena false 777 s2Step312EarlyControlZeroPlan.top 0 835 s2Step312EarlyControlLog.positiveWork s2Step312EarlyControlLog.classWork=some s2Step312EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step312EarlyControlClassPlan s2Step312EarlyControlZeroArena false 777 s2Step312EarlyControlZeroPlan.top 0 835
  constructor
  · decide +kernel
  · exact s2Step312EarlyControl_classOwned
  · exact s2Step312EarlyControl_positiveBorrow
  · exact s2Step312EarlyControl_classEquality

private theorem s2Step312EarlyControl_entryRecordOwned : ([803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step312EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_entrySigmaOwned : ([835, 254] : List Wire).toFinset⊆s2Step312EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_fitBorrow : s2Step312EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step312EarlyControlLog.recordFresh=some s2Step312EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step312EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step312EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step312EarlyControlFittedArena,s2Step312EarlyControlFlagArena,s2Step312EarlyControlLog,arenaWires]

private theorem s2Step312EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step312EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_fit : compileHmrRecordGrowLog s2Step312EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step312EarlyControlLog.recordFresh=some s2Step312EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step312EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step312EarlyControl_fitBorrow

private theorem s2Step312EarlyControl_flagsBorrow : s2Step312EarlyControlEqualityArena.checkBorrow (6) s2Step312EarlyControlLog.flagWork=some s2Step312EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step312EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step312EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step312EarlyControlFlagArena,s2Step312EarlyControlEqualityArena,s2Step312EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step312EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step312EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_flags : compileHmrFlagsLog s2Step312EarlyControlClassPlan.equalityArena s2Step312EarlyControlClassPlan.equality.top 253 252 251 s2Step312EarlyControlLog.flagWork=some s2Step312EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step312EarlyControl_flagsOwned⟩
  · exact s2Step312EarlyControl_flagsBorrow

private theorem s2Step312EarlyControl_historyBorrow : s2Step312EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step312EarlyControlLog.recordFresh=some s2Step312EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step312EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step312EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step312EarlyControlHistoryArena,s2Step312EarlyControlArena,s2Step312EarlyControlLog,arenaWires]

private theorem s2Step312EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step312EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_history : compileHmrRecordGrowLog s2Step312EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step312EarlyControlLog.recordFresh=some s2Step312EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step312EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step312EarlyControl_historyBorrow

private theorem s2Step312EarlyControl_sigmaOwned : ([254, 835] : List Wire).toFinset⊆s2Step312EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_sigmaReleaseOwned : ([835] : List Wire).toFinset⊆s2Step312EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_sigmaRelease : s2Step312EarlyControlHistoryArena.release {835} (fun _ => false)=some s2Step312EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step312EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step312EarlyControlSigmaArena,s2Step312EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step312EarlyControl_sigma : compileHmrSigmaDropLog s2Step312EarlyControlHistoryArena false 0 0 254 835 []=some s2Step312EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step312EarlyControl_sigmaOwned⟩
  · exact s2Step312EarlyControl_sigmaRelease

private theorem s2Step312EarlyControl_zeroBorrow : s2Step312EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step312EarlyControlLog.zeroWork=some s2Step312EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step312EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step312EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step312EarlyControlZeroArena,s2Step312EarlyControlArena,s2Step312EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step312EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step312EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step312EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EarlyControl_zero : compileHmrEqualityLog s2Step312EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step312EarlyControlLog.zeroWork=some (s2Step312EarlyControlZeroArena,s2Step312EarlyControlLog.zeroWork,s2Step312EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step312EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step312EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step312EarlyControl_logged : s2Step312EarlyControlPlan.Logged s2Step312EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 803 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step312EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step312EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step312EarlyControl_zero
  · exact s2Step312EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step312EarlyControl_flags
  · exact s2Step312EarlyControl_fit
  · exact s2Step312EarlyControl_history
  · exact s2Step312EarlyControl_sigma
  · exact s2Step312EarlyControl_branch

private theorem s2Step312EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step312EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 803 56 s2Step312EarlyControlLog=some s2Step312EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step312EarlyControlPlan s2Step312EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 803 56 s2Step312EarlyControl_logged

private def s2Step312EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step312EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step312EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],769⟩

private def s2Step312EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799],771⟩

private def s2Step312FrontBank : WindowBank := ⟨s2Step312EntryFRow,s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow⟩

private def s2Step312Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 824, 768]

private def s2Step312Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834, 787, 769]

private def s2Step312Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 770]

private def s2Step312Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 810, 771]

private theorem s2Step312Counter_apart : Disjoint s2Step312HeadFvAfter.live s2Step312CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step312HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312Counter_borrowed : s2Step312HeadFvAfter.checkBorrow 4 s2Step312CounterWork=some s2Step312CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step312HeadFvAfter s2Step312CounterDuring s2Step312CounterWork.toFinset s2Step312Counter_bounded s2Step312Counter_apart rfl

private theorem s2Step312Counter_owned : (835::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step312HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step312HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312Counter_checked : compileHmrCounterStepLog s2Step312HeadFvAfter true 835 [772, 773, 774, 775, 776, 777] s2Step312CounterWork=some s2Step312CounterDuring := by
  have owned : ∀q∈835::[772, 773, 774, 775, 776, 777],q∈s2Step312HeadFvAfter.live := fun q hq => s2Step312Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step312Counter_borrowed

private def s2Step312EntryFAfter : Arena := s2Step312EntryFBefore

private theorem s2Step312EntryBank_incomingDistinct : ([s2Step312EntryFRow,s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312EntryF_Incoming : rowsOwned s2Step312EntryFBefore [s2Step312EntryFRow,s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312EntryFRow,s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow] 0 s2Step312EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312EntryBank_outgoingOwned : rowsOwned s2Step312EntryGvAfter [s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step312EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312EntryF_Outgoing : rowsOwned s2Step312EntryGvAfter [s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut] :=
  hmrRows_owned_drop s2Step312EntryGvAfter [s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut] 0 s2Step312EntryBank_outgoingOwned

private theorem s2Step312EntryF_distinct : (s2Step312EntryFRow.sign::s2Step312EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312EntryF_owned : (s2Step312EntryFRow.sign::s2Step312EntryFRow.payload).toFinset⊆s2Step312EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EntryF_reserved : s2Step312EntryFBefore.reserve s2Step312EntryFFresh.toFinset=some s2Step312EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step312EntryFFresh,arenaWires]
  · norm_num [s2Step312EntryFBefore,s2Step312EntryFFresh,arenaWires]
  · simp only [s2Step312EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step312EntryF_checked : planRowResizeLog s2Step312EntryFBefore s2Step312EntryFRow 115 s2Step312EntryFFresh=
    some (s2Step312EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩,growRow 768 s2Step312EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step312EntryFBefore s2Step312EntryFAfter s2Step312EntryFRow 115 s2Step312EntryFFresh
    s2Step312EntryF_distinct s2Step312EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312EntryF_reserved
  have rowEq : WindowRow.mk (s2Step312EntryFRow.payload++s2Step312EntryFFresh) s2Step312EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step312EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312EntryFvAfter : Arena := s2Step312EntryGAfter

private def s2Step312EntryFvBefore : Arena := s2Step312EntryGAfter

private theorem s2Step312EntryFv_Incoming : rowsOwned s2Step312EntryFvBefore [s2Step312EntryFvRow,s2Step312EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312EntryFRow,s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow] 2 s2Step312EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312EntryFv_Outgoing : rowsOwned s2Step312EntryGvAfter [s2Step312EntryFvOut,s2Step312EntryGvOut] :=
  hmrRows_owned_drop s2Step312EntryGvAfter [s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut] 2 s2Step312EntryBank_outgoingOwned

private theorem s2Step312EntryFv_distinct : (s2Step312EntryFvRow.sign::s2Step312EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312EntryFv_owned : (s2Step312EntryFvRow.sign::s2Step312EntryFvRow.payload).toFinset⊆s2Step312EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EntryFv_reserved : s2Step312EntryFvBefore.reserve s2Step312EntryFvFresh.toFinset=some s2Step312EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step312EntryFvFresh,arenaWires]
  · norm_num [s2Step312EntryFvBefore,s2Step312EntryGAfter,s2Step312EntryFvFresh,arenaWires]
  · simp only [s2Step312EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step312EntryFv_checked : planRowResizeLog s2Step312EntryFvBefore s2Step312EntryFvRow 171 s2Step312EntryFvFresh=
    some (s2Step312EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩,growRow 770 s2Step312EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step312EntryFvBefore s2Step312EntryFvAfter s2Step312EntryFvRow 171 s2Step312EntryFvFresh
    s2Step312EntryFv_distinct s2Step312EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step312EntryFvRow.payload++s2Step312EntryFvFresh) s2Step312EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step312EntryGBefore : Arena := s2Step312EntryFBefore

private theorem s2Step312EntryG_Incoming : rowsOwned s2Step312EntryGBefore [s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312EntryFRow,s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow] 1 s2Step312EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312EntryG_Outgoing : rowsOwned s2Step312EntryGvAfter [s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut] :=
  hmrRows_owned_drop s2Step312EntryGvAfter [s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut] 1 s2Step312EntryBank_outgoingOwned

private theorem s2Step312EntryG_distinct : (s2Step312EntryGRow.sign::s2Step312EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312EntryG_owned : (s2Step312EntryGRow.sign::s2Step312EntryGRow.payload).toFinset⊆s2Step312EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EntryG_reserved : s2Step312EntryGBefore.reserve s2Step312EntryGFresh.toFinset=some s2Step312EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step312EntryGFresh,arenaWires]
  · norm_num [s2Step312EntryGBefore,s2Step312EntryFBefore,s2Step312EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step312EntryGAfter,s2Step312EntryGBefore,s2Step312EntryFBefore,s2Step312EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step312EntryG_checked : planRowResizeLog s2Step312EntryGBefore s2Step312EntryGRow 115 s2Step312EntryGFresh=
    some (s2Step312EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834],769⟩,growRow 769 s2Step312EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step312EntryGBefore s2Step312EntryGAfter s2Step312EntryGRow 115 s2Step312EntryGFresh
    s2Step312EntryG_distinct s2Step312EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312EntryG_reserved
  have rowEq : WindowRow.mk (s2Step312EntryGRow.payload++s2Step312EntryGFresh) s2Step312EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step312EntryGvBefore : Arena := s2Step312EntryGAfter

private theorem s2Step312EntryGv_Incoming : rowsOwned s2Step312EntryGvBefore [s2Step312EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312EntryFRow,s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow] 3 s2Step312EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312EntryGv_Outgoing : rowsOwned s2Step312EntryGvAfter [s2Step312EntryGvOut] :=
  hmrRows_owned_drop s2Step312EntryGvAfter [s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut] 3 s2Step312EntryBank_outgoingOwned

private theorem s2Step312EntryGv_distinct : (s2Step312EntryGvRow.sign::s2Step312EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312EntryGv_owned : (s2Step312EntryGvRow.sign::s2Step312EntryGvRow.payload).toFinset⊆s2Step312EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312EntryGv_reserved : s2Step312EntryGvBefore.reserve s2Step312EntryGvFresh.toFinset=some s2Step312EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step312EntryGvFresh,arenaWires]
  · norm_num [s2Step312EntryGvBefore,s2Step312EntryGAfter,s2Step312EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step312EntryGvAfter,s2Step312EntryGvBefore,s2Step312EntryGAfter,s2Step312EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step312EntryGv_checked : planRowResizeLog s2Step312EntryGvBefore s2Step312EntryGvRow 171 s2Step312EntryGvFresh=
    some (s2Step312EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811],771⟩,growRow 771 s2Step312EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step312EntryGvBefore s2Step312EntryGvAfter s2Step312EntryGvRow 171 s2Step312EntryGvFresh
    s2Step312EntryGv_distinct s2Step312EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step312EntryGvRow.payload++s2Step312EntryGvFresh) s2Step312EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step312EntryBank_rows : planWindowRowsLog s2Step312EntryFBefore [(s2Step312EntryFRow,115),(s2Step312EntryGRow,115),(s2Step312EntryFvRow,171),(s2Step312EntryGvRow,171)] [s2Step312EntryFFresh,s2Step312EntryGFresh,s2Step312EntryFvFresh,s2Step312EntryGvFresh]=
    some (s2Step312EntryGvAfter,[s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut],(growRow 768 s2Step312EntryFFresh ++ (growRow 769 s2Step312EntryGFresh ++ (growRow 770 s2Step312EntryFvFresh ++ (growRow 771 s2Step312EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step312EntryGvAfter [] []=some (s2Step312EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step312EntryGvBefore s2Step312EntryGvAfter s2Step312EntryGvAfter
    s2Step312EntryGvRow s2Step312EntryGvOut 171 s2Step312EntryGvFresh [] [] []
    (growRow 771 s2Step312EntryGvFresh) ([]) s2Step312EntryGv_Incoming s2Step312EntryGv_checked h4 s2Step312EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step312EntryFvBefore s2Step312EntryFvAfter s2Step312EntryGvAfter
    s2Step312EntryFvRow s2Step312EntryFvOut 171 s2Step312EntryFvFresh [(s2Step312EntryGvRow,171)] [s2Step312EntryGvFresh] [s2Step312EntryGvOut]
    (growRow 770 s2Step312EntryFvFresh) ((growRow 771 s2Step312EntryGvFresh ++ [])) s2Step312EntryFv_Incoming s2Step312EntryFv_checked h3 s2Step312EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step312EntryGBefore s2Step312EntryGAfter s2Step312EntryGvAfter
    s2Step312EntryGRow s2Step312EntryGOut 115 s2Step312EntryGFresh [(s2Step312EntryFvRow,171),(s2Step312EntryGvRow,171)] [s2Step312EntryFvFresh,s2Step312EntryGvFresh] [s2Step312EntryFvOut,s2Step312EntryGvOut]
    (growRow 769 s2Step312EntryGFresh) ((growRow 770 s2Step312EntryFvFresh ++ (growRow 771 s2Step312EntryGvFresh ++ []))) s2Step312EntryG_Incoming s2Step312EntryG_checked h2 s2Step312EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step312EntryFBefore s2Step312EntryFAfter s2Step312EntryGvAfter
    s2Step312EntryFRow s2Step312EntryFOut 115 s2Step312EntryFFresh [(s2Step312EntryGRow,115),(s2Step312EntryFvRow,171),(s2Step312EntryGvRow,171)] [s2Step312EntryGFresh,s2Step312EntryFvFresh,s2Step312EntryGvFresh] [s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut]
    (growRow 768 s2Step312EntryFFresh) ((growRow 769 s2Step312EntryGFresh ++ (growRow 770 s2Step312EntryFvFresh ++ (growRow 771 s2Step312EntryGvFresh ++ [])))) s2Step312EntryF_Incoming s2Step312EntryF_checked h1 s2Step312EntryF_Outgoing
  exact h0

private theorem s2Step312EntryBank_checked : compileHmrBankResizeLog .entry s2Step312EntryFBefore ⟨s2Step312EntryFRow,s2Step312EntryGRow,s2Step312EntryFvRow,s2Step312EntryGvRow⟩ ⟨115,115,171,171⟩ [s2Step312EntryFFresh,s2Step312EntryGFresh,s2Step312EntryFvFresh,s2Step312EntryGvFresh]=
    some (s2Step312EntryGvAfter,⟨s2Step312EntryFOut,s2Step312EntryGOut,s2Step312EntryFvOut,s2Step312EntryGvOut⟩,(growRow 768 s2Step312EntryFFresh ++ (growRow 769 s2Step312EntryGFresh ++ (growRow 770 s2Step312EntryFvFresh ++ (growRow 771 s2Step312EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step312EntryBank_rows]
  rfl

private def s2Step312ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<626) ∨ (627≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312ExitFBefore : Arena := s2Step312ExitGAfter

private def s2Step312ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 824],768⟩

private def s2Step312ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step312ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834, 787],769⟩

private def s2Step312ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 810],771⟩

private theorem s2Step312ExitBank_incomingDistinct : ([s2Step312ExitGRow,s2Step312ExitFRow,s2Step312ExitFvRow,s2Step312ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312ExitF_Incoming : rowsOwned s2Step312ExitFBefore [s2Step312ExitFRow,s2Step312ExitFvRow,s2Step312ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312ExitGRow,s2Step312ExitFRow,s2Step312ExitFvRow,s2Step312ExitGvRow] 1 s2Step312ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312ExitBank_outgoingOwned : rowsOwned s2Step312ExitGvAfter [s2Step312ExitGOut,s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step312ExitGvAfter (fun q => (0≤q ∧ q<626) ∨ (627≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312ExitF_Outgoing : rowsOwned s2Step312ExitGvAfter [s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut] :=
  hmrRows_owned_drop s2Step312ExitGvAfter [s2Step312ExitGOut,s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut] 1 s2Step312ExitBank_outgoingOwned

private theorem s2Step312ExitF_distinct : (s2Step312ExitFRow.sign::s2Step312ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312ExitF_owned : (s2Step312ExitFRow.sign::s2Step312ExitFRow.payload).toFinset⊆s2Step312ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312ExitF_retired : s2Step312ExitFBefore.retireSet s2Step312ExitFExtra.toFinset=s2Step312ExitFAfter := by
  unfold Arena.retireSet s2Step312ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step312ExitFBefore,s2Step312ExitGAfter,s2Step312ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step312ExitF_checked : planRowResizeLog s2Step312ExitFBefore s2Step312ExitFRow 114 []=
    some (s2Step312ExitFAfter,s2Step312ExitFOut,shrinkRow 768 s2Step312ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step312ExitFBefore s2Step312ExitFRow 114 s2Step312ExitF_distinct s2Step312ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step312ExitFRow.payload.take 114) s2Step312ExitFRow.sign=s2Step312ExitFOut := by decide +kernel
  have hi : s2Step312ExitFRow.payload.drop 114=s2Step312ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step312ExitF_retired] at result
  exact result

private def s2Step312ExitFvAfter : Arena := s2Step312ExitFAfter

private def s2Step312ExitFvBefore : Arena := s2Step312ExitFAfter

private theorem s2Step312ExitFv_Incoming : rowsOwned s2Step312ExitFvBefore [s2Step312ExitFvRow,s2Step312ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312ExitGRow,s2Step312ExitFRow,s2Step312ExitFvRow,s2Step312ExitGvRow] 2 s2Step312ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312ExitFvBefore (fun q => (0≤q ∧ q<626) ∨ (627≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312ExitFv_Outgoing : rowsOwned s2Step312ExitGvAfter [s2Step312ExitFvOut,s2Step312ExitGvOut] :=
  hmrRows_owned_drop s2Step312ExitGvAfter [s2Step312ExitGOut,s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut] 2 s2Step312ExitBank_outgoingOwned

private theorem s2Step312ExitFv_distinct : (s2Step312ExitFvRow.sign::s2Step312ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312ExitFv_owned : (s2Step312ExitFvRow.sign::s2Step312ExitFvRow.payload).toFinset⊆s2Step312ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312ExitFvBefore (fun q => (0≤q ∧ q<626) ∨ (627≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312ExitFv_reserved : s2Step312ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step312ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step312ExitFv_checked : planRowResizeLog s2Step312ExitFvBefore s2Step312ExitFvRow 172 []=
    some (s2Step312ExitFvAfter,s2Step312ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step312ExitFvBefore s2Step312ExitFvAfter s2Step312ExitFvRow 172 []
    s2Step312ExitFv_distinct s2Step312ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step312ExitFvRow.payload++[]) s2Step312ExitFvRow.sign=s2Step312ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step312ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step312ExitG_Incoming : rowsOwned s2Step312ExitGBefore [s2Step312ExitGRow,s2Step312ExitFRow,s2Step312ExitFvRow,s2Step312ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312ExitGRow,s2Step312ExitFRow,s2Step312ExitFvRow,s2Step312ExitGvRow] 0 s2Step312ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312ExitG_Outgoing : rowsOwned s2Step312ExitGvAfter [s2Step312ExitGOut,s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut] :=
  hmrRows_owned_drop s2Step312ExitGvAfter [s2Step312ExitGOut,s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut] 0 s2Step312ExitBank_outgoingOwned

private theorem s2Step312ExitG_distinct : (s2Step312ExitGRow.sign::s2Step312ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312ExitG_owned : (s2Step312ExitGRow.sign::s2Step312ExitGRow.payload).toFinset⊆s2Step312ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312ExitG_retired : s2Step312ExitGBefore.retireSet s2Step312ExitGExtra.toFinset=s2Step312ExitGAfter := by
  unfold Arena.retireSet s2Step312ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step312ExitGBefore,s2Step312ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step312ExitG_checked : planRowResizeLog s2Step312ExitGBefore s2Step312ExitGRow 114 []=
    some (s2Step312ExitGAfter,s2Step312ExitGOut,shrinkRow 769 s2Step312ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step312ExitGBefore s2Step312ExitGRow 114 s2Step312ExitG_distinct s2Step312ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step312ExitGRow.payload.take 114) s2Step312ExitGRow.sign=s2Step312ExitGOut := by decide +kernel
  have hi : s2Step312ExitGRow.payload.drop 114=s2Step312ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step312ExitG_retired] at result
  exact result

private def s2Step312ExitGvBefore : Arena := s2Step312ExitFAfter

private theorem s2Step312ExitGv_Incoming : rowsOwned s2Step312ExitGvBefore [s2Step312ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312ExitGRow,s2Step312ExitFRow,s2Step312ExitFvRow,s2Step312ExitGvRow] 3 s2Step312ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312ExitGvBefore (fun q => (0≤q ∧ q<626) ∨ (627≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312ExitGv_Outgoing : rowsOwned s2Step312ExitGvAfter [s2Step312ExitGvOut] :=
  hmrRows_owned_drop s2Step312ExitGvAfter [s2Step312ExitGOut,s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut] 3 s2Step312ExitBank_outgoingOwned

private theorem s2Step312ExitGv_distinct : (s2Step312ExitGvRow.sign::s2Step312ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312ExitGv_owned : (s2Step312ExitGvRow.sign::s2Step312ExitGvRow.payload).toFinset⊆s2Step312ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312ExitGvBefore (fun q => (0≤q ∧ q<626) ∨ (627≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312ExitGv_retired : s2Step312ExitGvBefore.retireSet s2Step312ExitGvExtra.toFinset=s2Step312ExitGvAfter := by
  unfold Arena.retireSet s2Step312ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step312ExitGvBefore,s2Step312ExitFAfter,s2Step312ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step312ExitGv_checked : planRowResizeLog s2Step312ExitGvBefore s2Step312ExitGvRow 171 []=
    some (s2Step312ExitGvAfter,s2Step312ExitGvOut,shrinkRow 771 s2Step312ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step312ExitGvBefore s2Step312ExitGvRow 171 s2Step312ExitGv_distinct s2Step312ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step312ExitGvRow.payload.take 171) s2Step312ExitGvRow.sign=s2Step312ExitGvOut := by decide +kernel
  have hi : s2Step312ExitGvRow.payload.drop 171=s2Step312ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step312ExitGv_retired] at result
  exact result

private theorem s2Step312ExitBank_rows : planWindowRowsLog s2Step312ExitGBefore [(s2Step312ExitGRow,114),(s2Step312ExitFRow,114),(s2Step312ExitFvRow,172),(s2Step312ExitGvRow,171)] [[],[],[],[]]=
    some (s2Step312ExitGvAfter,[s2Step312ExitGOut,s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut],(shrinkRow 769 s2Step312ExitGExtra ++ (shrinkRow 768 s2Step312ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step312ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step312ExitGvAfter [] []=some (s2Step312ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step312ExitGvBefore s2Step312ExitGvAfter s2Step312ExitGvAfter
    s2Step312ExitGvRow s2Step312ExitGvOut 171 [] [] [] []
    (shrinkRow 771 s2Step312ExitGvExtra) ([]) s2Step312ExitGv_Incoming s2Step312ExitGv_checked h4 s2Step312ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step312ExitFvBefore s2Step312ExitFvAfter s2Step312ExitGvAfter
    s2Step312ExitFvRow s2Step312ExitFvOut 172 [] [(s2Step312ExitGvRow,171)] [[]] [s2Step312ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step312ExitGvExtra ++ [])) s2Step312ExitFv_Incoming s2Step312ExitFv_checked h3 s2Step312ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step312ExitFBefore s2Step312ExitFAfter s2Step312ExitGvAfter
    s2Step312ExitFRow s2Step312ExitFOut 114 [] [(s2Step312ExitFvRow,172),(s2Step312ExitGvRow,171)] [[],[]] [s2Step312ExitFvOut,s2Step312ExitGvOut]
    (shrinkRow 768 s2Step312ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step312ExitGvExtra ++ []))) s2Step312ExitF_Incoming s2Step312ExitF_checked h2 s2Step312ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step312ExitGBefore s2Step312ExitGAfter s2Step312ExitGvAfter
    s2Step312ExitGRow s2Step312ExitGOut 114 [] [(s2Step312ExitFRow,114),(s2Step312ExitFvRow,172),(s2Step312ExitGvRow,171)] [[],[],[]] [s2Step312ExitFOut,s2Step312ExitFvOut,s2Step312ExitGvOut]
    (shrinkRow 769 s2Step312ExitGExtra) ((shrinkRow 768 s2Step312ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step312ExitGvExtra ++ [])))) s2Step312ExitG_Incoming s2Step312ExitG_checked h1 s2Step312ExitG_Outgoing
  exact h0

private theorem s2Step312ExitBank_checked : compileHmrBankResizeLog .exit s2Step312ExitGBefore ⟨s2Step312ExitFRow,s2Step312ExitGRow,s2Step312ExitFvRow,s2Step312ExitGvRow⟩ ⟨114,114,172,171⟩ [[],[],[],[]]=
    some (s2Step312ExitGvAfter,⟨s2Step312ExitFOut,s2Step312ExitGOut,s2Step312ExitFvOut,s2Step312ExitGvOut⟩,(shrinkRow 769 s2Step312ExitGExtra ++ (shrinkRow 768 s2Step312ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step312ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step312ExitBank_rows]
  rfl

private theorem s2Step312Add0_apart : Disjoint s2Step312Add0Arena.live s2Step312Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step312Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312Add0_card : s2Step312Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step312Add0_borrowed : s2Step312Add0Arena.checkBorrow (hmrHybridCount s2Step312Add0Arena s2Step312Add0B.length) s2Step312Add0Work=some s2Step312Add0During := by
  have len : s2Step312Add0Work.length=hmrHybridCount s2Step312Add0Arena s2Step312Add0B.length := by
    rw [hmrHybridCount,s2Step312Add0_card]
    decide +kernel
  have nd : s2Step312Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step312Add0Arena s2Step312Add0During s2Step312Add0Work.toFinset s2Step312Add0_bounded s2Step312Add0_apart rfl

private theorem s2Step312Add0_distinct : (806::803::846::(s2Step312Add0A++s2Step312Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312Add0_owned : (806::803::846::(s2Step312Add0A++s2Step312Add0B)).toFinset⊆s2Step312Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step312Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312Add0_checked : compileHmrHybridCinLog s2Step312Add0Arena 803 806 846 s2Step312Add0A s2Step312Add0B s2Step312Add0Work=some s2Step312Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step312Add0Arena s2Step312Add0During 803 806 846 s2Step312Add0A s2Step312Add0B s2Step312Add0Work
    (by decide +kernel) (by decide +kernel) s2Step312Add0_distinct
    (fun q hq => s2Step312Add0_owned (List.mem_toFinset.mpr hq)) s2Step312Add0_borrowed

private theorem s2Step312Add1_apart : Disjoint s2Step312Add1Arena.live s2Step312Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step312Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312Add1_card : s2Step312Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step312Add1_borrowed : s2Step312Add1Arena.checkBorrow (hmrHybridCount s2Step312Add1Arena s2Step312Add1B.length) s2Step312Add1Work=some s2Step312Add1During := by
  have len : s2Step312Add1Work.length=hmrHybridCount s2Step312Add1Arena s2Step312Add1B.length := by
    rw [hmrHybridCount,s2Step312Add1_card]
    decide +kernel
  have nd : s2Step312Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step312Add1Arena s2Step312Add1During s2Step312Add1Work.toFinset s2Step312Add1_bounded s2Step312Add1_apart rfl

private theorem s2Step312Add1_distinct : (806::803::846::(s2Step312Add1A++s2Step312Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312Add1_owned : (806::803::846::(s2Step312Add1A++s2Step312Add1B)).toFinset⊆s2Step312Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step312Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312Add1_checked : compileHmrHybridCinLog s2Step312Add1Arena 803 806 846 s2Step312Add1A s2Step312Add1B s2Step312Add1Work=some s2Step312Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step312Add1Arena s2Step312Add1During 803 806 846 s2Step312Add1A s2Step312Add1B s2Step312Add1Work
    (by decide +kernel) (by decide +kernel) s2Step312Add1_distinct
    (fun q hq => s2Step312Add1_owned (List.mem_toFinset.mpr hq)) s2Step312Add1_borrowed

private theorem s2Step312F4_apart : Disjoint (s2Step312Add0A++s2Step312Add0B).toFinset (s2Step312Add1A++s2Step312Add1B).toFinset := by
  have nd : ((s2Step312Add0A++s2Step312Add0B)++(s2Step312Add1A++s2Step312Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step312F4_carry : s2Step312F4FlagArena.checkBorrow 1 [846]=some s2Step312Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step312F4FlagArena,s2Step312HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step312F4FlagArena,s2Step312HeadFvAfter,s2Step312Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step312F4_distinct : (835::803::806::846::((s2Step312Add0A++s2Step312Add1A)++(s2Step312Add0B++s2Step312Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312F4_flag : s2Step312HeadFvAfter.checkBorrow 1 [806]=some s2Step312F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step312HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step312F4_owned : (835::803::((s2Step312Add0A++s2Step312Add1A)++(s2Step312Add0B++s2Step312Add1B))).toFinset⊆s2Step312HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step312HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312F4_checked : compileHmrHybridF4Log s2Step312HeadFvAfter 835 803 s2Step312Add0A s2Step312Add0B s2Step312Add1A s2Step312Add1B [806] [846] s2Step312Add0Work s2Step312Add1Work=some s2Step312F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step312HeadFvAfter s2Step312F4FlagArena s2Step312Add0Arena s2Step312Add0During s2Step312Add1During 835 803
    s2Step312Add0A s2Step312Add0B s2Step312Add1A s2Step312Add1B [806] [846] s2Step312Add0Work s2Step312Add1Work
    (fun q hq => s2Step312F4_owned (List.mem_toFinset.mpr hq)) s2Step312F4_flag s2Step312F4_carry
    s2Step312F4_distinct s2Step312F4_apart s2Step312Add0_checked s2Step312Add1_checked

private theorem s2Step312Front_branch : s2Step312FrontSigmaArena.checkBorrow 1 [803]=some s2Step312HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step312FrontSigmaArena,s2Step312EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step312FrontSigmaArena,s2Step312EntryGvAfter,s2Step312HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step312Front_entry : HmrFrontEntryValid s2Step312EntryFBefore s2Step312FrontBank 115 171 ⟨114,114,172,171⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step312FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step312EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step312EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step312FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step312Front_sigma : s2Step312EntryGvAfter.checkBorrow 1 [835]=some s2Step312FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step312EntryGvAfter,arenaWires]
  · rfl

private def s2Step312HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312HeadFBefore : Arena := s2Step312HeadGAfter

private def s2Step312HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step312HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step312HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834],769⟩

private def s2Step312HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811],771⟩

private theorem s2Step312HeadBank_incomingDistinct : ([s2Step312HeadGRow,s2Step312HeadFRow,s2Step312HeadGvRow,s2Step312HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312HeadF_Incoming : rowsOwned s2Step312HeadFBefore [s2Step312HeadFRow,s2Step312HeadGvRow,s2Step312HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312HeadGRow,s2Step312HeadFRow,s2Step312HeadGvRow,s2Step312HeadFvRow] 1 s2Step312HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312HeadBank_outgoingOwned : rowsOwned s2Step312HeadFvAfter [s2Step312HeadGOut,s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step312HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312HeadF_Outgoing : rowsOwned s2Step312HeadFvAfter [s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut] :=
  hmrRows_owned_drop s2Step312HeadFvAfter [s2Step312HeadGOut,s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut] 1 s2Step312HeadBank_outgoingOwned

private theorem s2Step312HeadF_distinct : (s2Step312HeadFRow.sign::s2Step312HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312HeadF_owned : (s2Step312HeadFRow.sign::s2Step312HeadFRow.payload).toFinset⊆s2Step312HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312HeadFBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312HeadF_reserved : s2Step312HeadFBefore.reserve s2Step312HeadFFresh.toFinset=some s2Step312HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step312HeadFFresh,arenaWires]
  · norm_num [s2Step312HeadFBefore,s2Step312HeadGAfter,s2Step312HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step312HeadFAfter,s2Step312HeadFBefore,s2Step312HeadGAfter,s2Step312HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step312HeadF_checked : planRowResizeLog s2Step312HeadFBefore s2Step312HeadFRow 116 s2Step312HeadFFresh=
    some (s2Step312HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 824],768⟩,growRow 768 s2Step312HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step312HeadFBefore s2Step312HeadFAfter s2Step312HeadFRow 116 s2Step312HeadFFresh
    s2Step312HeadF_distinct s2Step312HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312HeadF_reserved
  have rowEq : WindowRow.mk (s2Step312HeadFRow.payload++s2Step312HeadFFresh) s2Step312HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 824],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step312HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step312HeadFvBefore : Arena := s2Step312HeadGvAfter

private theorem s2Step312HeadFv_Incoming : rowsOwned s2Step312HeadFvBefore [s2Step312HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312HeadGRow,s2Step312HeadFRow,s2Step312HeadGvRow,s2Step312HeadFvRow] 3 s2Step312HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312HeadFv_Outgoing : rowsOwned s2Step312HeadFvAfter [s2Step312HeadFvOut] :=
  hmrRows_owned_drop s2Step312HeadFvAfter [s2Step312HeadGOut,s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut] 3 s2Step312HeadBank_outgoingOwned

private theorem s2Step312HeadFv_distinct : (s2Step312HeadFvRow.sign::s2Step312HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312HeadFv_owned : (s2Step312HeadFvRow.sign::s2Step312HeadFvRow.payload).toFinset⊆s2Step312HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312HeadFvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312HeadFv_reserved : s2Step312HeadFvBefore.reserve s2Step312HeadFvFresh.toFinset=some s2Step312HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step312HeadFvFresh,arenaWires]
  · norm_num [s2Step312HeadFvBefore,s2Step312HeadGvAfter,s2Step312HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step312HeadFvAfter,s2Step312HeadFvBefore,s2Step312HeadGvAfter,s2Step312HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step312HeadFv_checked : planRowResizeLog s2Step312HeadFvBefore s2Step312HeadFvRow 172 s2Step312HeadFvFresh=
    some (s2Step312HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩,growRow 770 s2Step312HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step312HeadFvBefore s2Step312HeadFvAfter s2Step312HeadFvRow 172 s2Step312HeadFvFresh
    s2Step312HeadFv_distinct s2Step312HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step312HeadFvRow.payload++s2Step312HeadFvFresh) s2Step312HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step312HeadG_Incoming : rowsOwned s2Step312HeadGBefore [s2Step312HeadGRow,s2Step312HeadFRow,s2Step312HeadGvRow,s2Step312HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312HeadGRow,s2Step312HeadFRow,s2Step312HeadGvRow,s2Step312HeadFvRow] 0 s2Step312HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312HeadG_Outgoing : rowsOwned s2Step312HeadFvAfter [s2Step312HeadGOut,s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut] :=
  hmrRows_owned_drop s2Step312HeadFvAfter [s2Step312HeadGOut,s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut] 0 s2Step312HeadBank_outgoingOwned

private theorem s2Step312HeadG_distinct : (s2Step312HeadGRow.sign::s2Step312HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312HeadG_owned : (s2Step312HeadGRow.sign::s2Step312HeadGRow.payload).toFinset⊆s2Step312HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312HeadG_reserved : s2Step312HeadGBefore.reserve s2Step312HeadGFresh.toFinset=some s2Step312HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step312HeadGFresh,arenaWires]
  · norm_num [s2Step312HeadGBefore,s2Step312HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step312HeadGAfter,s2Step312HeadGBefore,s2Step312HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step312HeadG_checked : planRowResizeLog s2Step312HeadGBefore s2Step312HeadGRow 116 s2Step312HeadGFresh=
    some (s2Step312HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834, 787],769⟩,growRow 769 s2Step312HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step312HeadGBefore s2Step312HeadGAfter s2Step312HeadGRow 116 s2Step312HeadGFresh
    s2Step312HeadG_distinct s2Step312HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312HeadG_reserved
  have rowEq : WindowRow.mk (s2Step312HeadGRow.payload++s2Step312HeadGFresh) s2Step312HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 834, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step312HeadGvBefore : Arena := s2Step312HeadFAfter

private theorem s2Step312HeadGv_Incoming : rowsOwned s2Step312HeadGvBefore [s2Step312HeadGvRow,s2Step312HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step312HeadGRow,s2Step312HeadFRow,s2Step312HeadGvRow,s2Step312HeadFvRow] 2 s2Step312HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step312HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step312HeadGv_Outgoing : rowsOwned s2Step312HeadFvAfter [s2Step312HeadGvOut,s2Step312HeadFvOut] :=
  hmrRows_owned_drop s2Step312HeadFvAfter [s2Step312HeadGOut,s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut] 2 s2Step312HeadBank_outgoingOwned

private theorem s2Step312HeadGv_distinct : (s2Step312HeadGvRow.sign::s2Step312HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step312HeadGv_owned : (s2Step312HeadGvRow.sign::s2Step312HeadGvRow.payload).toFinset⊆s2Step312HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step312HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step312HeadGv_reserved : s2Step312HeadGvBefore.reserve s2Step312HeadGvFresh.toFinset=some s2Step312HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step312HeadGvFresh,arenaWires]
  · norm_num [s2Step312HeadGvBefore,s2Step312HeadFAfter,s2Step312HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step312HeadGvAfter,s2Step312HeadGvBefore,s2Step312HeadFAfter,s2Step312HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step312HeadGv_checked : planRowResizeLog s2Step312HeadGvBefore s2Step312HeadGvRow 172 s2Step312HeadGvFresh=
    some (s2Step312HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 810],771⟩,growRow 771 s2Step312HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step312HeadGvBefore s2Step312HeadGvAfter s2Step312HeadGvRow 172 s2Step312HeadGvFresh
    s2Step312HeadGv_distinct s2Step312HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step312HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step312HeadGvRow.payload++s2Step312HeadGvFresh) s2Step312HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 810],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step312HeadBank_rows : planWindowRowsLog s2Step312HeadGBefore [(s2Step312HeadGRow,116),(s2Step312HeadFRow,116),(s2Step312HeadGvRow,172),(s2Step312HeadFvRow,172)] [s2Step312HeadGFresh,s2Step312HeadFFresh,s2Step312HeadGvFresh,s2Step312HeadFvFresh]=
    some (s2Step312HeadFvAfter,[s2Step312HeadGOut,s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut],(growRow 769 s2Step312HeadGFresh ++ (growRow 768 s2Step312HeadFFresh ++ (growRow 771 s2Step312HeadGvFresh ++ (growRow 770 s2Step312HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step312HeadFvAfter [] []=some (s2Step312HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step312HeadFvBefore s2Step312HeadFvAfter s2Step312HeadFvAfter
    s2Step312HeadFvRow s2Step312HeadFvOut 172 s2Step312HeadFvFresh [] [] []
    (growRow 770 s2Step312HeadFvFresh) ([]) s2Step312HeadFv_Incoming s2Step312HeadFv_checked h4 s2Step312HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step312HeadGvBefore s2Step312HeadGvAfter s2Step312HeadFvAfter
    s2Step312HeadGvRow s2Step312HeadGvOut 172 s2Step312HeadGvFresh [(s2Step312HeadFvRow,172)] [s2Step312HeadFvFresh] [s2Step312HeadFvOut]
    (growRow 771 s2Step312HeadGvFresh) ((growRow 770 s2Step312HeadFvFresh ++ [])) s2Step312HeadGv_Incoming s2Step312HeadGv_checked h3 s2Step312HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step312HeadFBefore s2Step312HeadFAfter s2Step312HeadFvAfter
    s2Step312HeadFRow s2Step312HeadFOut 116 s2Step312HeadFFresh [(s2Step312HeadGvRow,172),(s2Step312HeadFvRow,172)] [s2Step312HeadGvFresh,s2Step312HeadFvFresh] [s2Step312HeadGvOut,s2Step312HeadFvOut]
    (growRow 768 s2Step312HeadFFresh) ((growRow 771 s2Step312HeadGvFresh ++ (growRow 770 s2Step312HeadFvFresh ++ []))) s2Step312HeadF_Incoming s2Step312HeadF_checked h2 s2Step312HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step312HeadGBefore s2Step312HeadGAfter s2Step312HeadFvAfter
    s2Step312HeadGRow s2Step312HeadGOut 116 s2Step312HeadGFresh [(s2Step312HeadFRow,116),(s2Step312HeadGvRow,172),(s2Step312HeadFvRow,172)] [s2Step312HeadFFresh,s2Step312HeadGvFresh,s2Step312HeadFvFresh] [s2Step312HeadFOut,s2Step312HeadGvOut,s2Step312HeadFvOut]
    (growRow 769 s2Step312HeadGFresh) ((growRow 768 s2Step312HeadFFresh ++ (growRow 771 s2Step312HeadGvFresh ++ (growRow 770 s2Step312HeadFvFresh ++ [])))) s2Step312HeadG_Incoming s2Step312HeadG_checked h1 s2Step312HeadG_Outgoing
  exact h0

private theorem s2Step312HeadBank_checked : compileHmrBankResizeLog .headroom s2Step312HeadGBefore ⟨s2Step312HeadFRow,s2Step312HeadGRow,s2Step312HeadFvRow,s2Step312HeadGvRow⟩ ⟨116,116,172,172⟩ [s2Step312HeadGFresh,s2Step312HeadFFresh,s2Step312HeadGvFresh,s2Step312HeadFvFresh]=
    some (s2Step312HeadFvAfter,⟨s2Step312HeadFOut,s2Step312HeadGOut,s2Step312HeadFvOut,s2Step312HeadGvOut⟩,(growRow 769 s2Step312HeadGFresh ++ (growRow 768 s2Step312HeadFFresh ++ (growRow 771 s2Step312HeadGvFresh ++ (growRow 770 s2Step312HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step312HeadBank_rows]
  rfl

private theorem s2Step312Front_checked : compileHmrSourceFrontLog s2Step312EntryFBefore s2Step312FrontBank 115 171 ⟨114,114,172,171⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step312FrontLog=some s2Step312FrontPlan := by
  have pairEq : s2Step312FrontPair=⟨s2Step312HeadFRow,s2Step312HeadGRow,s2Step312HeadFvRow,s2Step312HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step312FrontHead=⟨s2Step312ExitFRow,s2Step312ExitGRow,s2Step312ExitFvRow,s2Step312ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step312Add0A=s2Step312FrontHead.f.wires := by decide +kernel
  have gEq : s2Step312Add0B=s2Step312FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step312Add1A=s2Step312FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step312Add1B=s2Step312FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step312EntryFBefore s2Step312FrontBank 115 171 ⟨114,114,172,171⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step312FrontLog s2Step312FrontPlan
  · exact s2Step312Front_entry
  · exact s2Step312EntryBank_checked
  · exact s2Step312Front_sigma
  · rfl
  · exact s2Step312Front_branch
  · rfl
  · simpa only [s2Step312FrontPlan,pairEq] using s2Step312HeadBank_checked
  · simpa only [s2Step312FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step312F4_checked
  · exact s2Step312Counter_checked
  · rfl
  · simpa only [s2Step312FrontPlan,headEq] using s2Step312ExitBank_checked

private theorem s2Step312Complete_explicit_checked : compileHmrEarlyStepLog s2Step312EntryFBefore s2Step312FrontBank 115 171 ⟨114,114,172,171⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step312CompleteLog=some s2Step312CompletePlan := by
  let Q := s2Step312EarlyControlPlan
  have hq := s2Step312EarlyControl_plan_checked
  have fv1 : s2Step312CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step312CompleteOut.fv.payload[2]?.getD s2Step312CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step312CompleteOut.fv.payload[3]?.getD s2Step312CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step312CompleteOut.fv.payload[4]?.getD s2Step312CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step312EntryFBefore s2Step312EarlyControlArena s2Step312FrontBank 115 171 ⟨114,114,172,171⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step312CompleteLog s2Step312FrontPlan Q
    s2Step312Front_checked s2Step312Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step312Complete_owned s2Step312Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step312EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 s2Step312CompleteOut.fv.second (s2Step312CompleteOut.fv.payload[2]?.getD s2Step312CompleteOut.fv.sign) (s2Step312CompleteOut.fv.payload[3]?.getD s2Step312CompleteOut.fv.sign) (s2Step312CompleteOut.fv.payload[4]?.getD s2Step312CompleteOut.fv.sign) 803 56 s2Step312EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep312Arena : Arena := s2Step312EntryFBefore
def s2PrivateStep312Bank : WindowBank := s2Step312FrontBank
def s2PrivateStep312Spec : HmrSourceWalkStepLog := ⟨115,171,⟨114,114,172,171⟩,56,.early s2Step312CompleteLog⟩
def s2PrivateStep312Plan : HmrSourceStepPlan := .early s2Step312CompletePlan
theorem s2PrivateStep312_source : s2PrivateStep312Spec=s2ObservedLogs304[8] := rfl
theorem s2PrivateStep312_checked : compileHmrSourceStepLog s2PrivateStep312Arena s2PrivateStep312Bank
    s2PrivateStep312Spec.fgWidth s2PrivateStep312Spec.vWidth s2PrivateStep312Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 312 s2PrivateStep312Spec.need none s2PrivateStep312Spec.log=some s2PrivateStep312Plan := by
  change compileHmrSourceStepLog s2Step312EntryFBefore s2Step312FrontBank 115 171 ⟨114,114,172,171⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 312 56 none (.early s2Step312CompleteLog)=some (.early s2Step312CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 312<498)]
  rw [s2Step312Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
