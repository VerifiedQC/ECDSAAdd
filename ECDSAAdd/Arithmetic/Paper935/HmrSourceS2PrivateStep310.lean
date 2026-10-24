import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep308
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

private def s2Step310CompleteMoves : List (Wire × Wire) := []

private def s2Step310EarlyControlLog : HmrEarlyControlLog := ⟨[834, 793, 810, 787, 824],[806],[846],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step310FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [799]],[[810], [793], [834], [825]],[[], [], [], []]⟩,[811],[803],[787],[824],[806, 846, 830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[787, 824, 806, 846]⟩

private def s2Step310CompleteLog : HmrEarlyStepLog := ⟨s2Step310FrontLog,s2Step310CompleteMoves,s2Step310EarlyControlLog⟩

private def s2Step310ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step310ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step310ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩

private def s2Step310ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799],771⟩

private def s2Step310FrontOut : WindowBank := ⟨s2Step310ExitFOut,s2Step310ExitGOut,s2Step310ExitFvOut,s2Step310ExitGvOut⟩

private def s2Step310CompleteOut : WindowBank := s2Step310FrontOut.repacked s2Step310CompleteMoves

private def s2Step310EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step310EarlyControlPositiveArena,[806],s2Step310EarlyControlEqualityArena,[846],⟨⟨811,false⟩,[⟨⟨806,false⟩,846⟩]⟩⟩

private def s2Step310EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,834⟩,⟨⟨774,false⟩,793⟩,⟨⟨775,false⟩,810⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,824⟩]⟩

private def s2Step310EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step310EarlyControlZeroArena,s2Step310EarlyControlZeroPlan,s2Step310EarlyControlClassPlan,s2Step310EarlyControlFlagArena,s2Step310EarlyControlFittedArena,s2Step310EarlyControlHistoryArena,s2Step310EarlyControlSigmaArena,s2Step310EarlyControlOutputArena,s2Step310EarlyControlLog⟩

private def s2Step310CounterWork : List Wire := [787, 824, 806, 846]

private theorem s2Step310Counter_bounded : s2Step310CounterWork.toFinset⊆arenaWires := by norm_num [s2Step310CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step310HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310CounterDuring : Arena := ⟨s2Step310HeadFvAfter.live∪s2Step310CounterWork.toFinset,Finset.union_subset s2Step310HeadFvAfter.bounded s2Step310Counter_bounded⟩

private def s2Step310EntryFFresh : List Wire := []

private def s2Step310EntryFvFresh : List Wire := []

private def s2Step310EntryGFresh : List Wire := []

private def s2Step310EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EntryGvFresh : List Wire := [799]

private def s2Step310ExitFExtra : List Wire := [793]

private def s2Step310ExitGExtra : List Wire := [810]

private def s2Step310ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310ExitGvExtra : List Wire := [834]

private def s2Step310Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310Add0Work : List Wire := [806, 846, 830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step310Add0_bounded : s2Step310Add0Work.toFinset⊆arenaWires := by
  have h : s2Step310Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step310Add0During : Arena := ⟨s2Step310Add0Arena.live∪s2Step310Add0Work.toFinset,Finset.union_subset s2Step310Add0Arena.bounded s2Step310Add0_bounded⟩

private def s2Step310Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310Add1Work : List Wire := [806, 846, 830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step310Add1_bounded : s2Step310Add1Work.toFinset⊆arenaWires := by
  have h : s2Step310Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step310Add1During : Arena := ⟨s2Step310Add1Arena.live∪s2Step310Add1Work.toFinset,Finset.union_subset s2Step310Add1Arena.bounded s2Step310Add1_bounded⟩

private def s2Step310F4FlagArena : Arena := ⟨s2Step310HeadFvAfter.live∪{787},Finset.union_subset s2Step310HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step310F4Plan : HmrHybridF4Plan := ⟨s2Step310F4FlagArena,[787],s2Step310Add0Arena,[824],s2Step310Add0During,s2Step310Add0Work,s2Step310Add1During,s2Step310Add1Work⟩

private def s2Step310HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 793],768⟩

private def s2Step310HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step310HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 810],769⟩

private def s2Step310HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 834],771⟩

private def s2Step310FrontHead : WindowBank := ⟨s2Step310HeadFOut,s2Step310HeadGOut,s2Step310HeadFvOut,s2Step310HeadGvOut⟩

private def s2Step310EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step310EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩

private def s2Step310EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩

private def s2Step310EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799],771⟩

private def s2Step310FrontPair : WindowBank := ⟨s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut⟩

private def s2Step310FrontSigmaArena : Arena := ⟨s2Step310EntryGvAfter.live∪{811},Finset.union_subset s2Step310EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step310HeadFFresh : List Wire := [793]

private def s2Step310HeadFvFresh : List Wire := [825]

private def s2Step310HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310HeadGFresh : List Wire := [810]

private def s2Step310HeadGvFresh : List Wire := [834]

private def s2Step310FrontPlan : HmrSourceFront := ⟨s2Step310EntryGvAfter,s2Step310FrontPair,(growRow 768 s2Step310EntryFFresh ++ (growRow 769 s2Step310EntryGFresh ++ (growRow 770 s2Step310EntryFvFresh ++ (growRow 771 s2Step310EntryGvFresh ++ [])))),s2Step310FrontSigmaArena,[811],s2Step310HeadGBefore,[803],
  s2Step310HeadFvAfter,s2Step310FrontHead,(growRow 769 s2Step310HeadGFresh ++ (growRow 768 s2Step310HeadFFresh ++ (growRow 771 s2Step310HeadGvFresh ++ (growRow 770 s2Step310HeadFvFresh ++ [])))),s2Step310F4Plan,s2Step310CounterDuring,s2Step310CounterWork,s2Step310ExitGvAfter,s2Step310FrontOut,(shrinkRow 769 s2Step310ExitGExtra ++ (shrinkRow 768 s2Step310ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step310ExitGvExtra ++ []))))⟩

private def s2Step310CompletePlan : HmrEarlyStepPlan := ⟨s2Step310FrontPlan,s2Step310EarlyControlArena,s2Step310EarlyControlPlan,s2Step310CompleteMoves⟩

