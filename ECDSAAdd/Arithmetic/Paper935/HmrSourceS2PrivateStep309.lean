import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep307
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

private def s2Step309CompleteMoves : List (Wire × Wire) := [(810,115),(803,627)]

private def s2Step309EarlyControlLog : HmrEarlyControlLog := ⟨[803, 810, 793, 834, 825],[787],[824],[806, 846, 830, 800, 894, 896],[]⟩

private def s2Step309FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[825], [834], [793], [802]],[[], [], [], []]⟩,[811],[799],[787],[824],[806, 846, 830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[787, 824, 806, 846]⟩

private def s2Step309CompleteLog : HmrEarlyStepLog := ⟨s2Step309FrontLog,s2Step309CompleteMoves,s2Step309EarlyControlLog⟩

private def s2Step309ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step309ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩

private def s2Step309ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩

private def s2Step309ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step309FrontOut : WindowBank := ⟨s2Step309ExitFOut,s2Step309ExitGOut,s2Step309ExitFvOut,s2Step309ExitGvOut⟩

private def s2Step309CompleteOut : WindowBank := s2Step309FrontOut.repacked s2Step309CompleteMoves

private def s2Step309EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step309EarlyControlPositiveArena,[787],s2Step309EarlyControlEqualityArena,[824],⟨⟨811,false⟩,[⟨⟨787,false⟩,824⟩]⟩⟩

private def s2Step309EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,803⟩,⟨⟨774,false⟩,810⟩,⟨⟨775,false⟩,793⟩,⟨⟨776,false⟩,834⟩,⟨⟨777,false⟩,825⟩]⟩

private def s2Step309EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step309EarlyControlZeroArena,s2Step309EarlyControlZeroPlan,s2Step309EarlyControlClassPlan,s2Step309EarlyControlFlagArena,s2Step309EarlyControlFittedArena,s2Step309EarlyControlHistoryArena,s2Step309EarlyControlSigmaArena,s2Step309EarlyControlOutputArena,s2Step309EarlyControlLog⟩

private def s2Step309CounterWork : List Wire := [787, 824, 806, 846]

private theorem s2Step309Counter_bounded : s2Step309CounterWork.toFinset⊆arenaWires := by norm_num [s2Step309CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step309HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309CounterDuring : Arena := ⟨s2Step309HeadFvAfter.live∪s2Step309CounterWork.toFinset,Finset.union_subset s2Step309HeadFvAfter.bounded s2Step309Counter_bounded⟩

private def s2Step309EntryFFresh : List Wire := []

private def s2Step309EntryFvFresh : List Wire := []

private def s2Step309EntryGFresh : List Wire := []

private def s2Step309EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309EntryGvAfter : Arena := s2Step309EntryFBefore

private def s2Step309EntryGvFresh : List Wire := []

private def s2Step309ExitFExtra : List Wire := [627, 834]

private def s2Step309ExitGExtra : List Wire := [115, 825]

private def s2Step309ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<627) ∨ (628≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309ExitGvExtra : List Wire := [793]

private def s2Step309Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309Add0Work : List Wire := [806, 846, 830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step309Add0_bounded : s2Step309Add0Work.toFinset⊆arenaWires := by
  have h : s2Step309Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step309Add0During : Arena := ⟨s2Step309Add0Arena.live∪s2Step309Add0Work.toFinset,Finset.union_subset s2Step309Add0Arena.bounded s2Step309Add0_bounded⟩

private def s2Step309Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309Add1Work : List Wire := [806, 846, 830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step309Add1_bounded : s2Step309Add1Work.toFinset⊆arenaWires := by
  have h : s2Step309Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step309Add1During : Arena := ⟨s2Step309Add1Arena.live∪s2Step309Add1Work.toFinset,Finset.union_subset s2Step309Add1Arena.bounded s2Step309Add1_bounded⟩

private def s2Step309F4FlagArena : Arena := ⟨s2Step309HeadFvAfter.live∪{787},Finset.union_subset s2Step309HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step309F4Plan : HmrHybridF4Plan := ⟨s2Step309F4FlagArena,[787],s2Step309Add0Arena,[824],s2Step309Add0During,s2Step309Add0Work,s2Step309Add1During,s2Step309Add1Work⟩

private def s2Step309HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 834],768⟩

private def s2Step309HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩

private def s2Step309HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 825],769⟩

private def s2Step309HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793],771⟩

private def s2Step309FrontHead : WindowBank := ⟨s2Step309HeadFOut,s2Step309HeadGOut,s2Step309HeadFvOut,s2Step309HeadGvOut⟩

private def s2Step309EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627],768⟩

private def s2Step309EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step309EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],769⟩

private def s2Step309EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step309FrontPair : WindowBank := ⟨s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut⟩

private def s2Step309FrontSigmaArena : Arena := ⟨s2Step309EntryGvAfter.live∪{811},Finset.union_subset s2Step309EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step309HeadFFresh : List Wire := [834]

private def s2Step309HeadFvFresh : List Wire := [802]

private def s2Step309HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309HeadGFresh : List Wire := [825]

private def s2Step309HeadGvFresh : List Wire := [793]

private def s2Step309FrontPlan : HmrSourceFront := ⟨s2Step309EntryGvAfter,s2Step309FrontPair,(growRow 768 s2Step309EntryFFresh ++ (growRow 769 s2Step309EntryGFresh ++ (growRow 770 s2Step309EntryFvFresh ++ (growRow 771 s2Step309EntryGvFresh ++ [])))),s2Step309FrontSigmaArena,[811],s2Step309HeadGBefore,[799],
  s2Step309HeadFvAfter,s2Step309FrontHead,(growRow 769 s2Step309HeadGFresh ++ (growRow 768 s2Step309HeadFFresh ++ (growRow 771 s2Step309HeadGvFresh ++ (growRow 770 s2Step309HeadFvFresh ++ [])))),s2Step309F4Plan,s2Step309CounterDuring,s2Step309CounterWork,s2Step309ExitGvAfter,s2Step309FrontOut,(shrinkRow 769 s2Step309ExitGExtra ++ (shrinkRow 768 s2Step309ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step309ExitGvExtra ++ []))))⟩

private def s2Step309CompletePlan : HmrEarlyStepPlan := ⟨s2Step309FrontPlan,s2Step309EarlyControlArena,s2Step309EarlyControlPlan,s2Step309CompleteMoves⟩

