import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep309
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

private def s2Step311CompleteMoves : List (Wire × Wire) := [(835,114)]

private def s2Step311EarlyControlLog : HmrEarlyControlLog := ⟨[835, 803, 787, 824, 810],[793],[806],[846, 830, 800, 894, 896, 901],[]⟩

private def s2Step311FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [803]],[[793], [810], [787], [824]],[[], [], [], []]⟩,[811],[834],[806],[846],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800]⟩

private def s2Step311CompleteLog : HmrEarlyStepLog := ⟨s2Step311FrontLog,s2Step311CompleteMoves,s2Step311EarlyControlLog⟩

private def s2Step311ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step311ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step311ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113],769⟩

private def s2Step311ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799],771⟩

private def s2Step311FrontOut : WindowBank := ⟨s2Step311ExitFOut,s2Step311ExitGOut,s2Step311ExitFvOut,s2Step311ExitGvOut⟩

private def s2Step311CompleteOut : WindowBank := s2Step311FrontOut.repacked s2Step311CompleteMoves

private def s2Step311EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step311EarlyControlPositiveArena,[793],s2Step311EarlyControlEqualityArena,[806],⟨⟨811,false⟩,[⟨⟨793,false⟩,806⟩]⟩⟩

private def s2Step311EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,835⟩,⟨⟨774,false⟩,803⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,824⟩,⟨⟨777,false⟩,810⟩]⟩

private def s2Step311EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step311EarlyControlZeroArena,s2Step311EarlyControlZeroPlan,s2Step311EarlyControlClassPlan,s2Step311EarlyControlFlagArena,s2Step311EarlyControlFittedArena,s2Step311EarlyControlHistoryArena,s2Step311EarlyControlSigmaArena,s2Step311EarlyControlOutputArena,s2Step311EarlyControlLog⟩

private def s2Step311CounterWork : List Wire := [806, 846, 830, 800]

private theorem s2Step311Counter_bounded : s2Step311CounterWork.toFinset⊆arenaWires := by norm_num [s2Step311CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step311HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311CounterDuring : Arena := ⟨s2Step311HeadFvAfter.live∪s2Step311CounterWork.toFinset,Finset.union_subset s2Step311HeadFvAfter.bounded s2Step311Counter_bounded⟩

private def s2Step311EntryFFresh : List Wire := []

private def s2Step311EntryFvFresh : List Wire := []

private def s2Step311EntryGFresh : List Wire := []

private def s2Step311EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EntryGvFresh : List Wire := [803]

private def s2Step311ExitFExtra : List Wire := [810]

private def s2Step311ExitFvExtra : List Wire := [824]

private def s2Step311ExitGExtra : List Wire := [114, 793]

private def s2Step311ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311ExitGvExtra : List Wire := [803, 787]

private def s2Step311Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step311Add0_bounded : s2Step311Add0Work.toFinset⊆arenaWires := by
  have h : s2Step311Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step311Add0During : Arena := ⟨s2Step311Add0Arena.live∪s2Step311Add0Work.toFinset,Finset.union_subset s2Step311Add0Arena.bounded s2Step311Add0_bounded⟩

private def s2Step311Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step311Add1_bounded : s2Step311Add1Work.toFinset⊆arenaWires := by
  have h : s2Step311Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step311Add1During : Arena := ⟨s2Step311Add1Arena.live∪s2Step311Add1Work.toFinset,Finset.union_subset s2Step311Add1Arena.bounded s2Step311Add1_bounded⟩

private def s2Step311F4FlagArena : Arena := ⟨s2Step311HeadFvAfter.live∪{806},Finset.union_subset s2Step311HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step311F4Plan : HmrHybridF4Plan := ⟨s2Step311F4FlagArena,[806],s2Step311Add0Arena,[846],s2Step311Add0During,s2Step311Add0Work,s2Step311Add1During,s2Step311Add1Work⟩

private def s2Step311HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 810],768⟩

private def s2Step311HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 824],770⟩

private def s2Step311HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 793],769⟩

private def s2Step311HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803, 787],771⟩

private def s2Step311FrontHead : WindowBank := ⟨s2Step311HeadFOut,s2Step311HeadGOut,s2Step311HeadFvOut,s2Step311HeadGvOut⟩

private def s2Step311EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step311EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step311EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩

private def s2Step311EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803],771⟩

private def s2Step311FrontPair : WindowBank := ⟨s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut⟩

private def s2Step311FrontSigmaArena : Arena := ⟨s2Step311EntryGvAfter.live∪{811},Finset.union_subset s2Step311EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step311HeadFFresh : List Wire := [810]

private def s2Step311HeadFvFresh : List Wire := [824]

private def s2Step311HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311HeadGFresh : List Wire := [793]

private def s2Step311HeadGvFresh : List Wire := [787]

private def s2Step311FrontPlan : HmrSourceFront := ⟨s2Step311EntryGvAfter,s2Step311FrontPair,(growRow 768 s2Step311EntryFFresh ++ (growRow 769 s2Step311EntryGFresh ++ (growRow 770 s2Step311EntryFvFresh ++ (growRow 771 s2Step311EntryGvFresh ++ [])))),s2Step311FrontSigmaArena,[811],s2Step311HeadGBefore,[834],
  s2Step311HeadFvAfter,s2Step311FrontHead,(growRow 769 s2Step311HeadGFresh ++ (growRow 768 s2Step311HeadFFresh ++ (growRow 771 s2Step311HeadGvFresh ++ (growRow 770 s2Step311HeadFvFresh ++ [])))),s2Step311F4Plan,s2Step311CounterDuring,s2Step311CounterWork,s2Step311ExitGvAfter,s2Step311FrontOut,(shrinkRow 769 s2Step311ExitGExtra ++ (shrinkRow 768 s2Step311ExitFExtra ++ (shrinkRow 770 s2Step311ExitFvExtra ++ (shrinkRow 771 s2Step311ExitGvExtra ++ []))))⟩

private def s2Step311CompletePlan : HmrEarlyStepPlan := ⟨s2Step311FrontPlan,s2Step311EarlyControlArena,s2Step311EarlyControlPlan,s2Step311CompleteMoves⟩

