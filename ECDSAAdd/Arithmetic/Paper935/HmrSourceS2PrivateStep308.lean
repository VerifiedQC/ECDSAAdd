import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep306
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

private def s2Step308CompleteMoves : List (Wire × Wire) := [(834,116),(825,628)]

private def s2Step308EarlyControlLog : HmrEarlyControlLog := ⟨[825, 834, 793, 802, 787],[824],[806],[846, 830, 800, 894, 896, 901],[]⟩

private def s2Step308FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[824], [787], [793], [802]],[[], [], [], []]⟩,[799],[811],[806],[846],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800]⟩

private def s2Step308CompleteLog : HmrEarlyStepLog := ⟨s2Step308FrontLog,s2Step308CompleteMoves,s2Step308EarlyControlLog⟩

private def s2Step308ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627],768⟩

private def s2Step308ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step308ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115],769⟩

private def s2Step308ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step308FrontOut : WindowBank := ⟨s2Step308ExitFOut,s2Step308ExitGOut,s2Step308ExitFvOut,s2Step308ExitGvOut⟩

private def s2Step308CompleteOut : WindowBank := s2Step308FrontOut.repacked s2Step308CompleteMoves

private def s2Step308EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step308EarlyControlPositiveArena,[824],s2Step308EarlyControlEqualityArena,[806],⟨⟨799,false⟩,[⟨⟨824,false⟩,806⟩]⟩⟩

private def s2Step308EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,825⟩,⟨⟨774,false⟩,834⟩,⟨⟨775,false⟩,793⟩,⟨⟨776,false⟩,802⟩,⟨⟨777,false⟩,787⟩]⟩

private def s2Step308EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step308EarlyControlZeroArena,s2Step308EarlyControlZeroPlan,s2Step308EarlyControlClassPlan,s2Step308EarlyControlFlagArena,s2Step308EarlyControlFittedArena,s2Step308EarlyControlHistoryArena,s2Step308EarlyControlSigmaArena,s2Step308EarlyControlOutputArena,s2Step308EarlyControlLog⟩

private def s2Step308CounterWork : List Wire := [806, 846, 830, 800]

private theorem s2Step308Counter_bounded : s2Step308CounterWork.toFinset⊆arenaWires := by norm_num [s2Step308CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step308HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308CounterDuring : Arena := ⟨s2Step308HeadFvAfter.live∪s2Step308CounterWork.toFinset,Finset.union_subset s2Step308HeadFvAfter.bounded s2Step308Counter_bounded⟩

private def s2Step308EntryFFresh : List Wire := []

private def s2Step308EntryFvFresh : List Wire := []

private def s2Step308EntryGFresh : List Wire := []

private def s2Step308EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308EntryGvAfter : Arena := s2Step308EntryFBefore

private def s2Step308EntryGvFresh : List Wire := []

private def s2Step308ExitFExtra : List Wire := [628, 787]

private def s2Step308ExitFvExtra : List Wire := [802]

private def s2Step308ExitGExtra : List Wire := [116, 824]

private def s2Step308ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<628) ∨ (629≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308ExitGvExtra : List Wire := [793]

private def s2Step308Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step308Add0_bounded : s2Step308Add0Work.toFinset⊆arenaWires := by
  have h : s2Step308Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step308Add0During : Arena := ⟨s2Step308Add0Arena.live∪s2Step308Add0Work.toFinset,Finset.union_subset s2Step308Add0Arena.bounded s2Step308Add0_bounded⟩

private def s2Step308Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step308Add1_bounded : s2Step308Add1Work.toFinset⊆arenaWires := by
  have h : s2Step308Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step308Add1During : Arena := ⟨s2Step308Add1Arena.live∪s2Step308Add1Work.toFinset,Finset.union_subset s2Step308Add1Arena.bounded s2Step308Add1_bounded⟩

private def s2Step308F4FlagArena : Arena := ⟨s2Step308HeadFvAfter.live∪{806},Finset.union_subset s2Step308HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step308F4Plan : HmrHybridF4Plan := ⟨s2Step308F4FlagArena,[806],s2Step308Add0Arena,[846],s2Step308Add0During,s2Step308Add0Work,s2Step308Add1During,s2Step308Add1Work⟩

private def s2Step308HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 787],768⟩

private def s2Step308HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩

private def s2Step308HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 824],769⟩

private def s2Step308HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793],771⟩

private def s2Step308FrontHead : WindowBank := ⟨s2Step308HeadFOut,s2Step308HeadGOut,s2Step308HeadFvOut,s2Step308HeadGvOut⟩

private def s2Step308EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628],768⟩

private def s2Step308EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step308EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116],769⟩

private def s2Step308EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step308FrontPair : WindowBank := ⟨s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut⟩

private def s2Step308FrontSigmaArena : Arena := ⟨s2Step308EntryGvAfter.live∪{799},Finset.union_subset s2Step308EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step308HeadFFresh : List Wire := [787]

private def s2Step308HeadFvFresh : List Wire := [802]

private def s2Step308HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308HeadGFresh : List Wire := [824]

private def s2Step308HeadGvFresh : List Wire := [793]

private def s2Step308FrontPlan : HmrSourceFront := ⟨s2Step308EntryGvAfter,s2Step308FrontPair,(growRow 768 s2Step308EntryFFresh ++ (growRow 769 s2Step308EntryGFresh ++ (growRow 770 s2Step308EntryFvFresh ++ (growRow 771 s2Step308EntryGvFresh ++ [])))),s2Step308FrontSigmaArena,[799],s2Step308HeadGBefore,[811],
  s2Step308HeadFvAfter,s2Step308FrontHead,(growRow 769 s2Step308HeadGFresh ++ (growRow 768 s2Step308HeadFFresh ++ (growRow 771 s2Step308HeadGvFresh ++ (growRow 770 s2Step308HeadFvFresh ++ [])))),s2Step308F4Plan,s2Step308CounterDuring,s2Step308CounterWork,s2Step308ExitGvAfter,s2Step308FrontOut,(shrinkRow 769 s2Step308ExitGExtra ++ (shrinkRow 768 s2Step308ExitFExtra ++ (shrinkRow 770 s2Step308ExitFvExtra ++ (shrinkRow 771 s2Step308ExitGvExtra ++ []))))⟩

private def s2Step308CompletePlan : HmrEarlyStepPlan := ⟨s2Step308FrontPlan,s2Step308EarlyControlArena,s2Step308EarlyControlPlan,s2Step308CompleteMoves⟩