private theorem s2Step310Complete_apart : List.Disjoint (s2Step310CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [811, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step310CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[811, 803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step310Complete_owned : (s2Step310CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step310EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310Complete_repack : s2Step310ExitGvAfter.checkRepack s2Step310CompleteMoves=some s2Step310EarlyControlArena := by rfl

private theorem s2Step310EarlyControl_branchOwned : ([803] : List Wire).toFinset⊆s2Step310EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_branch : compileHmrBranchRetirement s2Step310EarlyControlSigmaArena 803=some s2Step310EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step310EarlyControl_branchOwned
  · ext q
    simp [s2Step310EarlyControlOutputArena,s2Step310EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step310EarlyControl_classEqualityBorrow : s2Step310EarlyControlPositiveArena.checkBorrow (([811, 806] : List Wire).length-1) s2Step310EarlyControlLog.classWork=some s2Step310EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step310EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step310EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step310EarlyControlEqualityArena,s2Step310EarlyControlPositiveArena,s2Step310EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step310EarlyControl_classEqualityOwned : ([811, 806] : List Wire).toFinset⊆s2Step310EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_classEquality : compileHmrEqualityLog s2Step310EarlyControlPositiveArena [811, 806] 0 s2Step310EarlyControlLog.classWork=some (s2Step310EarlyControlEqualityArena,s2Step310EarlyControlLog.classWork,s2Step310EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step310EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step310EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step310EarlyControl_classOwned : ([777, 824, 811] : List Wire).toFinset⊆s2Step310EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_positiveBorrow : s2Step310EarlyControlZeroArena.checkBorrow (1) s2Step310EarlyControlLog.positiveWork=some s2Step310EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step310EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step310EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step310EarlyControlPositiveArena,s2Step310EarlyControlZeroArena,s2Step310EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step310EarlyControl_class : compileHmrSourceClassLog s2Step310EarlyControlZeroArena false 777 s2Step310EarlyControlZeroPlan.top 0 811 s2Step310EarlyControlLog.positiveWork s2Step310EarlyControlLog.classWork=some s2Step310EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step310EarlyControlClassPlan s2Step310EarlyControlZeroArena false 777 s2Step310EarlyControlZeroPlan.top 0 811
  constructor
  · decide +kernel
  · exact s2Step310EarlyControl_classOwned
  · exact s2Step310EarlyControl_positiveBorrow
  · exact s2Step310EarlyControl_classEquality

private theorem s2Step310EarlyControl_entryRecordOwned : ([803, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step310EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_entrySigmaOwned : ([811, 254] : List Wire).toFinset⊆s2Step310EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_fitBorrow : s2Step310EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step310EarlyControlLog.recordFresh=some s2Step310EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step310EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step310EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step310EarlyControlFittedArena,s2Step310EarlyControlFlagArena,s2Step310EarlyControlLog,arenaWires]

private theorem s2Step310EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step310EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_fit : compileHmrRecordGrowLog s2Step310EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step310EarlyControlLog.recordFresh=some s2Step310EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step310EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step310EarlyControl_fitBorrow

private theorem s2Step310EarlyControl_flagsBorrow : s2Step310EarlyControlEqualityArena.checkBorrow (6) s2Step310EarlyControlLog.flagWork=some s2Step310EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step310EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step310EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step310EarlyControlFlagArena,s2Step310EarlyControlEqualityArena,s2Step310EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step310EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step310EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_flags : compileHmrFlagsLog s2Step310EarlyControlClassPlan.equalityArena s2Step310EarlyControlClassPlan.equality.top 253 252 251 s2Step310EarlyControlLog.flagWork=some s2Step310EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step310EarlyControl_flagsOwned⟩
  · exact s2Step310EarlyControl_flagsBorrow

private theorem s2Step310EarlyControl_historyBorrow : s2Step310EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step310EarlyControlLog.recordFresh=some s2Step310EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step310EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step310EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step310EarlyControlHistoryArena,s2Step310EarlyControlArena,s2Step310EarlyControlLog,arenaWires]

private theorem s2Step310EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step310EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_history : compileHmrRecordGrowLog s2Step310EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step310EarlyControlLog.recordFresh=some s2Step310EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step310EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step310EarlyControl_historyBorrow

private theorem s2Step310EarlyControl_sigmaOwned : ([254, 811] : List Wire).toFinset⊆s2Step310EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_sigmaReleaseOwned : ([811] : List Wire).toFinset⊆s2Step310EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_sigmaRelease : s2Step310EarlyControlHistoryArena.release {811} (fun _ => false)=some s2Step310EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step310EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step310EarlyControlSigmaArena,s2Step310EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step310EarlyControl_sigma : compileHmrSigmaDropLog s2Step310EarlyControlHistoryArena false 0 0 254 811 []=some s2Step310EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step310EarlyControl_sigmaOwned⟩
  · exact s2Step310EarlyControl_sigmaRelease

private theorem s2Step310EarlyControl_zeroBorrow : s2Step310EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step310EarlyControlLog.zeroWork=some s2Step310EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step310EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step310EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step310EarlyControlZeroArena,s2Step310EarlyControlArena,s2Step310EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step310EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step310EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step310EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EarlyControl_zero : compileHmrEqualityLog s2Step310EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step310EarlyControlLog.zeroWork=some (s2Step310EarlyControlZeroArena,s2Step310EarlyControlLog.zeroWork,s2Step310EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step310EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step310EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step310EarlyControl_logged : s2Step310EarlyControlPlan.Logged s2Step310EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 803 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step310EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step310EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step310EarlyControl_zero
  · exact s2Step310EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step310EarlyControl_flags
  · exact s2Step310EarlyControl_fit
  · exact s2Step310EarlyControl_history
  · exact s2Step310EarlyControl_sigma
  · exact s2Step310EarlyControl_branch

private theorem s2Step310EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step310EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 803 56 s2Step310EarlyControlLog=some s2Step310EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step310EarlyControlPlan s2Step310EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 254 253 252 251 803 56 s2Step310EarlyControl_logged

private def s2Step310EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step310EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩

private def s2Step310EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩

private def s2Step310EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step310FrontBank : WindowBank := ⟨s2Step310EntryFRow,s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow⟩

private def s2Step310Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 793, 768]

private def s2Step310Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 810, 769]

private def s2Step310Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 770]

private def s2Step310Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 834, 771]

private theorem s2Step310Counter_apart : Disjoint s2Step310HeadFvAfter.live s2Step310CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step310HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310Counter_borrowed : s2Step310HeadFvAfter.checkBorrow 4 s2Step310CounterWork=some s2Step310CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step310HeadFvAfter s2Step310CounterDuring s2Step310CounterWork.toFinset s2Step310Counter_bounded s2Step310Counter_apart rfl

private theorem s2Step310Counter_owned : (811::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step310HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step310HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310Counter_checked : compileHmrCounterStepLog s2Step310HeadFvAfter true 811 [772, 773, 774, 775, 776, 777] s2Step310CounterWork=some s2Step310CounterDuring := by
  have owned : ∀q∈811::[772, 773, 774, 775, 776, 777],q∈s2Step310HeadFvAfter.live := fun q hq => s2Step310Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step310Counter_borrowed

private def s2Step310EntryFAfter : Arena := s2Step310EntryFBefore

private theorem s2Step310EntryBank_incomingDistinct : ([s2Step310EntryFRow,s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310EntryF_Incoming : rowsOwned s2Step310EntryFBefore [s2Step310EntryFRow,s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310EntryFRow,s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow] 0 s2Step310EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310EntryBank_outgoingOwned : rowsOwned s2Step310EntryGvAfter [s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step310EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310EntryF_Outgoing : rowsOwned s2Step310EntryGvAfter [s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut] :=
  hmrRows_owned_drop s2Step310EntryGvAfter [s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut] 0 s2Step310EntryBank_outgoingOwned

private theorem s2Step310EntryF_distinct : (s2Step310EntryFRow.sign::s2Step310EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310EntryF_owned : (s2Step310EntryFRow.sign::s2Step310EntryFRow.payload).toFinset⊆s2Step310EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EntryF_reserved : s2Step310EntryFBefore.reserve s2Step310EntryFFresh.toFinset=some s2Step310EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step310EntryFFresh,arenaWires]
  · norm_num [s2Step310EntryFBefore,s2Step310EntryFFresh,arenaWires]
  · simp only [s2Step310EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step310EntryF_checked : planRowResizeLog s2Step310EntryFBefore s2Step310EntryFRow 115 s2Step310EntryFFresh=
    some (s2Step310EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩,growRow 768 s2Step310EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step310EntryFBefore s2Step310EntryFAfter s2Step310EntryFRow 115 s2Step310EntryFFresh
    s2Step310EntryF_distinct s2Step310EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310EntryF_reserved
  have rowEq : WindowRow.mk (s2Step310EntryFRow.payload++s2Step310EntryFFresh) s2Step310EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step310EntryFvAfter : Arena := s2Step310EntryFBefore

private def s2Step310EntryFvBefore : Arena := s2Step310EntryFBefore

private theorem s2Step310EntryFv_Incoming : rowsOwned s2Step310EntryFvBefore [s2Step310EntryFvRow,s2Step310EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310EntryFRow,s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow] 2 s2Step310EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310EntryFv_Outgoing : rowsOwned s2Step310EntryGvAfter [s2Step310EntryFvOut,s2Step310EntryGvOut] :=
  hmrRows_owned_drop s2Step310EntryGvAfter [s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut] 2 s2Step310EntryBank_outgoingOwned

private theorem s2Step310EntryFv_distinct : (s2Step310EntryFvRow.sign::s2Step310EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310EntryFv_owned : (s2Step310EntryFvRow.sign::s2Step310EntryFvRow.payload).toFinset⊆s2Step310EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EntryFv_reserved : s2Step310EntryFvBefore.reserve s2Step310EntryFvFresh.toFinset=some s2Step310EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step310EntryFvFresh,arenaWires]
  · norm_num [s2Step310EntryFvBefore,s2Step310EntryFBefore,s2Step310EntryFvFresh,arenaWires]
  · simp only [s2Step310EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step310EntryFv_checked : planRowResizeLog s2Step310EntryFvBefore s2Step310EntryFvRow 170 s2Step310EntryFvFresh=
    some (s2Step310EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩,growRow 770 s2Step310EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step310EntryFvBefore s2Step310EntryFvAfter s2Step310EntryFvRow 170 s2Step310EntryFvFresh
    s2Step310EntryFv_distinct s2Step310EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step310EntryFvRow.payload++s2Step310EntryFvFresh) s2Step310EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step310EntryGAfter : Arena := s2Step310EntryFBefore

private def s2Step310EntryGBefore : Arena := s2Step310EntryFBefore

private theorem s2Step310EntryG_Incoming : rowsOwned s2Step310EntryGBefore [s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310EntryFRow,s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow] 1 s2Step310EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310EntryG_Outgoing : rowsOwned s2Step310EntryGvAfter [s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut] :=
  hmrRows_owned_drop s2Step310EntryGvAfter [s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut] 1 s2Step310EntryBank_outgoingOwned

private theorem s2Step310EntryG_distinct : (s2Step310EntryGRow.sign::s2Step310EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310EntryG_owned : (s2Step310EntryGRow.sign::s2Step310EntryGRow.payload).toFinset⊆s2Step310EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EntryG_reserved : s2Step310EntryGBefore.reserve s2Step310EntryGFresh.toFinset=some s2Step310EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step310EntryGFresh,arenaWires]
  · norm_num [s2Step310EntryGBefore,s2Step310EntryFBefore,s2Step310EntryGFresh,arenaWires]
  · simp only [s2Step310EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step310EntryG_checked : planRowResizeLog s2Step310EntryGBefore s2Step310EntryGRow 115 s2Step310EntryGFresh=
    some (s2Step310EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩,growRow 769 s2Step310EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step310EntryGBefore s2Step310EntryGAfter s2Step310EntryGRow 115 s2Step310EntryGFresh
    s2Step310EntryG_distinct s2Step310EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310EntryG_reserved
  have rowEq : WindowRow.mk (s2Step310EntryGRow.payload++s2Step310EntryGFresh) s2Step310EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step310EntryGvBefore : Arena := s2Step310EntryFBefore

private theorem s2Step310EntryGv_Incoming : rowsOwned s2Step310EntryGvBefore [s2Step310EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310EntryFRow,s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow] 3 s2Step310EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310EntryGv_Outgoing : rowsOwned s2Step310EntryGvAfter [s2Step310EntryGvOut] :=
  hmrRows_owned_drop s2Step310EntryGvAfter [s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut] 3 s2Step310EntryBank_outgoingOwned

private theorem s2Step310EntryGv_distinct : (s2Step310EntryGvRow.sign::s2Step310EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310EntryGv_owned : (s2Step310EntryGvRow.sign::s2Step310EntryGvRow.payload).toFinset⊆s2Step310EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310EntryGv_reserved : s2Step310EntryGvBefore.reserve s2Step310EntryGvFresh.toFinset=some s2Step310EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step310EntryGvFresh,arenaWires]
  · norm_num [s2Step310EntryGvBefore,s2Step310EntryFBefore,s2Step310EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step310EntryGvAfter,s2Step310EntryGvBefore,s2Step310EntryFBefore,s2Step310EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step310EntryGv_checked : planRowResizeLog s2Step310EntryGvBefore s2Step310EntryGvRow 170 s2Step310EntryGvFresh=
    some (s2Step310EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799],771⟩,growRow 771 s2Step310EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step310EntryGvBefore s2Step310EntryGvAfter s2Step310EntryGvRow 170 s2Step310EntryGvFresh
    s2Step310EntryGv_distinct s2Step310EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step310EntryGvRow.payload++s2Step310EntryGvFresh) s2Step310EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step310EntryBank_rows : planWindowRowsLog s2Step310EntryFBefore [(s2Step310EntryFRow,115),(s2Step310EntryGRow,115),(s2Step310EntryFvRow,170),(s2Step310EntryGvRow,170)] [s2Step310EntryFFresh,s2Step310EntryGFresh,s2Step310EntryFvFresh,s2Step310EntryGvFresh]=
    some (s2Step310EntryGvAfter,[s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut],(growRow 768 s2Step310EntryFFresh ++ (growRow 769 s2Step310EntryGFresh ++ (growRow 770 s2Step310EntryFvFresh ++ (growRow 771 s2Step310EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step310EntryGvAfter [] []=some (s2Step310EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step310EntryGvBefore s2Step310EntryGvAfter s2Step310EntryGvAfter
    s2Step310EntryGvRow s2Step310EntryGvOut 170 s2Step310EntryGvFresh [] [] []
    (growRow 771 s2Step310EntryGvFresh) ([]) s2Step310EntryGv_Incoming s2Step310EntryGv_checked h4 s2Step310EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step310EntryFvBefore s2Step310EntryFvAfter s2Step310EntryGvAfter
    s2Step310EntryFvRow s2Step310EntryFvOut 170 s2Step310EntryFvFresh [(s2Step310EntryGvRow,170)] [s2Step310EntryGvFresh] [s2Step310EntryGvOut]
    (growRow 770 s2Step310EntryFvFresh) ((growRow 771 s2Step310EntryGvFresh ++ [])) s2Step310EntryFv_Incoming s2Step310EntryFv_checked h3 s2Step310EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step310EntryGBefore s2Step310EntryGAfter s2Step310EntryGvAfter
    s2Step310EntryGRow s2Step310EntryGOut 115 s2Step310EntryGFresh [(s2Step310EntryFvRow,170),(s2Step310EntryGvRow,170)] [s2Step310EntryFvFresh,s2Step310EntryGvFresh] [s2Step310EntryFvOut,s2Step310EntryGvOut]
    (growRow 769 s2Step310EntryGFresh) ((growRow 770 s2Step310EntryFvFresh ++ (growRow 771 s2Step310EntryGvFresh ++ []))) s2Step310EntryG_Incoming s2Step310EntryG_checked h2 s2Step310EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step310EntryFBefore s2Step310EntryFAfter s2Step310EntryGvAfter
    s2Step310EntryFRow s2Step310EntryFOut 115 s2Step310EntryFFresh [(s2Step310EntryGRow,115),(s2Step310EntryFvRow,170),(s2Step310EntryGvRow,170)] [s2Step310EntryGFresh,s2Step310EntryFvFresh,s2Step310EntryGvFresh] [s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut]
    (growRow 768 s2Step310EntryFFresh) ((growRow 769 s2Step310EntryGFresh ++ (growRow 770 s2Step310EntryFvFresh ++ (growRow 771 s2Step310EntryGvFresh ++ [])))) s2Step310EntryF_Incoming s2Step310EntryF_checked h1 s2Step310EntryF_Outgoing
  exact h0

private theorem s2Step310EntryBank_checked : compileHmrBankResizeLog .entry s2Step310EntryFBefore ⟨s2Step310EntryFRow,s2Step310EntryGRow,s2Step310EntryFvRow,s2Step310EntryGvRow⟩ ⟨115,115,170,170⟩ [s2Step310EntryFFresh,s2Step310EntryGFresh,s2Step310EntryFvFresh,s2Step310EntryGvFresh]=
    some (s2Step310EntryGvAfter,⟨s2Step310EntryFOut,s2Step310EntryGOut,s2Step310EntryFvOut,s2Step310EntryGvOut⟩,(growRow 768 s2Step310EntryFFresh ++ (growRow 769 s2Step310EntryGFresh ++ (growRow 770 s2Step310EntryFvFresh ++ (growRow 771 s2Step310EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step310EntryBank_rows]
  rfl

private def s2Step310ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310ExitFBefore : Arena := s2Step310ExitGAfter

private def s2Step310ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 793],768⟩

private def s2Step310ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩

private def s2Step310ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 810],769⟩

private def s2Step310ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 834],771⟩

private theorem s2Step310ExitBank_incomingDistinct : ([s2Step310ExitGRow,s2Step310ExitFRow,s2Step310ExitFvRow,s2Step310ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310ExitF_Incoming : rowsOwned s2Step310ExitFBefore [s2Step310ExitFRow,s2Step310ExitFvRow,s2Step310ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310ExitGRow,s2Step310ExitFRow,s2Step310ExitFvRow,s2Step310ExitGvRow] 1 s2Step310ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310ExitBank_outgoingOwned : rowsOwned s2Step310ExitGvAfter [s2Step310ExitGOut,s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step310ExitGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310ExitF_Outgoing : rowsOwned s2Step310ExitGvAfter [s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut] :=
  hmrRows_owned_drop s2Step310ExitGvAfter [s2Step310ExitGOut,s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut] 1 s2Step310ExitBank_outgoingOwned

private theorem s2Step310ExitF_distinct : (s2Step310ExitFRow.sign::s2Step310ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310ExitF_owned : (s2Step310ExitFRow.sign::s2Step310ExitFRow.payload).toFinset⊆s2Step310ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310ExitF_retired : s2Step310ExitFBefore.retireSet s2Step310ExitFExtra.toFinset=s2Step310ExitFAfter := by
  unfold Arena.retireSet s2Step310ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step310ExitFBefore,s2Step310ExitGAfter,s2Step310ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step310ExitF_checked : planRowResizeLog s2Step310ExitFBefore s2Step310ExitFRow 115 []=
    some (s2Step310ExitFAfter,s2Step310ExitFOut,shrinkRow 768 s2Step310ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step310ExitFBefore s2Step310ExitFRow 115 s2Step310ExitF_distinct s2Step310ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step310ExitFRow.payload.take 115) s2Step310ExitFRow.sign=s2Step310ExitFOut := by decide +kernel
  have hi : s2Step310ExitFRow.payload.drop 115=s2Step310ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step310ExitF_retired] at result
  exact result

private def s2Step310ExitFvAfter : Arena := s2Step310ExitFAfter

private def s2Step310ExitFvBefore : Arena := s2Step310ExitFAfter

private theorem s2Step310ExitFv_Incoming : rowsOwned s2Step310ExitFvBefore [s2Step310ExitFvRow,s2Step310ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310ExitGRow,s2Step310ExitFRow,s2Step310ExitFvRow,s2Step310ExitGvRow] 2 s2Step310ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310ExitFv_Outgoing : rowsOwned s2Step310ExitGvAfter [s2Step310ExitFvOut,s2Step310ExitGvOut] :=
  hmrRows_owned_drop s2Step310ExitGvAfter [s2Step310ExitGOut,s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut] 2 s2Step310ExitBank_outgoingOwned

private theorem s2Step310ExitFv_distinct : (s2Step310ExitFvRow.sign::s2Step310ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310ExitFv_owned : (s2Step310ExitFvRow.sign::s2Step310ExitFvRow.payload).toFinset⊆s2Step310ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310ExitFv_reserved : s2Step310ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step310ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step310ExitFv_checked : planRowResizeLog s2Step310ExitFvBefore s2Step310ExitFvRow 171 []=
    some (s2Step310ExitFvAfter,s2Step310ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step310ExitFvBefore s2Step310ExitFvAfter s2Step310ExitFvRow 171 []
    s2Step310ExitFv_distinct s2Step310ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step310ExitFvRow.payload++[]) s2Step310ExitFvRow.sign=s2Step310ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step310ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step310ExitG_Incoming : rowsOwned s2Step310ExitGBefore [s2Step310ExitGRow,s2Step310ExitFRow,s2Step310ExitFvRow,s2Step310ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310ExitGRow,s2Step310ExitFRow,s2Step310ExitFvRow,s2Step310ExitGvRow] 0 s2Step310ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310ExitG_Outgoing : rowsOwned s2Step310ExitGvAfter [s2Step310ExitGOut,s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut] :=
  hmrRows_owned_drop s2Step310ExitGvAfter [s2Step310ExitGOut,s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut] 0 s2Step310ExitBank_outgoingOwned

private theorem s2Step310ExitG_distinct : (s2Step310ExitGRow.sign::s2Step310ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310ExitG_owned : (s2Step310ExitGRow.sign::s2Step310ExitGRow.payload).toFinset⊆s2Step310ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310ExitGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310ExitG_retired : s2Step310ExitGBefore.retireSet s2Step310ExitGExtra.toFinset=s2Step310ExitGAfter := by
  unfold Arena.retireSet s2Step310ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step310ExitGBefore,s2Step310ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step310ExitG_checked : planRowResizeLog s2Step310ExitGBefore s2Step310ExitGRow 115 []=
    some (s2Step310ExitGAfter,s2Step310ExitGOut,shrinkRow 769 s2Step310ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step310ExitGBefore s2Step310ExitGRow 115 s2Step310ExitG_distinct s2Step310ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step310ExitGRow.payload.take 115) s2Step310ExitGRow.sign=s2Step310ExitGOut := by decide +kernel
  have hi : s2Step310ExitGRow.payload.drop 115=s2Step310ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step310ExitG_retired] at result
  exact result

private def s2Step310ExitGvBefore : Arena := s2Step310ExitFAfter

private theorem s2Step310ExitGv_Incoming : rowsOwned s2Step310ExitGvBefore [s2Step310ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310ExitGRow,s2Step310ExitFRow,s2Step310ExitFvRow,s2Step310ExitGvRow] 3 s2Step310ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310ExitGv_Outgoing : rowsOwned s2Step310ExitGvAfter [s2Step310ExitGvOut] :=
  hmrRows_owned_drop s2Step310ExitGvAfter [s2Step310ExitGOut,s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut] 3 s2Step310ExitBank_outgoingOwned

private theorem s2Step310ExitGv_distinct : (s2Step310ExitGvRow.sign::s2Step310ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310ExitGv_owned : (s2Step310ExitGvRow.sign::s2Step310ExitGvRow.payload).toFinset⊆s2Step310ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310ExitGv_retired : s2Step310ExitGvBefore.retireSet s2Step310ExitGvExtra.toFinset=s2Step310ExitGvAfter := by
  unfold Arena.retireSet s2Step310ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step310ExitGvBefore,s2Step310ExitFAfter,s2Step310ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step310ExitGv_checked : planRowResizeLog s2Step310ExitGvBefore s2Step310ExitGvRow 170 []=
    some (s2Step310ExitGvAfter,s2Step310ExitGvOut,shrinkRow 771 s2Step310ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step310ExitGvBefore s2Step310ExitGvRow 170 s2Step310ExitGv_distinct s2Step310ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step310ExitGvRow.payload.take 170) s2Step310ExitGvRow.sign=s2Step310ExitGvOut := by decide +kernel
  have hi : s2Step310ExitGvRow.payload.drop 170=s2Step310ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step310ExitGv_retired] at result
  exact result

private theorem s2Step310ExitBank_rows : planWindowRowsLog s2Step310ExitGBefore [(s2Step310ExitGRow,115),(s2Step310ExitFRow,115),(s2Step310ExitFvRow,171),(s2Step310ExitGvRow,170)] [[],[],[],[]]=
    some (s2Step310ExitGvAfter,[s2Step310ExitGOut,s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut],(shrinkRow 769 s2Step310ExitGExtra ++ (shrinkRow 768 s2Step310ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step310ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step310ExitGvAfter [] []=some (s2Step310ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step310ExitGvBefore s2Step310ExitGvAfter s2Step310ExitGvAfter
    s2Step310ExitGvRow s2Step310ExitGvOut 170 [] [] [] []
    (shrinkRow 771 s2Step310ExitGvExtra) ([]) s2Step310ExitGv_Incoming s2Step310ExitGv_checked h4 s2Step310ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step310ExitFvBefore s2Step310ExitFvAfter s2Step310ExitGvAfter
    s2Step310ExitFvRow s2Step310ExitFvOut 171 [] [(s2Step310ExitGvRow,170)] [[]] [s2Step310ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step310ExitGvExtra ++ [])) s2Step310ExitFv_Incoming s2Step310ExitFv_checked h3 s2Step310ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step310ExitFBefore s2Step310ExitFAfter s2Step310ExitGvAfter
    s2Step310ExitFRow s2Step310ExitFOut 115 [] [(s2Step310ExitFvRow,171),(s2Step310ExitGvRow,170)] [[],[]] [s2Step310ExitFvOut,s2Step310ExitGvOut]
    (shrinkRow 768 s2Step310ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step310ExitGvExtra ++ []))) s2Step310ExitF_Incoming s2Step310ExitF_checked h2 s2Step310ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step310ExitGBefore s2Step310ExitGAfter s2Step310ExitGvAfter
    s2Step310ExitGRow s2Step310ExitGOut 115 [] [(s2Step310ExitFRow,115),(s2Step310ExitFvRow,171),(s2Step310ExitGvRow,170)] [[],[],[]] [s2Step310ExitFOut,s2Step310ExitFvOut,s2Step310ExitGvOut]
    (shrinkRow 769 s2Step310ExitGExtra) ((shrinkRow 768 s2Step310ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step310ExitGvExtra ++ [])))) s2Step310ExitG_Incoming s2Step310ExitG_checked h1 s2Step310ExitG_Outgoing
  exact h0

private theorem s2Step310ExitBank_checked : compileHmrBankResizeLog .exit s2Step310ExitGBefore ⟨s2Step310ExitFRow,s2Step310ExitGRow,s2Step310ExitFvRow,s2Step310ExitGvRow⟩ ⟨115,115,171,170⟩ [[],[],[],[]]=
    some (s2Step310ExitGvAfter,⟨s2Step310ExitFOut,s2Step310ExitGOut,s2Step310ExitFvOut,s2Step310ExitGvOut⟩,(shrinkRow 769 s2Step310ExitGExtra ++ (shrinkRow 768 s2Step310ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step310ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step310ExitBank_rows]
  rfl

private theorem s2Step310Add0_apart : Disjoint s2Step310Add0Arena.live s2Step310Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step310Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310Add0_card : s2Step310Add0Arena.live.card=900 := by
  decide +kernel

private theorem s2Step310Add0_borrowed : s2Step310Add0Arena.checkBorrow (hmrHybridCount s2Step310Add0Arena s2Step310Add0B.length) s2Step310Add0Work=some s2Step310Add0During := by
  have len : s2Step310Add0Work.length=hmrHybridCount s2Step310Add0Arena s2Step310Add0B.length := by
    rw [hmrHybridCount,s2Step310Add0_card]
    decide +kernel
  have nd : s2Step310Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step310Add0Arena s2Step310Add0During s2Step310Add0Work.toFinset s2Step310Add0_bounded s2Step310Add0_apart rfl

private theorem s2Step310Add0_distinct : (787::803::824::(s2Step310Add0A++s2Step310Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310Add0_owned : (787::803::824::(s2Step310Add0A++s2Step310Add0B)).toFinset⊆s2Step310Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step310Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310Add0_checked : compileHmrHybridCinLog s2Step310Add0Arena 803 787 824 s2Step310Add0A s2Step310Add0B s2Step310Add0Work=some s2Step310Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step310Add0Arena s2Step310Add0During 803 787 824 s2Step310Add0A s2Step310Add0B s2Step310Add0Work
    (by decide +kernel) (by decide +kernel) s2Step310Add0_distinct
    (fun q hq => s2Step310Add0_owned (List.mem_toFinset.mpr hq)) s2Step310Add0_borrowed

private theorem s2Step310Add1_apart : Disjoint s2Step310Add1Arena.live s2Step310Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step310Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310Add1_card : s2Step310Add1Arena.live.card=900 := by
  decide +kernel

private theorem s2Step310Add1_borrowed : s2Step310Add1Arena.checkBorrow (hmrHybridCount s2Step310Add1Arena s2Step310Add1B.length) s2Step310Add1Work=some s2Step310Add1During := by
  have len : s2Step310Add1Work.length=hmrHybridCount s2Step310Add1Arena s2Step310Add1B.length := by
    rw [hmrHybridCount,s2Step310Add1_card]
    decide +kernel
  have nd : s2Step310Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step310Add1Arena s2Step310Add1During s2Step310Add1Work.toFinset s2Step310Add1_bounded s2Step310Add1_apart rfl

private theorem s2Step310Add1_distinct : (787::803::824::(s2Step310Add1A++s2Step310Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310Add1_owned : (787::803::824::(s2Step310Add1A++s2Step310Add1B)).toFinset⊆s2Step310Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step310Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310Add1_checked : compileHmrHybridCinLog s2Step310Add1Arena 803 787 824 s2Step310Add1A s2Step310Add1B s2Step310Add1Work=some s2Step310Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step310Add1Arena s2Step310Add1During 803 787 824 s2Step310Add1A s2Step310Add1B s2Step310Add1Work
    (by decide +kernel) (by decide +kernel) s2Step310Add1_distinct
    (fun q hq => s2Step310Add1_owned (List.mem_toFinset.mpr hq)) s2Step310Add1_borrowed

private theorem s2Step310F4_apart : Disjoint (s2Step310Add0A++s2Step310Add0B).toFinset (s2Step310Add1A++s2Step310Add1B).toFinset := by
  have nd : ((s2Step310Add0A++s2Step310Add0B)++(s2Step310Add1A++s2Step310Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step310F4_carry : s2Step310F4FlagArena.checkBorrow 1 [824]=some s2Step310Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step310F4FlagArena,s2Step310HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step310F4FlagArena,s2Step310HeadFvAfter,s2Step310Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step310F4_distinct : (811::803::787::824::((s2Step310Add0A++s2Step310Add1A)++(s2Step310Add0B++s2Step310Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310F4_flag : s2Step310HeadFvAfter.checkBorrow 1 [787]=some s2Step310F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step310HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step310F4_owned : (811::803::((s2Step310Add0A++s2Step310Add1A)++(s2Step310Add0B++s2Step310Add1B))).toFinset⊆s2Step310HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step310HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310F4_checked : compileHmrHybridF4Log s2Step310HeadFvAfter 811 803 s2Step310Add0A s2Step310Add0B s2Step310Add1A s2Step310Add1B [787] [824] s2Step310Add0Work s2Step310Add1Work=some s2Step310F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step310HeadFvAfter s2Step310F4FlagArena s2Step310Add0Arena s2Step310Add0During s2Step310Add1During 811 803
    s2Step310Add0A s2Step310Add0B s2Step310Add1A s2Step310Add1B [787] [824] s2Step310Add0Work s2Step310Add1Work
    (fun q hq => s2Step310F4_owned (List.mem_toFinset.mpr hq)) s2Step310F4_flag s2Step310F4_carry
    s2Step310F4_distinct s2Step310F4_apart s2Step310Add0_checked s2Step310Add1_checked

private theorem s2Step310Front_branch : s2Step310FrontSigmaArena.checkBorrow 1 [803]=some s2Step310HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step310FrontSigmaArena,s2Step310EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step310FrontSigmaArena,s2Step310EntryGvAfter,s2Step310HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step310Front_entry : HmrFrontEntryValid s2Step310EntryFBefore s2Step310FrontBank 115 170 ⟨115,115,171,170⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step310FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step310EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step310EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<803) ∨ (804≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step310FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step310Front_sigma : s2Step310EntryGvAfter.checkBorrow 1 [811]=some s2Step310FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step310EntryGvAfter,arenaWires]
  · rfl

private def s2Step310HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310HeadFBefore : Arena := s2Step310HeadGAfter

private def s2Step310HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626],768⟩

private def s2Step310HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩

private def s2Step310HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114],769⟩

private def s2Step310HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799],771⟩

private theorem s2Step310HeadBank_incomingDistinct : ([s2Step310HeadGRow,s2Step310HeadFRow,s2Step310HeadGvRow,s2Step310HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310HeadF_Incoming : rowsOwned s2Step310HeadFBefore [s2Step310HeadFRow,s2Step310HeadGvRow,s2Step310HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310HeadGRow,s2Step310HeadFRow,s2Step310HeadGvRow,s2Step310HeadFvRow] 1 s2Step310HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310HeadBank_outgoingOwned : rowsOwned s2Step310HeadFvAfter [s2Step310HeadGOut,s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step310HeadFvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310HeadF_Outgoing : rowsOwned s2Step310HeadFvAfter [s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut] :=
  hmrRows_owned_drop s2Step310HeadFvAfter [s2Step310HeadGOut,s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut] 1 s2Step310HeadBank_outgoingOwned

private theorem s2Step310HeadF_distinct : (s2Step310HeadFRow.sign::s2Step310HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310HeadF_owned : (s2Step310HeadFRow.sign::s2Step310HeadFRow.payload).toFinset⊆s2Step310HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310HeadF_reserved : s2Step310HeadFBefore.reserve s2Step310HeadFFresh.toFinset=some s2Step310HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step310HeadFFresh,arenaWires]
  · norm_num [s2Step310HeadFBefore,s2Step310HeadGAfter,s2Step310HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step310HeadFAfter,s2Step310HeadFBefore,s2Step310HeadGAfter,s2Step310HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step310HeadF_checked : planRowResizeLog s2Step310HeadFBefore s2Step310HeadFRow 116 s2Step310HeadFFresh=
    some (s2Step310HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 793],768⟩,growRow 768 s2Step310HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step310HeadFBefore s2Step310HeadFAfter s2Step310HeadFRow 116 s2Step310HeadFFresh
    s2Step310HeadF_distinct s2Step310HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310HeadF_reserved
  have rowEq : WindowRow.mk (s2Step310HeadFRow.payload++s2Step310HeadFFresh) s2Step310HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 793],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step310HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step310HeadFvBefore : Arena := s2Step310HeadGvAfter

private theorem s2Step310HeadFv_Incoming : rowsOwned s2Step310HeadFvBefore [s2Step310HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310HeadGRow,s2Step310HeadFRow,s2Step310HeadGvRow,s2Step310HeadFvRow] 3 s2Step310HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310HeadFv_Outgoing : rowsOwned s2Step310HeadFvAfter [s2Step310HeadFvOut] :=
  hmrRows_owned_drop s2Step310HeadFvAfter [s2Step310HeadGOut,s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut] 3 s2Step310HeadBank_outgoingOwned

private theorem s2Step310HeadFv_distinct : (s2Step310HeadFvRow.sign::s2Step310HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310HeadFv_owned : (s2Step310HeadFvRow.sign::s2Step310HeadFvRow.payload).toFinset⊆s2Step310HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310HeadFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310HeadFv_reserved : s2Step310HeadFvBefore.reserve s2Step310HeadFvFresh.toFinset=some s2Step310HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step310HeadFvFresh,arenaWires]
  · norm_num [s2Step310HeadFvBefore,s2Step310HeadGvAfter,s2Step310HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step310HeadFvAfter,s2Step310HeadFvBefore,s2Step310HeadGvAfter,s2Step310HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step310HeadFv_checked : planRowResizeLog s2Step310HeadFvBefore s2Step310HeadFvRow 171 s2Step310HeadFvFresh=
    some (s2Step310HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩,growRow 770 s2Step310HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step310HeadFvBefore s2Step310HeadFvAfter s2Step310HeadFvRow 171 s2Step310HeadFvFresh
    s2Step310HeadFv_distinct s2Step310HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step310HeadFvRow.payload++s2Step310HeadFvFresh) s2Step310HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step310HeadG_Incoming : rowsOwned s2Step310HeadGBefore [s2Step310HeadGRow,s2Step310HeadFRow,s2Step310HeadGvRow,s2Step310HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310HeadGRow,s2Step310HeadFRow,s2Step310HeadGvRow,s2Step310HeadFvRow] 0 s2Step310HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310HeadG_Outgoing : rowsOwned s2Step310HeadFvAfter [s2Step310HeadGOut,s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut] :=
  hmrRows_owned_drop s2Step310HeadFvAfter [s2Step310HeadGOut,s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut] 0 s2Step310HeadBank_outgoingOwned

private theorem s2Step310HeadG_distinct : (s2Step310HeadGRow.sign::s2Step310HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310HeadG_owned : (s2Step310HeadGRow.sign::s2Step310HeadGRow.payload).toFinset⊆s2Step310HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310HeadG_reserved : s2Step310HeadGBefore.reserve s2Step310HeadGFresh.toFinset=some s2Step310HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step310HeadGFresh,arenaWires]
  · norm_num [s2Step310HeadGBefore,s2Step310HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step310HeadGAfter,s2Step310HeadGBefore,s2Step310HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step310HeadG_checked : planRowResizeLog s2Step310HeadGBefore s2Step310HeadGRow 116 s2Step310HeadGFresh=
    some (s2Step310HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 810],769⟩,growRow 769 s2Step310HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step310HeadGBefore s2Step310HeadGAfter s2Step310HeadGRow 116 s2Step310HeadGFresh
    s2Step310HeadG_distinct s2Step310HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310HeadG_reserved
  have rowEq : WindowRow.mk (s2Step310HeadGRow.payload++s2Step310HeadGFresh) s2Step310HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 810],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step310HeadGvBefore : Arena := s2Step310HeadFAfter

private theorem s2Step310HeadGv_Incoming : rowsOwned s2Step310HeadGvBefore [s2Step310HeadGvRow,s2Step310HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step310HeadGRow,s2Step310HeadFRow,s2Step310HeadGvRow,s2Step310HeadFvRow] 2 s2Step310HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step310HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step310HeadGv_Outgoing : rowsOwned s2Step310HeadFvAfter [s2Step310HeadGvOut,s2Step310HeadFvOut] :=
  hmrRows_owned_drop s2Step310HeadFvAfter [s2Step310HeadGOut,s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut] 2 s2Step310HeadBank_outgoingOwned

private theorem s2Step310HeadGv_distinct : (s2Step310HeadGvRow.sign::s2Step310HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step310HeadGv_owned : (s2Step310HeadGvRow.sign::s2Step310HeadGvRow.payload).toFinset⊆s2Step310HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step310HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step310HeadGv_reserved : s2Step310HeadGvBefore.reserve s2Step310HeadGvFresh.toFinset=some s2Step310HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step310HeadGvFresh,arenaWires]
  · norm_num [s2Step310HeadGvBefore,s2Step310HeadFAfter,s2Step310HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step310HeadGvAfter,s2Step310HeadGvBefore,s2Step310HeadFAfter,s2Step310HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step310HeadGv_checked : planRowResizeLog s2Step310HeadGvBefore s2Step310HeadGvRow 171 s2Step310HeadGvFresh=
    some (s2Step310HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 834],771⟩,growRow 771 s2Step310HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step310HeadGvBefore s2Step310HeadGvAfter s2Step310HeadGvRow 171 s2Step310HeadGvFresh
    s2Step310HeadGv_distinct s2Step310HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step310HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step310HeadGvRow.payload++s2Step310HeadGvFresh) s2Step310HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 834],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step310HeadBank_rows : planWindowRowsLog s2Step310HeadGBefore [(s2Step310HeadGRow,116),(s2Step310HeadFRow,116),(s2Step310HeadGvRow,171),(s2Step310HeadFvRow,171)] [s2Step310HeadGFresh,s2Step310HeadFFresh,s2Step310HeadGvFresh,s2Step310HeadFvFresh]=
    some (s2Step310HeadFvAfter,[s2Step310HeadGOut,s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut],(growRow 769 s2Step310HeadGFresh ++ (growRow 768 s2Step310HeadFFresh ++ (growRow 771 s2Step310HeadGvFresh ++ (growRow 770 s2Step310HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step310HeadFvAfter [] []=some (s2Step310HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step310HeadFvBefore s2Step310HeadFvAfter s2Step310HeadFvAfter
    s2Step310HeadFvRow s2Step310HeadFvOut 171 s2Step310HeadFvFresh [] [] []
    (growRow 770 s2Step310HeadFvFresh) ([]) s2Step310HeadFv_Incoming s2Step310HeadFv_checked h4 s2Step310HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step310HeadGvBefore s2Step310HeadGvAfter s2Step310HeadFvAfter
    s2Step310HeadGvRow s2Step310HeadGvOut 171 s2Step310HeadGvFresh [(s2Step310HeadFvRow,171)] [s2Step310HeadFvFresh] [s2Step310HeadFvOut]
    (growRow 771 s2Step310HeadGvFresh) ((growRow 770 s2Step310HeadFvFresh ++ [])) s2Step310HeadGv_Incoming s2Step310HeadGv_checked h3 s2Step310HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step310HeadFBefore s2Step310HeadFAfter s2Step310HeadFvAfter
    s2Step310HeadFRow s2Step310HeadFOut 116 s2Step310HeadFFresh [(s2Step310HeadGvRow,171),(s2Step310HeadFvRow,171)] [s2Step310HeadGvFresh,s2Step310HeadFvFresh] [s2Step310HeadGvOut,s2Step310HeadFvOut]
    (growRow 768 s2Step310HeadFFresh) ((growRow 771 s2Step310HeadGvFresh ++ (growRow 770 s2Step310HeadFvFresh ++ []))) s2Step310HeadF_Incoming s2Step310HeadF_checked h2 s2Step310HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step310HeadGBefore s2Step310HeadGAfter s2Step310HeadFvAfter
    s2Step310HeadGRow s2Step310HeadGOut 116 s2Step310HeadGFresh [(s2Step310HeadFRow,116),(s2Step310HeadGvRow,171),(s2Step310HeadFvRow,171)] [s2Step310HeadFFresh,s2Step310HeadGvFresh,s2Step310HeadFvFresh] [s2Step310HeadFOut,s2Step310HeadGvOut,s2Step310HeadFvOut]
    (growRow 769 s2Step310HeadGFresh) ((growRow 768 s2Step310HeadFFresh ++ (growRow 771 s2Step310HeadGvFresh ++ (growRow 770 s2Step310HeadFvFresh ++ [])))) s2Step310HeadG_Incoming s2Step310HeadG_checked h1 s2Step310HeadG_Outgoing
  exact h0

private theorem s2Step310HeadBank_checked : compileHmrBankResizeLog .headroom s2Step310HeadGBefore ⟨s2Step310HeadFRow,s2Step310HeadGRow,s2Step310HeadFvRow,s2Step310HeadGvRow⟩ ⟨116,116,171,171⟩ [s2Step310HeadGFresh,s2Step310HeadFFresh,s2Step310HeadGvFresh,s2Step310HeadFvFresh]=
    some (s2Step310HeadFvAfter,⟨s2Step310HeadFOut,s2Step310HeadGOut,s2Step310HeadFvOut,s2Step310HeadGvOut⟩,(growRow 769 s2Step310HeadGFresh ++ (growRow 768 s2Step310HeadFFresh ++ (growRow 771 s2Step310HeadGvFresh ++ (growRow 770 s2Step310HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step310HeadBank_rows]
  rfl

private theorem s2Step310Front_checked : compileHmrSourceFrontLog s2Step310EntryFBefore s2Step310FrontBank 115 170 ⟨115,115,171,170⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step310FrontLog=some s2Step310FrontPlan := by
  have pairEq : s2Step310FrontPair=⟨s2Step310HeadFRow,s2Step310HeadGRow,s2Step310HeadFvRow,s2Step310HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step310FrontHead=⟨s2Step310ExitFRow,s2Step310ExitGRow,s2Step310ExitFvRow,s2Step310ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step310Add0A=s2Step310FrontHead.f.wires := by decide +kernel
  have gEq : s2Step310Add0B=s2Step310FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step310Add1A=s2Step310FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step310Add1B=s2Step310FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step310EntryFBefore s2Step310FrontBank 115 170 ⟨115,115,171,170⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step310FrontLog s2Step310FrontPlan
  · exact s2Step310Front_entry
  · exact s2Step310EntryBank_checked
  · exact s2Step310Front_sigma
  · rfl
  · exact s2Step310Front_branch
  · rfl
  · simpa only [s2Step310FrontPlan,pairEq] using s2Step310HeadBank_checked
  · simpa only [s2Step310FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step310F4_checked
  · exact s2Step310Counter_checked
  · rfl
  · simpa only [s2Step310FrontPlan,headEq] using s2Step310ExitBank_checked

private theorem s2Step310Complete_explicit_checked : compileHmrEarlyStepLog s2Step310EntryFBefore s2Step310FrontBank 115 170 ⟨115,115,171,170⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step310CompleteLog=some s2Step310CompletePlan := by
  let Q := s2Step310EarlyControlPlan
  have hq := s2Step310EarlyControl_plan_checked
  have fv1 : s2Step310CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step310CompleteOut.fv.payload[2]?.getD s2Step310CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step310CompleteOut.fv.payload[3]?.getD s2Step310CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step310CompleteOut.fv.payload[4]?.getD s2Step310CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step310EntryFBefore s2Step310EarlyControlArena s2Step310FrontBank 115 170 ⟨115,115,171,170⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step310CompleteLog s2Step310FrontPlan Q
    s2Step310Front_checked s2Step310Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step310Complete_owned s2Step310Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step310EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 811 s2Step310CompleteOut.fv.second (s2Step310CompleteOut.fv.payload[2]?.getD s2Step310CompleteOut.fv.sign) (s2Step310CompleteOut.fv.payload[3]?.getD s2Step310CompleteOut.fv.sign) (s2Step310CompleteOut.fv.payload[4]?.getD s2Step310CompleteOut.fv.sign) 803 56 s2Step310EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep310Arena : Arena := s2Step310EntryFBefore
def s2PrivateStep310Bank : WindowBank := s2Step310FrontBank
def s2PrivateStep310Spec : HmrSourceWalkStepLog := ⟨115,170,⟨115,115,171,170⟩,56,.early s2Step310CompleteLog⟩
def s2PrivateStep310Plan : HmrSourceStepPlan := .early s2Step310CompletePlan
theorem s2PrivateStep310_source : s2PrivateStep310Spec=s2ObservedLogs304[6] := rfl
theorem s2PrivateStep310_checked : compileHmrSourceStepLog s2PrivateStep310Arena s2PrivateStep310Bank
    s2PrivateStep310Spec.fgWidth s2PrivateStep310Spec.vWidth s2PrivateStep310Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 310 s2PrivateStep310Spec.need none s2PrivateStep310Spec.log=some s2PrivateStep310Plan := by
  change compileHmrSourceStepLog s2Step310EntryFBefore s2Step310FrontBank 115 170 ⟨115,115,171,170⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 310 56 none (.early s2Step310CompleteLog)=some (.early s2Step310CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 310<498)]
  rw [s2Step310Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