private theorem s2Step311Complete_apart : List.Disjoint (s2Step311CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step311CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step311Complete_owned : (s2Step311CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step311EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step311CompleteMoveArena : Arena := ⟨s2Step311ExitGvAfter.live∪{114},Finset.union_subset s2Step311ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step311Complete_repack : s2Step311ExitGvAfter.checkRepack s2Step311CompleteMoves=some s2Step311EarlyControlArena := by
  have owned : 835∈s2Step311ExitGvAfter.live := by norm_num [s2Step311ExitGvAfter,arenaWires]
  have reserve : s2Step311ExitGvAfter.reserve {114}=some s2Step311CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step311ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step311CompleteMoveArena.retireSet {835}=s2Step311EarlyControlArena := by
    unfold Arena.retireSet s2Step311EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step311CompleteMoveArena,s2Step311ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step311CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step311CompleteMoveArena.retireSet {835}).checkRepack []=some s2Step311EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step311EarlyControl_branchOwned : ([834] : List Wire).toFinset⊆s2Step311EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_branch : compileHmrBranchRetirement s2Step311EarlyControlSigmaArena 834=some s2Step311EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step311EarlyControl_branchOwned
  · ext q
    simp [s2Step311EarlyControlOutputArena,s2Step311EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step311EarlyControl_classEqualityBorrow : s2Step311EarlyControlPositiveArena.checkBorrow (([811, 793] : List Wire).length-1) s2Step311EarlyControlLog.classWork=some s2Step311EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step311EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step311EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step311EarlyControlEqualityArena,s2Step311EarlyControlPositiveArena,s2Step311EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step311EarlyControl_classEqualityOwned : ([811, 793] : List Wire).toFinset⊆s2Step311EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_classEquality : compileHmrEqualityLog s2Step311EarlyControlPositiveArena [811, 793] 0 s2Step311EarlyControlLog.classWork=some (s2Step311EarlyControlEqualityArena,s2Step311EarlyControlLog.classWork,s2Step311EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step311EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step311EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step311EarlyControl_classOwned : ([777, 810, 811] : List Wire).toFinset⊆s2Step311EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_positiveBorrow : s2Step311EarlyControlZeroArena.checkBorrow (1) s2Step311EarlyControlLog.positiveWork=some s2Step311EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step311EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step311EarlyControlZeroArena (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step311EarlyControlPositiveArena,s2Step311EarlyControlZeroArena,s2Step311EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step311EarlyControl_class : compileHmrSourceClassLog s2Step311EarlyControlZeroArena false 777 s2Step311EarlyControlZeroPlan.top 0 811 s2Step311EarlyControlLog.positiveWork s2Step311EarlyControlLog.classWork=some s2Step311EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step311EarlyControlClassPlan s2Step311EarlyControlZeroArena false 777 s2Step311EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step311EarlyControl_classOwned
  · exact s2Step311EarlyControl_positiveBorrow
  · exact s2Step311EarlyControl_classEquality

private theorem s2Step311EarlyControl_entryRecordOwned : ([834, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step311EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step311EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_fitBorrow : s2Step311EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step311EarlyControlLog.recordFresh=some s2Step311EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step311EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step311EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step311EarlyControlFittedArena,s2Step311EarlyControlFlagArena,s2Step311EarlyControlLog,arenaWires]

private theorem s2Step311EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step311EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_fit : compileHmrRecordGrowLog s2Step311EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step311EarlyControlLog.recordFresh=some s2Step311EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step311EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step311EarlyControl_fitBorrow

private theorem s2Step311EarlyControl_flagsBorrow : s2Step311EarlyControlEqualityArena.checkBorrow (6) s2Step311EarlyControlLog.flagWork=some s2Step311EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step311EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step311EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step311EarlyControlFlagArena,s2Step311EarlyControlEqualityArena,s2Step311EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step311EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step311EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_flags : compileHmrFlagsLog s2Step311EarlyControlClassPlan.equalityArena s2Step311EarlyControlClassPlan.equality.top 253 252 251 s2Step311EarlyControlLog.flagWork=some s2Step311EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step311EarlyControl_flagsOwned⟩
  · exact s2Step311EarlyControl_flagsBorrow

private theorem s2Step311EarlyControl_historyBorrow : s2Step311EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step311EarlyControlLog.recordFresh=some s2Step311EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step311EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step311EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step311EarlyControlHistoryArena,s2Step311EarlyControlArena,s2Step311EarlyControlLog,arenaWires]

private theorem s2Step311EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step311EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_history : compileHmrRecordGrowLog s2Step311EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step311EarlyControlLog.recordFresh=some s2Step311EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step311EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step311EarlyControl_historyBorrow

private theorem s2Step311EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step311EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step311EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_sigmaRelease : s2Step311EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step311EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step311EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step311EarlyControlSigmaArena,s2Step311EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step311EarlyControl_sigma : compileHmrSigmaDropLog s2Step311EarlyControlHistoryArena false 0 0 254 811 []=some s2Step311EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step311EarlyControl_sigmaOwned⟩
  · exact s2Step311EarlyControl_sigmaRelease

private theorem s2Step311EarlyControl_zeroBorrow : s2Step311EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step311EarlyControlLog.zeroWork=some s2Step311EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step311EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step311EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step311EarlyControlZeroArena,s2Step311EarlyControlArena,s2Step311EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step311EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step311EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step311EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<835) ∨ (836≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EarlyControl_zero : compileHmrEqualityLog s2Step311EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step311EarlyControlLog.zeroWork=some (s2Step311EarlyControlZeroArena,s2Step311EarlyControlLog.zeroWork,s2Step311EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step311EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step311EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step311EarlyControl_logged : s2Step311EarlyControlPlan.Logged s2Step311EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 834 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step311EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step311EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step311EarlyControl_zero
  · exact s2Step311EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step311EarlyControl_flags
  · exact s2Step311EarlyControl_fit
  · exact s2Step311EarlyControl_history
  · exact s2Step311EarlyControl_sigma
  · exact s2Step311EarlyControl_branch

private theorem s2Step311EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step311EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 834 56 s2Step311EarlyControlLog=some s2Step311EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step311EarlyControlPlan s2Step311EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 834 56 s2Step311EarlyControl_logged

private def s2Step311EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step311EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step311EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩

private def s2Step311EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799],771⟩

private def s2Step311FrontBank : WindowBank := ⟨s2Step311EntryFRow,s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow⟩

private def s2Step311Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 810, 768]

private def s2Step311Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 793, 769]

private def s2Step311Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 824, 770]

private def s2Step311Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803, 787, 771]

private theorem s2Step311Counter_apart : Disjoint s2Step311HeadFvAfter.live s2Step311CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step311HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311Counter_borrowed : s2Step311HeadFvAfter.checkBorrow 4 s2Step311CounterWork=some s2Step311CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step311HeadFvAfter s2Step311CounterDuring s2Step311CounterWork.toFinset s2Step311Counter_bounded s2Step311Counter_apart rfl

private theorem s2Step311Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step311HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step311HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311Counter_checked : compileHmrCounterStepLog s2Step311HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step311CounterWork=some s2Step311CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step311HeadFvAfter.live := fun q hq => s2Step311Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step311Counter_borrowed

private def s2Step311EntryFAfter : Arena := s2Step311EntryFBefore

