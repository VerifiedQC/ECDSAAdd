import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep312
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

private def s2Step314CompleteMoves : List (Wire × Wire) := [(827,625)]

private def s2Step314EarlyControlLog : HmrEarlyControlLog := ⟨[827, 824, 787, 837, 834],[806],[846],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step314FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [837], [], []],[[834], [787], [824], [810]],[[], [], [], []]⟩,[835],[842],[806],[846],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800]⟩

private def s2Step314CompleteLog : HmrEarlyStepLog := ⟨s2Step314FrontLog,s2Step314CompleteMoves,s2Step314EarlyControlLog⟩

private def s2Step314ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624],768⟩

private def s2Step314ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩

private def s2Step314ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],769⟩

private def s2Step314ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩

private def s2Step314FrontOut : WindowBank := ⟨s2Step314ExitFOut,s2Step314ExitGOut,s2Step314ExitFvOut,s2Step314ExitGvOut⟩

private def s2Step314CompleteOut : WindowBank := s2Step314FrontOut.repacked s2Step314CompleteMoves

private def s2Step314EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step314EarlyControlPositiveArena,[806],s2Step314EarlyControlEqualityArena,[846],⟨⟨835,false⟩,[⟨⟨806,false⟩,846⟩]⟩⟩

private def s2Step314EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,827⟩,⟨⟨774,false⟩,824⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,837⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step314EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step314EarlyControlZeroArena,s2Step314EarlyControlZeroPlan,s2Step314EarlyControlClassPlan,s2Step314EarlyControlFlagArena,s2Step314EarlyControlFittedArena,s2Step314EarlyControlHistoryArena,s2Step314EarlyControlSigmaArena,s2Step314EarlyControlOutputArena,s2Step314EarlyControlLog⟩

private def s2Step314CounterWork : List Wire := [806, 846, 830, 800]

private theorem s2Step314Counter_bounded : s2Step314CounterWork.toFinset⊆arenaWires := by norm_num [s2Step314CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step314HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314CounterDuring : Arena := ⟨s2Step314HeadFvAfter.live∪s2Step314CounterWork.toFinset,Finset.union_subset s2Step314HeadFvAfter.bounded s2Step314Counter_bounded⟩

private def s2Step314EntryFFresh : List Wire := []

private def s2Step314EntryFvFresh : List Wire := []

private def s2Step314EntryGFresh : List Wire := [837]

private def s2Step314EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EntryGvAfter : Arena := s2Step314EntryGAfter

private def s2Step314EntryGvFresh : List Wire := []

private def s2Step314ExitFExtra : List Wire := [625, 787]

private def s2Step314ExitGExtra : List Wire := [837, 834]

private def s2Step314ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<625) ∨ (626≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314ExitGvExtra : List Wire := [824]

private def s2Step314Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step314Add0_bounded : s2Step314Add0Work.toFinset⊆arenaWires := by
  have h : s2Step314Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step314Add0During : Arena := ⟨s2Step314Add0Arena.live∪s2Step314Add0Work.toFinset,Finset.union_subset s2Step314Add0Arena.bounded s2Step314Add0_bounded⟩

private def s2Step314Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step314Add1_bounded : s2Step314Add1Work.toFinset⊆arenaWires := by
  have h : s2Step314Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step314Add1During : Arena := ⟨s2Step314Add1Arena.live∪s2Step314Add1Work.toFinset,Finset.union_subset s2Step314Add1Arena.bounded s2Step314Add1_bounded⟩

private def s2Step314F4FlagArena : Arena := ⟨s2Step314HeadFvAfter.live∪{806},Finset.union_subset s2Step314HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step314F4Plan : HmrHybridF4Plan := ⟨s2Step314F4FlagArena,[806],s2Step314Add0Arena,[846],s2Step314Add0During,s2Step314Add0Work,s2Step314Add1During,s2Step314Add1Work⟩

private def s2Step314HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 787],768⟩

private def s2Step314HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩

private def s2Step314HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837, 834],769⟩

private def s2Step314HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 824],771⟩

private def s2Step314FrontHead : WindowBank := ⟨s2Step314HeadFOut,s2Step314HeadGOut,s2Step314HeadFvOut,s2Step314HeadGvOut⟩

private def s2Step314EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩

private def s2Step314EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step314EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837],769⟩

private def s2Step314EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩

private def s2Step314FrontPair : WindowBank := ⟨s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut⟩

private def s2Step314FrontSigmaArena : Arena := ⟨s2Step314EntryGvAfter.live∪{835},Finset.union_subset s2Step314EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step314HeadFFresh : List Wire := [787]

private def s2Step314HeadFvFresh : List Wire := [810]

private def s2Step314HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314HeadGFresh : List Wire := [834]

private def s2Step314HeadGvFresh : List Wire := [824]

private def s2Step314FrontPlan : HmrSourceFront := ⟨s2Step314EntryGvAfter,s2Step314FrontPair,(growRow 768 s2Step314EntryFFresh ++ (growRow 769 s2Step314EntryGFresh ++ (growRow 770 s2Step314EntryFvFresh ++ (growRow 771 s2Step314EntryGvFresh ++ [])))),s2Step314FrontSigmaArena,[835],s2Step314HeadGBefore,[842],
  s2Step314HeadFvAfter,s2Step314FrontHead,(growRow 769 s2Step314HeadGFresh ++ (growRow 768 s2Step314HeadFFresh ++ (growRow 771 s2Step314HeadGvFresh ++ (growRow 770 s2Step314HeadFvFresh ++ [])))),s2Step314F4Plan,s2Step314CounterDuring,s2Step314CounterWork,s2Step314ExitGvAfter,s2Step314FrontOut,(shrinkRow 769 s2Step314ExitGExtra ++ (shrinkRow 768 s2Step314ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step314ExitGvExtra ++ []))))⟩

private def s2Step314CompletePlan : HmrEarlyStepPlan := ⟨s2Step314FrontPlan,s2Step314EarlyControlArena,s2Step314EarlyControlPlan,s2Step314CompleteMoves⟩

