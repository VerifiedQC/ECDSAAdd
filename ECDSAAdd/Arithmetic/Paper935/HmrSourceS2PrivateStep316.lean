import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep314
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

private def s2Step316CompleteMoves : List (Wire × Wire) := [(784,624)]

private def s2Step316EarlyControlLog : HmrEarlyControlLog := ⟨[784, 787, 834, 827, 837],[806],[846],[830, 800, 894, 896, 901, 903],[]⟩

private def s2Step316FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [827], [], [835]],[[837], [834], [787], [824]],[[], [], [], []]⟩,[809],[842],[806],[846],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800]⟩

private def s2Step316CompleteLog : HmrEarlyStepLog := ⟨s2Step316FrontLog,s2Step316CompleteMoves,s2Step316EarlyControlLog⟩

private def s2Step316ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step316ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩

private def s2Step316ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step316ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835],771⟩

private def s2Step316FrontOut : WindowBank := ⟨s2Step316ExitFOut,s2Step316ExitGOut,s2Step316ExitFvOut,s2Step316ExitGvOut⟩

private def s2Step316CompleteOut : WindowBank := s2Step316FrontOut.repacked s2Step316CompleteMoves

private def s2Step316EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step316EarlyControlPositiveArena,[806],s2Step316EarlyControlEqualityArena,[846],⟨⟨809,false⟩,[⟨⟨806,false⟩,846⟩]⟩⟩

private def s2Step316EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,784⟩,⟨⟨774,false⟩,787⟩,⟨⟨775,false⟩,834⟩,⟨⟨776,false⟩,827⟩,⟨⟨777,false⟩,837⟩]⟩

private def s2Step316EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step316EarlyControlZeroArena,s2Step316EarlyControlZeroPlan,s2Step316EarlyControlClassPlan,s2Step316EarlyControlFlagArena,s2Step316EarlyControlFittedArena,s2Step316EarlyControlHistoryArena,s2Step316EarlyControlSigmaArena,s2Step316EarlyControlOutputArena,s2Step316EarlyControlLog⟩

private def s2Step316CounterWork : List Wire := [806, 846, 830, 800]

private theorem s2Step316Counter_bounded : s2Step316CounterWork.toFinset⊆arenaWires := by norm_num [s2Step316CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step316HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316CounterDuring : Arena := ⟨s2Step316HeadFvAfter.live∪s2Step316CounterWork.toFinset,Finset.union_subset s2Step316HeadFvAfter.bounded s2Step316Counter_bounded⟩

private def s2Step316EntryFFresh : List Wire := []

private def s2Step316EntryFvFresh : List Wire := []

private def s2Step316EntryGFresh : List Wire := [827]

private def s2Step316EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EntryGvFresh : List Wire := [835]

private def s2Step316ExitFExtra : List Wire := [624, 834]

private def s2Step316ExitGExtra : List Wire := [827, 837]

private def s2Step316ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<624) ∨ (625≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316ExitGvExtra : List Wire := [787]

private def s2Step316Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step316Add0_bounded : s2Step316Add0Work.toFinset⊆arenaWires := by
  have h : s2Step316Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step316Add0During : Arena := ⟨s2Step316Add0Arena.live∪s2Step316Add0Work.toFinset,Finset.union_subset s2Step316Add0Arena.bounded s2Step316Add0_bounded⟩

private def s2Step316Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step316Add1_bounded : s2Step316Add1Work.toFinset⊆arenaWires := by
  have h : s2Step316Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step316Add1During : Arena := ⟨s2Step316Add1Arena.live∪s2Step316Add1Work.toFinset,Finset.union_subset s2Step316Add1Arena.bounded s2Step316Add1_bounded⟩

private def s2Step316F4FlagArena : Arena := ⟨s2Step316HeadFvAfter.live∪{806},Finset.union_subset s2Step316HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step316F4Plan : HmrHybridF4Plan := ⟨s2Step316F4FlagArena,[806],s2Step316Add0Arena,[846],s2Step316Add0During,s2Step316Add0Work,s2Step316Add1During,s2Step316Add1Work⟩

private def s2Step316HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 834],768⟩

private def s2Step316HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩

private def s2Step316HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827, 837],769⟩

private def s2Step316HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 787],771⟩

private def s2Step316FrontHead : WindowBank := ⟨s2Step316HeadFOut,s2Step316HeadGOut,s2Step316HeadFvOut,s2Step316HeadGvOut⟩

private def s2Step316EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624],768⟩

private def s2Step316EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩

private def s2Step316EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827],769⟩

private def s2Step316EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835],771⟩

private def s2Step316FrontPair : WindowBank := ⟨s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut⟩

private def s2Step316FrontSigmaArena : Arena := ⟨s2Step316EntryGvAfter.live∪{809},Finset.union_subset s2Step316EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step316HeadFFresh : List Wire := [834]

private def s2Step316HeadFvFresh : List Wire := [824]

private def s2Step316HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316HeadGFresh : List Wire := [837]

private def s2Step316HeadGvFresh : List Wire := [787]

private def s2Step316FrontPlan : HmrSourceFront := ⟨s2Step316EntryGvAfter,s2Step316FrontPair,(growRow 768 s2Step316EntryFFresh ++ (growRow 769 s2Step316EntryGFresh ++ (growRow 770 s2Step316EntryFvFresh ++ (growRow 771 s2Step316EntryGvFresh ++ [])))),s2Step316FrontSigmaArena,[809],s2Step316HeadGBefore,[842],
  s2Step316HeadFvAfter,s2Step316FrontHead,(growRow 769 s2Step316HeadGFresh ++ (growRow 768 s2Step316HeadFFresh ++ (growRow 771 s2Step316HeadGvFresh ++ (growRow 770 s2Step316HeadFvFresh ++ [])))),s2Step316F4Plan,s2Step316CounterDuring,s2Step316CounterWork,s2Step316ExitGvAfter,s2Step316FrontOut,(shrinkRow 769 s2Step316ExitGExtra ++ (shrinkRow 768 s2Step316ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step316ExitGvExtra ++ []))))⟩

private def s2Step316CompletePlan : HmrEarlyStepPlan := ⟨s2Step316FrontPlan,s2Step316EarlyControlArena,s2Step316EarlyControlPlan,s2Step316CompleteMoves⟩