private theorem s2Step311EntryBank_incomingDistinct : ([s2Step311EntryFRow,s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311EntryF_Incoming : rowsOwned s2Step311EntryFBefore [s2Step311EntryFRow,s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311EntryFRow,s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow] 0 s2Step311EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311EntryBank_outgoingOwned : rowsOwned s2Step311EntryGvAfter [s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step311EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311EntryF_Outgoing : rowsOwned s2Step311EntryGvAfter [s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut] :=
  hmrRows_owned_drop s2Step311EntryGvAfter [s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut] 0 s2Step311EntryBank_outgoingOwned

private theorem s2Step311EntryF_distinct : (s2Step311EntryFRow.sign::s2Step311EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311EntryF_owned : (s2Step311EntryFRow.sign::s2Step311EntryFRow.payload).toFinset⊆s2Step311EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EntryF_reserved : s2Step311EntryFBefore.reserve s2Step311EntryFFresh.toFinset=some s2Step311EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step311EntryFFresh,arenaWires]
  · norm_num [s2Step311EntryFBefore,s2Step311EntryFFresh,arenaWires]
  · simp only [s2Step311EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step311EntryF_checked : planRowResizeLog s2Step311EntryFBefore s2Step311EntryFRow 115 s2Step311EntryFFresh=
    some (s2Step311EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩,growRow 768 s2Step311EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step311EntryFBefore s2Step311EntryFAfter s2Step311EntryFRow 115 s2Step311EntryFFresh
    s2Step311EntryF_distinct s2Step311EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step311EntryF_reserved
  have rowEq : WindowRow.mk (s2Step311EntryFRow.payload++s2Step311EntryFFresh) s2Step311EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step311EntryFvAfter : Arena := s2Step311EntryFBefore

private def s2Step311EntryFvBefore : Arena := s2Step311EntryFBefore

private theorem s2Step311EntryFv_Incoming : rowsOwned s2Step311EntryFvBefore [s2Step311EntryFvRow,s2Step311EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311EntryFRow,s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow] 2 s2Step311EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311EntryFv_Outgoing : rowsOwned s2Step311EntryGvAfter [s2Step311EntryFvOut,s2Step311EntryGvOut] :=
  hmrRows_owned_drop s2Step311EntryGvAfter [s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut] 2 s2Step311EntryBank_outgoingOwned

private theorem s2Step311EntryFv_distinct : (s2Step311EntryFvRow.sign::s2Step311EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311EntryFv_owned : (s2Step311EntryFvRow.sign::s2Step311EntryFvRow.payload).toFinset⊆s2Step311EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EntryFv_reserved : s2Step311EntryFvBefore.reserve s2Step311EntryFvFresh.toFinset=some s2Step311EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step311EntryFvFresh,arenaWires]
  · norm_num [s2Step311EntryFvBefore,s2Step311EntryFBefore,s2Step311EntryFvFresh,arenaWires]
  · simp only [s2Step311EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step311EntryFv_checked : planRowResizeLog s2Step311EntryFvBefore s2Step311EntryFvRow 171 s2Step311EntryFvFresh=
    some (s2Step311EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩,growRow 770 s2Step311EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step311EntryFvBefore s2Step311EntryFvAfter s2Step311EntryFvRow 171 s2Step311EntryFvFresh
    s2Step311EntryFv_distinct s2Step311EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step311EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step311EntryFvRow.payload++s2Step311EntryFvFresh) s2Step311EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step311EntryGAfter : Arena := s2Step311EntryFBefore

private def s2Step311EntryGBefore : Arena := s2Step311EntryFBefore

private theorem s2Step311EntryG_Incoming : rowsOwned s2Step311EntryGBefore [s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311EntryFRow,s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow] 1 s2Step311EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311EntryG_Outgoing : rowsOwned s2Step311EntryGvAfter [s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut] :=
  hmrRows_owned_drop s2Step311EntryGvAfter [s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut] 1 s2Step311EntryBank_outgoingOwned

private theorem s2Step311EntryG_distinct : (s2Step311EntryGRow.sign::s2Step311EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311EntryG_owned : (s2Step311EntryGRow.sign::s2Step311EntryGRow.payload).toFinset⊆s2Step311EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EntryG_reserved : s2Step311EntryGBefore.reserve s2Step311EntryGFresh.toFinset=some s2Step311EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step311EntryGFresh,arenaWires]
  · norm_num [s2Step311EntryGBefore,s2Step311EntryFBefore,s2Step311EntryGFresh,arenaWires]
  · simp only [s2Step311EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step311EntryG_checked : planRowResizeLog s2Step311EntryGBefore s2Step311EntryGRow 115 s2Step311EntryGFresh=
    some (s2Step311EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩,growRow 769 s2Step311EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step311EntryGBefore s2Step311EntryGAfter s2Step311EntryGRow 115 s2Step311EntryGFresh
    s2Step311EntryG_distinct s2Step311EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step311EntryG_reserved
  have rowEq : WindowRow.mk (s2Step311EntryGRow.payload++s2Step311EntryGFresh) s2Step311EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step311EntryGvBefore : Arena := s2Step311EntryFBefore

private theorem s2Step311EntryGv_Incoming : rowsOwned s2Step311EntryGvBefore [s2Step311EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311EntryFRow,s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow] 3 s2Step311EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311EntryGv_Outgoing : rowsOwned s2Step311EntryGvAfter [s2Step311EntryGvOut] :=
  hmrRows_owned_drop s2Step311EntryGvAfter [s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut] 3 s2Step311EntryBank_outgoingOwned

private theorem s2Step311EntryGv_distinct : (s2Step311EntryGvRow.sign::s2Step311EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311EntryGv_owned : (s2Step311EntryGvRow.sign::s2Step311EntryGvRow.payload).toFinset⊆s2Step311EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311EntryGv_reserved : s2Step311EntryGvBefore.reserve s2Step311EntryGvFresh.toFinset=some s2Step311EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step311EntryGvFresh,arenaWires]
  · norm_num [s2Step311EntryGvBefore,s2Step311EntryFBefore,s2Step311EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step311EntryGvAfter,s2Step311EntryGvBefore,s2Step311EntryFBefore,s2Step311EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step311EntryGv_checked : planRowResizeLog s2Step311EntryGvBefore s2Step311EntryGvRow 171 s2Step311EntryGvFresh=
    some (s2Step311EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803],771⟩,growRow 771 s2Step311EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step311EntryGvBefore s2Step311EntryGvAfter s2Step311EntryGvRow 171 s2Step311EntryGvFresh
    s2Step311EntryGv_distinct s2Step311EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step311EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step311EntryGvRow.payload++s2Step311EntryGvFresh) s2Step311EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step311EntryBank_rows : planWindowRowsLog s2Step311EntryFBefore [(s2Step311EntryFRow,115),(s2Step311EntryGRow,115),(s2Step311EntryFvRow,171),(s2Step311EntryGvRow,171)] [s2Step311EntryFFresh,s2Step311EntryGFresh,s2Step311EntryFvFresh,s2Step311EntryGvFresh]=
    some (s2Step311EntryGvAfter,[s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut],(growRow 768 s2Step311EntryFFresh ++ (growRow 769 s2Step311EntryGFresh ++ (growRow 770 s2Step311EntryFvFresh ++ (growRow 771 s2Step311EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step311EntryGvAfter [] []=some (s2Step311EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step311EntryGvBefore s2Step311EntryGvAfter s2Step311EntryGvAfter
    s2Step311EntryGvRow s2Step311EntryGvOut 171 s2Step311EntryGvFresh [] [] []
    (growRow 771 s2Step311EntryGvFresh) ([]) s2Step311EntryGv_Incoming s2Step311EntryGv_checked h4 s2Step311EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step311EntryFvBefore s2Step311EntryFvAfter s2Step311EntryGvAfter
    s2Step311EntryFvRow s2Step311EntryFvOut 171 s2Step311EntryFvFresh [(s2Step311EntryGvRow,171)] [s2Step311EntryGvFresh] [s2Step311EntryGvOut]
    (growRow 770 s2Step311EntryFvFresh) ((growRow 771 s2Step311EntryGvFresh ++ [])) s2Step311EntryFv_Incoming s2Step311EntryFv_checked h3 s2Step311EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step311EntryGBefore s2Step311EntryGAfter s2Step311EntryGvAfter
    s2Step311EntryGRow s2Step311EntryGOut 115 s2Step311EntryGFresh [(s2Step311EntryFvRow,171),(s2Step311EntryGvRow,171)] [s2Step311EntryFvFresh,s2Step311EntryGvFresh] [s2Step311EntryFvOut,s2Step311EntryGvOut]
    (growRow 769 s2Step311EntryGFresh) ((growRow 770 s2Step311EntryFvFresh ++ (growRow 771 s2Step311EntryGvFresh ++ []))) s2Step311EntryG_Incoming s2Step311EntryG_checked h2 s2Step311EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step311EntryFBefore s2Step311EntryFAfter s2Step311EntryGvAfter
    s2Step311EntryFRow s2Step311EntryFOut 115 s2Step311EntryFFresh [(s2Step311EntryGRow,115),(s2Step311EntryFvRow,171),(s2Step311EntryGvRow,171)] [s2Step311EntryGFresh,s2Step311EntryFvFresh,s2Step311EntryGvFresh] [s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut]
    (growRow 768 s2Step311EntryFFresh) ((growRow 769 s2Step311EntryGFresh ++ (growRow 770 s2Step311EntryFvFresh ++ (growRow 771 s2Step311EntryGvFresh ++ [])))) s2Step311EntryF_Incoming s2Step311EntryF_checked h1 s2Step311EntryF_Outgoing
  exact h0

private theorem s2Step311EntryBank_checked : compileHmrBankResizeLog .entry s2Step311EntryFBefore ⟨s2Step311EntryFRow,s2Step311EntryGRow,s2Step311EntryFvRow,s2Step311EntryGvRow⟩ ⟨115,115,171,171⟩ [s2Step311EntryFFresh,s2Step311EntryGFresh,s2Step311EntryFvFresh,s2Step311EntryGvFresh]=
    some (s2Step311EntryGvAfter,⟨s2Step311EntryFOut,s2Step311EntryGOut,s2Step311EntryFvOut,s2Step311EntryGvOut⟩,(growRow 768 s2Step311EntryFFresh ++ (growRow 769 s2Step311EntryGFresh ++ (growRow 770 s2Step311EntryFvFresh ++ (growRow 771 s2Step311EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step311EntryBank_rows]
  rfl

private def s2Step311ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311ExitFBefore : Arena := s2Step311ExitGAfter

private def s2Step311ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 810],768⟩

private def s2Step311ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 824],770⟩

private def s2Step311ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 793],769⟩

private def s2Step311ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803, 787],771⟩

private theorem s2Step311ExitBank_incomingDistinct : ([s2Step311ExitGRow,s2Step311ExitFRow,s2Step311ExitFvRow,s2Step311ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311ExitF_Incoming : rowsOwned s2Step311ExitFBefore [s2Step311ExitFRow,s2Step311ExitFvRow,s2Step311ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311ExitGRow,s2Step311ExitFRow,s2Step311ExitFvRow,s2Step311ExitGvRow] 1 s2Step311ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311ExitFBefore (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311ExitBank_outgoingOwned : rowsOwned s2Step311ExitGvAfter [s2Step311ExitGOut,s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step311ExitGvAfter (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311ExitF_Outgoing : rowsOwned s2Step311ExitGvAfter [s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut] :=
  hmrRows_owned_drop s2Step311ExitGvAfter [s2Step311ExitGOut,s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut] 1 s2Step311ExitBank_outgoingOwned

private theorem s2Step311ExitF_distinct : (s2Step311ExitFRow.sign::s2Step311ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311ExitF_owned : (s2Step311ExitFRow.sign::s2Step311ExitFRow.payload).toFinset⊆s2Step311ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311ExitFBefore (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311ExitF_retired : s2Step311ExitFBefore.retireSet s2Step311ExitFExtra.toFinset=s2Step311ExitFAfter := by
  unfold Arena.retireSet s2Step311ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step311ExitFBefore,s2Step311ExitGAfter,s2Step311ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step311ExitF_checked : planRowResizeLog s2Step311ExitFBefore s2Step311ExitFRow 115 []=
    some (s2Step311ExitFAfter,s2Step311ExitFOut,shrinkRow 768 s2Step311ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step311ExitFBefore s2Step311ExitFRow 115 s2Step311ExitF_distinct s2Step311ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step311ExitFRow.payload.take 115) s2Step311ExitFRow.sign=s2Step311ExitFOut := by decide +kernel
  have hi : s2Step311ExitFRow.payload.drop 115=s2Step311ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step311ExitF_retired] at result
  exact result

private def s2Step311ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311ExitFvBefore : Arena := s2Step311ExitFAfter

private theorem s2Step311ExitFv_Incoming : rowsOwned s2Step311ExitFvBefore [s2Step311ExitFvRow,s2Step311ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311ExitGRow,s2Step311ExitFRow,s2Step311ExitFvRow,s2Step311ExitGvRow] 2 s2Step311ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311ExitFvBefore (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311ExitFv_Outgoing : rowsOwned s2Step311ExitGvAfter [s2Step311ExitFvOut,s2Step311ExitGvOut] :=
  hmrRows_owned_drop s2Step311ExitGvAfter [s2Step311ExitGOut,s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut] 2 s2Step311ExitBank_outgoingOwned

private theorem s2Step311ExitFv_distinct : (s2Step311ExitFvRow.sign::s2Step311ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311ExitFv_owned : (s2Step311ExitFvRow.sign::s2Step311ExitFvRow.payload).toFinset⊆s2Step311ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311ExitFvBefore (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311ExitFv_retired : s2Step311ExitFvBefore.retireSet s2Step311ExitFvExtra.toFinset=s2Step311ExitFvAfter := by
  unfold Arena.retireSet s2Step311ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step311ExitFvBefore,s2Step311ExitFAfter,s2Step311ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step311ExitFv_checked : planRowResizeLog s2Step311ExitFvBefore s2Step311ExitFvRow 171 []=
    some (s2Step311ExitFvAfter,s2Step311ExitFvOut,shrinkRow 770 s2Step311ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step311ExitFvBefore s2Step311ExitFvRow 171 s2Step311ExitFv_distinct s2Step311ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step311ExitFvRow.payload.take 171) s2Step311ExitFvRow.sign=s2Step311ExitFvOut := by decide +kernel
  have hi : s2Step311ExitFvRow.payload.drop 171=s2Step311ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step311ExitFv_retired] at result
  exact result

private def s2Step311ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step311ExitG_Incoming : rowsOwned s2Step311ExitGBefore [s2Step311ExitGRow,s2Step311ExitFRow,s2Step311ExitFvRow,s2Step311ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311ExitGRow,s2Step311ExitFRow,s2Step311ExitFvRow,s2Step311ExitGvRow] 0 s2Step311ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311ExitG_Outgoing : rowsOwned s2Step311ExitGvAfter [s2Step311ExitGOut,s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut] :=
  hmrRows_owned_drop s2Step311ExitGvAfter [s2Step311ExitGOut,s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut] 0 s2Step311ExitBank_outgoingOwned

private theorem s2Step311ExitG_distinct : (s2Step311ExitGRow.sign::s2Step311ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311ExitG_owned : (s2Step311ExitGRow.sign::s2Step311ExitGRow.payload).toFinset⊆s2Step311ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311ExitG_retired : s2Step311ExitGBefore.retireSet s2Step311ExitGExtra.toFinset=s2Step311ExitGAfter := by
  unfold Arena.retireSet s2Step311ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step311ExitGBefore,s2Step311ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step311ExitG_checked : planRowResizeLog s2Step311ExitGBefore s2Step311ExitGRow 114 []=
    some (s2Step311ExitGAfter,s2Step311ExitGOut,shrinkRow 769 s2Step311ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step311ExitGBefore s2Step311ExitGRow 114 s2Step311ExitG_distinct s2Step311ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step311ExitGRow.payload.take 114) s2Step311ExitGRow.sign=s2Step311ExitGOut := by decide +kernel
  have hi : s2Step311ExitGRow.payload.drop 114=s2Step311ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step311ExitG_retired] at result
  exact result

private def s2Step311ExitGvBefore : Arena := s2Step311ExitFvAfter

private theorem s2Step311ExitGv_Incoming : rowsOwned s2Step311ExitGvBefore [s2Step311ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311ExitGRow,s2Step311ExitFRow,s2Step311ExitFvRow,s2Step311ExitGvRow] 3 s2Step311ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311ExitGvBefore (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311ExitGv_Outgoing : rowsOwned s2Step311ExitGvAfter [s2Step311ExitGvOut] :=
  hmrRows_owned_drop s2Step311ExitGvAfter [s2Step311ExitGOut,s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut] 3 s2Step311ExitBank_outgoingOwned

private theorem s2Step311ExitGv_distinct : (s2Step311ExitGvRow.sign::s2Step311ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311ExitGv_owned : (s2Step311ExitGvRow.sign::s2Step311ExitGvRow.payload).toFinset⊆s2Step311ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311ExitGvBefore (fun q => (0≤q ∧ q<114) ∨ (115≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311ExitGv_retired : s2Step311ExitGvBefore.retireSet s2Step311ExitGvExtra.toFinset=s2Step311ExitGvAfter := by
  unfold Arena.retireSet s2Step311ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step311ExitGvBefore,s2Step311ExitFvAfter,s2Step311ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step311ExitGv_checked : planRowResizeLog s2Step311ExitGvBefore s2Step311ExitGvRow 170 []=
    some (s2Step311ExitGvAfter,s2Step311ExitGvOut,shrinkRow 771 s2Step311ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step311ExitGvBefore s2Step311ExitGvRow 170 s2Step311ExitGv_distinct s2Step311ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step311ExitGvRow.payload.take 170) s2Step311ExitGvRow.sign=s2Step311ExitGvOut := by decide +kernel
  have hi : s2Step311ExitGvRow.payload.drop 170=s2Step311ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step311ExitGv_retired] at result
  exact result

private theorem s2Step311ExitBank_rows : planWindowRowsLog s2Step311ExitGBefore [(s2Step311ExitGRow,114),(s2Step311ExitFRow,115),(s2Step311ExitFvRow,171),(s2Step311ExitGvRow,170)] [[],[],[],[]]=
    some (s2Step311ExitGvAfter,[s2Step311ExitGOut,s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut],(shrinkRow 769 s2Step311ExitGExtra ++ (shrinkRow 768 s2Step311ExitFExtra ++ (shrinkRow 770 s2Step311ExitFvExtra ++ (shrinkRow 771 s2Step311ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step311ExitGvAfter [] []=some (s2Step311ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step311ExitGvBefore s2Step311ExitGvAfter s2Step311ExitGvAfter
    s2Step311ExitGvRow s2Step311ExitGvOut 170 [] [] [] []
    (shrinkRow 771 s2Step311ExitGvExtra) ([]) s2Step311ExitGv_Incoming s2Step311ExitGv_checked h4 s2Step311ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step311ExitFvBefore s2Step311ExitFvAfter s2Step311ExitGvAfter
    s2Step311ExitFvRow s2Step311ExitFvOut 171 [] [(s2Step311ExitGvRow,170)] [[]] [s2Step311ExitGvOut]
    (shrinkRow 770 s2Step311ExitFvExtra) ((shrinkRow 771 s2Step311ExitGvExtra ++ [])) s2Step311ExitFv_Incoming s2Step311ExitFv_checked h3 s2Step311ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step311ExitFBefore s2Step311ExitFAfter s2Step311ExitGvAfter
    s2Step311ExitFRow s2Step311ExitFOut 115 [] [(s2Step311ExitFvRow,171),(s2Step311ExitGvRow,170)] [[],[]] [s2Step311ExitFvOut,s2Step311ExitGvOut]
    (shrinkRow 768 s2Step311ExitFExtra) ((shrinkRow 770 s2Step311ExitFvExtra ++ (shrinkRow 771 s2Step311ExitGvExtra ++ []))) s2Step311ExitF_Incoming s2Step311ExitF_checked h2 s2Step311ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step311ExitGBefore s2Step311ExitGAfter s2Step311ExitGvAfter
    s2Step311ExitGRow s2Step311ExitGOut 114 [] [(s2Step311ExitFRow,115),(s2Step311ExitFvRow,171),(s2Step311ExitGvRow,170)] [[],[],[]] [s2Step311ExitFOut,s2Step311ExitFvOut,s2Step311ExitGvOut]
    (shrinkRow 769 s2Step311ExitGExtra) ((shrinkRow 768 s2Step311ExitFExtra ++ (shrinkRow 770 s2Step311ExitFvExtra ++ (shrinkRow 771 s2Step311ExitGvExtra ++ [])))) s2Step311ExitG_Incoming s2Step311ExitG_checked h1 s2Step311ExitG_Outgoing
  exact h0

private theorem s2Step311ExitBank_checked : compileHmrBankResizeLog .exit s2Step311ExitGBefore ⟨s2Step311ExitFRow,s2Step311ExitGRow,s2Step311ExitFvRow,s2Step311ExitGvRow⟩ ⟨115,114,171,170⟩ [[],[],[],[]]=
    some (s2Step311ExitGvAfter,⟨s2Step311ExitFOut,s2Step311ExitGOut,s2Step311ExitFvOut,s2Step311ExitGvOut⟩,(shrinkRow 769 s2Step311ExitGExtra ++ (shrinkRow 768 s2Step311ExitFExtra ++ (shrinkRow 770 s2Step311ExitFvExtra ++ (shrinkRow 771 s2Step311ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step311ExitBank_rows]
  rfl

private theorem s2Step311Add0_apart : Disjoint s2Step311Add0Arena.live s2Step311Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step311Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311Add0_card : s2Step311Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step311Add0_borrowed : s2Step311Add0Arena.checkBorrow (hmrHybridCount s2Step311Add0Arena s2Step311Add0B.length) s2Step311Add0Work=some s2Step311Add0During := by
  have len : s2Step311Add0Work.length=hmrHybridCount s2Step311Add0Arena s2Step311Add0B.length := by
    rw [hmrHybridCount,s2Step311Add0_card]
    decide +kernel
  have nd : s2Step311Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step311Add0Arena s2Step311Add0During s2Step311Add0Work.toFinset s2Step311Add0_bounded s2Step311Add0_apart rfl

private theorem s2Step311Add0_distinct : (806::834::846::(s2Step311Add0A++s2Step311Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311Add0_owned : (806::834::846::(s2Step311Add0A++s2Step311Add0B)).toFinset⊆s2Step311Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step311Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311Add0_checked : compileHmrHybridCinLog s2Step311Add0Arena 834 806 846 s2Step311Add0A s2Step311Add0B s2Step311Add0Work=some s2Step311Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step311Add0Arena s2Step311Add0During 834 806 846 s2Step311Add0A s2Step311Add0B s2Step311Add0Work
    (by decide +kernel) (by decide +kernel) s2Step311Add0_distinct
    (fun q hq => s2Step311Add0_owned (List.mem_toFinset.mpr hq)) s2Step311Add0_borrowed

private theorem s2Step311Add1_apart : Disjoint s2Step311Add1Arena.live s2Step311Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step311Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311Add1_card : s2Step311Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step311Add1_borrowed : s2Step311Add1Arena.checkBorrow (hmrHybridCount s2Step311Add1Arena s2Step311Add1B.length) s2Step311Add1Work=some s2Step311Add1During := by
  have len : s2Step311Add1Work.length=hmrHybridCount s2Step311Add1Arena s2Step311Add1B.length := by
    rw [hmrHybridCount,s2Step311Add1_card]
    decide +kernel
  have nd : s2Step311Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step311Add1Arena s2Step311Add1During s2Step311Add1Work.toFinset s2Step311Add1_bounded s2Step311Add1_apart rfl

private theorem s2Step311Add1_distinct : (806::834::846::(s2Step311Add1A++s2Step311Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311Add1_owned : (806::834::846::(s2Step311Add1A++s2Step311Add1B)).toFinset⊆s2Step311Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step311Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311Add1_checked : compileHmrHybridCinLog s2Step311Add1Arena 834 806 846 s2Step311Add1A s2Step311Add1B s2Step311Add1Work=some s2Step311Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step311Add1Arena s2Step311Add1During 834 806 846 s2Step311Add1A s2Step311Add1B s2Step311Add1Work
    (by decide +kernel) (by decide +kernel) s2Step311Add1_distinct
    (fun q hq => s2Step311Add1_owned (List.mem_toFinset.mpr hq)) s2Step311Add1_borrowed

private theorem s2Step311F4_apart : Disjoint (s2Step311Add0A++s2Step311Add0B).toFinset (s2Step311Add1A++s2Step311Add1B).toFinset := by
  have nd : ((s2Step311Add0A++s2Step311Add0B)++(s2Step311Add1A++s2Step311Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step311F4_carry : s2Step311F4FlagArena.checkBorrow 1 [846]=some s2Step311Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step311F4FlagArena,s2Step311HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step311F4FlagArena,s2Step311HeadFvAfter,s2Step311Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step311F4_distinct : (811::834::806::846::((s2Step311Add0A++s2Step311Add1A)++(s2Step311Add0B++s2Step311Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311F4_flag : s2Step311HeadFvAfter.checkBorrow 1 [806]=some s2Step311F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step311HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step311F4_owned : (811::834::((s2Step311Add0A++s2Step311Add1A)++(s2Step311Add0B++s2Step311Add1B))).toFinset⊆s2Step311HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step311HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311F4_checked : compileHmrHybridF4Log s2Step311HeadFvAfter 811 834 s2Step311Add0A s2Step311Add0B s2Step311Add1A s2Step311Add1B [806] [846] s2Step311Add0Work s2Step311Add1Work=some s2Step311F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step311HeadFvAfter s2Step311F4FlagArena s2Step311Add0Arena s2Step311Add0During s2Step311Add1During 811 834
    s2Step311Add0A s2Step311Add0B s2Step311Add1A s2Step311Add1B [806] [846] s2Step311Add0Work s2Step311Add1Work
    (fun q hq => s2Step311F4_owned (List.mem_toFinset.mpr hq)) s2Step311F4_flag s2Step311F4_carry
    s2Step311F4_distinct s2Step311F4_apart s2Step311Add0_checked s2Step311Add1_checked

private theorem s2Step311Front_branch : s2Step311FrontSigmaArena.checkBorrow 1 [834]=some s2Step311HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step311FrontSigmaArena,s2Step311EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step311FrontSigmaArena,s2Step311EntryGvAfter,s2Step311HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step311Front_entry : HmrFrontEntryValid s2Step311EntryFBefore s2Step311FrontBank 115 171 ⟨115,114,171,170⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step311FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step311EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step311EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step311FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step311Front_sigma : s2Step311EntryGvAfter.checkBorrow 1 [811]=some s2Step311FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step311EntryGvAfter,arenaWires]
  · rfl

private def s2Step311HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311HeadFBefore : Arena := s2Step311HeadGAfter

private def s2Step311HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step311HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step311HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩

private def s2Step311HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803],771⟩

private theorem s2Step311HeadBank_incomingDistinct : ([s2Step311HeadGRow,s2Step311HeadFRow,s2Step311HeadGvRow,s2Step311HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311HeadF_Incoming : rowsOwned s2Step311HeadFBefore [s2Step311HeadFRow,s2Step311HeadGvRow,s2Step311HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311HeadGRow,s2Step311HeadFRow,s2Step311HeadGvRow,s2Step311HeadFvRow] 1 s2Step311HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311HeadBank_outgoingOwned : rowsOwned s2Step311HeadFvAfter [s2Step311HeadGOut,s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step311HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311HeadF_Outgoing : rowsOwned s2Step311HeadFvAfter [s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut] :=
  hmrRows_owned_drop s2Step311HeadFvAfter [s2Step311HeadGOut,s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut] 1 s2Step311HeadBank_outgoingOwned

private theorem s2Step311HeadF_distinct : (s2Step311HeadFRow.sign::s2Step311HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311HeadF_owned : (s2Step311HeadFRow.sign::s2Step311HeadFRow.payload).toFinset⊆s2Step311HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311HeadF_reserved : s2Step311HeadFBefore.reserve s2Step311HeadFFresh.toFinset=some s2Step311HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step311HeadFFresh,arenaWires]
  · norm_num [s2Step311HeadFBefore,s2Step311HeadGAfter,s2Step311HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step311HeadFAfter,s2Step311HeadFBefore,s2Step311HeadGAfter,s2Step311HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step311HeadF_checked : planRowResizeLog s2Step311HeadFBefore s2Step311HeadFRow 116 s2Step311HeadFFresh=
    some (s2Step311HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 810],768⟩,growRow 768 s2Step311HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step311HeadFBefore s2Step311HeadFAfter s2Step311HeadFRow 116 s2Step311HeadFFresh
    s2Step311HeadF_distinct s2Step311HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step311HeadF_reserved
  have rowEq : WindowRow.mk (s2Step311HeadFRow.payload++s2Step311HeadFFresh) s2Step311HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 810],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step311HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step311HeadFvBefore : Arena := s2Step311HeadGvAfter

private theorem s2Step311HeadFv_Incoming : rowsOwned s2Step311HeadFvBefore [s2Step311HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311HeadGRow,s2Step311HeadFRow,s2Step311HeadGvRow,s2Step311HeadFvRow] 3 s2Step311HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311HeadFv_Outgoing : rowsOwned s2Step311HeadFvAfter [s2Step311HeadFvOut] :=
  hmrRows_owned_drop s2Step311HeadFvAfter [s2Step311HeadGOut,s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut] 3 s2Step311HeadBank_outgoingOwned

private theorem s2Step311HeadFv_distinct : (s2Step311HeadFvRow.sign::s2Step311HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311HeadFv_owned : (s2Step311HeadFvRow.sign::s2Step311HeadFvRow.payload).toFinset⊆s2Step311HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311HeadFv_reserved : s2Step311HeadFvBefore.reserve s2Step311HeadFvFresh.toFinset=some s2Step311HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step311HeadFvFresh,arenaWires]
  · norm_num [s2Step311HeadFvBefore,s2Step311HeadGvAfter,s2Step311HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step311HeadFvAfter,s2Step311HeadFvBefore,s2Step311HeadGvAfter,s2Step311HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step311HeadFv_checked : planRowResizeLog s2Step311HeadFvBefore s2Step311HeadFvRow 172 s2Step311HeadFvFresh=
    some (s2Step311HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 824],770⟩,growRow 770 s2Step311HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step311HeadFvBefore s2Step311HeadFvAfter s2Step311HeadFvRow 172 s2Step311HeadFvFresh
    s2Step311HeadFv_distinct s2Step311HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step311HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step311HeadFvRow.payload++s2Step311HeadFvFresh) s2Step311HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step311HeadG_Incoming : rowsOwned s2Step311HeadGBefore [s2Step311HeadGRow,s2Step311HeadFRow,s2Step311HeadGvRow,s2Step311HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311HeadGRow,s2Step311HeadFRow,s2Step311HeadGvRow,s2Step311HeadFvRow] 0 s2Step311HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311HeadG_Outgoing : rowsOwned s2Step311HeadFvAfter [s2Step311HeadGOut,s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut] :=
  hmrRows_owned_drop s2Step311HeadFvAfter [s2Step311HeadGOut,s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut] 0 s2Step311HeadBank_outgoingOwned

private theorem s2Step311HeadG_distinct : (s2Step311HeadGRow.sign::s2Step311HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311HeadG_owned : (s2Step311HeadGRow.sign::s2Step311HeadGRow.payload).toFinset⊆s2Step311HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311HeadG_reserved : s2Step311HeadGBefore.reserve s2Step311HeadGFresh.toFinset=some s2Step311HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step311HeadGFresh,arenaWires]
  · norm_num [s2Step311HeadGBefore,s2Step311HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step311HeadGAfter,s2Step311HeadGBefore,s2Step311HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step311HeadG_checked : planRowResizeLog s2Step311HeadGBefore s2Step311HeadGRow 116 s2Step311HeadGFresh=
    some (s2Step311HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 793],769⟩,growRow 769 s2Step311HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step311HeadGBefore s2Step311HeadGAfter s2Step311HeadGRow 116 s2Step311HeadGFresh
    s2Step311HeadG_distinct s2Step311HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step311HeadG_reserved
  have rowEq : WindowRow.mk (s2Step311HeadGRow.payload++s2Step311HeadGFresh) s2Step311HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 793],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step311HeadGvBefore : Arena := s2Step311HeadFAfter

private theorem s2Step311HeadGv_Incoming : rowsOwned s2Step311HeadGvBefore [s2Step311HeadGvRow,s2Step311HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step311HeadGRow,s2Step311HeadFRow,s2Step311HeadGvRow,s2Step311HeadFvRow] 2 s2Step311HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step311HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step311HeadGv_Outgoing : rowsOwned s2Step311HeadFvAfter [s2Step311HeadGvOut,s2Step311HeadFvOut] :=
  hmrRows_owned_drop s2Step311HeadFvAfter [s2Step311HeadGOut,s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut] 2 s2Step311HeadBank_outgoingOwned

private theorem s2Step311HeadGv_distinct : (s2Step311HeadGvRow.sign::s2Step311HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step311HeadGv_owned : (s2Step311HeadGvRow.sign::s2Step311HeadGvRow.payload).toFinset⊆s2Step311HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step311HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step311HeadGv_reserved : s2Step311HeadGvBefore.reserve s2Step311HeadGvFresh.toFinset=some s2Step311HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step311HeadGvFresh,arenaWires]
  · norm_num [s2Step311HeadGvBefore,s2Step311HeadFAfter,s2Step311HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step311HeadGvAfter,s2Step311HeadGvBefore,s2Step311HeadFAfter,s2Step311HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step311HeadGv_checked : planRowResizeLog s2Step311HeadGvBefore s2Step311HeadGvRow 172 s2Step311HeadGvFresh=
    some (s2Step311HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803, 787],771⟩,growRow 771 s2Step311HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step311HeadGvBefore s2Step311HeadGvAfter s2Step311HeadGvRow 172 s2Step311HeadGvFresh
    s2Step311HeadGv_distinct s2Step311HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step311HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step311HeadGvRow.payload++s2Step311HeadGvFresh) s2Step311HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 803, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step311HeadBank_rows : planWindowRowsLog s2Step311HeadGBefore [(s2Step311HeadGRow,116),(s2Step311HeadFRow,116),(s2Step311HeadGvRow,172),(s2Step311HeadFvRow,172)] [s2Step311HeadGFresh,s2Step311HeadFFresh,s2Step311HeadGvFresh,s2Step311HeadFvFresh]=
    some (s2Step311HeadFvAfter,[s2Step311HeadGOut,s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut],(growRow 769 s2Step311HeadGFresh ++ (growRow 768 s2Step311HeadFFresh ++ (growRow 771 s2Step311HeadGvFresh ++ (growRow 770 s2Step311HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step311HeadFvAfter [] []=some (s2Step311HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step311HeadFvBefore s2Step311HeadFvAfter s2Step311HeadFvAfter
    s2Step311HeadFvRow s2Step311HeadFvOut 172 s2Step311HeadFvFresh [] [] []
    (growRow 770 s2Step311HeadFvFresh) ([]) s2Step311HeadFv_Incoming s2Step311HeadFv_checked h4 s2Step311HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step311HeadGvBefore s2Step311HeadGvAfter s2Step311HeadFvAfter
    s2Step311HeadGvRow s2Step311HeadGvOut 172 s2Step311HeadGvFresh [(s2Step311HeadFvRow,172)] [s2Step311HeadFvFresh] [s2Step311HeadFvOut]
    (growRow 771 s2Step311HeadGvFresh) ((growRow 770 s2Step311HeadFvFresh ++ [])) s2Step311HeadGv_Incoming s2Step311HeadGv_checked h3 s2Step311HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step311HeadFBefore s2Step311HeadFAfter s2Step311HeadFvAfter
    s2Step311HeadFRow s2Step311HeadFOut 116 s2Step311HeadFFresh [(s2Step311HeadGvRow,172),(s2Step311HeadFvRow,172)] [s2Step311HeadGvFresh,s2Step311HeadFvFresh] [s2Step311HeadGvOut,s2Step311HeadFvOut]
    (growRow 768 s2Step311HeadFFresh) ((growRow 771 s2Step311HeadGvFresh ++ (growRow 770 s2Step311HeadFvFresh ++ []))) s2Step311HeadF_Incoming s2Step311HeadF_checked h2 s2Step311HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step311HeadGBefore s2Step311HeadGAfter s2Step311HeadFvAfter
    s2Step311HeadGRow s2Step311HeadGOut 116 s2Step311HeadGFresh [(s2Step311HeadFRow,116),(s2Step311HeadGvRow,172),(s2Step311HeadFvRow,172)] [s2Step311HeadFFresh,s2Step311HeadGvFresh,s2Step311HeadFvFresh] [s2Step311HeadFOut,s2Step311HeadGvOut,s2Step311HeadFvOut]
    (growRow 769 s2Step311HeadGFresh) ((growRow 768 s2Step311HeadFFresh ++ (growRow 771 s2Step311HeadGvFresh ++ (growRow 770 s2Step311HeadFvFresh ++ [])))) s2Step311HeadG_Incoming s2Step311HeadG_checked h1 s2Step311HeadG_Outgoing
  exact h0

private theorem s2Step311HeadBank_checked : compileHmrBankResizeLog .headroom s2Step311HeadGBefore ⟨s2Step311HeadFRow,s2Step311HeadGRow,s2Step311HeadFvRow,s2Step311HeadGvRow⟩ ⟨116,116,172,172⟩ [s2Step311HeadGFresh,s2Step311HeadFFresh,s2Step311HeadGvFresh,s2Step311HeadFvFresh]=
    some (s2Step311HeadFvAfter,⟨s2Step311HeadFOut,s2Step311HeadGOut,s2Step311HeadFvOut,s2Step311HeadGvOut⟩,(growRow 769 s2Step311HeadGFresh ++ (growRow 768 s2Step311HeadFFresh ++ (growRow 771 s2Step311HeadGvFresh ++ (growRow 770 s2Step311HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step311HeadBank_rows]
  rfl

private theorem s2Step311Front_checked : compileHmrSourceFrontLog s2Step311EntryFBefore s2Step311FrontBank 115 171 ⟨115,114,171,170⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step311FrontLog=some s2Step311FrontPlan := by
  have pairEq : s2Step311FrontPair=⟨s2Step311HeadFRow,s2Step311HeadGRow,s2Step311HeadFvRow,s2Step311HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step311FrontHead=⟨s2Step311ExitFRow,s2Step311ExitGRow,s2Step311ExitFvRow,s2Step311ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step311Add0A=s2Step311FrontHead.f.wires := by decide +kernel
  have gEq : s2Step311Add0B=s2Step311FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step311Add1A=s2Step311FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step311Add1B=s2Step311FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step311EntryFBefore s2Step311FrontBank 115 171 ⟨115,114,171,170⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step311FrontLog s2Step311FrontPlan
  · exact s2Step311Front_entry
  · exact s2Step311EntryBank_checked
  · exact s2Step311Front_sigma
  · rfl
  · exact s2Step311Front_branch
  · rfl
  · simpa only [s2Step311FrontPlan,pairEq] using s2Step311HeadBank_checked
  · simpa only [s2Step311FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step311F4_checked
  · exact s2Step311Counter_checked
  · rfl
  · simpa only [s2Step311FrontPlan,headEq] using s2Step311ExitBank_checked

private theorem s2Step311Complete_explicit_checked : compileHmrEarlyStepLog s2Step311EntryFBefore s2Step311FrontBank 115 171 ⟨115,114,171,170⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step311CompleteLog=some s2Step311CompletePlan := by
  let Q := s2Step311EarlyControlPlan
  have hq := s2Step311EarlyControl_plan_checked
  have fv1 : s2Step311CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step311CompleteOut.fv.payload[2]?.getD s2Step311CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step311CompleteOut.fv.payload[3]?.getD s2Step311CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step311CompleteOut.fv.payload[4]?.getD s2Step311CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step311EntryFBefore s2Step311EarlyControlArena s2Step311FrontBank 115 171 ⟨115,114,171,170⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step311CompleteLog s2Step311FrontPlan Q
    s2Step311Front_checked s2Step311Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step311Complete_owned s2Step311Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step311EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 s2Step311CompleteOut.fv.second (s2Step311CompleteOut.fv.payload[2]?.getD s2Step311CompleteOut.fv.sign) (s2Step311CompleteOut.fv.payload[3]?.getD s2Step311CompleteOut.fv.sign) (s2Step311CompleteOut.fv.payload[4]?.getD s2Step311CompleteOut.fv.sign) 834 56 s2Step311EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep311Arena : Arena := s2Step311EntryFBefore
def s2PrivateStep311Bank : WindowBank := s2Step311FrontBank
def s2PrivateStep311Spec : HmrSourceWalkStepLog := ⟨115,171,⟨115,114,171,170⟩,56,.early s2Step311CompleteLog⟩
def s2PrivateStep311Plan : HmrSourceStepPlan := .early s2Step311CompletePlan
theorem s2PrivateStep311_source : s2PrivateStep311Spec=s2ObservedLogs304[7] := rfl
theorem s2PrivateStep311_checked : compileHmrSourceStepLog s2PrivateStep311Arena s2PrivateStep311Bank
    s2PrivateStep311Spec.fgWidth s2PrivateStep311Spec.vWidth s2PrivateStep311Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 311 s2PrivateStep311Spec.need none s2PrivateStep311Spec.log=some s2PrivateStep311Plan := by
  change compileHmrSourceStepLog s2Step311EntryFBefore s2Step311FrontBank 115 171 ⟨115,114,171,170⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 311 56 none (.early s2Step311CompleteLog)=some (.early s2Step311CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 311<498)]
  rw [s2Step311Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