private theorem s2Step314Complete_apart : List.Disjoint (s2Step314CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [835, 842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step314CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[835, 842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step314Complete_owned : (s2Step314CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step314CompleteMoveArena : Arena := ⟨s2Step314ExitGvAfter.live∪{625},Finset.union_subset s2Step314ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step314Complete_repack : s2Step314ExitGvAfter.checkRepack s2Step314CompleteMoves=some s2Step314EarlyControlArena := by
  have owned : 827∈s2Step314ExitGvAfter.live := by norm_num [s2Step314ExitGvAfter,arenaWires]
  have reserve : s2Step314ExitGvAfter.reserve {625}=some s2Step314CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step314ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step314CompleteMoveArena.retireSet {827}=s2Step314EarlyControlArena := by
    unfold Arena.retireSet s2Step314EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step314CompleteMoveArena,s2Step314ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step314CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step314CompleteMoveArena.retireSet {827}).checkRepack []=some s2Step314EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step314EarlyControl_branchOwned : ([842] : List Wire).toFinset⊆s2Step314EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_branch : compileHmrBranchRetirement s2Step314EarlyControlSigmaArena 842=some s2Step314EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step314EarlyControl_branchOwned
  · ext q
    simp [s2Step314EarlyControlOutputArena,s2Step314EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step314EarlyControl_classEqualityBorrow : s2Step314EarlyControlPositiveArena.checkBorrow (([835, 806] : List Wire).length-1) s2Step314EarlyControlLog.classWork=some s2Step314EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step314EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step314EarlyControlEqualityArena,s2Step314EarlyControlPositiveArena,s2Step314EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step314EarlyControl_classEqualityOwned : ([835, 806] : List Wire).toFinset⊆s2Step314EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_classEquality : compileHmrEqualityLog s2Step314EarlyControlPositiveArena [835, 806] 0 s2Step314EarlyControlLog.classWork=some (s2Step314EarlyControlEqualityArena,s2Step314EarlyControlLog.classWork,s2Step314EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step314EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step314EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step314EarlyControl_classOwned : ([777, 834, 835] : List Wire).toFinset⊆s2Step314EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_positiveBorrow : s2Step314EarlyControlZeroArena.checkBorrow (1) s2Step314EarlyControlLog.positiveWork=some s2Step314EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step314EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step314EarlyControlPositiveArena,s2Step314EarlyControlZeroArena,s2Step314EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step314EarlyControl_class : compileHmrSourceClassLog s2Step314EarlyControlZeroArena false 777 s2Step314EarlyControlZeroPlan.top 0 835 s2Step314EarlyControlLog.positiveWork s2Step314EarlyControlLog.classWork=some s2Step314EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step314EarlyControlClassPlan s2Step314EarlyControlZeroArena false 777 s2Step314EarlyControlZeroPlan.top 0 835
  constructor
  · decide +kernel
  · exact s2Step314EarlyControl_classOwned
  · exact s2Step314EarlyControl_positiveBorrow
  · exact s2Step314EarlyControl_classEquality

private theorem s2Step314EarlyControl_entryRecordOwned : ([842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_entrySigmaOwned : ([835, 254] : List Wire).toFinset⊆s2Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_fitBorrow : s2Step314EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step314EarlyControlLog.recordFresh=some s2Step314EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step314EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step314EarlyControlFittedArena,s2Step314EarlyControlFlagArena,s2Step314EarlyControlLog,arenaWires]

private theorem s2Step314EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step314EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_fit : compileHmrRecordGrowLog s2Step314EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step314EarlyControlLog.recordFresh=some s2Step314EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step314EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step314EarlyControl_fitBorrow

private theorem s2Step314EarlyControl_flagsBorrow : s2Step314EarlyControlEqualityArena.checkBorrow (6) s2Step314EarlyControlLog.flagWork=some s2Step314EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step314EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step314EarlyControlFlagArena,s2Step314EarlyControlEqualityArena,s2Step314EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step314EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step314EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_flags : compileHmrFlagsLog s2Step314EarlyControlClassPlan.equalityArena s2Step314EarlyControlClassPlan.equality.top 253 252 251 s2Step314EarlyControlLog.flagWork=some s2Step314EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step314EarlyControl_flagsOwned⟩
  · exact s2Step314EarlyControl_flagsBorrow

private theorem s2Step314EarlyControl_historyBorrow : s2Step314EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step314EarlyControlLog.recordFresh=some s2Step314EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step314EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step314EarlyControlHistoryArena,s2Step314EarlyControlArena,s2Step314EarlyControlLog,arenaWires]

private theorem s2Step314EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_history : compileHmrRecordGrowLog s2Step314EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step314EarlyControlLog.recordFresh=some s2Step314EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step314EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step314EarlyControl_historyBorrow

private theorem s2Step314EarlyControl_sigmaOwned : ([254, 835] : List Wire).toFinset⊆s2Step314EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_sigmaReleaseOwned : ([835] : List Wire).toFinset⊆s2Step314EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_sigmaRelease : s2Step314EarlyControlHistoryArena.release {835} (fun _ => false)=some s2Step314EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step314EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step314EarlyControlSigmaArena,s2Step314EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step314EarlyControl_sigma : compileHmrSigmaDropLog s2Step314EarlyControlHistoryArena false 0 0 254 835 []=some s2Step314EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step314EarlyControl_sigmaOwned⟩
  · exact s2Step314EarlyControl_sigmaRelease

private theorem s2Step314EarlyControl_zeroBorrow : s2Step314EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step314EarlyControlLog.zeroWork=some s2Step314EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step314EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step314EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step314EarlyControlZeroArena,s2Step314EarlyControlArena,s2Step314EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step314EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step314EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step314EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EarlyControl_zero : compileHmrEqualityLog s2Step314EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step314EarlyControlLog.zeroWork=some (s2Step314EarlyControlZeroArena,s2Step314EarlyControlLog.zeroWork,s2Step314EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step314EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step314EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step314EarlyControl_logged : s2Step314EarlyControlPlan.Logged s2Step314EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 842 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step314EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step314EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step314EarlyControl_zero
  · exact s2Step314EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step314EarlyControl_flags
  · exact s2Step314EarlyControl_fit
  · exact s2Step314EarlyControl_history
  · exact s2Step314EarlyControl_sigma
  · exact s2Step314EarlyControl_branch

private theorem s2Step314EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step314EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 842 56 s2Step314EarlyControlLog=some s2Step314EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step314EarlyControlPlan s2Step314EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 254 253 252 251 842 56 s2Step314EarlyControl_logged

private def s2Step314EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩

private def s2Step314EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step314EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112],769⟩

private def s2Step314EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩

private def s2Step314FrontBank : WindowBank := ⟨s2Step314EntryFRow,s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow⟩

private def s2Step314Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 787, 768]

private def s2Step314Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837, 834, 769]

private def s2Step314Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 770]

private def s2Step314Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 824, 771]

private theorem s2Step314Counter_apart : Disjoint s2Step314HeadFvAfter.live s2Step314CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step314HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314Counter_borrowed : s2Step314HeadFvAfter.checkBorrow 4 s2Step314CounterWork=some s2Step314CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step314HeadFvAfter s2Step314CounterDuring s2Step314CounterWork.toFinset s2Step314Counter_bounded s2Step314Counter_apart rfl

private theorem s2Step314Counter_owned : (835::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step314HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step314HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314Counter_checked : compileHmrCounterStepLog s2Step314HeadFvAfter true 835 [772, 773, 774, 775, 776, 777] s2Step314CounterWork=some s2Step314CounterDuring := by
  have owned : ∀q∈835::[772, 773, 774, 775, 776, 777],q∈s2Step314HeadFvAfter.live := fun q hq => s2Step314Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step314Counter_borrowed

private def s2Step314EntryFAfter : Arena := s2Step314EntryFBefore

private theorem s2Step314EntryBank_incomingDistinct : ([s2Step314EntryFRow,s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314EntryF_Incoming : rowsOwned s2Step314EntryFBefore [s2Step314EntryFRow,s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314EntryFRow,s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow] 0 s2Step314EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314EntryBank_outgoingOwned : rowsOwned s2Step314EntryGvAfter [s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step314EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314EntryF_Outgoing : rowsOwned s2Step314EntryGvAfter [s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut] :=
  hmrRows_owned_drop s2Step314EntryGvAfter [s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut] 0 s2Step314EntryBank_outgoingOwned

private theorem s2Step314EntryF_distinct : (s2Step314EntryFRow.sign::s2Step314EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314EntryF_owned : (s2Step314EntryFRow.sign::s2Step314EntryFRow.payload).toFinset⊆s2Step314EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EntryF_reserved : s2Step314EntryFBefore.reserve s2Step314EntryFFresh.toFinset=some s2Step314EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step314EntryFFresh,arenaWires]
  · norm_num [s2Step314EntryFBefore,s2Step314EntryFFresh,arenaWires]
  · simp only [s2Step314EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step314EntryF_checked : planRowResizeLog s2Step314EntryFBefore s2Step314EntryFRow 114 s2Step314EntryFFresh=
    some (s2Step314EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩,growRow 768 s2Step314EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step314EntryFBefore s2Step314EntryFAfter s2Step314EntryFRow 114 s2Step314EntryFFresh
    s2Step314EntryF_distinct s2Step314EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314EntryF_reserved
  have rowEq : WindowRow.mk (s2Step314EntryFRow.payload++s2Step314EntryFFresh) s2Step314EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step314EntryFvAfter : Arena := s2Step314EntryGAfter

private def s2Step314EntryFvBefore : Arena := s2Step314EntryGAfter

private theorem s2Step314EntryFv_Incoming : rowsOwned s2Step314EntryFvBefore [s2Step314EntryFvRow,s2Step314EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314EntryFRow,s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow] 2 s2Step314EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314EntryFv_Outgoing : rowsOwned s2Step314EntryGvAfter [s2Step314EntryFvOut,s2Step314EntryGvOut] :=
  hmrRows_owned_drop s2Step314EntryGvAfter [s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut] 2 s2Step314EntryBank_outgoingOwned

private theorem s2Step314EntryFv_distinct : (s2Step314EntryFvRow.sign::s2Step314EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314EntryFv_owned : (s2Step314EntryFvRow.sign::s2Step314EntryFvRow.payload).toFinset⊆s2Step314EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EntryFv_reserved : s2Step314EntryFvBefore.reserve s2Step314EntryFvFresh.toFinset=some s2Step314EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step314EntryFvFresh,arenaWires]
  · norm_num [s2Step314EntryFvBefore,s2Step314EntryGAfter,s2Step314EntryFvFresh,arenaWires]
  · simp only [s2Step314EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step314EntryFv_checked : planRowResizeLog s2Step314EntryFvBefore s2Step314EntryFvRow 172 s2Step314EntryFvFresh=
    some (s2Step314EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩,growRow 770 s2Step314EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step314EntryFvBefore s2Step314EntryFvAfter s2Step314EntryFvRow 172 s2Step314EntryFvFresh
    s2Step314EntryFv_distinct s2Step314EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step314EntryFvRow.payload++s2Step314EntryFvFresh) s2Step314EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step314EntryGBefore : Arena := s2Step314EntryFBefore

private theorem s2Step314EntryG_Incoming : rowsOwned s2Step314EntryGBefore [s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314EntryFRow,s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow] 1 s2Step314EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314EntryG_Outgoing : rowsOwned s2Step314EntryGvAfter [s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut] :=
  hmrRows_owned_drop s2Step314EntryGvAfter [s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut] 1 s2Step314EntryBank_outgoingOwned

private theorem s2Step314EntryG_distinct : (s2Step314EntryGRow.sign::s2Step314EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314EntryG_owned : (s2Step314EntryGRow.sign::s2Step314EntryGRow.payload).toFinset⊆s2Step314EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EntryG_reserved : s2Step314EntryGBefore.reserve s2Step314EntryGFresh.toFinset=some s2Step314EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step314EntryGFresh,arenaWires]
  · norm_num [s2Step314EntryGBefore,s2Step314EntryFBefore,s2Step314EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step314EntryGAfter,s2Step314EntryGBefore,s2Step314EntryFBefore,s2Step314EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step314EntryG_checked : planRowResizeLog s2Step314EntryGBefore s2Step314EntryGRow 114 s2Step314EntryGFresh=
    some (s2Step314EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837],769⟩,growRow 769 s2Step314EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step314EntryGBefore s2Step314EntryGAfter s2Step314EntryGRow 114 s2Step314EntryGFresh
    s2Step314EntryG_distinct s2Step314EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314EntryG_reserved
  have rowEq : WindowRow.mk (s2Step314EntryGRow.payload++s2Step314EntryGFresh) s2Step314EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step314EntryGvBefore : Arena := s2Step314EntryGAfter

private theorem s2Step314EntryGv_Incoming : rowsOwned s2Step314EntryGvBefore [s2Step314EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314EntryFRow,s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow] 3 s2Step314EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314EntryGv_Outgoing : rowsOwned s2Step314EntryGvAfter [s2Step314EntryGvOut] :=
  hmrRows_owned_drop s2Step314EntryGvAfter [s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut] 3 s2Step314EntryBank_outgoingOwned

private theorem s2Step314EntryGv_distinct : (s2Step314EntryGvRow.sign::s2Step314EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314EntryGv_owned : (s2Step314EntryGvRow.sign::s2Step314EntryGvRow.payload).toFinset⊆s2Step314EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314EntryGv_reserved : s2Step314EntryGvBefore.reserve s2Step314EntryGvFresh.toFinset=some s2Step314EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step314EntryGvFresh,arenaWires]
  · norm_num [s2Step314EntryGvBefore,s2Step314EntryGAfter,s2Step314EntryGvFresh,arenaWires]
  · simp only [s2Step314EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step314EntryGv_checked : planRowResizeLog s2Step314EntryGvBefore s2Step314EntryGvRow 172 s2Step314EntryGvFresh=
    some (s2Step314EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩,growRow 771 s2Step314EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step314EntryGvBefore s2Step314EntryGvAfter s2Step314EntryGvRow 172 s2Step314EntryGvFresh
    s2Step314EntryGv_distinct s2Step314EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step314EntryGvRow.payload++s2Step314EntryGvFresh) s2Step314EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step314EntryBank_rows : planWindowRowsLog s2Step314EntryFBefore [(s2Step314EntryFRow,114),(s2Step314EntryGRow,114),(s2Step314EntryFvRow,172),(s2Step314EntryGvRow,172)] [s2Step314EntryFFresh,s2Step314EntryGFresh,s2Step314EntryFvFresh,s2Step314EntryGvFresh]=
    some (s2Step314EntryGvAfter,[s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut],(growRow 768 s2Step314EntryFFresh ++ (growRow 769 s2Step314EntryGFresh ++ (growRow 770 s2Step314EntryFvFresh ++ (growRow 771 s2Step314EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step314EntryGvAfter [] []=some (s2Step314EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step314EntryGvBefore s2Step314EntryGvAfter s2Step314EntryGvAfter
    s2Step314EntryGvRow s2Step314EntryGvOut 172 s2Step314EntryGvFresh [] [] []
    (growRow 771 s2Step314EntryGvFresh) ([]) s2Step314EntryGv_Incoming s2Step314EntryGv_checked h4 s2Step314EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step314EntryFvBefore s2Step314EntryFvAfter s2Step314EntryGvAfter
    s2Step314EntryFvRow s2Step314EntryFvOut 172 s2Step314EntryFvFresh [(s2Step314EntryGvRow,172)] [s2Step314EntryGvFresh] [s2Step314EntryGvOut]
    (growRow 770 s2Step314EntryFvFresh) ((growRow 771 s2Step314EntryGvFresh ++ [])) s2Step314EntryFv_Incoming s2Step314EntryFv_checked h3 s2Step314EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step314EntryGBefore s2Step314EntryGAfter s2Step314EntryGvAfter
    s2Step314EntryGRow s2Step314EntryGOut 114 s2Step314EntryGFresh [(s2Step314EntryFvRow,172),(s2Step314EntryGvRow,172)] [s2Step314EntryFvFresh,s2Step314EntryGvFresh] [s2Step314EntryFvOut,s2Step314EntryGvOut]
    (growRow 769 s2Step314EntryGFresh) ((growRow 770 s2Step314EntryFvFresh ++ (growRow 771 s2Step314EntryGvFresh ++ []))) s2Step314EntryG_Incoming s2Step314EntryG_checked h2 s2Step314EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step314EntryFBefore s2Step314EntryFAfter s2Step314EntryGvAfter
    s2Step314EntryFRow s2Step314EntryFOut 114 s2Step314EntryFFresh [(s2Step314EntryGRow,114),(s2Step314EntryFvRow,172),(s2Step314EntryGvRow,172)] [s2Step314EntryGFresh,s2Step314EntryFvFresh,s2Step314EntryGvFresh] [s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut]
    (growRow 768 s2Step314EntryFFresh) ((growRow 769 s2Step314EntryGFresh ++ (growRow 770 s2Step314EntryFvFresh ++ (growRow 771 s2Step314EntryGvFresh ++ [])))) s2Step314EntryF_Incoming s2Step314EntryF_checked h1 s2Step314EntryF_Outgoing
  exact h0

private theorem s2Step314EntryBank_checked : compileHmrBankResizeLog .entry s2Step314EntryFBefore ⟨s2Step314EntryFRow,s2Step314EntryGRow,s2Step314EntryFvRow,s2Step314EntryGvRow⟩ ⟨114,114,172,172⟩ [s2Step314EntryFFresh,s2Step314EntryGFresh,s2Step314EntryFvFresh,s2Step314EntryGvFresh]=
    some (s2Step314EntryGvAfter,⟨s2Step314EntryFOut,s2Step314EntryGOut,s2Step314EntryFvOut,s2Step314EntryGvOut⟩,(growRow 768 s2Step314EntryFFresh ++ (growRow 769 s2Step314EntryGFresh ++ (growRow 770 s2Step314EntryFvFresh ++ (growRow 771 s2Step314EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step314EntryBank_rows]
  rfl

private def s2Step314ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<625) ∨ (626≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314ExitFBefore : Arena := s2Step314ExitGAfter

private def s2Step314ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 787],768⟩

private def s2Step314ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩

private def s2Step314ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837, 834],769⟩

private def s2Step314ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 824],771⟩

private theorem s2Step314ExitBank_incomingDistinct : ([s2Step314ExitGRow,s2Step314ExitFRow,s2Step314ExitFvRow,s2Step314ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314ExitF_Incoming : rowsOwned s2Step314ExitFBefore [s2Step314ExitFRow,s2Step314ExitFvRow,s2Step314ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314ExitGRow,s2Step314ExitFRow,s2Step314ExitFvRow,s2Step314ExitGvRow] 1 s2Step314ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314ExitBank_outgoingOwned : rowsOwned s2Step314ExitGvAfter [s2Step314ExitGOut,s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step314ExitGvAfter (fun q => (0≤q ∧ q<625) ∨ (626≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314ExitF_Outgoing : rowsOwned s2Step314ExitGvAfter [s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut] :=
  hmrRows_owned_drop s2Step314ExitGvAfter [s2Step314ExitGOut,s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut] 1 s2Step314ExitBank_outgoingOwned

private theorem s2Step314ExitF_distinct : (s2Step314ExitFRow.sign::s2Step314ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314ExitF_owned : (s2Step314ExitFRow.sign::s2Step314ExitFRow.payload).toFinset⊆s2Step314ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314ExitF_retired : s2Step314ExitFBefore.retireSet s2Step314ExitFExtra.toFinset=s2Step314ExitFAfter := by
  unfold Arena.retireSet s2Step314ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step314ExitFBefore,s2Step314ExitGAfter,s2Step314ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step314ExitF_checked : planRowResizeLog s2Step314ExitFBefore s2Step314ExitFRow 113 []=
    some (s2Step314ExitFAfter,s2Step314ExitFOut,shrinkRow 768 s2Step314ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step314ExitFBefore s2Step314ExitFRow 113 s2Step314ExitF_distinct s2Step314ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step314ExitFRow.payload.take 113) s2Step314ExitFRow.sign=s2Step314ExitFOut := by decide +kernel
  have hi : s2Step314ExitFRow.payload.drop 113=s2Step314ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step314ExitF_retired] at result
  exact result

private def s2Step314ExitFvAfter : Arena := s2Step314ExitFAfter

private def s2Step314ExitFvBefore : Arena := s2Step314ExitFAfter

private theorem s2Step314ExitFv_Incoming : rowsOwned s2Step314ExitFvBefore [s2Step314ExitFvRow,s2Step314ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314ExitGRow,s2Step314ExitFRow,s2Step314ExitFvRow,s2Step314ExitGvRow] 2 s2Step314ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314ExitFvBefore (fun q => (0≤q ∧ q<625) ∨ (626≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314ExitFv_Outgoing : rowsOwned s2Step314ExitGvAfter [s2Step314ExitFvOut,s2Step314ExitGvOut] :=
  hmrRows_owned_drop s2Step314ExitGvAfter [s2Step314ExitGOut,s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut] 2 s2Step314ExitBank_outgoingOwned

private theorem s2Step314ExitFv_distinct : (s2Step314ExitFvRow.sign::s2Step314ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314ExitFv_owned : (s2Step314ExitFvRow.sign::s2Step314ExitFvRow.payload).toFinset⊆s2Step314ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314ExitFvBefore (fun q => (0≤q ∧ q<625) ∨ (626≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314ExitFv_reserved : s2Step314ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step314ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step314ExitFv_checked : planRowResizeLog s2Step314ExitFvBefore s2Step314ExitFvRow 173 []=
    some (s2Step314ExitFvAfter,s2Step314ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step314ExitFvBefore s2Step314ExitFvAfter s2Step314ExitFvRow 173 []
    s2Step314ExitFv_distinct s2Step314ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step314ExitFvRow.payload++[]) s2Step314ExitFvRow.sign=s2Step314ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step314ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step314ExitG_Incoming : rowsOwned s2Step314ExitGBefore [s2Step314ExitGRow,s2Step314ExitFRow,s2Step314ExitFvRow,s2Step314ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314ExitGRow,s2Step314ExitFRow,s2Step314ExitFvRow,s2Step314ExitGvRow] 0 s2Step314ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314ExitG_Outgoing : rowsOwned s2Step314ExitGvAfter [s2Step314ExitGOut,s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut] :=
  hmrRows_owned_drop s2Step314ExitGvAfter [s2Step314ExitGOut,s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut] 0 s2Step314ExitBank_outgoingOwned

private theorem s2Step314ExitG_distinct : (s2Step314ExitGRow.sign::s2Step314ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314ExitG_owned : (s2Step314ExitGRow.sign::s2Step314ExitGRow.payload).toFinset⊆s2Step314ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314ExitG_retired : s2Step314ExitGBefore.retireSet s2Step314ExitGExtra.toFinset=s2Step314ExitGAfter := by
  unfold Arena.retireSet s2Step314ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step314ExitGBefore,s2Step314ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step314ExitG_checked : planRowResizeLog s2Step314ExitGBefore s2Step314ExitGRow 113 []=
    some (s2Step314ExitGAfter,s2Step314ExitGOut,shrinkRow 769 s2Step314ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step314ExitGBefore s2Step314ExitGRow 113 s2Step314ExitG_distinct s2Step314ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step314ExitGRow.payload.take 113) s2Step314ExitGRow.sign=s2Step314ExitGOut := by decide +kernel
  have hi : s2Step314ExitGRow.payload.drop 113=s2Step314ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step314ExitG_retired] at result
  exact result

private def s2Step314ExitGvBefore : Arena := s2Step314ExitFAfter

private theorem s2Step314ExitGv_Incoming : rowsOwned s2Step314ExitGvBefore [s2Step314ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314ExitGRow,s2Step314ExitFRow,s2Step314ExitFvRow,s2Step314ExitGvRow] 3 s2Step314ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314ExitGvBefore (fun q => (0≤q ∧ q<625) ∨ (626≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314ExitGv_Outgoing : rowsOwned s2Step314ExitGvAfter [s2Step314ExitGvOut] :=
  hmrRows_owned_drop s2Step314ExitGvAfter [s2Step314ExitGOut,s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut] 3 s2Step314ExitBank_outgoingOwned

private theorem s2Step314ExitGv_distinct : (s2Step314ExitGvRow.sign::s2Step314ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314ExitGv_owned : (s2Step314ExitGvRow.sign::s2Step314ExitGvRow.payload).toFinset⊆s2Step314ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314ExitGvBefore (fun q => (0≤q ∧ q<625) ∨ (626≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314ExitGv_retired : s2Step314ExitGvBefore.retireSet s2Step314ExitGvExtra.toFinset=s2Step314ExitGvAfter := by
  unfold Arena.retireSet s2Step314ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step314ExitGvBefore,s2Step314ExitFAfter,s2Step314ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step314ExitGv_checked : planRowResizeLog s2Step314ExitGvBefore s2Step314ExitGvRow 172 []=
    some (s2Step314ExitGvAfter,s2Step314ExitGvOut,shrinkRow 771 s2Step314ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step314ExitGvBefore s2Step314ExitGvRow 172 s2Step314ExitGv_distinct s2Step314ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step314ExitGvRow.payload.take 172) s2Step314ExitGvRow.sign=s2Step314ExitGvOut := by decide +kernel
  have hi : s2Step314ExitGvRow.payload.drop 172=s2Step314ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step314ExitGv_retired] at result
  exact result

private theorem s2Step314ExitBank_rows : planWindowRowsLog s2Step314ExitGBefore [(s2Step314ExitGRow,113),(s2Step314ExitFRow,113),(s2Step314ExitFvRow,173),(s2Step314ExitGvRow,172)] [[],[],[],[]]=
    some (s2Step314ExitGvAfter,[s2Step314ExitGOut,s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut],(shrinkRow 769 s2Step314ExitGExtra ++ (shrinkRow 768 s2Step314ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step314ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step314ExitGvAfter [] []=some (s2Step314ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step314ExitGvBefore s2Step314ExitGvAfter s2Step314ExitGvAfter
    s2Step314ExitGvRow s2Step314ExitGvOut 172 [] [] [] []
    (shrinkRow 771 s2Step314ExitGvExtra) ([]) s2Step314ExitGv_Incoming s2Step314ExitGv_checked h4 s2Step314ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step314ExitFvBefore s2Step314ExitFvAfter s2Step314ExitGvAfter
    s2Step314ExitFvRow s2Step314ExitFvOut 173 [] [(s2Step314ExitGvRow,172)] [[]] [s2Step314ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step314ExitGvExtra ++ [])) s2Step314ExitFv_Incoming s2Step314ExitFv_checked h3 s2Step314ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step314ExitFBefore s2Step314ExitFAfter s2Step314ExitGvAfter
    s2Step314ExitFRow s2Step314ExitFOut 113 [] [(s2Step314ExitFvRow,173),(s2Step314ExitGvRow,172)] [[],[]] [s2Step314ExitFvOut,s2Step314ExitGvOut]
    (shrinkRow 768 s2Step314ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step314ExitGvExtra ++ []))) s2Step314ExitF_Incoming s2Step314ExitF_checked h2 s2Step314ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step314ExitGBefore s2Step314ExitGAfter s2Step314ExitGvAfter
    s2Step314ExitGRow s2Step314ExitGOut 113 [] [(s2Step314ExitFRow,113),(s2Step314ExitFvRow,173),(s2Step314ExitGvRow,172)] [[],[],[]] [s2Step314ExitFOut,s2Step314ExitFvOut,s2Step314ExitGvOut]
    (shrinkRow 769 s2Step314ExitGExtra) ((shrinkRow 768 s2Step314ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step314ExitGvExtra ++ [])))) s2Step314ExitG_Incoming s2Step314ExitG_checked h1 s2Step314ExitG_Outgoing
  exact h0

private theorem s2Step314ExitBank_checked : compileHmrBankResizeLog .exit s2Step314ExitGBefore ⟨s2Step314ExitFRow,s2Step314ExitGRow,s2Step314ExitFvRow,s2Step314ExitGvRow⟩ ⟨113,113,173,172⟩ [[],[],[],[]]=
    some (s2Step314ExitGvAfter,⟨s2Step314ExitFOut,s2Step314ExitGOut,s2Step314ExitFvOut,s2Step314ExitGvOut⟩,(shrinkRow 769 s2Step314ExitGExtra ++ (shrinkRow 768 s2Step314ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step314ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step314ExitBank_rows]
  rfl

private theorem s2Step314Add0_apart : Disjoint s2Step314Add0Arena.live s2Step314Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step314Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314Add0_card : s2Step314Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step314Add0_borrowed : s2Step314Add0Arena.checkBorrow (hmrHybridCount s2Step314Add0Arena s2Step314Add0B.length) s2Step314Add0Work=some s2Step314Add0During := by
  have len : s2Step314Add0Work.length=hmrHybridCount s2Step314Add0Arena s2Step314Add0B.length := by
    rw [hmrHybridCount,s2Step314Add0_card]
    decide +kernel
  have nd : s2Step314Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step314Add0Arena s2Step314Add0During s2Step314Add0Work.toFinset s2Step314Add0_bounded s2Step314Add0_apart rfl

private theorem s2Step314Add0_distinct : (806::842::846::(s2Step314Add0A++s2Step314Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314Add0_owned : (806::842::846::(s2Step314Add0A++s2Step314Add0B)).toFinset⊆s2Step314Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step314Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314Add0_checked : compileHmrHybridCinLog s2Step314Add0Arena 842 806 846 s2Step314Add0A s2Step314Add0B s2Step314Add0Work=some s2Step314Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step314Add0Arena s2Step314Add0During 842 806 846 s2Step314Add0A s2Step314Add0B s2Step314Add0Work
    (by decide +kernel) (by decide +kernel) s2Step314Add0_distinct
    (fun q hq => s2Step314Add0_owned (List.mem_toFinset.mpr hq)) s2Step314Add0_borrowed

private theorem s2Step314Add1_apart : Disjoint s2Step314Add1Arena.live s2Step314Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step314Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314Add1_card : s2Step314Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step314Add1_borrowed : s2Step314Add1Arena.checkBorrow (hmrHybridCount s2Step314Add1Arena s2Step314Add1B.length) s2Step314Add1Work=some s2Step314Add1During := by
  have len : s2Step314Add1Work.length=hmrHybridCount s2Step314Add1Arena s2Step314Add1B.length := by
    rw [hmrHybridCount,s2Step314Add1_card]
    decide +kernel
  have nd : s2Step314Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step314Add1Arena s2Step314Add1During s2Step314Add1Work.toFinset s2Step314Add1_bounded s2Step314Add1_apart rfl

private theorem s2Step314Add1_distinct : (806::842::846::(s2Step314Add1A++s2Step314Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314Add1_owned : (806::842::846::(s2Step314Add1A++s2Step314Add1B)).toFinset⊆s2Step314Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step314Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314Add1_checked : compileHmrHybridCinLog s2Step314Add1Arena 842 806 846 s2Step314Add1A s2Step314Add1B s2Step314Add1Work=some s2Step314Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step314Add1Arena s2Step314Add1During 842 806 846 s2Step314Add1A s2Step314Add1B s2Step314Add1Work
    (by decide +kernel) (by decide +kernel) s2Step314Add1_distinct
    (fun q hq => s2Step314Add1_owned (List.mem_toFinset.mpr hq)) s2Step314Add1_borrowed

private theorem s2Step314F4_apart : Disjoint (s2Step314Add0A++s2Step314Add0B).toFinset (s2Step314Add1A++s2Step314Add1B).toFinset := by
  have nd : ((s2Step314Add0A++s2Step314Add0B)++(s2Step314Add1A++s2Step314Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step314F4_carry : s2Step314F4FlagArena.checkBorrow 1 [846]=some s2Step314Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step314F4FlagArena,s2Step314HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step314F4FlagArena,s2Step314HeadFvAfter,s2Step314Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step314F4_distinct : (835::842::806::846::((s2Step314Add0A++s2Step314Add1A)++(s2Step314Add0B++s2Step314Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314F4_flag : s2Step314HeadFvAfter.checkBorrow 1 [806]=some s2Step314F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step314HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step314F4_owned : (835::842::((s2Step314Add0A++s2Step314Add1A)++(s2Step314Add0B++s2Step314Add1B))).toFinset⊆s2Step314HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step314HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314F4_checked : compileHmrHybridF4Log s2Step314HeadFvAfter 835 842 s2Step314Add0A s2Step314Add0B s2Step314Add1A s2Step314Add1B [806] [846] s2Step314Add0Work s2Step314Add1Work=some s2Step314F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step314HeadFvAfter s2Step314F4FlagArena s2Step314Add0Arena s2Step314Add0During s2Step314Add1During 835 842
    s2Step314Add0A s2Step314Add0B s2Step314Add1A s2Step314Add1B [806] [846] s2Step314Add0Work s2Step314Add1Work
    (fun q hq => s2Step314F4_owned (List.mem_toFinset.mpr hq)) s2Step314F4_flag s2Step314F4_carry
    s2Step314F4_distinct s2Step314F4_apart s2Step314Add0_checked s2Step314Add1_checked

private theorem s2Step314Front_branch : s2Step314FrontSigmaArena.checkBorrow 1 [842]=some s2Step314HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step314FrontSigmaArena,s2Step314EntryGvAfter,s2Step314EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step314FrontSigmaArena,s2Step314EntryGvAfter,s2Step314EntryGAfter,s2Step314HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step314Front_entry : HmrFrontEntryValid s2Step314EntryFBefore s2Step314FrontBank 114 172 ⟨113,113,173,172⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step314FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step314EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step314EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step314FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step314Front_sigma : s2Step314EntryGvAfter.checkBorrow 1 [835]=some s2Step314FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step314EntryGvAfter,s2Step314EntryGAfter,arenaWires]
  · rfl

private def s2Step314HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314HeadFBefore : Arena := s2Step314HeadGAfter

private def s2Step314HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625],768⟩

private def s2Step314HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793],770⟩

private def s2Step314HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837],769⟩

private def s2Step314HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩

private theorem s2Step314HeadBank_incomingDistinct : ([s2Step314HeadGRow,s2Step314HeadFRow,s2Step314HeadGvRow,s2Step314HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314HeadF_Incoming : rowsOwned s2Step314HeadFBefore [s2Step314HeadFRow,s2Step314HeadGvRow,s2Step314HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314HeadGRow,s2Step314HeadFRow,s2Step314HeadGvRow,s2Step314HeadFvRow] 1 s2Step314HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314HeadBank_outgoingOwned : rowsOwned s2Step314HeadFvAfter [s2Step314HeadGOut,s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step314HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314HeadF_Outgoing : rowsOwned s2Step314HeadFvAfter [s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut] :=
  hmrRows_owned_drop s2Step314HeadFvAfter [s2Step314HeadGOut,s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut] 1 s2Step314HeadBank_outgoingOwned

private theorem s2Step314HeadF_distinct : (s2Step314HeadFRow.sign::s2Step314HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314HeadF_owned : (s2Step314HeadFRow.sign::s2Step314HeadFRow.payload).toFinset⊆s2Step314HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314HeadF_reserved : s2Step314HeadFBefore.reserve s2Step314HeadFFresh.toFinset=some s2Step314HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step314HeadFFresh,arenaWires]
  · norm_num [s2Step314HeadFBefore,s2Step314HeadGAfter,s2Step314HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step314HeadFAfter,s2Step314HeadFBefore,s2Step314HeadGAfter,s2Step314HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step314HeadF_checked : planRowResizeLog s2Step314HeadFBefore s2Step314HeadFRow 115 s2Step314HeadFFresh=
    some (s2Step314HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 787],768⟩,growRow 768 s2Step314HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step314HeadFBefore s2Step314HeadFAfter s2Step314HeadFRow 115 s2Step314HeadFFresh
    s2Step314HeadF_distinct s2Step314HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314HeadF_reserved
  have rowEq : WindowRow.mk (s2Step314HeadFRow.payload++s2Step314HeadFFresh) s2Step314HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step314HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step314HeadFvBefore : Arena := s2Step314HeadGvAfter

private theorem s2Step314HeadFv_Incoming : rowsOwned s2Step314HeadFvBefore [s2Step314HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314HeadGRow,s2Step314HeadFRow,s2Step314HeadGvRow,s2Step314HeadFvRow] 3 s2Step314HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314HeadFv_Outgoing : rowsOwned s2Step314HeadFvAfter [s2Step314HeadFvOut] :=
  hmrRows_owned_drop s2Step314HeadFvAfter [s2Step314HeadGOut,s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut] 3 s2Step314HeadBank_outgoingOwned

private theorem s2Step314HeadFv_distinct : (s2Step314HeadFvRow.sign::s2Step314HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314HeadFv_owned : (s2Step314HeadFvRow.sign::s2Step314HeadFvRow.payload).toFinset⊆s2Step314HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314HeadFv_reserved : s2Step314HeadFvBefore.reserve s2Step314HeadFvFresh.toFinset=some s2Step314HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step314HeadFvFresh,arenaWires]
  · norm_num [s2Step314HeadFvBefore,s2Step314HeadGvAfter,s2Step314HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step314HeadFvAfter,s2Step314HeadFvBefore,s2Step314HeadGvAfter,s2Step314HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step314HeadFv_checked : planRowResizeLog s2Step314HeadFvBefore s2Step314HeadFvRow 173 s2Step314HeadFvFresh=
    some (s2Step314HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩,growRow 770 s2Step314HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step314HeadFvBefore s2Step314HeadFvAfter s2Step314HeadFvRow 173 s2Step314HeadFvFresh
    s2Step314HeadFv_distinct s2Step314HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step314HeadFvRow.payload++s2Step314HeadFvFresh) s2Step314HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 809, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step314HeadG_Incoming : rowsOwned s2Step314HeadGBefore [s2Step314HeadGRow,s2Step314HeadFRow,s2Step314HeadGvRow,s2Step314HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314HeadGRow,s2Step314HeadFRow,s2Step314HeadGvRow,s2Step314HeadFvRow] 0 s2Step314HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314HeadG_Outgoing : rowsOwned s2Step314HeadFvAfter [s2Step314HeadGOut,s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut] :=
  hmrRows_owned_drop s2Step314HeadFvAfter [s2Step314HeadGOut,s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut] 0 s2Step314HeadBank_outgoingOwned

private theorem s2Step314HeadG_distinct : (s2Step314HeadGRow.sign::s2Step314HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314HeadG_owned : (s2Step314HeadGRow.sign::s2Step314HeadGRow.payload).toFinset⊆s2Step314HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314HeadG_reserved : s2Step314HeadGBefore.reserve s2Step314HeadGFresh.toFinset=some s2Step314HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step314HeadGFresh,arenaWires]
  · norm_num [s2Step314HeadGBefore,s2Step314HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step314HeadGAfter,s2Step314HeadGBefore,s2Step314HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step314HeadG_checked : planRowResizeLog s2Step314HeadGBefore s2Step314HeadGRow 115 s2Step314HeadGFresh=
    some (s2Step314HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837, 834],769⟩,growRow 769 s2Step314HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step314HeadGBefore s2Step314HeadGAfter s2Step314HeadGRow 115 s2Step314HeadGFresh
    s2Step314HeadG_distinct s2Step314HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314HeadG_reserved
  have rowEq : WindowRow.mk (s2Step314HeadGRow.payload++s2Step314HeadGFresh) s2Step314HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 837, 834],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step314HeadGvBefore : Arena := s2Step314HeadFAfter

private theorem s2Step314HeadGv_Incoming : rowsOwned s2Step314HeadGvBefore [s2Step314HeadGvRow,s2Step314HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step314HeadGRow,s2Step314HeadFRow,s2Step314HeadGvRow,s2Step314HeadFvRow] 2 s2Step314HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step314HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step314HeadGv_Outgoing : rowsOwned s2Step314HeadFvAfter [s2Step314HeadGvOut,s2Step314HeadFvOut] :=
  hmrRows_owned_drop s2Step314HeadFvAfter [s2Step314HeadGOut,s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut] 2 s2Step314HeadBank_outgoingOwned

private theorem s2Step314HeadGv_distinct : (s2Step314HeadGvRow.sign::s2Step314HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step314HeadGv_owned : (s2Step314HeadGvRow.sign::s2Step314HeadGvRow.payload).toFinset⊆s2Step314HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step314HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<810) ∨ (811≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step314HeadGv_reserved : s2Step314HeadGvBefore.reserve s2Step314HeadGvFresh.toFinset=some s2Step314HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step314HeadGvFresh,arenaWires]
  · norm_num [s2Step314HeadGvBefore,s2Step314HeadFAfter,s2Step314HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step314HeadGvAfter,s2Step314HeadGvBefore,s2Step314HeadFAfter,s2Step314HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step314HeadGv_checked : planRowResizeLog s2Step314HeadGvBefore s2Step314HeadGvRow 173 s2Step314HeadGvFresh=
    some (s2Step314HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 824],771⟩,growRow 771 s2Step314HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step314HeadGvBefore s2Step314HeadGvAfter s2Step314HeadGvRow 173 s2Step314HeadGvFresh
    s2Step314HeadGv_distinct s2Step314HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step314HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step314HeadGvRow.payload++s2Step314HeadGvFresh) s2Step314HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 827, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 824],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step314HeadBank_rows : planWindowRowsLog s2Step314HeadGBefore [(s2Step314HeadGRow,115),(s2Step314HeadFRow,115),(s2Step314HeadGvRow,173),(s2Step314HeadFvRow,173)] [s2Step314HeadGFresh,s2Step314HeadFFresh,s2Step314HeadGvFresh,s2Step314HeadFvFresh]=
    some (s2Step314HeadFvAfter,[s2Step314HeadGOut,s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut],(growRow 769 s2Step314HeadGFresh ++ (growRow 768 s2Step314HeadFFresh ++ (growRow 771 s2Step314HeadGvFresh ++ (growRow 770 s2Step314HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step314HeadFvAfter [] []=some (s2Step314HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step314HeadFvBefore s2Step314HeadFvAfter s2Step314HeadFvAfter
    s2Step314HeadFvRow s2Step314HeadFvOut 173 s2Step314HeadFvFresh [] [] []
    (growRow 770 s2Step314HeadFvFresh) ([]) s2Step314HeadFv_Incoming s2Step314HeadFv_checked h4 s2Step314HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step314HeadGvBefore s2Step314HeadGvAfter s2Step314HeadFvAfter
    s2Step314HeadGvRow s2Step314HeadGvOut 173 s2Step314HeadGvFresh [(s2Step314HeadFvRow,173)] [s2Step314HeadFvFresh] [s2Step314HeadFvOut]
    (growRow 771 s2Step314HeadGvFresh) ((growRow 770 s2Step314HeadFvFresh ++ [])) s2Step314HeadGv_Incoming s2Step314HeadGv_checked h3 s2Step314HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step314HeadFBefore s2Step314HeadFAfter s2Step314HeadFvAfter
    s2Step314HeadFRow s2Step314HeadFOut 115 s2Step314HeadFFresh [(s2Step314HeadGvRow,173),(s2Step314HeadFvRow,173)] [s2Step314HeadGvFresh,s2Step314HeadFvFresh] [s2Step314HeadGvOut,s2Step314HeadFvOut]
    (growRow 768 s2Step314HeadFFresh) ((growRow 771 s2Step314HeadGvFresh ++ (growRow 770 s2Step314HeadFvFresh ++ []))) s2Step314HeadF_Incoming s2Step314HeadF_checked h2 s2Step314HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step314HeadGBefore s2Step314HeadGAfter s2Step314HeadFvAfter
    s2Step314HeadGRow s2Step314HeadGOut 115 s2Step314HeadGFresh [(s2Step314HeadFRow,115),(s2Step314HeadGvRow,173),(s2Step314HeadFvRow,173)] [s2Step314HeadFFresh,s2Step314HeadGvFresh,s2Step314HeadFvFresh] [s2Step314HeadFOut,s2Step314HeadGvOut,s2Step314HeadFvOut]
    (growRow 769 s2Step314HeadGFresh) ((growRow 768 s2Step314HeadFFresh ++ (growRow 771 s2Step314HeadGvFresh ++ (growRow 770 s2Step314HeadFvFresh ++ [])))) s2Step314HeadG_Incoming s2Step314HeadG_checked h1 s2Step314HeadG_Outgoing
  exact h0

private theorem s2Step314HeadBank_checked : compileHmrBankResizeLog .headroom s2Step314HeadGBefore ⟨s2Step314HeadFRow,s2Step314HeadGRow,s2Step314HeadFvRow,s2Step314HeadGvRow⟩ ⟨115,115,173,173⟩ [s2Step314HeadGFresh,s2Step314HeadFFresh,s2Step314HeadGvFresh,s2Step314HeadFvFresh]=
    some (s2Step314HeadFvAfter,⟨s2Step314HeadFOut,s2Step314HeadGOut,s2Step314HeadFvOut,s2Step314HeadGvOut⟩,(growRow 769 s2Step314HeadGFresh ++ (growRow 768 s2Step314HeadFFresh ++ (growRow 771 s2Step314HeadGvFresh ++ (growRow 770 s2Step314HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step314HeadBank_rows]
  rfl

private theorem s2Step314Front_checked : compileHmrSourceFrontLog s2Step314EntryFBefore s2Step314FrontBank 114 172 ⟨113,113,173,172⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step314FrontLog=some s2Step314FrontPlan := by
  have pairEq : s2Step314FrontPair=⟨s2Step314HeadFRow,s2Step314HeadGRow,s2Step314HeadFvRow,s2Step314HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step314FrontHead=⟨s2Step314ExitFRow,s2Step314ExitGRow,s2Step314ExitFvRow,s2Step314ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step314Add0A=s2Step314FrontHead.f.wires := by decide +kernel
  have gEq : s2Step314Add0B=s2Step314FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step314Add1A=s2Step314FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step314Add1B=s2Step314FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step314EntryFBefore s2Step314FrontBank 114 172 ⟨113,113,173,172⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step314FrontLog s2Step314FrontPlan
  · exact s2Step314Front_entry
  · exact s2Step314EntryBank_checked
  · exact s2Step314Front_sigma
  · rfl
  · exact s2Step314Front_branch
  · rfl
  · simpa only [s2Step314FrontPlan,pairEq] using s2Step314HeadBank_checked
  · simpa only [s2Step314FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step314F4_checked
  · exact s2Step314Counter_checked
  · rfl
  · simpa only [s2Step314FrontPlan,headEq] using s2Step314ExitBank_checked

private theorem s2Step314Complete_explicit_checked : compileHmrEarlyStepLog s2Step314EntryFBefore s2Step314FrontBank 114 172 ⟨113,113,173,172⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step314CompleteLog=some s2Step314CompletePlan := by
  let Q := s2Step314EarlyControlPlan
  have hq := s2Step314EarlyControl_plan_checked
  have fv1 : s2Step314CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step314CompleteOut.fv.payload[2]?.getD s2Step314CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step314CompleteOut.fv.payload[3]?.getD s2Step314CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step314CompleteOut.fv.payload[4]?.getD s2Step314CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step314EntryFBefore s2Step314EarlyControlArena s2Step314FrontBank 114 172 ⟨113,113,173,172⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step314CompleteLog s2Step314FrontPlan Q
    s2Step314Front_checked s2Step314Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step314Complete_owned s2Step314Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step314EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 835 s2Step314CompleteOut.fv.second (s2Step314CompleteOut.fv.payload[2]?.getD s2Step314CompleteOut.fv.sign) (s2Step314CompleteOut.fv.payload[3]?.getD s2Step314CompleteOut.fv.sign) (s2Step314CompleteOut.fv.payload[4]?.getD s2Step314CompleteOut.fv.sign) 842 56 s2Step314EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep314Arena : Arena := s2Step314EntryFBefore
def s2PrivateStep314Bank : WindowBank := s2Step314FrontBank
def s2PrivateStep314Spec : HmrSourceWalkStepLog := ⟨114,172,⟨113,113,173,172⟩,56,.early s2Step314CompleteLog⟩
def s2PrivateStep314Plan : HmrSourceStepPlan := .early s2Step314CompletePlan
theorem s2PrivateStep314_source : s2PrivateStep314Spec=s2ObservedLogs304[10] := rfl
theorem s2PrivateStep314_checked : compileHmrSourceStepLog s2PrivateStep314Arena s2PrivateStep314Bank
    s2PrivateStep314Spec.fgWidth s2PrivateStep314Spec.vWidth s2PrivateStep314Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 314 s2PrivateStep314Spec.need none s2PrivateStep314Spec.log=some s2PrivateStep314Plan := by
  change compileHmrSourceStepLog s2Step314EntryFBefore s2Step314FrontBank 114 172 ⟨113,113,173,172⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 314 56 none (.early s2Step314CompleteLog)=some (.early s2Step314CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 314<498)]
  rw [s2Step314Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