private theorem s2Step309Complete_apart : List.Disjoint (s2Step309CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step309CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step309Complete_owned : (s2Step309CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step309CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,627),(628,787),(788,793),(794,800),(801,806),(807,810),(811,824),(826,830),(831,834),(835,846),(847,894),(895,896),(897,901),(902,903),(904,907),(909,910)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step309CompleteRelocationMove0Borrowed : Arena := ⟨s2Step309ExitGvAfter.live∪{115},Finset.union_subset s2Step309ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step309CompleteRelocationMove1Borrowed : Arena := ⟨s2Step309CompleteRelocationMove0After.live∪{627},Finset.union_subset s2Step309CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step309CompleteRelocation_move0_owned : 810∈s2Step309ExitGvAfter.live := by norm_num [s2Step309ExitGvAfter,arenaWires]

private theorem s2Step309CompleteRelocation_move0_reserve : s2Step309ExitGvAfter.reserve {115}=some s2Step309CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step309ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step309CompleteRelocation_move0_retire : s2Step309CompleteRelocationMove0Borrowed.retireSet {810}=s2Step309CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step309CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step309CompleteRelocationMove0Borrowed,s2Step309ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step309CompleteRelocation_move1_owned : 803∈s2Step309CompleteRelocationMove0After.live := by norm_num [s2Step309CompleteRelocationMove0After,arenaWires]

private theorem s2Step309CompleteRelocation_move1_reserve : s2Step309CompleteRelocationMove0After.reserve {627}=some s2Step309CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step309CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step309CompleteRelocation_move1_retire : s2Step309CompleteRelocationMove1Borrowed.retireSet {803}=s2Step309EarlyControlArena := by
  unfold Arena.retireSet s2Step309EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step309CompleteRelocationMove1Borrowed,s2Step309CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step309CompleteRelocation_checked : s2Step309ExitGvAfter.checkRepack [(810,115),(803,627)]=some s2Step309EarlyControlArena := by
  have tail2 : s2Step309EarlyControlArena.checkRepack []=some s2Step309EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step309CompleteRelocationMove0After s2Step309CompleteRelocationMove1Borrowed s2Step309EarlyControlArena s2Step309EarlyControlArena 803 627 []
    s2Step309CompleteRelocation_move1_owned s2Step309CompleteRelocation_move1_reserve s2Step309CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step309ExitGvAfter s2Step309CompleteRelocationMove0Borrowed s2Step309CompleteRelocationMove0After s2Step309EarlyControlArena 810 115 [(803,627)]
    s2Step309CompleteRelocation_move0_owned s2Step309CompleteRelocation_move0_reserve s2Step309CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step309Complete_repack : s2Step309ExitGvAfter.checkRepack s2Step309CompleteMoves=some s2Step309EarlyControlArena := by
  simpa only [s2Step309CompleteMoves] using s2Step309CompleteRelocation_checked

private theorem s2Step309EarlyControl_branchOwned : ([799] : List Wire).toFinset⊆s2Step309EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_branch : compileHmrBranchRetirement s2Step309EarlyControlSigmaArena 799=some s2Step309EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step309EarlyControl_branchOwned
  · ext q
    simp [s2Step309EarlyControlOutputArena,s2Step309EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step309EarlyControl_classEqualityBorrow : s2Step309EarlyControlPositiveArena.checkBorrow (([811, 787] : List Wire).length-1) s2Step309EarlyControlLog.classWork=some s2Step309EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step309EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step309EarlyControlEqualityArena,s2Step309EarlyControlPositiveArena,s2Step309EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step309EarlyControl_classEqualityOwned : ([811, 787] : List Wire).toFinset⊆s2Step309EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_classEquality : compileHmrEqualityLog s2Step309EarlyControlPositiveArena [811, 787] 0 s2Step309EarlyControlLog.classWork=some (s2Step309EarlyControlEqualityArena,s2Step309EarlyControlLog.classWork,s2Step309EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step309EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step309EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step309EarlyControl_classOwned : ([777, 825, 811] : List Wire).toFinset⊆s2Step309EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_positiveBorrow : s2Step309EarlyControlZeroArena.checkBorrow (1) s2Step309EarlyControlLog.positiveWork=some s2Step309EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step309EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step309EarlyControlPositiveArena,s2Step309EarlyControlZeroArena,s2Step309EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step309EarlyControl_class : compileHmrSourceClassLog s2Step309EarlyControlZeroArena false 777 s2Step309EarlyControlZeroPlan.top 0 811 s2Step309EarlyControlLog.positiveWork s2Step309EarlyControlLog.classWork=some s2Step309EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step309EarlyControlClassPlan s2Step309EarlyControlZeroArena false 777 s2Step309EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step309EarlyControl_classOwned
  · exact s2Step309EarlyControl_positiveBorrow
  · exact s2Step309EarlyControl_classEquality

private theorem s2Step309EarlyControl_entryRecordOwned : ([799, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_fitBorrow : s2Step309EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step309EarlyControlLog.recordFresh=some s2Step309EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step309EarlyControlFlagArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step309EarlyControlFittedArena,s2Step309EarlyControlFlagArena,s2Step309EarlyControlLog,arenaWires]

private theorem s2Step309EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step309EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlFlagArena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_fit : compileHmrRecordGrowLog s2Step309EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step309EarlyControlLog.recordFresh=some s2Step309EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step309EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step309EarlyControl_fitBorrow

private theorem s2Step309EarlyControl_flagsBorrow : s2Step309EarlyControlEqualityArena.checkBorrow (6) s2Step309EarlyControlLog.flagWork=some s2Step309EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step309EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step309EarlyControlFlagArena,s2Step309EarlyControlEqualityArena,s2Step309EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step309EarlyControl_flagsOwned : ([824, 253, 252, 251] : List Wire).toFinset⊆s2Step309EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_flags : compileHmrFlagsLog s2Step309EarlyControlClassPlan.equalityArena s2Step309EarlyControlClassPlan.equality.top 253 252 251 s2Step309EarlyControlLog.flagWork=some s2Step309EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step309EarlyControl_flagsOwned⟩
  · exact s2Step309EarlyControl_flagsBorrow

private theorem s2Step309EarlyControl_historyBorrow : s2Step309EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step309EarlyControlLog.recordFresh=some s2Step309EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step309EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step309EarlyControlHistoryArena,s2Step309EarlyControlArena,s2Step309EarlyControlLog,arenaWires]

private theorem s2Step309EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_history : compileHmrRecordGrowLog s2Step309EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step309EarlyControlLog.recordFresh=some s2Step309EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step309EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step309EarlyControl_historyBorrow

private theorem s2Step309EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step309EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step309EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_sigmaRelease : s2Step309EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step309EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step309EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step309EarlyControlSigmaArena,s2Step309EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step309EarlyControl_sigma : compileHmrSigmaDropLog s2Step309EarlyControlHistoryArena false 0 0 254 811 []=some s2Step309EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step309EarlyControl_sigmaOwned⟩
  · exact s2Step309EarlyControl_sigmaRelease

private theorem s2Step309EarlyControl_zeroBorrow : s2Step309EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step309EarlyControlLog.zeroWork=some s2Step309EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step309EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step309EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step309EarlyControlZeroArena,s2Step309EarlyControlArena,s2Step309EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step309EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step309EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step309EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EarlyControl_zero : compileHmrEqualityLog s2Step309EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step309EarlyControlLog.zeroWork=some (s2Step309EarlyControlZeroArena,s2Step309EarlyControlLog.zeroWork,s2Step309EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step309EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step309EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step309EarlyControl_logged : s2Step309EarlyControlPlan.Logged s2Step309EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 799 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step309EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step309EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step309EarlyControl_zero
  · exact s2Step309EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step309EarlyControl_flags
  · exact s2Step309EarlyControl_fit
  · exact s2Step309EarlyControl_history
  · exact s2Step309EarlyControl_sigma
  · exact s2Step309EarlyControl_branch

private theorem s2Step309EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step309EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 799 56 s2Step309EarlyControlLog=some s2Step309EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step309EarlyControlPlan s2Step309EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 799 56 s2Step309EarlyControl_logged

private def s2Step309EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627],768⟩

private def s2Step309EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step309EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],769⟩

private def s2Step309EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step309FrontBank : WindowBank := ⟨s2Step309EntryFRow,s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow⟩

private def s2Step309Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 834, 768]

private def s2Step309Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 825, 769]