private theorem s2Step316Complete_apart : List.Disjoint (s2Step316CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [809, 842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step316CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[809, 842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step316Complete_owned : (s2Step316CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step316CompleteMoveArena : Arena := ⟨s2Step316ExitGvAfter.live∪{624},Finset.union_subset s2Step316ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step316Complete_repack : s2Step316ExitGvAfter.checkRepack s2Step316CompleteMoves=some s2Step316EarlyControlArena := by
  have owned : 784∈s2Step316ExitGvAfter.live := by norm_num [s2Step316ExitGvAfter,arenaWires]
  have reserve : s2Step316ExitGvAfter.reserve {624}=some s2Step316CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step316ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step316CompleteMoveArena.retireSet {784}=s2Step316EarlyControlArena := by
    unfold Arena.retireSet s2Step316EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step316CompleteMoveArena,s2Step316ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step316CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step316CompleteMoveArena.retireSet {784}).checkRepack []=some s2Step316EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step316EarlyControl_branchOwned : ([842] : List Wire).toFinset⊆s2Step316EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_branch : compileHmrBranchRetirement s2Step316EarlyControlSigmaArena 842=some s2Step316EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step316EarlyControl_branchOwned
  · ext q
    simp [s2Step316EarlyControlOutputArena,s2Step316EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step316EarlyControl_classEqualityBorrow : s2Step316EarlyControlPositiveArena.checkBorrow (([809, 806] : List Wire).length-1) s2Step316EarlyControlLog.classWork=some s2Step316EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step316EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step316EarlyControlEqualityArena,s2Step316EarlyControlPositiveArena,s2Step316EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step316EarlyControl_classEqualityOwned : ([809, 806] : List Wire).toFinset⊆s2Step316EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_classEquality : compileHmrEqualityLog s2Step316EarlyControlPositiveArena [809, 806] 0 s2Step316EarlyControlLog.classWork=some (s2Step316EarlyControlEqualityArena,s2Step316EarlyControlLog.classWork,s2Step316EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step316EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step316EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step316EarlyControl_classOwned : ([777, 837, 809] : List Wire).toFinset⊆s2Step316EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_positiveBorrow : s2Step316EarlyControlZeroArena.checkBorrow (1) s2Step316EarlyControlLog.positiveWork=some s2Step316EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step316EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step316EarlyControlPositiveArena,s2Step316EarlyControlZeroArena,s2Step316EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step316EarlyControl_class : compileHmrSourceClassLog s2Step316EarlyControlZeroArena false 777 s2Step316EarlyControlZeroPlan.top 0 809 s2Step316EarlyControlLog.positiveWork s2Step316EarlyControlLog.classWork=some s2Step316EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step316EarlyControlClassPlan s2Step316EarlyControlZeroArena false 777 s2Step316EarlyControlZeroPlan.top 0 809
  constructor
  · decide +kernel
  · exact s2Step316EarlyControl_classOwned
  · exact s2Step316EarlyControl_positiveBorrow
  · exact s2Step316EarlyControl_classEquality

private theorem s2Step316EarlyControl_entryRecordOwned : ([842, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_entrySigmaOwned : ([809, 254] : List Wire).toFinset⊆s2Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_fitBorrow : s2Step316EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step316EarlyControlLog.recordFresh=some s2Step316EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step316EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step316EarlyControlFittedArena,s2Step316EarlyControlFlagArena,s2Step316EarlyControlLog,arenaWires]

private theorem s2Step316EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step316EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlFlagArena (fun q => (0≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_fit : compileHmrRecordGrowLog s2Step316EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step316EarlyControlLog.recordFresh=some s2Step316EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step316EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step316EarlyControl_fitBorrow

private theorem s2Step316EarlyControl_flagsBorrow : s2Step316EarlyControlEqualityArena.checkBorrow (6) s2Step316EarlyControlLog.flagWork=some s2Step316EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step316EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step316EarlyControlFlagArena,s2Step316EarlyControlEqualityArena,s2Step316EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step316EarlyControl_flagsOwned : ([846, 253, 252, 251] : List Wire).toFinset⊆s2Step316EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlEqualityArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_flags : compileHmrFlagsLog s2Step316EarlyControlClassPlan.equalityArena s2Step316EarlyControlClassPlan.equality.top 253 252 251 s2Step316EarlyControlLog.flagWork=some s2Step316EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step316EarlyControl_flagsOwned⟩
  · exact s2Step316EarlyControl_flagsBorrow

private theorem s2Step316EarlyControl_historyBorrow : s2Step316EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step316EarlyControlLog.recordFresh=some s2Step316EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step316EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step316EarlyControlHistoryArena,s2Step316EarlyControlArena,s2Step316EarlyControlLog,arenaWires]

private theorem s2Step316EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_history : compileHmrRecordGrowLog s2Step316EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step316EarlyControlLog.recordFresh=some s2Step316EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step316EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step316EarlyControl_historyBorrow

private theorem s2Step316EarlyControl_sigmaOwned : ([254, 809] : List Wire).toFinset⊆s2Step316EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_sigmaReleaseOwned : ([809] : List Wire).toFinset⊆s2Step316EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_sigmaRelease : s2Step316EarlyControlHistoryArena.release {809} (fun _ => false)=some s2Step316EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step316EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step316EarlyControlSigmaArena,s2Step316EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step316EarlyControl_sigma : compileHmrSigmaDropLog s2Step316EarlyControlHistoryArena false 0 0 254 809 []=some s2Step316EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step316EarlyControl_sigmaOwned⟩
  · exact s2Step316EarlyControl_sigmaRelease

private theorem s2Step316EarlyControl_zeroBorrow : s2Step316EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step316EarlyControlLog.zeroWork=some s2Step316EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step316EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step316EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step316EarlyControlZeroArena,s2Step316EarlyControlArena,s2Step316EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step316EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step316EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step316EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EarlyControl_zero : compileHmrEqualityLog s2Step316EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step316EarlyControlLog.zeroWork=some (s2Step316EarlyControlZeroArena,s2Step316EarlyControlLog.zeroWork,s2Step316EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step316EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step316EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step316EarlyControl_logged : s2Step316EarlyControlPlan.Logged s2Step316EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 842 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step316EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step316EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step316EarlyControl_zero
  · exact s2Step316EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step316EarlyControl_flags
  · exact s2Step316EarlyControl_fit
  · exact s2Step316EarlyControl_history
  · exact s2Step316EarlyControl_sigma
  · exact s2Step316EarlyControl_branch

private theorem s2Step316EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step316EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 842 56 s2Step316EarlyControlLog=some s2Step316EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step316EarlyControlPlan s2Step316EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 842 56 s2Step316EarlyControl_logged

private def s2Step316EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624],768⟩

private def s2Step316EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩

private def s2Step316EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step316EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803],771⟩

private def s2Step316FrontBank : WindowBank := ⟨s2Step316EntryFRow,s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow⟩

private def s2Step316Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 834, 768]

private def s2Step316Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827, 837, 769]

private def s2Step316Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 770]

private def s2Step316Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 787, 771]

private theorem s2Step316Counter_apart : Disjoint s2Step316HeadFvAfter.live s2Step316CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step316HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316Counter_borrowed : s2Step316HeadFvAfter.checkBorrow 4 s2Step316CounterWork=some s2Step316CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step316HeadFvAfter s2Step316CounterDuring s2Step316CounterWork.toFinset s2Step316Counter_bounded s2Step316Counter_apart rfl

private theorem s2Step316Counter_owned : (809::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step316HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step316HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316Counter_checked : compileHmrCounterStepLog s2Step316HeadFvAfter true 809 [772, 773, 774, 775, 776, 777] s2Step316CounterWork=some s2Step316CounterDuring := by
  have owned : ∀q∈809::[772, 773, 774, 775, 776, 777],q∈s2Step316HeadFvAfter.live := fun q hq => s2Step316Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step316Counter_borrowed

private def s2Step316EntryFAfter : Arena := s2Step316EntryFBefore

private theorem s2Step316EntryBank_incomingDistinct : ([s2Step316EntryFRow,s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316EntryF_Incoming : rowsOwned s2Step316EntryFBefore [s2Step316EntryFRow,s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316EntryFRow,s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow] 0 s2Step316EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316EntryBank_outgoingOwned : rowsOwned s2Step316EntryGvAfter [s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step316EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316EntryF_Outgoing : rowsOwned s2Step316EntryGvAfter [s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut] :=
  hmrRows_owned_drop s2Step316EntryGvAfter [s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut] 0 s2Step316EntryBank_outgoingOwned

private theorem s2Step316EntryF_distinct : (s2Step316EntryFRow.sign::s2Step316EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316EntryF_owned : (s2Step316EntryFRow.sign::s2Step316EntryFRow.payload).toFinset⊆s2Step316EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EntryF_reserved : s2Step316EntryFBefore.reserve s2Step316EntryFFresh.toFinset=some s2Step316EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step316EntryFFresh,arenaWires]
  · norm_num [s2Step316EntryFBefore,s2Step316EntryFFresh,arenaWires]
  · simp only [s2Step316EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step316EntryF_checked : planRowResizeLog s2Step316EntryFBefore s2Step316EntryFRow 113 s2Step316EntryFFresh=
    some (s2Step316EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624],768⟩,growRow 768 s2Step316EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step316EntryFBefore s2Step316EntryFAfter s2Step316EntryFRow 113 s2Step316EntryFFresh
    s2Step316EntryF_distinct s2Step316EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316EntryF_reserved
  have rowEq : WindowRow.mk (s2Step316EntryFRow.payload++s2Step316EntryFFresh) s2Step316EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step316EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316EntryFvAfter : Arena := s2Step316EntryGAfter

private def s2Step316EntryFvBefore : Arena := s2Step316EntryGAfter

private theorem s2Step316EntryFv_Incoming : rowsOwned s2Step316EntryFvBefore [s2Step316EntryFvRow,s2Step316EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316EntryFRow,s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow] 2 s2Step316EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316EntryFv_Outgoing : rowsOwned s2Step316EntryGvAfter [s2Step316EntryFvOut,s2Step316EntryGvOut] :=
  hmrRows_owned_drop s2Step316EntryGvAfter [s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut] 2 s2Step316EntryBank_outgoingOwned

private theorem s2Step316EntryFv_distinct : (s2Step316EntryFvRow.sign::s2Step316EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316EntryFv_owned : (s2Step316EntryFvRow.sign::s2Step316EntryFvRow.payload).toFinset⊆s2Step316EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316EntryFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EntryFv_reserved : s2Step316EntryFvBefore.reserve s2Step316EntryFvFresh.toFinset=some s2Step316EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step316EntryFvFresh,arenaWires]
  · norm_num [s2Step316EntryFvBefore,s2Step316EntryGAfter,s2Step316EntryFvFresh,arenaWires]
  · simp only [s2Step316EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step316EntryFv_checked : planRowResizeLog s2Step316EntryFvBefore s2Step316EntryFvRow 173 s2Step316EntryFvFresh=
    some (s2Step316EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩,growRow 770 s2Step316EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step316EntryFvBefore s2Step316EntryFvAfter s2Step316EntryFvRow 173 s2Step316EntryFvFresh
    s2Step316EntryFv_distinct s2Step316EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step316EntryFvRow.payload++s2Step316EntryFvFresh) s2Step316EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step316EntryGBefore : Arena := s2Step316EntryFBefore

private theorem s2Step316EntryG_Incoming : rowsOwned s2Step316EntryGBefore [s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316EntryFRow,s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow] 1 s2Step316EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316EntryG_Outgoing : rowsOwned s2Step316EntryGvAfter [s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut] :=
  hmrRows_owned_drop s2Step316EntryGvAfter [s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut] 1 s2Step316EntryBank_outgoingOwned

private theorem s2Step316EntryG_distinct : (s2Step316EntryGRow.sign::s2Step316EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316EntryG_owned : (s2Step316EntryGRow.sign::s2Step316EntryGRow.payload).toFinset⊆s2Step316EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316EntryGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EntryG_reserved : s2Step316EntryGBefore.reserve s2Step316EntryGFresh.toFinset=some s2Step316EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step316EntryGFresh,arenaWires]
  · norm_num [s2Step316EntryGBefore,s2Step316EntryFBefore,s2Step316EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step316EntryGAfter,s2Step316EntryGBefore,s2Step316EntryFBefore,s2Step316EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step316EntryG_checked : planRowResizeLog s2Step316EntryGBefore s2Step316EntryGRow 113 s2Step316EntryGFresh=
    some (s2Step316EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827],769⟩,growRow 769 s2Step316EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step316EntryGBefore s2Step316EntryGAfter s2Step316EntryGRow 113 s2Step316EntryGFresh
    s2Step316EntryG_distinct s2Step316EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316EntryG_reserved
  have rowEq : WindowRow.mk (s2Step316EntryGRow.payload++s2Step316EntryGFresh) s2Step316EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step316EntryGvBefore : Arena := s2Step316EntryGAfter

private theorem s2Step316EntryGv_Incoming : rowsOwned s2Step316EntryGvBefore [s2Step316EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316EntryFRow,s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow] 3 s2Step316EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316EntryGv_Outgoing : rowsOwned s2Step316EntryGvAfter [s2Step316EntryGvOut] :=
  hmrRows_owned_drop s2Step316EntryGvAfter [s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut] 3 s2Step316EntryBank_outgoingOwned

private theorem s2Step316EntryGv_distinct : (s2Step316EntryGvRow.sign::s2Step316EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316EntryGv_owned : (s2Step316EntryGvRow.sign::s2Step316EntryGvRow.payload).toFinset⊆s2Step316EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316EntryGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316EntryGv_reserved : s2Step316EntryGvBefore.reserve s2Step316EntryGvFresh.toFinset=some s2Step316EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step316EntryGvFresh,arenaWires]
  · norm_num [s2Step316EntryGvBefore,s2Step316EntryGAfter,s2Step316EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step316EntryGvAfter,s2Step316EntryGvBefore,s2Step316EntryGAfter,s2Step316EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step316EntryGv_checked : planRowResizeLog s2Step316EntryGvBefore s2Step316EntryGvRow 173 s2Step316EntryGvFresh=
    some (s2Step316EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835],771⟩,growRow 771 s2Step316EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step316EntryGvBefore s2Step316EntryGvAfter s2Step316EntryGvRow 173 s2Step316EntryGvFresh
    s2Step316EntryGv_distinct s2Step316EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step316EntryGvRow.payload++s2Step316EntryGvFresh) s2Step316EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step316EntryBank_rows : planWindowRowsLog s2Step316EntryFBefore [(s2Step316EntryFRow,113),(s2Step316EntryGRow,113),(s2Step316EntryFvRow,173),(s2Step316EntryGvRow,173)] [s2Step316EntryFFresh,s2Step316EntryGFresh,s2Step316EntryFvFresh,s2Step316EntryGvFresh]=
    some (s2Step316EntryGvAfter,[s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut],(growRow 768 s2Step316EntryFFresh ++ (growRow 769 s2Step316EntryGFresh ++ (growRow 770 s2Step316EntryFvFresh ++ (growRow 771 s2Step316EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step316EntryGvAfter [] []=some (s2Step316EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step316EntryGvBefore s2Step316EntryGvAfter s2Step316EntryGvAfter
    s2Step316EntryGvRow s2Step316EntryGvOut 173 s2Step316EntryGvFresh [] [] []
    (growRow 771 s2Step316EntryGvFresh) ([]) s2Step316EntryGv_Incoming s2Step316EntryGv_checked h4 s2Step316EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step316EntryFvBefore s2Step316EntryFvAfter s2Step316EntryGvAfter
    s2Step316EntryFvRow s2Step316EntryFvOut 173 s2Step316EntryFvFresh [(s2Step316EntryGvRow,173)] [s2Step316EntryGvFresh] [s2Step316EntryGvOut]
    (growRow 770 s2Step316EntryFvFresh) ((growRow 771 s2Step316EntryGvFresh ++ [])) s2Step316EntryFv_Incoming s2Step316EntryFv_checked h3 s2Step316EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step316EntryGBefore s2Step316EntryGAfter s2Step316EntryGvAfter
    s2Step316EntryGRow s2Step316EntryGOut 113 s2Step316EntryGFresh [(s2Step316EntryFvRow,173),(s2Step316EntryGvRow,173)] [s2Step316EntryFvFresh,s2Step316EntryGvFresh] [s2Step316EntryFvOut,s2Step316EntryGvOut]
    (growRow 769 s2Step316EntryGFresh) ((growRow 770 s2Step316EntryFvFresh ++ (growRow 771 s2Step316EntryGvFresh ++ []))) s2Step316EntryG_Incoming s2Step316EntryG_checked h2 s2Step316EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step316EntryFBefore s2Step316EntryFAfter s2Step316EntryGvAfter
    s2Step316EntryFRow s2Step316EntryFOut 113 s2Step316EntryFFresh [(s2Step316EntryGRow,113),(s2Step316EntryFvRow,173),(s2Step316EntryGvRow,173)] [s2Step316EntryGFresh,s2Step316EntryFvFresh,s2Step316EntryGvFresh] [s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut]
    (growRow 768 s2Step316EntryFFresh) ((growRow 769 s2Step316EntryGFresh ++ (growRow 770 s2Step316EntryFvFresh ++ (growRow 771 s2Step316EntryGvFresh ++ [])))) s2Step316EntryF_Incoming s2Step316EntryF_checked h1 s2Step316EntryF_Outgoing
  exact h0

private theorem s2Step316EntryBank_checked : compileHmrBankResizeLog .entry s2Step316EntryFBefore ⟨s2Step316EntryFRow,s2Step316EntryGRow,s2Step316EntryFvRow,s2Step316EntryGvRow⟩ ⟨113,113,173,173⟩ [s2Step316EntryFFresh,s2Step316EntryGFresh,s2Step316EntryFvFresh,s2Step316EntryGvFresh]=
    some (s2Step316EntryGvAfter,⟨s2Step316EntryFOut,s2Step316EntryGOut,s2Step316EntryFvOut,s2Step316EntryGvOut⟩,(growRow 768 s2Step316EntryFFresh ++ (growRow 769 s2Step316EntryGFresh ++ (growRow 770 s2Step316EntryFvFresh ++ (growRow 771 s2Step316EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step316EntryBank_rows]
  rfl

private def s2Step316ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<624) ∨ (625≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316ExitFBefore : Arena := s2Step316ExitGAfter

private def s2Step316ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 834],768⟩

private def s2Step316ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩

private def s2Step316ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827, 837],769⟩

private def s2Step316ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 787],771⟩

private theorem s2Step316ExitBank_incomingDistinct : ([s2Step316ExitGRow,s2Step316ExitFRow,s2Step316ExitFvRow,s2Step316ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316ExitF_Incoming : rowsOwned s2Step316ExitFBefore [s2Step316ExitFRow,s2Step316ExitFvRow,s2Step316ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316ExitGRow,s2Step316ExitFRow,s2Step316ExitFvRow,s2Step316ExitGvRow] 1 s2Step316ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316ExitBank_outgoingOwned : rowsOwned s2Step316ExitGvAfter [s2Step316ExitGOut,s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step316ExitGvAfter (fun q => (0≤q ∧ q<624) ∨ (625≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316ExitF_Outgoing : rowsOwned s2Step316ExitGvAfter [s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut] :=
  hmrRows_owned_drop s2Step316ExitGvAfter [s2Step316ExitGOut,s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut] 1 s2Step316ExitBank_outgoingOwned

private theorem s2Step316ExitF_distinct : (s2Step316ExitFRow.sign::s2Step316ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316ExitF_owned : (s2Step316ExitFRow.sign::s2Step316ExitFRow.payload).toFinset⊆s2Step316ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316ExitFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316ExitF_retired : s2Step316ExitFBefore.retireSet s2Step316ExitFExtra.toFinset=s2Step316ExitFAfter := by
  unfold Arena.retireSet s2Step316ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step316ExitFBefore,s2Step316ExitGAfter,s2Step316ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step316ExitF_checked : planRowResizeLog s2Step316ExitFBefore s2Step316ExitFRow 112 []=
    some (s2Step316ExitFAfter,s2Step316ExitFOut,shrinkRow 768 s2Step316ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step316ExitFBefore s2Step316ExitFRow 112 s2Step316ExitF_distinct s2Step316ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step316ExitFRow.payload.take 112) s2Step316ExitFRow.sign=s2Step316ExitFOut := by decide +kernel
  have hi : s2Step316ExitFRow.payload.drop 112=s2Step316ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step316ExitF_retired] at result
  exact result

private def s2Step316ExitFvAfter : Arena := s2Step316ExitFAfter

private def s2Step316ExitFvBefore : Arena := s2Step316ExitFAfter

private theorem s2Step316ExitFv_Incoming : rowsOwned s2Step316ExitFvBefore [s2Step316ExitFvRow,s2Step316ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316ExitGRow,s2Step316ExitFRow,s2Step316ExitFvRow,s2Step316ExitGvRow] 2 s2Step316ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316ExitFvBefore (fun q => (0≤q ∧ q<624) ∨ (625≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316ExitFv_Outgoing : rowsOwned s2Step316ExitGvAfter [s2Step316ExitFvOut,s2Step316ExitGvOut] :=
  hmrRows_owned_drop s2Step316ExitGvAfter [s2Step316ExitGOut,s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut] 2 s2Step316ExitBank_outgoingOwned

private theorem s2Step316ExitFv_distinct : (s2Step316ExitFvRow.sign::s2Step316ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316ExitFv_owned : (s2Step316ExitFvRow.sign::s2Step316ExitFvRow.payload).toFinset⊆s2Step316ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316ExitFvBefore (fun q => (0≤q ∧ q<624) ∨ (625≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316ExitFv_reserved : s2Step316ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step316ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step316ExitFv_checked : planRowResizeLog s2Step316ExitFvBefore s2Step316ExitFvRow 174 []=
    some (s2Step316ExitFvAfter,s2Step316ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step316ExitFvBefore s2Step316ExitFvAfter s2Step316ExitFvRow 174 []
    s2Step316ExitFv_distinct s2Step316ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step316ExitFvRow.payload++[]) s2Step316ExitFvRow.sign=s2Step316ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step316ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step316ExitG_Incoming : rowsOwned s2Step316ExitGBefore [s2Step316ExitGRow,s2Step316ExitFRow,s2Step316ExitFvRow,s2Step316ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316ExitGRow,s2Step316ExitFRow,s2Step316ExitFvRow,s2Step316ExitGvRow] 0 s2Step316ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316ExitG_Outgoing : rowsOwned s2Step316ExitGvAfter [s2Step316ExitGOut,s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut] :=
  hmrRows_owned_drop s2Step316ExitGvAfter [s2Step316ExitGOut,s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut] 0 s2Step316ExitBank_outgoingOwned

private theorem s2Step316ExitG_distinct : (s2Step316ExitGRow.sign::s2Step316ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316ExitG_owned : (s2Step316ExitGRow.sign::s2Step316ExitGRow.payload).toFinset⊆s2Step316ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316ExitG_retired : s2Step316ExitGBefore.retireSet s2Step316ExitGExtra.toFinset=s2Step316ExitGAfter := by
  unfold Arena.retireSet s2Step316ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step316ExitGBefore,s2Step316ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step316ExitG_checked : planRowResizeLog s2Step316ExitGBefore s2Step316ExitGRow 112 []=
    some (s2Step316ExitGAfter,s2Step316ExitGOut,shrinkRow 769 s2Step316ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step316ExitGBefore s2Step316ExitGRow 112 s2Step316ExitG_distinct s2Step316ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step316ExitGRow.payload.take 112) s2Step316ExitGRow.sign=s2Step316ExitGOut := by decide +kernel
  have hi : s2Step316ExitGRow.payload.drop 112=s2Step316ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step316ExitG_retired] at result
  exact result

private def s2Step316ExitGvBefore : Arena := s2Step316ExitFAfter

private theorem s2Step316ExitGv_Incoming : rowsOwned s2Step316ExitGvBefore [s2Step316ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316ExitGRow,s2Step316ExitFRow,s2Step316ExitFvRow,s2Step316ExitGvRow] 3 s2Step316ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316ExitGvBefore (fun q => (0≤q ∧ q<624) ∨ (625≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316ExitGv_Outgoing : rowsOwned s2Step316ExitGvAfter [s2Step316ExitGvOut] :=
  hmrRows_owned_drop s2Step316ExitGvAfter [s2Step316ExitGOut,s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut] 3 s2Step316ExitBank_outgoingOwned

private theorem s2Step316ExitGv_distinct : (s2Step316ExitGvRow.sign::s2Step316ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316ExitGv_owned : (s2Step316ExitGvRow.sign::s2Step316ExitGvRow.payload).toFinset⊆s2Step316ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316ExitGvBefore (fun q => (0≤q ∧ q<624) ∨ (625≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316ExitGv_retired : s2Step316ExitGvBefore.retireSet s2Step316ExitGvExtra.toFinset=s2Step316ExitGvAfter := by
  unfold Arena.retireSet s2Step316ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step316ExitGvBefore,s2Step316ExitFAfter,s2Step316ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step316ExitGv_checked : planRowResizeLog s2Step316ExitGvBefore s2Step316ExitGvRow 173 []=
    some (s2Step316ExitGvAfter,s2Step316ExitGvOut,shrinkRow 771 s2Step316ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step316ExitGvBefore s2Step316ExitGvRow 173 s2Step316ExitGv_distinct s2Step316ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step316ExitGvRow.payload.take 173) s2Step316ExitGvRow.sign=s2Step316ExitGvOut := by decide +kernel
  have hi : s2Step316ExitGvRow.payload.drop 173=s2Step316ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step316ExitGv_retired] at result
  exact result

private theorem s2Step316ExitBank_rows : planWindowRowsLog s2Step316ExitGBefore [(s2Step316ExitGRow,112),(s2Step316ExitFRow,112),(s2Step316ExitFvRow,174),(s2Step316ExitGvRow,173)] [[],[],[],[]]=
    some (s2Step316ExitGvAfter,[s2Step316ExitGOut,s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut],(shrinkRow 769 s2Step316ExitGExtra ++ (shrinkRow 768 s2Step316ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step316ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step316ExitGvAfter [] []=some (s2Step316ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step316ExitGvBefore s2Step316ExitGvAfter s2Step316ExitGvAfter
    s2Step316ExitGvRow s2Step316ExitGvOut 173 [] [] [] []
    (shrinkRow 771 s2Step316ExitGvExtra) ([]) s2Step316ExitGv_Incoming s2Step316ExitGv_checked h4 s2Step316ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step316ExitFvBefore s2Step316ExitFvAfter s2Step316ExitGvAfter
    s2Step316ExitFvRow s2Step316ExitFvOut 174 [] [(s2Step316ExitGvRow,173)] [[]] [s2Step316ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step316ExitGvExtra ++ [])) s2Step316ExitFv_Incoming s2Step316ExitFv_checked h3 s2Step316ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step316ExitFBefore s2Step316ExitFAfter s2Step316ExitGvAfter
    s2Step316ExitFRow s2Step316ExitFOut 112 [] [(s2Step316ExitFvRow,174),(s2Step316ExitGvRow,173)] [[],[]] [s2Step316ExitFvOut,s2Step316ExitGvOut]
    (shrinkRow 768 s2Step316ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step316ExitGvExtra ++ []))) s2Step316ExitF_Incoming s2Step316ExitF_checked h2 s2Step316ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step316ExitGBefore s2Step316ExitGAfter s2Step316ExitGvAfter
    s2Step316ExitGRow s2Step316ExitGOut 112 [] [(s2Step316ExitFRow,112),(s2Step316ExitFvRow,174),(s2Step316ExitGvRow,173)] [[],[],[]] [s2Step316ExitFOut,s2Step316ExitFvOut,s2Step316ExitGvOut]
    (shrinkRow 769 s2Step316ExitGExtra) ((shrinkRow 768 s2Step316ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step316ExitGvExtra ++ [])))) s2Step316ExitG_Incoming s2Step316ExitG_checked h1 s2Step316ExitG_Outgoing
  exact h0

private theorem s2Step316ExitBank_checked : compileHmrBankResizeLog .exit s2Step316ExitGBefore ⟨s2Step316ExitFRow,s2Step316ExitGRow,s2Step316ExitFvRow,s2Step316ExitGvRow⟩ ⟨112,112,174,173⟩ [[],[],[],[]]=
    some (s2Step316ExitGvAfter,⟨s2Step316ExitFOut,s2Step316ExitGOut,s2Step316ExitFvOut,s2Step316ExitGvOut⟩,(shrinkRow 769 s2Step316ExitGExtra ++ (shrinkRow 768 s2Step316ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step316ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step316ExitBank_rows]
  rfl

private theorem s2Step316Add0_apart : Disjoint s2Step316Add0Arena.live s2Step316Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step316Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316Add0_card : s2Step316Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step316Add0_borrowed : s2Step316Add0Arena.checkBorrow (hmrHybridCount s2Step316Add0Arena s2Step316Add0B.length) s2Step316Add0Work=some s2Step316Add0During := by
  have len : s2Step316Add0Work.length=hmrHybridCount s2Step316Add0Arena s2Step316Add0B.length := by
    rw [hmrHybridCount,s2Step316Add0_card]
    decide +kernel
  have nd : s2Step316Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step316Add0Arena s2Step316Add0During s2Step316Add0Work.toFinset s2Step316Add0_bounded s2Step316Add0_apart rfl

private theorem s2Step316Add0_distinct : (806::842::846::(s2Step316Add0A++s2Step316Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316Add0_owned : (806::842::846::(s2Step316Add0A++s2Step316Add0B)).toFinset⊆s2Step316Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step316Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316Add0_checked : compileHmrHybridCinLog s2Step316Add0Arena 842 806 846 s2Step316Add0A s2Step316Add0B s2Step316Add0Work=some s2Step316Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step316Add0Arena s2Step316Add0During 842 806 846 s2Step316Add0A s2Step316Add0B s2Step316Add0Work
    (by decide +kernel) (by decide +kernel) s2Step316Add0_distinct
    (fun q hq => s2Step316Add0_owned (List.mem_toFinset.mpr hq)) s2Step316Add0_borrowed

private theorem s2Step316Add1_apart : Disjoint s2Step316Add1Arena.live s2Step316Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step316Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316Add1_card : s2Step316Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step316Add1_borrowed : s2Step316Add1Arena.checkBorrow (hmrHybridCount s2Step316Add1Arena s2Step316Add1B.length) s2Step316Add1Work=some s2Step316Add1During := by
  have len : s2Step316Add1Work.length=hmrHybridCount s2Step316Add1Arena s2Step316Add1B.length := by
    rw [hmrHybridCount,s2Step316Add1_card]
    decide +kernel
  have nd : s2Step316Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step316Add1Arena s2Step316Add1During s2Step316Add1Work.toFinset s2Step316Add1_bounded s2Step316Add1_apart rfl

private theorem s2Step316Add1_distinct : (806::842::846::(s2Step316Add1A++s2Step316Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316Add1_owned : (806::842::846::(s2Step316Add1A++s2Step316Add1B)).toFinset⊆s2Step316Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step316Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316Add1_checked : compileHmrHybridCinLog s2Step316Add1Arena 842 806 846 s2Step316Add1A s2Step316Add1B s2Step316Add1Work=some s2Step316Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step316Add1Arena s2Step316Add1During 842 806 846 s2Step316Add1A s2Step316Add1B s2Step316Add1Work
    (by decide +kernel) (by decide +kernel) s2Step316Add1_distinct
    (fun q hq => s2Step316Add1_owned (List.mem_toFinset.mpr hq)) s2Step316Add1_borrowed

private theorem s2Step316F4_apart : Disjoint (s2Step316Add0A++s2Step316Add0B).toFinset (s2Step316Add1A++s2Step316Add1B).toFinset := by
  have nd : ((s2Step316Add0A++s2Step316Add0B)++(s2Step316Add1A++s2Step316Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step316F4_carry : s2Step316F4FlagArena.checkBorrow 1 [846]=some s2Step316Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step316F4FlagArena,s2Step316HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step316F4FlagArena,s2Step316HeadFvAfter,s2Step316Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step316F4_distinct : (809::842::806::846::((s2Step316Add0A++s2Step316Add1A)++(s2Step316Add0B++s2Step316Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316F4_flag : s2Step316HeadFvAfter.checkBorrow 1 [806]=some s2Step316F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step316HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step316F4_owned : (809::842::((s2Step316Add0A++s2Step316Add1A)++(s2Step316Add0B++s2Step316Add1B))).toFinset⊆s2Step316HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step316HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316F4_checked : compileHmrHybridF4Log s2Step316HeadFvAfter 809 842 s2Step316Add0A s2Step316Add0B s2Step316Add1A s2Step316Add1B [806] [846] s2Step316Add0Work s2Step316Add1Work=some s2Step316F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step316HeadFvAfter s2Step316F4FlagArena s2Step316Add0Arena s2Step316Add0During s2Step316Add1During 809 842
    s2Step316Add0A s2Step316Add0B s2Step316Add1A s2Step316Add1B [806] [846] s2Step316Add0Work s2Step316Add1Work
    (fun q hq => s2Step316F4_owned (List.mem_toFinset.mpr hq)) s2Step316F4_flag s2Step316F4_carry
    s2Step316F4_distinct s2Step316F4_apart s2Step316Add0_checked s2Step316Add1_checked

private theorem s2Step316Front_branch : s2Step316FrontSigmaArena.checkBorrow 1 [842]=some s2Step316HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step316FrontSigmaArena,s2Step316EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step316FrontSigmaArena,s2Step316EntryGvAfter,s2Step316HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step316Front_entry : HmrFrontEntryValid s2Step316EntryFBefore s2Step316FrontBank 113 173 ⟨112,112,174,173⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step316FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step316EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step316EntryFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<824) ∨ (825≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step316FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step316Front_sigma : s2Step316EntryGvAfter.checkBorrow 1 [809]=some s2Step316FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step316EntryGvAfter,arenaWires]
  · rfl

private def s2Step316HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316HeadFBefore : Arena := s2Step316HeadGAfter

private def s2Step316HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624],768⟩

private def s2Step316HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810],770⟩

private def s2Step316HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827],769⟩

private def s2Step316HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835],771⟩

private theorem s2Step316HeadBank_incomingDistinct : ([s2Step316HeadGRow,s2Step316HeadFRow,s2Step316HeadGvRow,s2Step316HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316HeadF_Incoming : rowsOwned s2Step316HeadFBefore [s2Step316HeadFRow,s2Step316HeadGvRow,s2Step316HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316HeadGRow,s2Step316HeadFRow,s2Step316HeadGvRow,s2Step316HeadFvRow] 1 s2Step316HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316HeadBank_outgoingOwned : rowsOwned s2Step316HeadFvAfter [s2Step316HeadGOut,s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step316HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316HeadF_Outgoing : rowsOwned s2Step316HeadFvAfter [s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut] :=
  hmrRows_owned_drop s2Step316HeadFvAfter [s2Step316HeadGOut,s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut] 1 s2Step316HeadBank_outgoingOwned

private theorem s2Step316HeadF_distinct : (s2Step316HeadFRow.sign::s2Step316HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316HeadF_owned : (s2Step316HeadFRow.sign::s2Step316HeadFRow.payload).toFinset⊆s2Step316HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316HeadF_reserved : s2Step316HeadFBefore.reserve s2Step316HeadFFresh.toFinset=some s2Step316HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step316HeadFFresh,arenaWires]
  · norm_num [s2Step316HeadFBefore,s2Step316HeadGAfter,s2Step316HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step316HeadFAfter,s2Step316HeadFBefore,s2Step316HeadGAfter,s2Step316HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step316HeadF_checked : planRowResizeLog s2Step316HeadFBefore s2Step316HeadFRow 114 s2Step316HeadFFresh=
    some (s2Step316HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 834],768⟩,growRow 768 s2Step316HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step316HeadFBefore s2Step316HeadFAfter s2Step316HeadFRow 114 s2Step316HeadFFresh
    s2Step316HeadF_distinct s2Step316HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316HeadF_reserved
  have rowEq : WindowRow.mk (s2Step316HeadFRow.payload++s2Step316HeadFFresh) s2Step316HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 834],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step316HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step316HeadFvBefore : Arena := s2Step316HeadGvAfter

private theorem s2Step316HeadFv_Incoming : rowsOwned s2Step316HeadFvBefore [s2Step316HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316HeadGRow,s2Step316HeadFRow,s2Step316HeadGvRow,s2Step316HeadFvRow] 3 s2Step316HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316HeadFv_Outgoing : rowsOwned s2Step316HeadFvAfter [s2Step316HeadFvOut] :=
  hmrRows_owned_drop s2Step316HeadFvAfter [s2Step316HeadGOut,s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut] 3 s2Step316HeadBank_outgoingOwned

private theorem s2Step316HeadFv_distinct : (s2Step316HeadFvRow.sign::s2Step316HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316HeadFv_owned : (s2Step316HeadFvRow.sign::s2Step316HeadFvRow.payload).toFinset⊆s2Step316HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316HeadFv_reserved : s2Step316HeadFvBefore.reserve s2Step316HeadFvFresh.toFinset=some s2Step316HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step316HeadFvFresh,arenaWires]
  · norm_num [s2Step316HeadFvBefore,s2Step316HeadGvAfter,s2Step316HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step316HeadFvAfter,s2Step316HeadFvBefore,s2Step316HeadGvAfter,s2Step316HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step316HeadFv_checked : planRowResizeLog s2Step316HeadFvBefore s2Step316HeadFvRow 174 s2Step316HeadFvFresh=
    some (s2Step316HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩,growRow 770 s2Step316HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step316HeadFvBefore s2Step316HeadFvAfter s2Step316HeadFvRow 174 s2Step316HeadFvFresh
    s2Step316HeadFv_distinct s2Step316HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step316HeadFvRow.payload++s2Step316HeadFvFresh) s2Step316HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step316HeadG_Incoming : rowsOwned s2Step316HeadGBefore [s2Step316HeadGRow,s2Step316HeadFRow,s2Step316HeadGvRow,s2Step316HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316HeadGRow,s2Step316HeadFRow,s2Step316HeadGvRow,s2Step316HeadFvRow] 0 s2Step316HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316HeadG_Outgoing : rowsOwned s2Step316HeadFvAfter [s2Step316HeadGOut,s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut] :=
  hmrRows_owned_drop s2Step316HeadFvAfter [s2Step316HeadGOut,s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut] 0 s2Step316HeadBank_outgoingOwned

private theorem s2Step316HeadG_distinct : (s2Step316HeadGRow.sign::s2Step316HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316HeadG_owned : (s2Step316HeadGRow.sign::s2Step316HeadGRow.payload).toFinset⊆s2Step316HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316HeadG_reserved : s2Step316HeadGBefore.reserve s2Step316HeadGFresh.toFinset=some s2Step316HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step316HeadGFresh,arenaWires]
  · norm_num [s2Step316HeadGBefore,s2Step316HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step316HeadGAfter,s2Step316HeadGBefore,s2Step316HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step316HeadG_checked : planRowResizeLog s2Step316HeadGBefore s2Step316HeadGRow 114 s2Step316HeadGFresh=
    some (s2Step316HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827, 837],769⟩,growRow 769 s2Step316HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step316HeadGBefore s2Step316HeadGAfter s2Step316HeadGRow 114 s2Step316HeadGFresh
    s2Step316HeadG_distinct s2Step316HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316HeadG_reserved
  have rowEq : WindowRow.mk (s2Step316HeadGRow.payload++s2Step316HeadGFresh) s2Step316HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 827, 837],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step316HeadGvBefore : Arena := s2Step316HeadFAfter

private theorem s2Step316HeadGv_Incoming : rowsOwned s2Step316HeadGvBefore [s2Step316HeadGvRow,s2Step316HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step316HeadGRow,s2Step316HeadFRow,s2Step316HeadGvRow,s2Step316HeadFvRow] 2 s2Step316HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step316HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step316HeadGv_Outgoing : rowsOwned s2Step316HeadFvAfter [s2Step316HeadGvOut,s2Step316HeadFvOut] :=
  hmrRows_owned_drop s2Step316HeadFvAfter [s2Step316HeadGOut,s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut] 2 s2Step316HeadBank_outgoingOwned

private theorem s2Step316HeadGv_distinct : (s2Step316HeadGvRow.sign::s2Step316HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step316HeadGv_owned : (s2Step316HeadGvRow.sign::s2Step316HeadGvRow.payload).toFinset⊆s2Step316HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step316HeadGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<824) ∨ (825≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step316HeadGv_reserved : s2Step316HeadGvBefore.reserve s2Step316HeadGvFresh.toFinset=some s2Step316HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step316HeadGvFresh,arenaWires]
  · norm_num [s2Step316HeadGvBefore,s2Step316HeadFAfter,s2Step316HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step316HeadGvAfter,s2Step316HeadGvBefore,s2Step316HeadFAfter,s2Step316HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step316HeadGv_checked : planRowResizeLog s2Step316HeadGvBefore s2Step316HeadGvRow 174 s2Step316HeadGvFresh=
    some (s2Step316HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 787],771⟩,growRow 771 s2Step316HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step316HeadGvBefore s2Step316HeadGvAfter s2Step316HeadGvRow 174 s2Step316HeadGvFresh
    s2Step316HeadGv_distinct s2Step316HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step316HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step316HeadGvRow.payload++s2Step316HeadGvFresh) s2Step316HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 784, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step316HeadBank_rows : planWindowRowsLog s2Step316HeadGBefore [(s2Step316HeadGRow,114),(s2Step316HeadFRow,114),(s2Step316HeadGvRow,174),(s2Step316HeadFvRow,174)] [s2Step316HeadGFresh,s2Step316HeadFFresh,s2Step316HeadGvFresh,s2Step316HeadFvFresh]=
    some (s2Step316HeadFvAfter,[s2Step316HeadGOut,s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut],(growRow 769 s2Step316HeadGFresh ++ (growRow 768 s2Step316HeadFFresh ++ (growRow 771 s2Step316HeadGvFresh ++ (growRow 770 s2Step316HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step316HeadFvAfter [] []=some (s2Step316HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step316HeadFvBefore s2Step316HeadFvAfter s2Step316HeadFvAfter
    s2Step316HeadFvRow s2Step316HeadFvOut 174 s2Step316HeadFvFresh [] [] []
    (growRow 770 s2Step316HeadFvFresh) ([]) s2Step316HeadFv_Incoming s2Step316HeadFv_checked h4 s2Step316HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step316HeadGvBefore s2Step316HeadGvAfter s2Step316HeadFvAfter
    s2Step316HeadGvRow s2Step316HeadGvOut 174 s2Step316HeadGvFresh [(s2Step316HeadFvRow,174)] [s2Step316HeadFvFresh] [s2Step316HeadFvOut]
    (growRow 771 s2Step316HeadGvFresh) ((growRow 770 s2Step316HeadFvFresh ++ [])) s2Step316HeadGv_Incoming s2Step316HeadGv_checked h3 s2Step316HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step316HeadFBefore s2Step316HeadFAfter s2Step316HeadFvAfter
    s2Step316HeadFRow s2Step316HeadFOut 114 s2Step316HeadFFresh [(s2Step316HeadGvRow,174),(s2Step316HeadFvRow,174)] [s2Step316HeadGvFresh,s2Step316HeadFvFresh] [s2Step316HeadGvOut,s2Step316HeadFvOut]
    (growRow 768 s2Step316HeadFFresh) ((growRow 771 s2Step316HeadGvFresh ++ (growRow 770 s2Step316HeadFvFresh ++ []))) s2Step316HeadF_Incoming s2Step316HeadF_checked h2 s2Step316HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step316HeadGBefore s2Step316HeadGAfter s2Step316HeadFvAfter
    s2Step316HeadGRow s2Step316HeadGOut 114 s2Step316HeadGFresh [(s2Step316HeadFRow,114),(s2Step316HeadGvRow,174),(s2Step316HeadFvRow,174)] [s2Step316HeadFFresh,s2Step316HeadGvFresh,s2Step316HeadFvFresh] [s2Step316HeadFOut,s2Step316HeadGvOut,s2Step316HeadFvOut]
    (growRow 769 s2Step316HeadGFresh) ((growRow 768 s2Step316HeadFFresh ++ (growRow 771 s2Step316HeadGvFresh ++ (growRow 770 s2Step316HeadFvFresh ++ [])))) s2Step316HeadG_Incoming s2Step316HeadG_checked h1 s2Step316HeadG_Outgoing
  exact h0

private theorem s2Step316HeadBank_checked : compileHmrBankResizeLog .headroom s2Step316HeadGBefore ⟨s2Step316HeadFRow,s2Step316HeadGRow,s2Step316HeadFvRow,s2Step316HeadGvRow⟩ ⟨114,114,174,174⟩ [s2Step316HeadGFresh,s2Step316HeadFFresh,s2Step316HeadGvFresh,s2Step316HeadFvFresh]=
    some (s2Step316HeadFvAfter,⟨s2Step316HeadFOut,s2Step316HeadGOut,s2Step316HeadFvOut,s2Step316HeadGvOut⟩,(growRow 769 s2Step316HeadGFresh ++ (growRow 768 s2Step316HeadFFresh ++ (growRow 771 s2Step316HeadGvFresh ++ (growRow 770 s2Step316HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step316HeadBank_rows]
  rfl

private theorem s2Step316Front_checked : compileHmrSourceFrontLog s2Step316EntryFBefore s2Step316FrontBank 113 173 ⟨112,112,174,173⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step316FrontLog=some s2Step316FrontPlan := by
  have pairEq : s2Step316FrontPair=⟨s2Step316HeadFRow,s2Step316HeadGRow,s2Step316HeadFvRow,s2Step316HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step316FrontHead=⟨s2Step316ExitFRow,s2Step316ExitGRow,s2Step316ExitFvRow,s2Step316ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step316Add0A=s2Step316FrontHead.f.wires := by decide +kernel
  have gEq : s2Step316Add0B=s2Step316FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step316Add1A=s2Step316FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step316Add1B=s2Step316FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step316EntryFBefore s2Step316FrontBank 113 173 ⟨112,112,174,173⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step316FrontLog s2Step316FrontPlan
  · exact s2Step316Front_entry
  · exact s2Step316EntryBank_checked
  · exact s2Step316Front_sigma
  · rfl
  · exact s2Step316Front_branch
  · rfl
  · simpa only [s2Step316FrontPlan,pairEq] using s2Step316HeadBank_checked
  · simpa only [s2Step316FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step316F4_checked
  · exact s2Step316Counter_checked
  · rfl
  · simpa only [s2Step316FrontPlan,headEq] using s2Step316ExitBank_checked

private theorem s2Step316Complete_explicit_checked : compileHmrEarlyStepLog s2Step316EntryFBefore s2Step316FrontBank 113 173 ⟨112,112,174,173⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step316CompleteLog=some s2Step316CompletePlan := by
  let Q := s2Step316EarlyControlPlan
  have hq := s2Step316EarlyControl_plan_checked
  have fv1 : s2Step316CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step316CompleteOut.fv.payload[2]?.getD s2Step316CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step316CompleteOut.fv.payload[3]?.getD s2Step316CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step316CompleteOut.fv.payload[4]?.getD s2Step316CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step316EntryFBefore s2Step316EarlyControlArena s2Step316FrontBank 113 173 ⟨112,112,174,173⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step316CompleteLog s2Step316FrontPlan Q
    s2Step316Front_checked s2Step316Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step316Complete_owned s2Step316Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step316EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 s2Step316CompleteOut.fv.second (s2Step316CompleteOut.fv.payload[2]?.getD s2Step316CompleteOut.fv.sign) (s2Step316CompleteOut.fv.payload[3]?.getD s2Step316CompleteOut.fv.sign) (s2Step316CompleteOut.fv.payload[4]?.getD s2Step316CompleteOut.fv.sign) 842 56 s2Step316EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep316Arena : Arena := s2Step316EntryFBefore
def s2PrivateStep316Bank : WindowBank := s2Step316FrontBank
def s2PrivateStep316Spec : HmrSourceWalkStepLog := ⟨113,173,⟨112,112,174,173⟩,56,.early s2Step316CompleteLog⟩
def s2PrivateStep316Plan : HmrSourceStepPlan := .early s2Step316CompletePlan
theorem s2PrivateStep316_source : s2PrivateStep316Spec=s2ObservedLogs304[12] := rfl
theorem s2PrivateStep316_checked : compileHmrSourceStepLog s2PrivateStep316Arena s2PrivateStep316Bank
    s2PrivateStep316Spec.fgWidth s2PrivateStep316Spec.vWidth s2PrivateStep316Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 316 s2PrivateStep316Spec.need none s2PrivateStep316Spec.log=some s2PrivateStep316Plan := by
  change compileHmrSourceStepLog s2Step316EntryFBefore s2Step316FrontBank 113 173 ⟨112,112,174,173⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 316 56 none (.early s2Step316CompleteLog)=some (.early s2Step316CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 316<498)]
  rw [s2Step316Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