private theorem s2Step308Complete_apart : List.Disjoint (s2Step308CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [799, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step308CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[799, 811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step308Complete_owned : (s2Step308CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step308EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step308CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,628),(629,787),(788,793),(794,800),(801,802),(803,806),(807,824),(825,830),(831,834),(835,846),(847,894),(895,896),(897,901),(902,903),(904,907),(909,910)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step308CompleteRelocationMove0Borrowed : Arena := ⟨s2Step308ExitGvAfter.live∪{116},Finset.union_subset s2Step308ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step308CompleteRelocationMove1Borrowed : Arena := ⟨s2Step308CompleteRelocationMove0After.live∪{628},Finset.union_subset s2Step308CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step308CompleteRelocation_move0_owned : 834∈s2Step308ExitGvAfter.live := by norm_num [s2Step308ExitGvAfter,arenaWires]

private theorem s2Step308CompleteRelocation_move0_reserve : s2Step308ExitGvAfter.reserve {116}=some s2Step308CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step308ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step308CompleteRelocation_move0_retire : s2Step308CompleteRelocationMove0Borrowed.retireSet {834}=s2Step308CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step308CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step308CompleteRelocationMove0Borrowed,s2Step308ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step308CompleteRelocation_move1_owned : 825∈s2Step308CompleteRelocationMove0After.live := by norm_num [s2Step308CompleteRelocationMove0After,arenaWires]

private theorem s2Step308CompleteRelocation_move1_reserve : s2Step308CompleteRelocationMove0After.reserve {628}=some s2Step308CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step308CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step308CompleteRelocation_move1_retire : s2Step308CompleteRelocationMove1Borrowed.retireSet {825}=s2Step308EarlyControlArena := by
  unfold Arena.retireSet s2Step308EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step308CompleteRelocationMove1Borrowed,s2Step308CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step308CompleteRelocation_checked : s2Step308ExitGvAfter.checkRepack [(834,116),(825,628)]=some s2Step308EarlyControlArena := by
  have tail2 : s2Step308EarlyControlArena.checkRepack []=some s2Step308EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step308CompleteRelocationMove0After s2Step308CompleteRelocationMove1Borrowed s2Step308EarlyControlArena s2Step308EarlyControlArena 825 628 []
    s2Step308CompleteRelocation_move1_owned s2Step308CompleteRelocation_move1_reserve s2Step308CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step308ExitGvAfter s2Step308CompleteRelocationMove0Borrowed s2Step308CompleteRelocationMove0After s2Step308EarlyControlArena 834 116 [(825,628)]
    s2Step308CompleteRelocation_move0_owned s2Step308CompleteRelocation_move0_reserve s2Step308CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step308Complete_repack : s2Step308ExitGvAfter.checkRepack s2Step308CompleteMoves=some s2Step308EarlyControlArena := by
  simpa only [s2Step308CompleteMoves] using s2Step308CompleteRelocation_checked

private theorem s2Step308EarlyControl_branchOwned : ([811] : List Wire).toFinset⊆s2Step308EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_branch : compileHmrBranchRetirement s2Step308EarlyControlSigmaArena 811=some s2Step308EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step308EarlyControl_branchOwned
  · ext q
    simp [s2Step308EarlyControlOutputArena,s2Step308EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step308EarlyControl_classEqualityBorrow : s2Step308EarlyControlPositiveArena.checkBorrow (([799, 824] : List Wire).length-1) s2Step308EarlyControlLog.classWork=some s2Step308EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step308EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step308EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step308EarlyControlEqualityArena,s2Step308EarlyControlPositiveArena,s2Step308EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step308EarlyControl_classEqualityOwned : ([799, 824] : List Wire).toFinset⊆s2Step308EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_classEquality : compileHmrEqualityLog s2Step308EarlyControlPositiveArena [799, 824] 0 s2Step308EarlyControlLog.classWork=some (s2Step308EarlyControlEqualityArena,s2Step308EarlyControlLog.classWork,s2Step308EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step308EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step308EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step308EarlyControl_classOwned : ([777, 787, 799] : List Wire).toFinset⊆s2Step308EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_positiveBorrow : s2Step308EarlyControlZeroArena.checkBorrow (1) s2Step308EarlyControlLog.positiveWork=some s2Step308EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step308EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step308EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step308EarlyControlPositiveArena,s2Step308EarlyControlZeroArena,s2Step308EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step308EarlyControl_class : compileHmrSourceClassLog s2Step308EarlyControlZeroArena false 777 s2Step308EarlyControlZeroPlan.top 0 799 s2Step308EarlyControlLog.positiveWork s2Step308EarlyControlLog.classWork=some s2Step308EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step308EarlyControlClassPlan s2Step308EarlyControlZeroArena false 777 s2Step308EarlyControlZeroPlan.top 0 799
  constructor
  · decide +kernel
  · exact s2Step308EarlyControl_classOwned
  · exact s2Step308EarlyControl_positiveBorrow
  · exact s2Step308EarlyControl_classEquality

private theorem s2Step308EarlyControl_entryRecordOwned : ([811, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step308EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_entrySigmaOwned : ([799, 254] : List Wire).toFinset⊆s2Step308EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_fitBorrow : s2Step308EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step308EarlyControlLog.recordFresh=some s2Step308EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step308EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step308EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step308EarlyControlFittedArena,s2Step308EarlyControlFlagArena,s2Step308EarlyControlLog,arenaWires]

private theorem s2Step308EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step308EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlFlagArena (fun q => (0≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_fit : compileHmrRecordGrowLog s2Step308EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step308EarlyControlLog.recordFresh=some s2Step308EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step308EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step308EarlyControl_fitBorrow

private theorem s2Step308EarlyControl_flagsBorrow : s2Step308EarlyControlEqualityArena.checkBorrow (6) s2Step308EarlyControlLog.flagWork=some s2Step308EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step308EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step308EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step308EarlyControlFlagArena,s2Step308EarlyControlEqualityArena,s2Step308EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step308EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step308EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_flags : compileHmrFlagsLog s2Step308EarlyControlClassPlan.equalityArena s2Step308EarlyControlClassPlan.equality.top 253 252 251 s2Step308EarlyControlLog.flagWork=some s2Step308EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step308EarlyControl_flagsOwned⟩
  · exact s2Step308EarlyControl_flagsBorrow

private theorem s2Step308EarlyControl_historyBorrow : s2Step308EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step308EarlyControlLog.recordFresh=some s2Step308EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step308EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step308EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step308EarlyControlHistoryArena,s2Step308EarlyControlArena,s2Step308EarlyControlLog,arenaWires]

private theorem s2Step308EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step308EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_history : compileHmrRecordGrowLog s2Step308EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step308EarlyControlLog.recordFresh=some s2Step308EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step308EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step308EarlyControl_historyBorrow

private theorem s2Step308EarlyControl_sigmaOwned : ([254, 799] : List Wire).toFinset⊆s2Step308EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_sigmaReleaseOwned : ([799] : List Wire).toFinset⊆s2Step308EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_sigmaRelease : s2Step308EarlyControlHistoryArena.release {799} (fun _ => false)=some s2Step308EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step308EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step308EarlyControlSigmaArena,s2Step308EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step308EarlyControl_sigma : compileHmrSigmaDropLog s2Step308EarlyControlHistoryArena false 0 0 254 799 []=some s2Step308EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step308EarlyControl_sigmaOwned⟩
  · exact s2Step308EarlyControl_sigmaRelease

private theorem s2Step308EarlyControl_zeroBorrow : s2Step308EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step308EarlyControlLog.zeroWork=some s2Step308EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step308EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step308EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step308EarlyControlZeroArena,s2Step308EarlyControlArena,s2Step308EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step308EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step308EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step308EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (826≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EarlyControl_zero : compileHmrEqualityLog s2Step308EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step308EarlyControlLog.zeroWork=some (s2Step308EarlyControlZeroArena,s2Step308EarlyControlLog.zeroWork,s2Step308EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step308EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step308EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step308EarlyControl_logged : s2Step308EarlyControlPlan.Logged s2Step308EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 799 254 253 252 251 811 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step308EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step308EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step308EarlyControl_zero
  · exact s2Step308EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step308EarlyControl_flags
  · exact s2Step308EarlyControl_fit
  · exact s2Step308EarlyControl_history
  · exact s2Step308EarlyControl_sigma
  · exact s2Step308EarlyControl_branch

private theorem s2Step308EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step308EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 799 254 253 252 251 811 56 s2Step308EarlyControlLog=some s2Step308EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step308EarlyControlPlan s2Step308EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 799 254 253 252 251 811 56 s2Step308EarlyControl_logged

private def s2Step308EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628],768⟩

private def s2Step308EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step308EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116],769⟩

private def s2Step308EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private def s2Step308FrontBank : WindowBank := ⟨s2Step308EntryFRow,s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow⟩

private def s2Step308Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 787, 768]

private def s2Step308Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 824, 769]

private def s2Step308Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 770]

private def s2Step308Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793, 771]

private theorem s2Step308Counter_apart : Disjoint s2Step308HeadFvAfter.live s2Step308CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step308HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308Counter_borrowed : s2Step308HeadFvAfter.checkBorrow 4 s2Step308CounterWork=some s2Step308CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step308HeadFvAfter s2Step308CounterDuring s2Step308CounterWork.toFinset s2Step308Counter_bounded s2Step308Counter_apart rfl

private theorem s2Step308Counter_owned : (799::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step308HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step308HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308Counter_checked : compileHmrCounterStepLog s2Step308HeadFvAfter true 799 [772, 773, 774, 775, 776, 777] s2Step308CounterWork=some s2Step308CounterDuring := by
  have owned : ∀q∈799::[772, 773, 774, 775, 776, 777],q∈s2Step308HeadFvAfter.live := fun q hq => s2Step308Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step308Counter_borrowed

private def s2Step308EntryFAfter : Arena := s2Step308EntryFBefore

private theorem s2Step308EntryBank_incomingDistinct : ([s2Step308EntryFRow,s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308EntryF_Incoming : rowsOwned s2Step308EntryFBefore [s2Step308EntryFRow,s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308EntryFRow,s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow] 0 s2Step308EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308EntryBank_outgoingOwned : rowsOwned s2Step308EntryGvAfter [s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step308EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308EntryF_Outgoing : rowsOwned s2Step308EntryGvAfter [s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut] :=
  hmrRows_owned_drop s2Step308EntryGvAfter [s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut] 0 s2Step308EntryBank_outgoingOwned

private theorem s2Step308EntryF_distinct : (s2Step308EntryFRow.sign::s2Step308EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308EntryF_owned : (s2Step308EntryFRow.sign::s2Step308EntryFRow.payload).toFinset⊆s2Step308EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EntryF_reserved : s2Step308EntryFBefore.reserve s2Step308EntryFFresh.toFinset=some s2Step308EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step308EntryFFresh,arenaWires]
  · norm_num [s2Step308EntryFBefore,s2Step308EntryFFresh,arenaWires]
  · simp only [s2Step308EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step308EntryF_checked : planRowResizeLog s2Step308EntryFBefore s2Step308EntryFRow 117 s2Step308EntryFFresh=
    some (s2Step308EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628],768⟩,growRow 768 s2Step308EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step308EntryFBefore s2Step308EntryFAfter s2Step308EntryFRow 117 s2Step308EntryFFresh
    s2Step308EntryF_distinct s2Step308EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step308EntryF_reserved
  have rowEq : WindowRow.mk (s2Step308EntryFRow.payload++s2Step308EntryFFresh) s2Step308EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step308EntryFvAfter : Arena := s2Step308EntryFBefore

private def s2Step308EntryFvBefore : Arena := s2Step308EntryFBefore

private theorem s2Step308EntryFv_Incoming : rowsOwned s2Step308EntryFvBefore [s2Step308EntryFvRow,s2Step308EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308EntryFRow,s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow] 2 s2Step308EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308EntryFv_Outgoing : rowsOwned s2Step308EntryGvAfter [s2Step308EntryFvOut,s2Step308EntryGvOut] :=
  hmrRows_owned_drop s2Step308EntryGvAfter [s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut] 2 s2Step308EntryBank_outgoingOwned

private theorem s2Step308EntryFv_distinct : (s2Step308EntryFvRow.sign::s2Step308EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308EntryFv_owned : (s2Step308EntryFvRow.sign::s2Step308EntryFvRow.payload).toFinset⊆s2Step308EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EntryFv_reserved : s2Step308EntryFvBefore.reserve s2Step308EntryFvFresh.toFinset=some s2Step308EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step308EntryFvFresh,arenaWires]
  · norm_num [s2Step308EntryFvBefore,s2Step308EntryFBefore,s2Step308EntryFvFresh,arenaWires]
  · simp only [s2Step308EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step308EntryFv_checked : planRowResizeLog s2Step308EntryFvBefore s2Step308EntryFvRow 169 s2Step308EntryFvFresh=
    some (s2Step308EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩,growRow 770 s2Step308EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step308EntryFvBefore s2Step308EntryFvAfter s2Step308EntryFvRow 169 s2Step308EntryFvFresh
    s2Step308EntryFv_distinct s2Step308EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step308EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step308EntryFvRow.payload++s2Step308EntryFvFresh) s2Step308EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step308EntryGAfter : Arena := s2Step308EntryFBefore

private def s2Step308EntryGBefore : Arena := s2Step308EntryFBefore

private theorem s2Step308EntryG_Incoming : rowsOwned s2Step308EntryGBefore [s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308EntryFRow,s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow] 1 s2Step308EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308EntryG_Outgoing : rowsOwned s2Step308EntryGvAfter [s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut] :=
  hmrRows_owned_drop s2Step308EntryGvAfter [s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut] 1 s2Step308EntryBank_outgoingOwned

private theorem s2Step308EntryG_distinct : (s2Step308EntryGRow.sign::s2Step308EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308EntryG_owned : (s2Step308EntryGRow.sign::s2Step308EntryGRow.payload).toFinset⊆s2Step308EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EntryG_reserved : s2Step308EntryGBefore.reserve s2Step308EntryGFresh.toFinset=some s2Step308EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step308EntryGFresh,arenaWires]
  · norm_num [s2Step308EntryGBefore,s2Step308EntryFBefore,s2Step308EntryGFresh,arenaWires]
  · simp only [s2Step308EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step308EntryG_checked : planRowResizeLog s2Step308EntryGBefore s2Step308EntryGRow 117 s2Step308EntryGFresh=
    some (s2Step308EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116],769⟩,growRow 769 s2Step308EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step308EntryGBefore s2Step308EntryGAfter s2Step308EntryGRow 117 s2Step308EntryGFresh
    s2Step308EntryG_distinct s2Step308EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step308EntryG_reserved
  have rowEq : WindowRow.mk (s2Step308EntryGRow.payload++s2Step308EntryGFresh) s2Step308EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step308EntryGvBefore : Arena := s2Step308EntryFBefore

private theorem s2Step308EntryGv_Incoming : rowsOwned s2Step308EntryGvBefore [s2Step308EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308EntryFRow,s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow] 3 s2Step308EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308EntryGv_Outgoing : rowsOwned s2Step308EntryGvAfter [s2Step308EntryGvOut] :=
  hmrRows_owned_drop s2Step308EntryGvAfter [s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut] 3 s2Step308EntryBank_outgoingOwned

private theorem s2Step308EntryGv_distinct : (s2Step308EntryGvRow.sign::s2Step308EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308EntryGv_owned : (s2Step308EntryGvRow.sign::s2Step308EntryGvRow.payload).toFinset⊆s2Step308EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308EntryGv_reserved : s2Step308EntryGvBefore.reserve s2Step308EntryGvFresh.toFinset=some s2Step308EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step308EntryGvFresh,arenaWires]
  · norm_num [s2Step308EntryGvBefore,s2Step308EntryFBefore,s2Step308EntryGvFresh,arenaWires]
  · simp only [s2Step308EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step308EntryGv_checked : planRowResizeLog s2Step308EntryGvBefore s2Step308EntryGvRow 169 s2Step308EntryGvFresh=
    some (s2Step308EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩,growRow 771 s2Step308EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step308EntryGvBefore s2Step308EntryGvAfter s2Step308EntryGvRow 169 s2Step308EntryGvFresh
    s2Step308EntryGv_distinct s2Step308EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step308EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step308EntryGvRow.payload++s2Step308EntryGvFresh) s2Step308EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step308EntryBank_rows : planWindowRowsLog s2Step308EntryFBefore [(s2Step308EntryFRow,117),(s2Step308EntryGRow,117),(s2Step308EntryFvRow,169),(s2Step308EntryGvRow,169)] [s2Step308EntryFFresh,s2Step308EntryGFresh,s2Step308EntryFvFresh,s2Step308EntryGvFresh]=
    some (s2Step308EntryGvAfter,[s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut],(growRow 768 s2Step308EntryFFresh ++ (growRow 769 s2Step308EntryGFresh ++ (growRow 770 s2Step308EntryFvFresh ++ (growRow 771 s2Step308EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step308EntryGvAfter [] []=some (s2Step308EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step308EntryGvBefore s2Step308EntryGvAfter s2Step308EntryGvAfter
    s2Step308EntryGvRow s2Step308EntryGvOut 169 s2Step308EntryGvFresh [] [] []
    (growRow 771 s2Step308EntryGvFresh) ([]) s2Step308EntryGv_Incoming s2Step308EntryGv_checked h4 s2Step308EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step308EntryFvBefore s2Step308EntryFvAfter s2Step308EntryGvAfter
    s2Step308EntryFvRow s2Step308EntryFvOut 169 s2Step308EntryFvFresh [(s2Step308EntryGvRow,169)] [s2Step308EntryGvFresh] [s2Step308EntryGvOut]
    (growRow 770 s2Step308EntryFvFresh) ((growRow 771 s2Step308EntryGvFresh ++ [])) s2Step308EntryFv_Incoming s2Step308EntryFv_checked h3 s2Step308EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step308EntryGBefore s2Step308EntryGAfter s2Step308EntryGvAfter
    s2Step308EntryGRow s2Step308EntryGOut 117 s2Step308EntryGFresh [(s2Step308EntryFvRow,169),(s2Step308EntryGvRow,169)] [s2Step308EntryFvFresh,s2Step308EntryGvFresh] [s2Step308EntryFvOut,s2Step308EntryGvOut]
    (growRow 769 s2Step308EntryGFresh) ((growRow 770 s2Step308EntryFvFresh ++ (growRow 771 s2Step308EntryGvFresh ++ []))) s2Step308EntryG_Incoming s2Step308EntryG_checked h2 s2Step308EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step308EntryFBefore s2Step308EntryFAfter s2Step308EntryGvAfter
    s2Step308EntryFRow s2Step308EntryFOut 117 s2Step308EntryFFresh [(s2Step308EntryGRow,117),(s2Step308EntryFvRow,169),(s2Step308EntryGvRow,169)] [s2Step308EntryGFresh,s2Step308EntryFvFresh,s2Step308EntryGvFresh] [s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut]
    (growRow 768 s2Step308EntryFFresh) ((growRow 769 s2Step308EntryGFresh ++ (growRow 770 s2Step308EntryFvFresh ++ (growRow 771 s2Step308EntryGvFresh ++ [])))) s2Step308EntryF_Incoming s2Step308EntryF_checked h1 s2Step308EntryF_Outgoing
  exact h0

private theorem s2Step308EntryBank_checked : compileHmrBankResizeLog .entry s2Step308EntryFBefore ⟨s2Step308EntryFRow,s2Step308EntryGRow,s2Step308EntryFvRow,s2Step308EntryGvRow⟩ ⟨117,117,169,169⟩ [s2Step308EntryFFresh,s2Step308EntryGFresh,s2Step308EntryFvFresh,s2Step308EntryGvFresh]=
    some (s2Step308EntryGvAfter,⟨s2Step308EntryFOut,s2Step308EntryGOut,s2Step308EntryFvOut,s2Step308EntryGvOut⟩,(growRow 768 s2Step308EntryFFresh ++ (growRow 769 s2Step308EntryGFresh ++ (growRow 770 s2Step308EntryFvFresh ++ (growRow 771 s2Step308EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step308EntryBank_rows]
  rfl

private def s2Step308ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<628) ∨ (629≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308ExitFBefore : Arena := s2Step308ExitGAfter

private def s2Step308ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 787],768⟩

private def s2Step308ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩

private def s2Step308ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 824],769⟩

private def s2Step308ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793],771⟩

private theorem s2Step308ExitBank_incomingDistinct : ([s2Step308ExitGRow,s2Step308ExitFRow,s2Step308ExitFvRow,s2Step308ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308ExitF_Incoming : rowsOwned s2Step308ExitFBefore [s2Step308ExitFRow,s2Step308ExitFvRow,s2Step308ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308ExitGRow,s2Step308ExitFRow,s2Step308ExitFvRow,s2Step308ExitGvRow] 1 s2Step308ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308ExitFBefore (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308ExitBank_outgoingOwned : rowsOwned s2Step308ExitGvAfter [s2Step308ExitGOut,s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step308ExitGvAfter (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<628) ∨ (629≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308ExitF_Outgoing : rowsOwned s2Step308ExitGvAfter [s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut] :=
  hmrRows_owned_drop s2Step308ExitGvAfter [s2Step308ExitGOut,s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut] 1 s2Step308ExitBank_outgoingOwned

private theorem s2Step308ExitF_distinct : (s2Step308ExitFRow.sign::s2Step308ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308ExitF_owned : (s2Step308ExitFRow.sign::s2Step308ExitFRow.payload).toFinset⊆s2Step308ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308ExitFBefore (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308ExitF_retired : s2Step308ExitFBefore.retireSet s2Step308ExitFExtra.toFinset=s2Step308ExitFAfter := by
  unfold Arena.retireSet s2Step308ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step308ExitFBefore,s2Step308ExitGAfter,s2Step308ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step308ExitF_checked : planRowResizeLog s2Step308ExitFBefore s2Step308ExitFRow 116 []=
    some (s2Step308ExitFAfter,s2Step308ExitFOut,shrinkRow 768 s2Step308ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step308ExitFBefore s2Step308ExitFRow 116 s2Step308ExitF_distinct s2Step308ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step308ExitFRow.payload.take 116) s2Step308ExitFRow.sign=s2Step308ExitFOut := by decide +kernel
  have hi : s2Step308ExitFRow.payload.drop 116=s2Step308ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step308ExitF_retired] at result
  exact result

private def s2Step308ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<628) ∨ (629≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308ExitFvBefore : Arena := s2Step308ExitFAfter

private theorem s2Step308ExitFv_Incoming : rowsOwned s2Step308ExitFvBefore [s2Step308ExitFvRow,s2Step308ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308ExitGRow,s2Step308ExitFRow,s2Step308ExitFvRow,s2Step308ExitGvRow] 2 s2Step308ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308ExitFvBefore (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<628) ∨ (629≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308ExitFv_Outgoing : rowsOwned s2Step308ExitGvAfter [s2Step308ExitFvOut,s2Step308ExitGvOut] :=
  hmrRows_owned_drop s2Step308ExitGvAfter [s2Step308ExitGOut,s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut] 2 s2Step308ExitBank_outgoingOwned

private theorem s2Step308ExitFv_distinct : (s2Step308ExitFvRow.sign::s2Step308ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308ExitFv_owned : (s2Step308ExitFvRow.sign::s2Step308ExitFvRow.payload).toFinset⊆s2Step308ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308ExitFvBefore (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<628) ∨ (629≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308ExitFv_retired : s2Step308ExitFvBefore.retireSet s2Step308ExitFvExtra.toFinset=s2Step308ExitFvAfter := by
  unfold Arena.retireSet s2Step308ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step308ExitFvBefore,s2Step308ExitFAfter,s2Step308ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step308ExitFv_checked : planRowResizeLog s2Step308ExitFvBefore s2Step308ExitFvRow 169 []=
    some (s2Step308ExitFvAfter,s2Step308ExitFvOut,shrinkRow 770 s2Step308ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step308ExitFvBefore s2Step308ExitFvRow 169 s2Step308ExitFv_distinct s2Step308ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step308ExitFvRow.payload.take 169) s2Step308ExitFvRow.sign=s2Step308ExitFvOut := by decide +kernel
  have hi : s2Step308ExitFvRow.payload.drop 169=s2Step308ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step308ExitFv_retired] at result
  exact result

private def s2Step308ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step308ExitG_Incoming : rowsOwned s2Step308ExitGBefore [s2Step308ExitGRow,s2Step308ExitFRow,s2Step308ExitFvRow,s2Step308ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308ExitGRow,s2Step308ExitFRow,s2Step308ExitFvRow,s2Step308ExitGvRow] 0 s2Step308ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308ExitG_Outgoing : rowsOwned s2Step308ExitGvAfter [s2Step308ExitGOut,s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut] :=
  hmrRows_owned_drop s2Step308ExitGvAfter [s2Step308ExitGOut,s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut] 0 s2Step308ExitBank_outgoingOwned

private theorem s2Step308ExitG_distinct : (s2Step308ExitGRow.sign::s2Step308ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308ExitG_owned : (s2Step308ExitGRow.sign::s2Step308ExitGRow.payload).toFinset⊆s2Step308ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308ExitG_retired : s2Step308ExitGBefore.retireSet s2Step308ExitGExtra.toFinset=s2Step308ExitGAfter := by
  unfold Arena.retireSet s2Step308ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step308ExitGBefore,s2Step308ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step308ExitG_checked : planRowResizeLog s2Step308ExitGBefore s2Step308ExitGRow 116 []=
    some (s2Step308ExitGAfter,s2Step308ExitGOut,shrinkRow 769 s2Step308ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step308ExitGBefore s2Step308ExitGRow 116 s2Step308ExitG_distinct s2Step308ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step308ExitGRow.payload.take 116) s2Step308ExitGRow.sign=s2Step308ExitGOut := by decide +kernel
  have hi : s2Step308ExitGRow.payload.drop 116=s2Step308ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step308ExitG_retired] at result
  exact result

private def s2Step308ExitGvBefore : Arena := s2Step308ExitFvAfter

private theorem s2Step308ExitGv_Incoming : rowsOwned s2Step308ExitGvBefore [s2Step308ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308ExitGRow,s2Step308ExitFRow,s2Step308ExitFvRow,s2Step308ExitGvRow] 3 s2Step308ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308ExitGvBefore (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<628) ∨ (629≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308ExitGv_Outgoing : rowsOwned s2Step308ExitGvAfter [s2Step308ExitGvOut] :=
  hmrRows_owned_drop s2Step308ExitGvAfter [s2Step308ExitGOut,s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut] 3 s2Step308ExitBank_outgoingOwned

private theorem s2Step308ExitGv_distinct : (s2Step308ExitGvRow.sign::s2Step308ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308ExitGv_owned : (s2Step308ExitGvRow.sign::s2Step308ExitGvRow.payload).toFinset⊆s2Step308ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308ExitGvBefore (fun q => (0≤q ∧ q<116) ∨ (117≤q ∧ q<628) ∨ (629≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308ExitGv_retired : s2Step308ExitGvBefore.retireSet s2Step308ExitGvExtra.toFinset=s2Step308ExitGvAfter := by
  unfold Arena.retireSet s2Step308ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step308ExitGvBefore,s2Step308ExitFvAfter,s2Step308ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step308ExitGv_checked : planRowResizeLog s2Step308ExitGvBefore s2Step308ExitGvRow 169 []=
    some (s2Step308ExitGvAfter,s2Step308ExitGvOut,shrinkRow 771 s2Step308ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step308ExitGvBefore s2Step308ExitGvRow 169 s2Step308ExitGv_distinct s2Step308ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step308ExitGvRow.payload.take 169) s2Step308ExitGvRow.sign=s2Step308ExitGvOut := by decide +kernel
  have hi : s2Step308ExitGvRow.payload.drop 169=s2Step308ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step308ExitGv_retired] at result
  exact result

private theorem s2Step308ExitBank_rows : planWindowRowsLog s2Step308ExitGBefore [(s2Step308ExitGRow,116),(s2Step308ExitFRow,116),(s2Step308ExitFvRow,169),(s2Step308ExitGvRow,169)] [[],[],[],[]]=
    some (s2Step308ExitGvAfter,[s2Step308ExitGOut,s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut],(shrinkRow 769 s2Step308ExitGExtra ++ (shrinkRow 768 s2Step308ExitFExtra ++ (shrinkRow 770 s2Step308ExitFvExtra ++ (shrinkRow 771 s2Step308ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step308ExitGvAfter [] []=some (s2Step308ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step308ExitGvBefore s2Step308ExitGvAfter s2Step308ExitGvAfter
    s2Step308ExitGvRow s2Step308ExitGvOut 169 [] [] [] []
    (shrinkRow 771 s2Step308ExitGvExtra) ([]) s2Step308ExitGv_Incoming s2Step308ExitGv_checked h4 s2Step308ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step308ExitFvBefore s2Step308ExitFvAfter s2Step308ExitGvAfter
    s2Step308ExitFvRow s2Step308ExitFvOut 169 [] [(s2Step308ExitGvRow,169)] [[]] [s2Step308ExitGvOut]
    (shrinkRow 770 s2Step308ExitFvExtra) ((shrinkRow 771 s2Step308ExitGvExtra ++ [])) s2Step308ExitFv_Incoming s2Step308ExitFv_checked h3 s2Step308ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step308ExitFBefore s2Step308ExitFAfter s2Step308ExitGvAfter
    s2Step308ExitFRow s2Step308ExitFOut 116 [] [(s2Step308ExitFvRow,169),(s2Step308ExitGvRow,169)] [[],[]] [s2Step308ExitFvOut,s2Step308ExitGvOut]
    (shrinkRow 768 s2Step308ExitFExtra) ((shrinkRow 770 s2Step308ExitFvExtra ++ (shrinkRow 771 s2Step308ExitGvExtra ++ []))) s2Step308ExitF_Incoming s2Step308ExitF_checked h2 s2Step308ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step308ExitGBefore s2Step308ExitGAfter s2Step308ExitGvAfter
    s2Step308ExitGRow s2Step308ExitGOut 116 [] [(s2Step308ExitFRow,116),(s2Step308ExitFvRow,169),(s2Step308ExitGvRow,169)] [[],[],[]] [s2Step308ExitFOut,s2Step308ExitFvOut,s2Step308ExitGvOut]
    (shrinkRow 769 s2Step308ExitGExtra) ((shrinkRow 768 s2Step308ExitFExtra ++ (shrinkRow 770 s2Step308ExitFvExtra ++ (shrinkRow 771 s2Step308ExitGvExtra ++ [])))) s2Step308ExitG_Incoming s2Step308ExitG_checked h1 s2Step308ExitG_Outgoing
  exact h0

private theorem s2Step308ExitBank_checked : compileHmrBankResizeLog .exit s2Step308ExitGBefore ⟨s2Step308ExitFRow,s2Step308ExitGRow,s2Step308ExitFvRow,s2Step308ExitGvRow⟩ ⟨116,116,169,169⟩ [[],[],[],[]]=
    some (s2Step308ExitGvAfter,⟨s2Step308ExitFOut,s2Step308ExitGOut,s2Step308ExitFvOut,s2Step308ExitGvOut⟩,(shrinkRow 769 s2Step308ExitGExtra ++ (shrinkRow 768 s2Step308ExitFExtra ++ (shrinkRow 770 s2Step308ExitFvExtra ++ (shrinkRow 771 s2Step308ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step308ExitBank_rows]
  rfl

private theorem s2Step308Add0_apart : Disjoint s2Step308Add0Arena.live s2Step308Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step308Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308Add0_card : s2Step308Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step308Add0_borrowed : s2Step308Add0Arena.checkBorrow (hmrHybridCount s2Step308Add0Arena s2Step308Add0B.length) s2Step308Add0Work=some s2Step308Add0During := by
  have len : s2Step308Add0Work.length=hmrHybridCount s2Step308Add0Arena s2Step308Add0B.length := by
    rw [hmrHybridCount,s2Step308Add0_card]
    decide +kernel
  have nd : s2Step308Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step308Add0Arena s2Step308Add0During s2Step308Add0Work.toFinset s2Step308Add0_bounded s2Step308Add0_apart rfl

private theorem s2Step308Add0_distinct : (806::811::846::(s2Step308Add0A++s2Step308Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308Add0_owned : (806::811::846::(s2Step308Add0A++s2Step308Add0B)).toFinset⊆s2Step308Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step308Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308Add0_checked : compileHmrHybridCinLog s2Step308Add0Arena 811 806 846 s2Step308Add0A s2Step308Add0B s2Step308Add0Work=some s2Step308Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step308Add0Arena s2Step308Add0During 811 806 846 s2Step308Add0A s2Step308Add0B s2Step308Add0Work
    (by decide +kernel) (by decide +kernel) s2Step308Add0_distinct
    (fun q hq => s2Step308Add0_owned (List.mem_toFinset.mpr hq)) s2Step308Add0_borrowed

private theorem s2Step308Add1_apart : Disjoint s2Step308Add1Arena.live s2Step308Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step308Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308Add1_card : s2Step308Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step308Add1_borrowed : s2Step308Add1Arena.checkBorrow (hmrHybridCount s2Step308Add1Arena s2Step308Add1B.length) s2Step308Add1Work=some s2Step308Add1During := by
  have len : s2Step308Add1Work.length=hmrHybridCount s2Step308Add1Arena s2Step308Add1B.length := by
    rw [hmrHybridCount,s2Step308Add1_card]
    decide +kernel
  have nd : s2Step308Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step308Add1Arena s2Step308Add1During s2Step308Add1Work.toFinset s2Step308Add1_bounded s2Step308Add1_apart rfl

private theorem s2Step308Add1_distinct : (806::811::846::(s2Step308Add1A++s2Step308Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308Add1_owned : (806::811::846::(s2Step308Add1A++s2Step308Add1B)).toFinset⊆s2Step308Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step308Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308Add1_checked : compileHmrHybridCinLog s2Step308Add1Arena 811 806 846 s2Step308Add1A s2Step308Add1B s2Step308Add1Work=some s2Step308Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step308Add1Arena s2Step308Add1During 811 806 846 s2Step308Add1A s2Step308Add1B s2Step308Add1Work
    (by decide +kernel) (by decide +kernel) s2Step308Add1_distinct
    (fun q hq => s2Step308Add1_owned (List.mem_toFinset.mpr hq)) s2Step308Add1_borrowed

private theorem s2Step308F4_apart : Disjoint (s2Step308Add0A++s2Step308Add0B).toFinset (s2Step308Add1A++s2Step308Add1B).toFinset := by
  have nd : ((s2Step308Add0A++s2Step308Add0B)++(s2Step308Add1A++s2Step308Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step308F4_carry : s2Step308F4FlagArena.checkBorrow 1 [846]=some s2Step308Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step308F4FlagArena,s2Step308HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step308F4FlagArena,s2Step308HeadFvAfter,s2Step308Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step308F4_distinct : (799::811::806::846::((s2Step308Add0A++s2Step308Add1A)++(s2Step308Add0B++s2Step308Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308F4_flag : s2Step308HeadFvAfter.checkBorrow 1 [806]=some s2Step308F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step308HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step308F4_owned : (799::811::((s2Step308Add0A++s2Step308Add1A)++(s2Step308Add0B++s2Step308Add1B))).toFinset⊆s2Step308HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step308HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308F4_checked : compileHmrHybridF4Log s2Step308HeadFvAfter 799 811 s2Step308Add0A s2Step308Add0B s2Step308Add1A s2Step308Add1B [806] [846] s2Step308Add0Work s2Step308Add1Work=some s2Step308F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step308HeadFvAfter s2Step308F4FlagArena s2Step308Add0Arena s2Step308Add0During s2Step308Add1During 799 811
    s2Step308Add0A s2Step308Add0B s2Step308Add1A s2Step308Add1B [806] [846] s2Step308Add0Work s2Step308Add1Work
    (fun q hq => s2Step308F4_owned (List.mem_toFinset.mpr hq)) s2Step308F4_flag s2Step308F4_carry
    s2Step308F4_distinct s2Step308F4_apart s2Step308Add0_checked s2Step308Add1_checked

private theorem s2Step308Front_branch : s2Step308FrontSigmaArena.checkBorrow 1 [811]=some s2Step308HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step308FrontSigmaArena,s2Step308EntryGvAfter,s2Step308EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step308FrontSigmaArena,s2Step308EntryGvAfter,s2Step308EntryFBefore,s2Step308HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step308Front_entry : HmrFrontEntryValid s2Step308EntryFBefore s2Step308FrontBank 117 169 ⟨116,116,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step308FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step308EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step308EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<799) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<811) ∨ (812≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step308FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step308Front_sigma : s2Step308EntryGvAfter.checkBorrow 1 [799]=some s2Step308FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step308EntryGvAfter,s2Step308EntryFBefore,arenaWires]
  · rfl

private def s2Step308HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308HeadFBefore : Arena := s2Step308HeadGAfter

private def s2Step308HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628],768⟩

private def s2Step308HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805],770⟩

private def s2Step308HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116],769⟩

private def s2Step308HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826],771⟩

private theorem s2Step308HeadBank_incomingDistinct : ([s2Step308HeadGRow,s2Step308HeadFRow,s2Step308HeadGvRow,s2Step308HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308HeadF_Incoming : rowsOwned s2Step308HeadFBefore [s2Step308HeadFRow,s2Step308HeadGvRow,s2Step308HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308HeadGRow,s2Step308HeadFRow,s2Step308HeadGvRow,s2Step308HeadFvRow] 1 s2Step308HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308HeadBank_outgoingOwned : rowsOwned s2Step308HeadFvAfter [s2Step308HeadGOut,s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step308HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308HeadF_Outgoing : rowsOwned s2Step308HeadFvAfter [s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut] :=
  hmrRows_owned_drop s2Step308HeadFvAfter [s2Step308HeadGOut,s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut] 1 s2Step308HeadBank_outgoingOwned

private theorem s2Step308HeadF_distinct : (s2Step308HeadFRow.sign::s2Step308HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308HeadF_owned : (s2Step308HeadFRow.sign::s2Step308HeadFRow.payload).toFinset⊆s2Step308HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308HeadF_reserved : s2Step308HeadFBefore.reserve s2Step308HeadFFresh.toFinset=some s2Step308HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step308HeadFFresh,arenaWires]
  · norm_num [s2Step308HeadFBefore,s2Step308HeadGAfter,s2Step308HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step308HeadFAfter,s2Step308HeadFBefore,s2Step308HeadGAfter,s2Step308HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step308HeadF_checked : planRowResizeLog s2Step308HeadFBefore s2Step308HeadFRow 118 s2Step308HeadFFresh=
    some (s2Step308HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 787],768⟩,growRow 768 s2Step308HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step308HeadFBefore s2Step308HeadFAfter s2Step308HeadFRow 118 s2Step308HeadFFresh
    s2Step308HeadF_distinct s2Step308HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step308HeadF_reserved
  have rowEq : WindowRow.mk (s2Step308HeadFRow.payload++s2Step308HeadFFresh) s2Step308HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step308HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step308HeadFvBefore : Arena := s2Step308HeadGvAfter

private theorem s2Step308HeadFv_Incoming : rowsOwned s2Step308HeadFvBefore [s2Step308HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308HeadGRow,s2Step308HeadFRow,s2Step308HeadGvRow,s2Step308HeadFvRow] 3 s2Step308HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308HeadFv_Outgoing : rowsOwned s2Step308HeadFvAfter [s2Step308HeadFvOut] :=
  hmrRows_owned_drop s2Step308HeadFvAfter [s2Step308HeadGOut,s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut] 3 s2Step308HeadBank_outgoingOwned

private theorem s2Step308HeadFv_distinct : (s2Step308HeadFvRow.sign::s2Step308HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308HeadFv_owned : (s2Step308HeadFvRow.sign::s2Step308HeadFvRow.payload).toFinset⊆s2Step308HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308HeadFv_reserved : s2Step308HeadFvBefore.reserve s2Step308HeadFvFresh.toFinset=some s2Step308HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step308HeadFvFresh,arenaWires]
  · norm_num [s2Step308HeadFvBefore,s2Step308HeadGvAfter,s2Step308HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step308HeadFvAfter,s2Step308HeadFvBefore,s2Step308HeadGvAfter,s2Step308HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step308HeadFv_checked : planRowResizeLog s2Step308HeadFvBefore s2Step308HeadFvRow 170 s2Step308HeadFvFresh=
    some (s2Step308HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩,growRow 770 s2Step308HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step308HeadFvBefore s2Step308HeadFvAfter s2Step308HeadFvRow 170 s2Step308HeadFvFresh
    s2Step308HeadFv_distinct s2Step308HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step308HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step308HeadFvRow.payload++s2Step308HeadFvFresh) s2Step308HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 834, 810, 835, 842, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step308HeadG_Incoming : rowsOwned s2Step308HeadGBefore [s2Step308HeadGRow,s2Step308HeadFRow,s2Step308HeadGvRow,s2Step308HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308HeadGRow,s2Step308HeadFRow,s2Step308HeadGvRow,s2Step308HeadFvRow] 0 s2Step308HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308HeadG_Outgoing : rowsOwned s2Step308HeadFvAfter [s2Step308HeadGOut,s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut] :=
  hmrRows_owned_drop s2Step308HeadFvAfter [s2Step308HeadGOut,s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut] 0 s2Step308HeadBank_outgoingOwned

private theorem s2Step308HeadG_distinct : (s2Step308HeadGRow.sign::s2Step308HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308HeadG_owned : (s2Step308HeadGRow.sign::s2Step308HeadGRow.payload).toFinset⊆s2Step308HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308HeadG_reserved : s2Step308HeadGBefore.reserve s2Step308HeadGFresh.toFinset=some s2Step308HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step308HeadGFresh,arenaWires]
  · norm_num [s2Step308HeadGBefore,s2Step308HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step308HeadGAfter,s2Step308HeadGBefore,s2Step308HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step308HeadG_checked : planRowResizeLog s2Step308HeadGBefore s2Step308HeadGRow 118 s2Step308HeadGFresh=
    some (s2Step308HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 824],769⟩,growRow 769 s2Step308HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step308HeadGBefore s2Step308HeadGAfter s2Step308HeadGRow 118 s2Step308HeadGFresh
    s2Step308HeadG_distinct s2Step308HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step308HeadG_reserved
  have rowEq : WindowRow.mk (s2Step308HeadGRow.payload++s2Step308HeadGFresh) s2Step308HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 824],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step308HeadGvBefore : Arena := s2Step308HeadFAfter

private theorem s2Step308HeadGv_Incoming : rowsOwned s2Step308HeadGvBefore [s2Step308HeadGvRow,s2Step308HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step308HeadGRow,s2Step308HeadFRow,s2Step308HeadGvRow,s2Step308HeadFvRow] 2 s2Step308HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step308HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step308HeadGv_Outgoing : rowsOwned s2Step308HeadFvAfter [s2Step308HeadGvOut,s2Step308HeadFvOut] :=
  hmrRows_owned_drop s2Step308HeadFvAfter [s2Step308HeadGOut,s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut] 2 s2Step308HeadBank_outgoingOwned

private theorem s2Step308HeadGv_distinct : (s2Step308HeadGvRow.sign::s2Step308HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step308HeadGv_owned : (s2Step308HeadGvRow.sign::s2Step308HeadGvRow.payload).toFinset⊆s2Step308HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step308HeadGvBefore (fun q => (0≤q ∧ q<793) ∨ (794≤q ∧ q<800) ∨ (801≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step308HeadGv_reserved : s2Step308HeadGvBefore.reserve s2Step308HeadGvFresh.toFinset=some s2Step308HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step308HeadGvFresh,arenaWires]
  · norm_num [s2Step308HeadGvBefore,s2Step308HeadFAfter,s2Step308HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step308HeadGvAfter,s2Step308HeadGvBefore,s2Step308HeadFAfter,s2Step308HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step308HeadGv_checked : planRowResizeLog s2Step308HeadGvBefore s2Step308HeadGvRow 170 s2Step308HeadGvFresh=
    some (s2Step308HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793],771⟩,growRow 771 s2Step308HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step308HeadGvBefore s2Step308HeadGvAfter s2Step308HeadGvRow 170 s2Step308HeadGvFresh
    s2Step308HeadGv_distinct s2Step308HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step308HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step308HeadGvRow.payload++s2Step308HeadGvFresh) s2Step308HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 825, 803, 837, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 793],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step308HeadBank_rows : planWindowRowsLog s2Step308HeadGBefore [(s2Step308HeadGRow,118),(s2Step308HeadFRow,118),(s2Step308HeadGvRow,170),(s2Step308HeadFvRow,170)] [s2Step308HeadGFresh,s2Step308HeadFFresh,s2Step308HeadGvFresh,s2Step308HeadFvFresh]=
    some (s2Step308HeadFvAfter,[s2Step308HeadGOut,s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut],(growRow 769 s2Step308HeadGFresh ++ (growRow 768 s2Step308HeadFFresh ++ (growRow 771 s2Step308HeadGvFresh ++ (growRow 770 s2Step308HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step308HeadFvAfter [] []=some (s2Step308HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step308HeadFvBefore s2Step308HeadFvAfter s2Step308HeadFvAfter
    s2Step308HeadFvRow s2Step308HeadFvOut 170 s2Step308HeadFvFresh [] [] []
    (growRow 770 s2Step308HeadFvFresh) ([]) s2Step308HeadFv_Incoming s2Step308HeadFv_checked h4 s2Step308HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step308HeadGvBefore s2Step308HeadGvAfter s2Step308HeadFvAfter
    s2Step308HeadGvRow s2Step308HeadGvOut 170 s2Step308HeadGvFresh [(s2Step308HeadFvRow,170)] [s2Step308HeadFvFresh] [s2Step308HeadFvOut]
    (growRow 771 s2Step308HeadGvFresh) ((growRow 770 s2Step308HeadFvFresh ++ [])) s2Step308HeadGv_Incoming s2Step308HeadGv_checked h3 s2Step308HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step308HeadFBefore s2Step308HeadFAfter s2Step308HeadFvAfter
    s2Step308HeadFRow s2Step308HeadFOut 118 s2Step308HeadFFresh [(s2Step308HeadGvRow,170),(s2Step308HeadFvRow,170)] [s2Step308HeadGvFresh,s2Step308HeadFvFresh] [s2Step308HeadGvOut,s2Step308HeadFvOut]
    (growRow 768 s2Step308HeadFFresh) ((growRow 771 s2Step308HeadGvFresh ++ (growRow 770 s2Step308HeadFvFresh ++ []))) s2Step308HeadF_Incoming s2Step308HeadF_checked h2 s2Step308HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step308HeadGBefore s2Step308HeadGAfter s2Step308HeadFvAfter
    s2Step308HeadGRow s2Step308HeadGOut 118 s2Step308HeadGFresh [(s2Step308HeadFRow,118),(s2Step308HeadGvRow,170),(s2Step308HeadFvRow,170)] [s2Step308HeadFFresh,s2Step308HeadGvFresh,s2Step308HeadFvFresh] [s2Step308HeadFOut,s2Step308HeadGvOut,s2Step308HeadFvOut]
    (growRow 769 s2Step308HeadGFresh) ((growRow 768 s2Step308HeadFFresh ++ (growRow 771 s2Step308HeadGvFresh ++ (growRow 770 s2Step308HeadFvFresh ++ [])))) s2Step308HeadG_Incoming s2Step308HeadG_checked h1 s2Step308HeadG_Outgoing
  exact h0

private theorem s2Step308HeadBank_checked : compileHmrBankResizeLog .headroom s2Step308HeadGBefore ⟨s2Step308HeadFRow,s2Step308HeadGRow,s2Step308HeadFvRow,s2Step308HeadGvRow⟩ ⟨118,118,170,170⟩ [s2Step308HeadGFresh,s2Step308HeadFFresh,s2Step308HeadGvFresh,s2Step308HeadFvFresh]=
    some (s2Step308HeadFvAfter,⟨s2Step308HeadFOut,s2Step308HeadGOut,s2Step308HeadFvOut,s2Step308HeadGvOut⟩,(growRow 769 s2Step308HeadGFresh ++ (growRow 768 s2Step308HeadFFresh ++ (growRow 771 s2Step308HeadGvFresh ++ (growRow 770 s2Step308HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step308HeadBank_rows]
  rfl

private theorem s2Step308Front_checked : compileHmrSourceFrontLog s2Step308EntryFBefore s2Step308FrontBank 117 169 ⟨116,116,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step308FrontLog=some s2Step308FrontPlan := by
  have pairEq : s2Step308FrontPair=⟨s2Step308HeadFRow,s2Step308HeadGRow,s2Step308HeadFvRow,s2Step308HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step308FrontHead=⟨s2Step308ExitFRow,s2Step308ExitGRow,s2Step308ExitFvRow,s2Step308ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step308Add0A=s2Step308FrontHead.f.wires := by decide +kernel
  have gEq : s2Step308Add0B=s2Step308FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step308Add1A=s2Step308FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step308Add1B=s2Step308FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step308EntryFBefore s2Step308FrontBank 117 169 ⟨116,116,169,169⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step308FrontLog s2Step308FrontPlan
  · exact s2Step308Front_entry
  · exact s2Step308EntryBank_checked
  · exact s2Step308Front_sigma
  · rfl
  · exact s2Step308Front_branch
  · rfl
  · simpa only [s2Step308FrontPlan,pairEq] using s2Step308HeadBank_checked
  · simpa only [s2Step308FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step308F4_checked
  · exact s2Step308Counter_checked
  · rfl
  · simpa only [s2Step308FrontPlan,headEq] using s2Step308ExitBank_checked

private theorem s2Step308Complete_explicit_checked : compileHmrEarlyStepLog s2Step308EntryFBefore s2Step308FrontBank 117 169 ⟨116,116,169,169⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step308CompleteLog=some s2Step308CompletePlan := by
  let Q := s2Step308EarlyControlPlan
  have hq := s2Step308EarlyControl_plan_checked
  have fv1 : s2Step308CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step308CompleteOut.fv.payload[2]?.getD s2Step308CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step308CompleteOut.fv.payload[3]?.getD s2Step308CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step308CompleteOut.fv.payload[4]?.getD s2Step308CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step308EntryFBefore s2Step308EarlyControlArena s2Step308FrontBank 117 169 ⟨116,116,169,169⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step308CompleteLog s2Step308FrontPlan Q
    s2Step308Front_checked s2Step308Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step308Complete_owned s2Step308Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step308EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 799 s2Step308CompleteOut.fv.second (s2Step308CompleteOut.fv.payload[2]?.getD s2Step308CompleteOut.fv.sign) (s2Step308CompleteOut.fv.payload[3]?.getD s2Step308CompleteOut.fv.sign) (s2Step308CompleteOut.fv.payload[4]?.getD s2Step308CompleteOut.fv.sign) 811 56 s2Step308EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep308Arena : Arena := s2Step308EntryFBefore
def s2PrivateStep308Bank : WindowBank := s2Step308FrontBank
def s2PrivateStep308Spec : HmrSourceWalkStepLog := ⟨117,169,⟨116,116,169,169⟩,56,.early s2Step308CompleteLog⟩
def s2PrivateStep308Plan : HmrSourceStepPlan := .early s2Step308CompletePlan
theorem s2PrivateStep308_source : s2PrivateStep308Spec=s2ObservedLogs304[4] := rfl
theorem s2PrivateStep308_checked : compileHmrSourceStepLog s2PrivateStep308Arena s2PrivateStep308Bank
    s2PrivateStep308Spec.fgWidth s2PrivateStep308Spec.vWidth s2PrivateStep308Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 308 s2PrivateStep308Spec.need none s2PrivateStep308Spec.log=some s2PrivateStep308Plan := by
  change compileHmrSourceStepLog s2Step308EntryFBefore s2Step308FrontBank 117 169 ⟨116,116,169,169⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 308 56 none (.early s2Step308CompleteLog)=some (.early s2Step308CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 308<498)]
  rw [s2Step308Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