private def s2Step309Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 770]

private def s2Step309Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793, 771]

private theorem s2Step309Counter_apart : Disjoint s2Step309HeadFvAfter.live s2Step309CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step309HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309Counter_borrowed : s2Step309HeadFvAfter.checkBorrow 4 s2Step309CounterWork=some s2Step309CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step309HeadFvAfter s2Step309CounterDuring s2Step309CounterWork.toFinset s2Step309Counter_bounded s2Step309Counter_apart rfl

private theorem s2Step309Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step309HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step309HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309Counter_checked : compileHmrCounterStepLog s2Step309HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step309CounterWork=some s2Step309CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step309HeadFvAfter.live := fun q hq => s2Step309Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step309Counter_borrowed

private def s2Step309EntryFAfter : Arena := s2Step309EntryFBefore

private theorem s2Step309EntryBank_incomingDistinct : ([s2Step309EntryFRow,s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309EntryF_Incoming : rowsOwned s2Step309EntryFBefore [s2Step309EntryFRow,s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309EntryFRow,s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow] 0 s2Step309EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309EntryBank_outgoingOwned : rowsOwned s2Step309EntryGvAfter [s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step309EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309EntryF_Outgoing : rowsOwned s2Step309EntryGvAfter [s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut] :=
  hmrRows_owned_drop s2Step309EntryGvAfter [s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut] 0 s2Step309EntryBank_outgoingOwned

private theorem s2Step309EntryF_distinct : (s2Step309EntryFRow.sign::s2Step309EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309EntryF_owned : (s2Step309EntryFRow.sign::s2Step309EntryFRow.payload).toFinset⊆s2Step309EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EntryF_reserved : s2Step309EntryFBefore.reserve s2Step309EntryFFresh.toFinset=some s2Step309EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step309EntryFFresh,arenaWires]
  · norm_num [s2Step309EntryFBefore,s2Step309EntryFFresh,arenaWires]
  · simp only [s2Step309EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step309EntryF_checked : planRowResizeLog s2Step309EntryFBefore s2Step309EntryFRow 116 s2Step309EntryFFresh=
    some (s2Step309EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627],768⟩,growRow 768 s2Step309EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step309EntryFBefore s2Step309EntryFAfter s2Step309EntryFRow 116 s2Step309EntryFFresh
    s2Step309EntryF_distinct s2Step309EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309EntryF_reserved
  have rowEq : WindowRow.mk (s2Step309EntryFRow.payload++s2Step309EntryFFresh) s2Step309EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step309EntryFvAfter : Arena := s2Step309EntryFBefore

private def s2Step309EntryFvBefore : Arena := s2Step309EntryFBefore

private theorem s2Step309EntryFv_Incoming : rowsOwned s2Step309EntryFvBefore [s2Step309EntryFvRow,s2Step309EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309EntryFRow,s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow] 2 s2Step309EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309EntryFv_Outgoing : rowsOwned s2Step309EntryGvAfter [s2Step309EntryFvOut,s2Step309EntryGvOut] :=
  hmrRows_owned_drop s2Step309EntryGvAfter [s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut] 2 s2Step309EntryBank_outgoingOwned

private theorem s2Step309EntryFv_distinct : (s2Step309EntryFvRow.sign::s2Step309EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309EntryFv_owned : (s2Step309EntryFvRow.sign::s2Step309EntryFvRow.payload).toFinset⊆s2Step309EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EntryFv_reserved : s2Step309EntryFvBefore.reserve s2Step309EntryFvFresh.toFinset=some s2Step309EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step309EntryFvFresh,arenaWires]
  · norm_num [s2Step309EntryFvBefore,s2Step309EntryFBefore,s2Step309EntryFvFresh,arenaWires]
  · simp only [s2Step309EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step309EntryFv_checked : planRowResizeLog s2Step309EntryFvBefore s2Step309EntryFvRow 169 s2Step309EntryFvFresh=
    some (s2Step309EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩,growRow 770 s2Step309EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step309EntryFvBefore s2Step309EntryFvAfter s2Step309EntryFvRow 169 s2Step309EntryFvFresh
    s2Step309EntryFv_distinct s2Step309EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step309EntryFvRow.payload++s2Step309EntryFvFresh) s2Step309EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step309EntryGAfter : Arena := s2Step309EntryFBefore

private def s2Step309EntryGBefore : Arena := s2Step309EntryFBefore

private theorem s2Step309EntryG_Incoming : rowsOwned s2Step309EntryGBefore [s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309EntryFRow,s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow] 1 s2Step309EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309EntryG_Outgoing : rowsOwned s2Step309EntryGvAfter [s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut] :=
  hmrRows_owned_drop s2Step309EntryGvAfter [s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut] 1 s2Step309EntryBank_outgoingOwned

private theorem s2Step309EntryG_distinct : (s2Step309EntryGRow.sign::s2Step309EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309EntryG_owned : (s2Step309EntryGRow.sign::s2Step309EntryGRow.payload).toFinset⊆s2Step309EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EntryG_reserved : s2Step309EntryGBefore.reserve s2Step309EntryGFresh.toFinset=some s2Step309EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step309EntryGFresh,arenaWires]
  · norm_num [s2Step309EntryGBefore,s2Step309EntryFBefore,s2Step309EntryGFresh,arenaWires]
  · simp only [s2Step309EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step309EntryG_checked : planRowResizeLog s2Step309EntryGBefore s2Step309EntryGRow 116 s2Step309EntryGFresh=
    some (s2Step309EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],769⟩,growRow 769 s2Step309EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step309EntryGBefore s2Step309EntryGAfter s2Step309EntryGRow 116 s2Step309EntryGFresh
    s2Step309EntryG_distinct s2Step309EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309EntryG_reserved
  have rowEq : WindowRow.mk (s2Step309EntryGRow.payload++s2Step309EntryGFresh) s2Step309EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step309EntryGvBefore : Arena := s2Step309EntryFBefore

private theorem s2Step309EntryGv_Incoming : rowsOwned s2Step309EntryGvBefore [s2Step309EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309EntryFRow,s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow] 3 s2Step309EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309EntryGv_Outgoing : rowsOwned s2Step309EntryGvAfter [s2Step309EntryGvOut] :=
  hmrRows_owned_drop s2Step309EntryGvAfter [s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut] 3 s2Step309EntryBank_outgoingOwned

private theorem s2Step309EntryGv_distinct : (s2Step309EntryGvRow.sign::s2Step309EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309EntryGv_owned : (s2Step309EntryGvRow.sign::s2Step309EntryGvRow.payload).toFinset⊆s2Step309EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309EntryGv_reserved : s2Step309EntryGvBefore.reserve s2Step309EntryGvFresh.toFinset=some s2Step309EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step309EntryGvFresh,arenaWires]
  · norm_num [s2Step309EntryGvBefore,s2Step309EntryFBefore,s2Step309EntryGvFresh,arenaWires]
  · simp only [s2Step309EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step309EntryGv_checked : planRowResizeLog s2Step309EntryGvBefore s2Step309EntryGvRow 169 s2Step309EntryGvFresh=
    some (s2Step309EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩,growRow 771 s2Step309EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step309EntryGvBefore s2Step309EntryGvAfter s2Step309EntryGvRow 169 s2Step309EntryGvFresh
    s2Step309EntryGv_distinct s2Step309EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step309EntryGvRow.payload++s2Step309EntryGvFresh) s2Step309EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step309EntryBank_rows : planWindowRowsLog s2Step309EntryFBefore [(s2Step309EntryFRow,116),(s2Step309EntryGRow,116),(s2Step309EntryFvRow,169),(s2Step309EntryGvRow,169)] [s2Step309EntryFFresh,s2Step309EntryGFresh,s2Step309EntryFvFresh,s2Step309EntryGvFresh]=
    some (s2Step309EntryGvAfter,[s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut],(growRow 768 s2Step309EntryFFresh ++ (growRow 769 s2Step309EntryGFresh ++ (growRow 770 s2Step309EntryFvFresh ++ (growRow 771 s2Step309EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step309EntryGvAfter [] []=some (s2Step309EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step309EntryGvBefore s2Step309EntryGvAfter s2Step309EntryGvAfter
    s2Step309EntryGvRow s2Step309EntryGvOut 169 s2Step309EntryGvFresh [] [] []
    (growRow 771 s2Step309EntryGvFresh) ([]) s2Step309EntryGv_Incoming s2Step309EntryGv_checked h4 s2Step309EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step309EntryFvBefore s2Step309EntryFvAfter s2Step309EntryGvAfter
    s2Step309EntryFvRow s2Step309EntryFvOut 169 s2Step309EntryFvFresh [(s2Step309EntryGvRow,169)] [s2Step309EntryGvFresh] [s2Step309EntryGvOut]
    (growRow 770 s2Step309EntryFvFresh) ((growRow 771 s2Step309EntryGvFresh ++ [])) s2Step309EntryFv_Incoming s2Step309EntryFv_checked h3 s2Step309EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step309EntryGBefore s2Step309EntryGAfter s2Step309EntryGvAfter
    s2Step309EntryGRow s2Step309EntryGOut 116 s2Step309EntryGFresh [(s2Step309EntryFvRow,169),(s2Step309EntryGvRow,169)] [s2Step309EntryFvFresh,s2Step309EntryGvFresh] [s2Step309EntryFvOut,s2Step309EntryGvOut]
    (growRow 769 s2Step309EntryGFresh) ((growRow 770 s2Step309EntryFvFresh ++ (growRow 771 s2Step309EntryGvFresh ++ []))) s2Step309EntryG_Incoming s2Step309EntryG_checked h2 s2Step309EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step309EntryFBefore s2Step309EntryFAfter s2Step309EntryGvAfter
    s2Step309EntryFRow s2Step309EntryFOut 116 s2Step309EntryFFresh [(s2Step309EntryGRow,116),(s2Step309EntryFvRow,169),(s2Step309EntryGvRow,169)] [s2Step309EntryGFresh,s2Step309EntryFvFresh,s2Step309EntryGvFresh] [s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut]
    (growRow 768 s2Step309EntryFFresh) ((growRow 769 s2Step309EntryGFresh ++ (growRow 770 s2Step309EntryFvFresh ++ (growRow 771 s2Step309EntryGvFresh ++ [])))) s2Step309EntryF_Incoming s2Step309EntryF_checked h1 s2Step309EntryF_Outgoing
  exact h0

private theorem s2Step309EntryBank_checked : compileHmrBankResizeLog .entry s2Step309EntryFBefore ⟨s2Step309EntryFRow,s2Step309EntryGRow,s2Step309EntryFvRow,s2Step309EntryGvRow⟩ ⟨116,116,169,169⟩ [s2Step309EntryFFresh,s2Step309EntryGFresh,s2Step309EntryFvFresh,s2Step309EntryGvFresh]=
    some (s2Step309EntryGvAfter,⟨s2Step309EntryFOut,s2Step309EntryGOut,s2Step309EntryFvOut,s2Step309EntryGvOut⟩,(growRow 768 s2Step309EntryFFresh ++ (growRow 769 s2Step309EntryGFresh ++ (growRow 770 s2Step309EntryFvFresh ++ (growRow 771 s2Step309EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step309EntryBank_rows]
  rfl

private def s2Step309ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<627) ∨ (628≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309ExitFBefore : Arena := s2Step309ExitGAfter

private def s2Step309ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 834],768⟩

private def s2Step309ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩

private def s2Step309ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 825],769⟩

private def s2Step309ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793],771⟩

private theorem s2Step309ExitBank_incomingDistinct : ([s2Step309ExitGRow,s2Step309ExitFRow,s2Step309ExitFvRow,s2Step309ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309ExitF_Incoming : rowsOwned s2Step309ExitFBefore [s2Step309ExitFRow,s2Step309ExitFvRow,s2Step309ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309ExitGRow,s2Step309ExitFRow,s2Step309ExitFvRow,s2Step309ExitGvRow] 1 s2Step309ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309ExitFBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309ExitBank_outgoingOwned : rowsOwned s2Step309ExitGvAfter [s2Step309ExitGOut,s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step309ExitGvAfter (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<627) ∨ (628≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309ExitF_Outgoing : rowsOwned s2Step309ExitGvAfter [s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut] :=
  hmrRows_owned_drop s2Step309ExitGvAfter [s2Step309ExitGOut,s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut] 1 s2Step309ExitBank_outgoingOwned

private theorem s2Step309ExitF_distinct : (s2Step309ExitFRow.sign::s2Step309ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309ExitF_owned : (s2Step309ExitFRow.sign::s2Step309ExitFRow.payload).toFinset⊆s2Step309ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309ExitFBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309ExitF_retired : s2Step309ExitFBefore.retireSet s2Step309ExitFExtra.toFinset=s2Step309ExitFAfter := by
  unfold Arena.retireSet s2Step309ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step309ExitFBefore,s2Step309ExitGAfter,s2Step309ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step309ExitF_checked : planRowResizeLog s2Step309ExitFBefore s2Step309ExitFRow 115 []=
    some (s2Step309ExitFAfter,s2Step309ExitFOut,shrinkRow 768 s2Step309ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step309ExitFBefore s2Step309ExitFRow 115 s2Step309ExitF_distinct s2Step309ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step309ExitFRow.payload.take 115) s2Step309ExitFRow.sign=s2Step309ExitFOut := by decide +kernel
  have hi : s2Step309ExitFRow.payload.drop 115=s2Step309ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step309ExitF_retired] at result
  exact result

private def s2Step309ExitFvAfter : Arena := s2Step309ExitFAfter

private def s2Step309ExitFvBefore : Arena := s2Step309ExitFAfter

private theorem s2Step309ExitFv_Incoming : rowsOwned s2Step309ExitFvBefore [s2Step309ExitFvRow,s2Step309ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309ExitGRow,s2Step309ExitFRow,s2Step309ExitFvRow,s2Step309ExitGvRow] 2 s2Step309ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309ExitFvBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<627) ∨ (628≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309ExitFv_Outgoing : rowsOwned s2Step309ExitGvAfter [s2Step309ExitFvOut,s2Step309ExitGvOut] :=
  hmrRows_owned_drop s2Step309ExitGvAfter [s2Step309ExitGOut,s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut] 2 s2Step309ExitBank_outgoingOwned

private theorem s2Step309ExitFv_distinct : (s2Step309ExitFvRow.sign::s2Step309ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309ExitFv_owned : (s2Step309ExitFvRow.sign::s2Step309ExitFvRow.payload).toFinset⊆s2Step309ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309ExitFvBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<627) ∨ (628≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309ExitFv_reserved : s2Step309ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step309ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step309ExitFv_checked : planRowResizeLog s2Step309ExitFvBefore s2Step309ExitFvRow 170 []=
    some (s2Step309ExitFvAfter,s2Step309ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step309ExitFvBefore s2Step309ExitFvAfter s2Step309ExitFvRow 170 []
    s2Step309ExitFv_distinct s2Step309ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step309ExitFvRow.payload++[]) s2Step309ExitFvRow.sign=s2Step309ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step309ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step309ExitG_Incoming : rowsOwned s2Step309ExitGBefore [s2Step309ExitGRow,s2Step309ExitFRow,s2Step309ExitFvRow,s2Step309ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309ExitGRow,s2Step309ExitFRow,s2Step309ExitFvRow,s2Step309ExitGvRow] 0 s2Step309ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309ExitG_Outgoing : rowsOwned s2Step309ExitGvAfter [s2Step309ExitGOut,s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut] :=
  hmrRows_owned_drop s2Step309ExitGvAfter [s2Step309ExitGOut,s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut] 0 s2Step309ExitBank_outgoingOwned

private theorem s2Step309ExitG_distinct : (s2Step309ExitGRow.sign::s2Step309ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309ExitG_owned : (s2Step309ExitGRow.sign::s2Step309ExitGRow.payload).toFinset⊆s2Step309ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309ExitG_retired : s2Step309ExitGBefore.retireSet s2Step309ExitGExtra.toFinset=s2Step309ExitGAfter := by
  unfold Arena.retireSet s2Step309ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step309ExitGBefore,s2Step309ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step309ExitG_checked : planRowResizeLog s2Step309ExitGBefore s2Step309ExitGRow 115 []=
    some (s2Step309ExitGAfter,s2Step309ExitGOut,shrinkRow 769 s2Step309ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step309ExitGBefore s2Step309ExitGRow 115 s2Step309ExitG_distinct s2Step309ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step309ExitGRow.payload.take 115) s2Step309ExitGRow.sign=s2Step309ExitGOut := by decide +kernel
  have hi : s2Step309ExitGRow.payload.drop 115=s2Step309ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step309ExitG_retired] at result
  exact result

private def s2Step309ExitGvBefore : Arena := s2Step309ExitFAfter

private theorem s2Step309ExitGv_Incoming : rowsOwned s2Step309ExitGvBefore [s2Step309ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309ExitGRow,s2Step309ExitFRow,s2Step309ExitFvRow,s2Step309ExitGvRow] 3 s2Step309ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309ExitGvBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<627) ∨ (628≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309ExitGv_Outgoing : rowsOwned s2Step309ExitGvAfter [s2Step309ExitGvOut] :=
  hmrRows_owned_drop s2Step309ExitGvAfter [s2Step309ExitGOut,s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut] 3 s2Step309ExitBank_outgoingOwned

private theorem s2Step309ExitGv_distinct : (s2Step309ExitGvRow.sign::s2Step309ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309ExitGv_owned : (s2Step309ExitGvRow.sign::s2Step309ExitGvRow.payload).toFinset⊆s2Step309ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309ExitGvBefore (fun q => (0≤q ∧ q<115) ∨ (116≤q ∧ q<627) ∨ (628≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309ExitGv_retired : s2Step309ExitGvBefore.retireSet s2Step309ExitGvExtra.toFinset=s2Step309ExitGvAfter := by
  unfold Arena.retireSet s2Step309ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step309ExitGvBefore,s2Step309ExitFAfter,s2Step309ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step309ExitGv_checked : planRowResizeLog s2Step309ExitGvBefore s2Step309ExitGvRow 169 []=
    some (s2Step309ExitGvAfter,s2Step309ExitGvOut,shrinkRow 771 s2Step309ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step309ExitGvBefore s2Step309ExitGvRow 169 s2Step309ExitGv_distinct s2Step309ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step309ExitGvRow.payload.take 169) s2Step309ExitGvRow.sign=s2Step309ExitGvOut := by decide +kernel
  have hi : s2Step309ExitGvRow.payload.drop 169=s2Step309ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step309ExitGv_retired] at result
  exact result

private theorem s2Step309ExitBank_rows : planWindowRowsLog s2Step309ExitGBefore [(s2Step309ExitGRow,115),(s2Step309ExitFRow,115),(s2Step309ExitFvRow,170),(s2Step309ExitGvRow,169)] [[],[],[],[]]=
    some (s2Step309ExitGvAfter,[s2Step309ExitGOut,s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut],(shrinkRow 769 s2Step309ExitGExtra ++ (shrinkRow 768 s2Step309ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step309ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step309ExitGvAfter [] []=some (s2Step309ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step309ExitGvBefore s2Step309ExitGvAfter s2Step309ExitGvAfter
    s2Step309ExitGvRow s2Step309ExitGvOut 169 [] [] [] []
    (shrinkRow 771 s2Step309ExitGvExtra) ([]) s2Step309ExitGv_Incoming s2Step309ExitGv_checked h4 s2Step309ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step309ExitFvBefore s2Step309ExitFvAfter s2Step309ExitGvAfter
    s2Step309ExitFvRow s2Step309ExitFvOut 170 [] [(s2Step309ExitGvRow,169)] [[]] [s2Step309ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step309ExitGvExtra ++ [])) s2Step309ExitFv_Incoming s2Step309ExitFv_checked h3 s2Step309ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step309ExitFBefore s2Step309ExitFAfter s2Step309ExitGvAfter
    s2Step309ExitFRow s2Step309ExitFOut 115 [] [(s2Step309ExitFvRow,170),(s2Step309ExitGvRow,169)] [[],[]] [s2Step309ExitFvOut,s2Step309ExitGvOut]
    (shrinkRow 768 s2Step309ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step309ExitGvExtra ++ []))) s2Step309ExitF_Incoming s2Step309ExitF_checked h2 s2Step309ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step309ExitGBefore s2Step309ExitGAfter s2Step309ExitGvAfter
    s2Step309ExitGRow s2Step309ExitGOut 115 [] [(s2Step309ExitFRow,115),(s2Step309ExitFvRow,170),(s2Step309ExitGvRow,169)] [[],[],[]] [s2Step309ExitFOut,s2Step309ExitFvOut,s2Step309ExitGvOut]
    (shrinkRow 769 s2Step309ExitGExtra) ((shrinkRow 768 s2Step309ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step309ExitGvExtra ++ [])))) s2Step309ExitG_Incoming s2Step309ExitG_checked h1 s2Step309ExitG_Outgoing
  exact h0

private theorem s2Step309ExitBank_checked : compileHmrBankResizeLog .exit s2Step309ExitGBefore ⟨s2Step309ExitFRow,s2Step309ExitGRow,s2Step309ExitFvRow,s2Step309ExitGvRow⟩ ⟨115,115,170,169⟩ [[],[],[],[]]=
    some (s2Step309ExitGvAfter,⟨s2Step309ExitFOut,s2Step309ExitGOut,s2Step309ExitFvOut,s2Step309ExitGvOut⟩,(shrinkRow 769 s2Step309ExitGExtra ++ (shrinkRow 768 s2Step309ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step309ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step309ExitBank_rows]
  rfl

private theorem s2Step309Add0_apart : Disjoint s2Step309Add0Arena.live s2Step309Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step309Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309Add0_card : s2Step309Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step309Add0_borrowed : s2Step309Add0Arena.checkBorrow (hmrHybridCount s2Step309Add0Arena s2Step309Add0B.length) s2Step309Add0Work=some s2Step309Add0During := by
  have len : s2Step309Add0Work.length=hmrHybridCount s2Step309Add0Arena s2Step309Add0B.length := by
    rw [hmrHybridCount,s2Step309Add0_card]
    decide +kernel
  have nd : s2Step309Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step309Add0Arena s2Step309Add0During s2Step309Add0Work.toFinset s2Step309Add0_bounded s2Step309Add0_apart rfl

private theorem s2Step309Add0_distinct : (787::799::824::(s2Step309Add0A++s2Step309Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309Add0_owned : (787::799::824::(s2Step309Add0A++s2Step309Add0B)).toFinset⊆s2Step309Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step309Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309Add0_checked : compileHmrHybridCinLog s2Step309Add0Arena 799 787 824 s2Step309Add0A s2Step309Add0B s2Step309Add0Work=some s2Step309Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step309Add0Arena s2Step309Add0During 799 787 824 s2Step309Add0A s2Step309Add0B s2Step309Add0Work
    (by decide +kernel) (by decide +kernel) s2Step309Add0_distinct
    (fun q hq => s2Step309Add0_owned (List.mem_toFinset.mpr hq)) s2Step309Add0_borrowed

private theorem s2Step309Add1_apart : Disjoint s2Step309Add1Arena.live s2Step309Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step309Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309Add1_card : s2Step309Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step309Add1_borrowed : s2Step309Add1Arena.checkBorrow (hmrHybridCount s2Step309Add1Arena s2Step309Add1B.length) s2Step309Add1Work=some s2Step309Add1During := by
  have len : s2Step309Add1Work.length=hmrHybridCount s2Step309Add1Arena s2Step309Add1B.length := by
    rw [hmrHybridCount,s2Step309Add1_card]
    decide +kernel
  have nd : s2Step309Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step309Add1Arena s2Step309Add1During s2Step309Add1Work.toFinset s2Step309Add1_bounded s2Step309Add1_apart rfl

private theorem s2Step309Add1_distinct : (787::799::824::(s2Step309Add1A++s2Step309Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309Add1_owned : (787::799::824::(s2Step309Add1A++s2Step309Add1B)).toFinset⊆s2Step309Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step309Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309Add1_checked : compileHmrHybridCinLog s2Step309Add1Arena 799 787 824 s2Step309Add1A s2Step309Add1B s2Step309Add1Work=some s2Step309Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step309Add1Arena s2Step309Add1During 799 787 824 s2Step309Add1A s2Step309Add1B s2Step309Add1Work
    (by decide +kernel) (by decide +kernel) s2Step309Add1_distinct
    (fun q hq => s2Step309Add1_owned (List.mem_toFinset.mpr hq)) s2Step309Add1_borrowed

private theorem s2Step309F4_apart : Disjoint (s2Step309Add0A++s2Step309Add0B).toFinset (s2Step309Add1A++s2Step309Add1B).toFinset := by
  have nd : ((s2Step309Add0A++s2Step309Add0B)++(s2Step309Add1A++s2Step309Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step309F4_carry : s2Step309F4FlagArena.checkBorrow 1 [824]=some s2Step309Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step309F4FlagArena,s2Step309HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step309F4FlagArena,s2Step309HeadFvAfter,s2Step309Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step309F4_distinct : (811::799::787::824::((s2Step309Add0A++s2Step309Add1A)++(s2Step309Add0B++s2Step309Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309F4_flag : s2Step309HeadFvAfter.checkBorrow 1 [787]=some s2Step309F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step309HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step309F4_owned : (811::799::((s2Step309Add0A++s2Step309Add1A)++(s2Step309Add0B++s2Step309Add1B))).toFinset⊆s2Step309HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step309HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309F4_checked : compileHmrHybridF4Log s2Step309HeadFvAfter 811 799 s2Step309Add0A s2Step309Add0B s2Step309Add1A s2Step309Add1B [787] [824] s2Step309Add0Work s2Step309Add1Work=some s2Step309F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step309HeadFvAfter s2Step309F4FlagArena s2Step309Add0Arena s2Step309Add0During s2Step309Add1During 811 799
    s2Step309Add0A s2Step309Add0B s2Step309Add1A s2Step309Add1B [787] [824] s2Step309Add0Work s2Step309Add1Work
    (fun q hq => s2Step309F4_owned (List.mem_toFinset.mpr hq)) s2Step309F4_flag s2Step309F4_carry
    s2Step309F4_distinct s2Step309F4_apart s2Step309Add0_checked s2Step309Add1_checked

private theorem s2Step309Front_branch : s2Step309FrontSigmaArena.checkBorrow 1 [799]=some s2Step309HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step309FrontSigmaArena,s2Step309EntryGvAfter,s2Step309EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step309FrontSigmaArena,s2Step309EntryGvAfter,s2Step309EntryFBefore,s2Step309HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step309Front_entry : HmrFrontEntryValid s2Step309EntryFBefore s2Step309FrontBank 116 169 ⟨115,115,170,169⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step309FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step309EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step309EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step309FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step309Front_sigma : s2Step309EntryGvAfter.checkBorrow 1 [811]=some s2Step309FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step309EntryGvAfter,s2Step309EntryFBefore,arenaWires]
  · rfl

private def s2Step309HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309HeadFBefore : Arena := s2Step309HeadGAfter

private def s2Step309HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627],768⟩

private def s2Step309HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step309HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],769⟩

private def s2Step309HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private theorem s2Step309HeadBank_incomingDistinct : ([s2Step309HeadGRow,s2Step309HeadFRow,s2Step309HeadGvRow,s2Step309HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309HeadF_Incoming : rowsOwned s2Step309HeadFBefore [s2Step309HeadFRow,s2Step309HeadGvRow,s2Step309HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309HeadGRow,s2Step309HeadFRow,s2Step309HeadGvRow,s2Step309HeadFvRow] 1 s2Step309HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309HeadBank_outgoingOwned : rowsOwned s2Step309HeadFvAfter [s2Step309HeadGOut,s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step309HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309HeadF_Outgoing : rowsOwned s2Step309HeadFvAfter [s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut] :=
  hmrRows_owned_drop s2Step309HeadFvAfter [s2Step309HeadGOut,s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut] 1 s2Step309HeadBank_outgoingOwned

private theorem s2Step309HeadF_distinct : (s2Step309HeadFRow.sign::s2Step309HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309HeadF_owned : (s2Step309HeadFRow.sign::s2Step309HeadFRow.payload).toFinset⊆s2Step309HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309HeadF_reserved : s2Step309HeadFBefore.reserve s2Step309HeadFFresh.toFinset=some s2Step309HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step309HeadFFresh,arenaWires]
  · norm_num [s2Step309HeadFBefore,s2Step309HeadGAfter,s2Step309HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step309HeadFAfter,s2Step309HeadFBefore,s2Step309HeadGAfter,s2Step309HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step309HeadF_checked : planRowResizeLog s2Step309HeadFBefore s2Step309HeadFRow 117 s2Step309HeadFFresh=
    some (s2Step309HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 834],768⟩,growRow 768 s2Step309HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step309HeadFBefore s2Step309HeadFAfter s2Step309HeadFRow 117 s2Step309HeadFFresh
    s2Step309HeadF_distinct s2Step309HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309HeadF_reserved
  have rowEq : WindowRow.mk (s2Step309HeadFRow.payload++s2Step309HeadFFresh) s2Step309HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 834],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step309HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step309HeadFvBefore : Arena := s2Step309HeadGvAfter

private theorem s2Step309HeadFv_Incoming : rowsOwned s2Step309HeadFvBefore [s2Step309HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309HeadGRow,s2Step309HeadFRow,s2Step309HeadGvRow,s2Step309HeadFvRow] 3 s2Step309HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309HeadFv_Outgoing : rowsOwned s2Step309HeadFvAfter [s2Step309HeadFvOut] :=
  hmrRows_owned_drop s2Step309HeadFvAfter [s2Step309HeadGOut,s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut] 3 s2Step309HeadBank_outgoingOwned

private theorem s2Step309HeadFv_distinct : (s2Step309HeadFvRow.sign::s2Step309HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309HeadFv_owned : (s2Step309HeadFvRow.sign::s2Step309HeadFvRow.payload).toFinset⊆s2Step309HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309HeadFv_reserved : s2Step309HeadFvBefore.reserve s2Step309HeadFvFresh.toFinset=some s2Step309HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step309HeadFvFresh,arenaWires]
  · norm_num [s2Step309HeadFvBefore,s2Step309HeadGvAfter,s2Step309HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step309HeadFvAfter,s2Step309HeadFvBefore,s2Step309HeadGvAfter,s2Step309HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step309HeadFv_checked : planRowResizeLog s2Step309HeadFvBefore s2Step309HeadFvRow 170 s2Step309HeadFvFresh=
    some (s2Step309HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩,growRow 770 s2Step309HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step309HeadFvBefore s2Step309HeadFvAfter s2Step309HeadFvRow 170 s2Step309HeadFvFresh
    s2Step309HeadFv_distinct s2Step309HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step309HeadFvRow.payload++s2Step309HeadFvFresh) s2Step309HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step309HeadG_Incoming : rowsOwned s2Step309HeadGBefore [s2Step309HeadGRow,s2Step309HeadFRow,s2Step309HeadGvRow,s2Step309HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309HeadGRow,s2Step309HeadFRow,s2Step309HeadGvRow,s2Step309HeadFvRow] 0 s2Step309HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309HeadG_Outgoing : rowsOwned s2Step309HeadFvAfter [s2Step309HeadGOut,s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut] :=
  hmrRows_owned_drop s2Step309HeadFvAfter [s2Step309HeadGOut,s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut] 0 s2Step309HeadBank_outgoingOwned

private theorem s2Step309HeadG_distinct : (s2Step309HeadGRow.sign::s2Step309HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309HeadG_owned : (s2Step309HeadGRow.sign::s2Step309HeadGRow.payload).toFinset⊆s2Step309HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309HeadG_reserved : s2Step309HeadGBefore.reserve s2Step309HeadGFresh.toFinset=some s2Step309HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step309HeadGFresh,arenaWires]
  · norm_num [s2Step309HeadGBefore,s2Step309HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step309HeadGAfter,s2Step309HeadGBefore,s2Step309HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step309HeadG_checked : planRowResizeLog s2Step309HeadGBefore s2Step309HeadGRow 117 s2Step309HeadGFresh=
    some (s2Step309HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 825],769⟩,growRow 769 s2Step309HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step309HeadGBefore s2Step309HeadGAfter s2Step309HeadGRow 117 s2Step309HeadGFresh
    s2Step309HeadG_distinct s2Step309HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309HeadG_reserved
  have rowEq : WindowRow.mk (s2Step309HeadGRow.payload++s2Step309HeadGFresh) s2Step309HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 825],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step309HeadGvBefore : Arena := s2Step309HeadFAfter

private theorem s2Step309HeadGv_Incoming : rowsOwned s2Step309HeadGvBefore [s2Step309HeadGvRow,s2Step309HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step309HeadGRow,s2Step309HeadFRow,s2Step309HeadGvRow,s2Step309HeadFvRow] 2 s2Step309HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step309HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step309HeadGv_Outgoing : rowsOwned s2Step309HeadFvAfter [s2Step309HeadGvOut,s2Step309HeadFvOut] :=
  hmrRows_owned_drop s2Step309HeadFvAfter [s2Step309HeadGOut,s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut] 2 s2Step309HeadBank_outgoingOwned

private theorem s2Step309HeadGv_distinct : (s2Step309HeadGvRow.sign::s2Step309HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step309HeadGv_owned : (s2Step309HeadGvRow.sign::s2Step309HeadGvRow.payload).toFinset⊆s2Step309HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step309HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step309HeadGv_reserved : s2Step309HeadGvBefore.reserve s2Step309HeadGvFresh.toFinset=some s2Step309HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step309HeadGvFresh,arenaWires]
  · norm_num [s2Step309HeadGvBefore,s2Step309HeadFAfter,s2Step309HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step309HeadGvAfter,s2Step309HeadGvBefore,s2Step309HeadFAfter,s2Step309HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step309HeadGv_checked : planRowResizeLog s2Step309HeadGvBefore s2Step309HeadGvRow 170 s2Step309HeadGvFresh=
    some (s2Step309HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793],771⟩,growRow 771 s2Step309HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step309HeadGvBefore s2Step309HeadGvAfter s2Step309HeadGvRow 170 s2Step309HeadGvFresh
    s2Step309HeadGv_distinct s2Step309HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step309HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step309HeadGvRow.payload++s2Step309HeadGvFresh) s2Step309HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step309HeadBank_rows : planWindowRowsLog s2Step309HeadGBefore [(s2Step309HeadGRow,117),(s2Step309HeadFRow,117),(s2Step309HeadGvRow,170),(s2Step309HeadFvRow,170)] [s2Step309HeadGFresh,s2Step309HeadFFresh,s2Step309HeadGvFresh,s2Step309HeadFvFresh]=
    some (s2Step309HeadFvAfter,[s2Step309HeadGOut,s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut],(growRow 769 s2Step309HeadGFresh ++ (growRow 768 s2Step309HeadFFresh ++ (growRow 771 s2Step309HeadGvFresh ++ (growRow 770 s2Step309HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step309HeadFvAfter [] []=some (s2Step309HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step309HeadFvBefore s2Step309HeadFvAfter s2Step309HeadFvAfter
    s2Step309HeadFvRow s2Step309HeadFvOut 170 s2Step309HeadFvFresh [] [] []
    (growRow 770 s2Step309HeadFvFresh) ([]) s2Step309HeadFv_Incoming s2Step309HeadFv_checked h4 s2Step309HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step309HeadGvBefore s2Step309HeadGvAfter s2Step309HeadFvAfter
    s2Step309HeadGvRow s2Step309HeadGvOut 170 s2Step309HeadGvFresh [(s2Step309HeadFvRow,170)] [s2Step309HeadFvFresh] [s2Step309HeadFvOut]
    (growRow 771 s2Step309HeadGvFresh) ((growRow 770 s2Step309HeadFvFresh ++ [])) s2Step309HeadGv_Incoming s2Step309HeadGv_checked h3 s2Step309HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step309HeadFBefore s2Step309HeadFAfter s2Step309HeadFvAfter
    s2Step309HeadFRow s2Step309HeadFOut 117 s2Step309HeadFFresh [(s2Step309HeadGvRow,170),(s2Step309HeadFvRow,170)] [s2Step309HeadGvFresh,s2Step309HeadFvFresh] [s2Step309HeadGvOut,s2Step309HeadFvOut]
    (growRow 768 s2Step309HeadFFresh) ((growRow 771 s2Step309HeadGvFresh ++ (growRow 770 s2Step309HeadFvFresh ++ []))) s2Step309HeadF_Incoming s2Step309HeadF_checked h2 s2Step309HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step309HeadGBefore s2Step309HeadGAfter s2Step309HeadFvAfter
    s2Step309HeadGRow s2Step309HeadGOut 117 s2Step309HeadGFresh [(s2Step309HeadFRow,117),(s2Step309HeadGvRow,170),(s2Step309HeadFvRow,170)] [s2Step309HeadFFresh,s2Step309HeadGvFresh,s2Step309HeadFvFresh] [s2Step309HeadFOut,s2Step309HeadGvOut,s2Step309HeadFvOut]
    (growRow 769 s2Step309HeadGFresh) ((growRow 768 s2Step309HeadFFresh ++ (growRow 771 s2Step309HeadGvFresh ++ (growRow 770 s2Step309HeadFvFresh ++ [])))) s2Step309HeadG_Incoming s2Step309HeadG_checked h1 s2Step309HeadG_Outgoing
  exact h0

private theorem s2Step309HeadBank_checked : compileHmrBankResizeLog .headroom s2Step309HeadGBefore ⟨s2Step309HeadFRow,s2Step309HeadGRow,s2Step309HeadFvRow,s2Step309HeadGvRow⟩ ⟨117,117,170,170⟩ [s2Step309HeadGFresh,s2Step309HeadFFresh,s2Step309HeadGvFresh,s2Step309HeadFvFresh]=
    some (s2Step309HeadFvAfter,⟨s2Step309HeadFOut,s2Step309HeadGOut,s2Step309HeadFvOut,s2Step309HeadGvOut⟩,(growRow 769 s2Step309HeadGFresh ++ (growRow 768 s2Step309HeadFFresh ++ (growRow 771 s2Step309HeadGvFresh ++ (growRow 770 s2Step309HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step309HeadBank_rows]
  rfl

private theorem s2Step309Front_checked : compileHmrSourceFrontLog s2Step309EntryFBefore s2Step309FrontBank 116 169 ⟨115,115,170,169⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step309FrontLog=some s2Step309FrontPlan := by
  have pairEq : s2Step309FrontPair=⟨s2Step309HeadFRow,s2Step309HeadGRow,s2Step309HeadFvRow,s2Step309HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step309FrontHead=⟨s2Step309ExitFRow,s2Step309ExitGRow,s2Step309ExitFvRow,s2Step309ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step309Add0A=s2Step309FrontHead.f.wires := by decide +kernel
  have gEq : s2Step309Add0B=s2Step309FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step309Add1A=s2Step309FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step309Add1B=s2Step309FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step309EntryFBefore s2Step309FrontBank 116 169 ⟨115,115,170,169⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step309FrontLog s2Step309FrontPlan
  · exact s2Step309Front_entry
  · exact s2Step309EntryBank_checked
  · exact s2Step309Front_sigma
  · rfl
  · exact s2Step309Front_branch
  · rfl
  · simpa only [s2Step309FrontPlan,pairEq] using s2Step309HeadBank_checked
  · simpa only [s2Step309FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step309F4_checked
  · exact s2Step309Counter_checked
  · rfl
  · simpa only [s2Step309FrontPlan,headEq] using s2Step309ExitBank_checked

private theorem s2Step309Complete_explicit_checked : compileHmrEarlyStepLog s2Step309EntryFBefore s2Step309FrontBank 116 169 ⟨115,115,170,169⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step309CompleteLog=some s2Step309CompletePlan := by
  let Q := s2Step309EarlyControlPlan
  have hq := s2Step309EarlyControl_plan_checked
  have fv1 : s2Step309CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step309CompleteOut.fv.payload[2]?.getD s2Step309CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step309CompleteOut.fv.payload[3]?.getD s2Step309CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step309CompleteOut.fv.payload[4]?.getD s2Step309CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step309EntryFBefore s2Step309EarlyControlArena s2Step309FrontBank 116 169 ⟨115,115,170,169⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step309CompleteLog s2Step309FrontPlan Q
    s2Step309Front_checked s2Step309Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step309Complete_owned s2Step309Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step309EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 s2Step309CompleteOut.fv.second (s2Step309CompleteOut.fv.payload[2]?.getD s2Step309CompleteOut.fv.sign) (s2Step309CompleteOut.fv.payload[3]?.getD s2Step309CompleteOut.fv.sign) (s2Step309CompleteOut.fv.payload[4]?.getD s2Step309CompleteOut.fv.sign) 799 56 s2Step309EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep309Arena : Arena := s2Step309EntryFBefore
def s2PrivateStep309Bank : WindowBank := s2Step309FrontBank
def s2PrivateStep309Spec : HmrSourceWalkStepLog := ⟨116,169,⟨115,115,170,169⟩,56,.early s2Step309CompleteLog⟩
def s2PrivateStep309Plan : HmrSourceStepPlan := .early s2Step309CompletePlan
theorem s2PrivateStep309_source : s2PrivateStep309Spec=s2ObservedLogs304[5] := rfl
theorem s2PrivateStep309_checked : compileHmrSourceStepLog s2PrivateStep309Arena s2PrivateStep309Bank
    s2PrivateStep309Spec.fgWidth s2PrivateStep309Spec.vWidth s2PrivateStep309Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 309 s2PrivateStep309Spec.need none s2PrivateStep309Spec.log=some s2PrivateStep309Plan := by
  change compileHmrSourceStepLog s2Step309EntryFBefore s2Step309FrontBank 116 169 ⟨115,115,170,169⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 309 56 none (.early s2Step309CompleteLog)=some (.early s2Step309CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 309<498)]
  rw [s2Step309Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
