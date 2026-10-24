import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep315
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

private def s2Step317CompleteMoves : List (Wire × Wire) := []

private def s2Step317EarlyControlLog : HmrEarlyControlLog := ⟨[827, 834, 787, 806, 846],[830],[800],[894, 896, 901, 903, 907, 908],[]⟩

private def s2Step317FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [842]],[[787], [834], [827], [837]],[[], [], [], []]⟩,[809],[784],[806],[846],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 846, 830, 800]⟩

private def s2Step317CompleteLog : HmrEarlyStepLog := ⟨s2Step317FrontLog,s2Step317CompleteMoves,s2Step317EarlyControlLog⟩

private def s2Step317ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step317ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩

private def s2Step317ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step317ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842],771⟩

private def s2Step317FrontOut : WindowBank := ⟨s2Step317ExitFOut,s2Step317ExitGOut,s2Step317ExitFvOut,s2Step317ExitGvOut⟩

private def s2Step317CompleteOut : WindowBank := s2Step317FrontOut.repacked s2Step317CompleteMoves

private def s2Step317EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step317EarlyControlPositiveArena,[830],s2Step317EarlyControlEqualityArena,[800],⟨⟨809,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step317EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,827⟩,⟨⟨774,false⟩,834⟩,⟨⟨775,false⟩,787⟩,⟨⟨776,false⟩,806⟩,⟨⟨777,false⟩,846⟩]⟩

private def s2Step317EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step317EarlyControlZeroArena,s2Step317EarlyControlZeroPlan,s2Step317EarlyControlClassPlan,s2Step317EarlyControlFlagArena,s2Step317EarlyControlFittedArena,s2Step317EarlyControlHistoryArena,s2Step317EarlyControlSigmaArena,s2Step317EarlyControlOutputArena,s2Step317EarlyControlLog⟩

private def s2Step317CounterWork : List Wire := [806, 846, 830, 800]

private theorem s2Step317Counter_bounded : s2Step317CounterWork.toFinset⊆arenaWires := by norm_num [s2Step317CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step317HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317CounterDuring : Arena := ⟨s2Step317HeadFvAfter.live∪s2Step317CounterWork.toFinset,Finset.union_subset s2Step317HeadFvAfter.bounded s2Step317Counter_bounded⟩

private def s2Step317EntryFFresh : List Wire := []

private def s2Step317EntryFvFresh : List Wire := []

private def s2Step317EntryGFresh : List Wire := []

private def s2Step317EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EntryGvFresh : List Wire := [842]

private def s2Step317ExitFExtra : List Wire := [834]

private def s2Step317ExitGExtra : List Wire := [787]

private def s2Step317ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317ExitGvExtra : List Wire := [827]

private def s2Step317Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317Add0Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step317Add0_bounded : s2Step317Add0Work.toFinset⊆arenaWires := by
  have h : s2Step317Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step317Add0During : Arena := ⟨s2Step317Add0Arena.live∪s2Step317Add0Work.toFinset,Finset.union_subset s2Step317Add0Arena.bounded s2Step317Add0_bounded⟩

private def s2Step317Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317Add1Work : List Wire := [830, 800, 894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step317Add1_bounded : s2Step317Add1Work.toFinset⊆arenaWires := by
  have h : s2Step317Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step317Add1During : Arena := ⟨s2Step317Add1Arena.live∪s2Step317Add1Work.toFinset,Finset.union_subset s2Step317Add1Arena.bounded s2Step317Add1_bounded⟩

private def s2Step317F4FlagArena : Arena := ⟨s2Step317HeadFvAfter.live∪{806},Finset.union_subset s2Step317HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step317F4Plan : HmrHybridF4Plan := ⟨s2Step317F4FlagArena,[806],s2Step317Add0Arena,[846],s2Step317Add0During,s2Step317Add0Work,s2Step317Add1During,s2Step317Add1Work⟩

private def s2Step317HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩

private def s2Step317HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩

private def s2Step317HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 787],769⟩

private def s2Step317HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 827],771⟩

private def s2Step317FrontHead : WindowBank := ⟨s2Step317HeadFOut,s2Step317HeadGOut,s2Step317HeadFvOut,s2Step317HeadGvOut⟩

private def s2Step317EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step317EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩

private def s2Step317EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step317EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842],771⟩

private def s2Step317FrontPair : WindowBank := ⟨s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut⟩

private def s2Step317FrontSigmaArena : Arena := ⟨s2Step317EntryGvAfter.live∪{809},Finset.union_subset s2Step317EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step317HeadFFresh : List Wire := [834]

private def s2Step317HeadFvFresh : List Wire := [837]

private def s2Step317HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317HeadGFresh : List Wire := [787]

private def s2Step317HeadGvFresh : List Wire := [827]

private def s2Step317FrontPlan : HmrSourceFront := ⟨s2Step317EntryGvAfter,s2Step317FrontPair,(growRow 768 s2Step317EntryFFresh ++ (growRow 769 s2Step317EntryGFresh ++ (growRow 770 s2Step317EntryFvFresh ++ (growRow 771 s2Step317EntryGvFresh ++ [])))),s2Step317FrontSigmaArena,[809],s2Step317HeadGBefore,[784],
  s2Step317HeadFvAfter,s2Step317FrontHead,(growRow 769 s2Step317HeadGFresh ++ (growRow 768 s2Step317HeadFFresh ++ (growRow 771 s2Step317HeadGvFresh ++ (growRow 770 s2Step317HeadFvFresh ++ [])))),s2Step317F4Plan,s2Step317CounterDuring,s2Step317CounterWork,s2Step317ExitGvAfter,s2Step317FrontOut,(shrinkRow 769 s2Step317ExitGExtra ++ (shrinkRow 768 s2Step317ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step317ExitGvExtra ++ []))))⟩

private def s2Step317CompletePlan : HmrEarlyStepPlan := ⟨s2Step317FrontPlan,s2Step317EarlyControlArena,s2Step317EarlyControlPlan,s2Step317CompleteMoves⟩

private theorem s2Step317Complete_apart : List.Disjoint (s2Step317CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [809, 784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step317CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[809, 784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step317Complete_owned : (s2Step317CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317Complete_repack : s2Step317ExitGvAfter.checkRepack s2Step317CompleteMoves=some s2Step317EarlyControlArena := by rfl

private theorem s2Step317EarlyControl_branchOwned : ([784] : List Wire).toFinset⊆s2Step317EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlSigmaArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_branch : compileHmrBranchRetirement s2Step317EarlyControlSigmaArena 784=some s2Step317EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step317EarlyControl_branchOwned
  · ext q
    simp [s2Step317EarlyControlOutputArena,s2Step317EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step317EarlyControl_classEqualityBorrow : s2Step317EarlyControlPositiveArena.checkBorrow (([809, 830] : List Wire).length-1) s2Step317EarlyControlLog.classWork=some s2Step317EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step317EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step317EarlyControlEqualityArena,s2Step317EarlyControlPositiveArena,s2Step317EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step317EarlyControl_classEqualityOwned : ([809, 830] : List Wire).toFinset⊆s2Step317EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_classEquality : compileHmrEqualityLog s2Step317EarlyControlPositiveArena [809, 830] 0 s2Step317EarlyControlLog.classWork=some (s2Step317EarlyControlEqualityArena,s2Step317EarlyControlLog.classWork,s2Step317EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step317EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step317EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step317EarlyControl_classOwned : ([777, 846, 809] : List Wire).toFinset⊆s2Step317EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_positiveBorrow : s2Step317EarlyControlZeroArena.checkBorrow (1) s2Step317EarlyControlLog.positiveWork=some s2Step317EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step317EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step317EarlyControlPositiveArena,s2Step317EarlyControlZeroArena,s2Step317EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step317EarlyControl_class : compileHmrSourceClassLog s2Step317EarlyControlZeroArena false 777 s2Step317EarlyControlZeroPlan.top 0 809 s2Step317EarlyControlLog.positiveWork s2Step317EarlyControlLog.classWork=some s2Step317EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step317EarlyControlClassPlan s2Step317EarlyControlZeroArena false 777 s2Step317EarlyControlZeroPlan.top 0 809
  constructor
  · decide +kernel
  · exact s2Step317EarlyControl_classOwned
  · exact s2Step317EarlyControl_positiveBorrow
  · exact s2Step317EarlyControl_classEquality

private theorem s2Step317EarlyControl_entryRecordOwned : ([784, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_entrySigmaOwned : ([809, 254] : List Wire).toFinset⊆s2Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_fitBorrow : s2Step317EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step317EarlyControlLog.recordFresh=some s2Step317EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step317EarlyControlFlagArena (fun q => (0≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step317EarlyControlFittedArena,s2Step317EarlyControlFlagArena,s2Step317EarlyControlLog,arenaWires]

private theorem s2Step317EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step317EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlFlagArena (fun q => (0≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_fit : compileHmrRecordGrowLog s2Step317EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step317EarlyControlLog.recordFresh=some s2Step317EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step317EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step317EarlyControl_fitBorrow

private theorem s2Step317EarlyControl_flagsBorrow : s2Step317EarlyControlEqualityArena.checkBorrow (6) s2Step317EarlyControlLog.flagWork=some s2Step317EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step317EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step317EarlyControlFlagArena,s2Step317EarlyControlEqualityArena,s2Step317EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step317EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step317EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_flags : compileHmrFlagsLog s2Step317EarlyControlClassPlan.equalityArena s2Step317EarlyControlClassPlan.equality.top 253 252 251 s2Step317EarlyControlLog.flagWork=some s2Step317EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step317EarlyControl_flagsOwned⟩
  · exact s2Step317EarlyControl_flagsBorrow

private theorem s2Step317EarlyControl_historyBorrow : s2Step317EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step317EarlyControlLog.recordFresh=some s2Step317EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step317EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step317EarlyControlHistoryArena,s2Step317EarlyControlArena,s2Step317EarlyControlLog,arenaWires]

private theorem s2Step317EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_history : compileHmrRecordGrowLog s2Step317EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step317EarlyControlLog.recordFresh=some s2Step317EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step317EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step317EarlyControl_historyBorrow

private theorem s2Step317EarlyControl_sigmaOwned : ([254, 809] : List Wire).toFinset⊆s2Step317EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_sigmaReleaseOwned : ([809] : List Wire).toFinset⊆s2Step317EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_sigmaRelease : s2Step317EarlyControlHistoryArena.release {809} (fun _ => false)=some s2Step317EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step317EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step317EarlyControlSigmaArena,s2Step317EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step317EarlyControl_sigma : compileHmrSigmaDropLog s2Step317EarlyControlHistoryArena false 0 0 254 809 []=some s2Step317EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step317EarlyControl_sigmaOwned⟩
  · exact s2Step317EarlyControl_sigmaRelease

private theorem s2Step317EarlyControl_zeroBorrow : s2Step317EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step317EarlyControlLog.zeroWork=some s2Step317EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step317EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step317EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step317EarlyControlZeroArena,s2Step317EarlyControlArena,s2Step317EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step317EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step317EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step317EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EarlyControl_zero : compileHmrEqualityLog s2Step317EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step317EarlyControlLog.zeroWork=some (s2Step317EarlyControlZeroArena,s2Step317EarlyControlLog.zeroWork,s2Step317EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step317EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step317EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step317EarlyControl_logged : s2Step317EarlyControlPlan.Logged s2Step317EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 784 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step317EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step317EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step317EarlyControl_zero
  · exact s2Step317EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step317EarlyControl_flags
  · exact s2Step317EarlyControl_fit
  · exact s2Step317EarlyControl_history
  · exact s2Step317EarlyControl_sigma
  · exact s2Step317EarlyControl_branch

private theorem s2Step317EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step317EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 784 56 s2Step317EarlyControlLog=some s2Step317EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step317EarlyControlPlan s2Step317EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 784 56 s2Step317EarlyControl_logged

private def s2Step317EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step317EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩

private def s2Step317EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step317EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835],771⟩

private def s2Step317FrontBank : WindowBank := ⟨s2Step317EntryFRow,s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow⟩

private def s2Step317Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834, 768]

private def s2Step317Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 787, 769]

private def s2Step317Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 770]

private def s2Step317Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 827, 771]

private theorem s2Step317Counter_apart : Disjoint s2Step317HeadFvAfter.live s2Step317CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step317HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317Counter_borrowed : s2Step317HeadFvAfter.checkBorrow 4 s2Step317CounterWork=some s2Step317CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step317HeadFvAfter s2Step317CounterDuring s2Step317CounterWork.toFinset s2Step317Counter_bounded s2Step317Counter_apart rfl

private theorem s2Step317Counter_owned : (809::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step317HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step317HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317Counter_checked : compileHmrCounterStepLog s2Step317HeadFvAfter true 809 [772, 773, 774, 775, 776, 777] s2Step317CounterWork=some s2Step317CounterDuring := by
  have owned : ∀q∈809::[772, 773, 774, 775, 776, 777],q∈s2Step317HeadFvAfter.live := fun q hq => s2Step317Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step317Counter_borrowed

private def s2Step317EntryFAfter : Arena := s2Step317EntryFBefore

private theorem s2Step317EntryBank_incomingDistinct : ([s2Step317EntryFRow,s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317EntryF_Incoming : rowsOwned s2Step317EntryFBefore [s2Step317EntryFRow,s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317EntryFRow,s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow] 0 s2Step317EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317EntryBank_outgoingOwned : rowsOwned s2Step317EntryGvAfter [s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step317EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317EntryF_Outgoing : rowsOwned s2Step317EntryGvAfter [s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut] :=
  hmrRows_owned_drop s2Step317EntryGvAfter [s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut] 0 s2Step317EntryBank_outgoingOwned

private theorem s2Step317EntryF_distinct : (s2Step317EntryFRow.sign::s2Step317EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317EntryF_owned : (s2Step317EntryFRow.sign::s2Step317EntryFRow.payload).toFinset⊆s2Step317EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EntryF_reserved : s2Step317EntryFBefore.reserve s2Step317EntryFFresh.toFinset=some s2Step317EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step317EntryFFresh,arenaWires]
  · norm_num [s2Step317EntryFBefore,s2Step317EntryFFresh,arenaWires]
  · simp only [s2Step317EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step317EntryF_checked : planRowResizeLog s2Step317EntryFBefore s2Step317EntryFRow 112 s2Step317EntryFFresh=
    some (s2Step317EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩,growRow 768 s2Step317EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step317EntryFBefore s2Step317EntryFAfter s2Step317EntryFRow 112 s2Step317EntryFFresh
    s2Step317EntryF_distinct s2Step317EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317EntryF_reserved
  have rowEq : WindowRow.mk (s2Step317EntryFRow.payload++s2Step317EntryFFresh) s2Step317EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step317EntryFvAfter : Arena := s2Step317EntryFBefore

private def s2Step317EntryFvBefore : Arena := s2Step317EntryFBefore

private theorem s2Step317EntryFv_Incoming : rowsOwned s2Step317EntryFvBefore [s2Step317EntryFvRow,s2Step317EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317EntryFRow,s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow] 2 s2Step317EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317EntryFv_Outgoing : rowsOwned s2Step317EntryGvAfter [s2Step317EntryFvOut,s2Step317EntryGvOut] :=
  hmrRows_owned_drop s2Step317EntryGvAfter [s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut] 2 s2Step317EntryBank_outgoingOwned

private theorem s2Step317EntryFv_distinct : (s2Step317EntryFvRow.sign::s2Step317EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317EntryFv_owned : (s2Step317EntryFvRow.sign::s2Step317EntryFvRow.payload).toFinset⊆s2Step317EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EntryFv_reserved : s2Step317EntryFvBefore.reserve s2Step317EntryFvFresh.toFinset=some s2Step317EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step317EntryFvFresh,arenaWires]
  · norm_num [s2Step317EntryFvBefore,s2Step317EntryFBefore,s2Step317EntryFvFresh,arenaWires]
  · simp only [s2Step317EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step317EntryFv_checked : planRowResizeLog s2Step317EntryFvBefore s2Step317EntryFvRow 174 s2Step317EntryFvFresh=
    some (s2Step317EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩,growRow 770 s2Step317EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step317EntryFvBefore s2Step317EntryFvAfter s2Step317EntryFvRow 174 s2Step317EntryFvFresh
    s2Step317EntryFv_distinct s2Step317EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step317EntryFvRow.payload++s2Step317EntryFvFresh) s2Step317EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step317EntryGAfter : Arena := s2Step317EntryFBefore

private def s2Step317EntryGBefore : Arena := s2Step317EntryFBefore

private theorem s2Step317EntryG_Incoming : rowsOwned s2Step317EntryGBefore [s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317EntryFRow,s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow] 1 s2Step317EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317EntryG_Outgoing : rowsOwned s2Step317EntryGvAfter [s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut] :=
  hmrRows_owned_drop s2Step317EntryGvAfter [s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut] 1 s2Step317EntryBank_outgoingOwned

private theorem s2Step317EntryG_distinct : (s2Step317EntryGRow.sign::s2Step317EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317EntryG_owned : (s2Step317EntryGRow.sign::s2Step317EntryGRow.payload).toFinset⊆s2Step317EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EntryG_reserved : s2Step317EntryGBefore.reserve s2Step317EntryGFresh.toFinset=some s2Step317EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step317EntryGFresh,arenaWires]
  · norm_num [s2Step317EntryGBefore,s2Step317EntryFBefore,s2Step317EntryGFresh,arenaWires]
  · simp only [s2Step317EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step317EntryG_checked : planRowResizeLog s2Step317EntryGBefore s2Step317EntryGRow 112 s2Step317EntryGFresh=
    some (s2Step317EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩,growRow 769 s2Step317EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step317EntryGBefore s2Step317EntryGAfter s2Step317EntryGRow 112 s2Step317EntryGFresh
    s2Step317EntryG_distinct s2Step317EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317EntryG_reserved
  have rowEq : WindowRow.mk (s2Step317EntryGRow.payload++s2Step317EntryGFresh) s2Step317EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step317EntryGvBefore : Arena := s2Step317EntryFBefore

private theorem s2Step317EntryGv_Incoming : rowsOwned s2Step317EntryGvBefore [s2Step317EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317EntryFRow,s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow] 3 s2Step317EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317EntryGv_Outgoing : rowsOwned s2Step317EntryGvAfter [s2Step317EntryGvOut] :=
  hmrRows_owned_drop s2Step317EntryGvAfter [s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut] 3 s2Step317EntryBank_outgoingOwned

private theorem s2Step317EntryGv_distinct : (s2Step317EntryGvRow.sign::s2Step317EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317EntryGv_owned : (s2Step317EntryGvRow.sign::s2Step317EntryGvRow.payload).toFinset⊆s2Step317EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317EntryGv_reserved : s2Step317EntryGvBefore.reserve s2Step317EntryGvFresh.toFinset=some s2Step317EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step317EntryGvFresh,arenaWires]
  · norm_num [s2Step317EntryGvBefore,s2Step317EntryFBefore,s2Step317EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step317EntryGvAfter,s2Step317EntryGvBefore,s2Step317EntryFBefore,s2Step317EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step317EntryGv_checked : planRowResizeLog s2Step317EntryGvBefore s2Step317EntryGvRow 174 s2Step317EntryGvFresh=
    some (s2Step317EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842],771⟩,growRow 771 s2Step317EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step317EntryGvBefore s2Step317EntryGvAfter s2Step317EntryGvRow 174 s2Step317EntryGvFresh
    s2Step317EntryGv_distinct s2Step317EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step317EntryGvRow.payload++s2Step317EntryGvFresh) s2Step317EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step317EntryBank_rows : planWindowRowsLog s2Step317EntryFBefore [(s2Step317EntryFRow,112),(s2Step317EntryGRow,112),(s2Step317EntryFvRow,174),(s2Step317EntryGvRow,174)] [s2Step317EntryFFresh,s2Step317EntryGFresh,s2Step317EntryFvFresh,s2Step317EntryGvFresh]=
    some (s2Step317EntryGvAfter,[s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut],(growRow 768 s2Step317EntryFFresh ++ (growRow 769 s2Step317EntryGFresh ++ (growRow 770 s2Step317EntryFvFresh ++ (growRow 771 s2Step317EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step317EntryGvAfter [] []=some (s2Step317EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step317EntryGvBefore s2Step317EntryGvAfter s2Step317EntryGvAfter
    s2Step317EntryGvRow s2Step317EntryGvOut 174 s2Step317EntryGvFresh [] [] []
    (growRow 771 s2Step317EntryGvFresh) ([]) s2Step317EntryGv_Incoming s2Step317EntryGv_checked h4 s2Step317EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step317EntryFvBefore s2Step317EntryFvAfter s2Step317EntryGvAfter
    s2Step317EntryFvRow s2Step317EntryFvOut 174 s2Step317EntryFvFresh [(s2Step317EntryGvRow,174)] [s2Step317EntryGvFresh] [s2Step317EntryGvOut]
    (growRow 770 s2Step317EntryFvFresh) ((growRow 771 s2Step317EntryGvFresh ++ [])) s2Step317EntryFv_Incoming s2Step317EntryFv_checked h3 s2Step317EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step317EntryGBefore s2Step317EntryGAfter s2Step317EntryGvAfter
    s2Step317EntryGRow s2Step317EntryGOut 112 s2Step317EntryGFresh [(s2Step317EntryFvRow,174),(s2Step317EntryGvRow,174)] [s2Step317EntryFvFresh,s2Step317EntryGvFresh] [s2Step317EntryFvOut,s2Step317EntryGvOut]
    (growRow 769 s2Step317EntryGFresh) ((growRow 770 s2Step317EntryFvFresh ++ (growRow 771 s2Step317EntryGvFresh ++ []))) s2Step317EntryG_Incoming s2Step317EntryG_checked h2 s2Step317EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step317EntryFBefore s2Step317EntryFAfter s2Step317EntryGvAfter
    s2Step317EntryFRow s2Step317EntryFOut 112 s2Step317EntryFFresh [(s2Step317EntryGRow,112),(s2Step317EntryFvRow,174),(s2Step317EntryGvRow,174)] [s2Step317EntryGFresh,s2Step317EntryFvFresh,s2Step317EntryGvFresh] [s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut]
    (growRow 768 s2Step317EntryFFresh) ((growRow 769 s2Step317EntryGFresh ++ (growRow 770 s2Step317EntryFvFresh ++ (growRow 771 s2Step317EntryGvFresh ++ [])))) s2Step317EntryF_Incoming s2Step317EntryF_checked h1 s2Step317EntryF_Outgoing
  exact h0

private theorem s2Step317EntryBank_checked : compileHmrBankResizeLog .entry s2Step317EntryFBefore ⟨s2Step317EntryFRow,s2Step317EntryGRow,s2Step317EntryFvRow,s2Step317EntryGvRow⟩ ⟨112,112,174,174⟩ [s2Step317EntryFFresh,s2Step317EntryGFresh,s2Step317EntryFvFresh,s2Step317EntryGvFresh]=
    some (s2Step317EntryGvAfter,⟨s2Step317EntryFOut,s2Step317EntryGOut,s2Step317EntryFvOut,s2Step317EntryGvOut⟩,(growRow 768 s2Step317EntryFFresh ++ (growRow 769 s2Step317EntryGFresh ++ (growRow 770 s2Step317EntryFvFresh ++ (growRow 771 s2Step317EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step317EntryBank_rows]
  rfl

private def s2Step317ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317ExitFBefore : Arena := s2Step317ExitGAfter

private def s2Step317ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩

private def s2Step317ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩

private def s2Step317ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 787],769⟩

private def s2Step317ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 827],771⟩

private theorem s2Step317ExitBank_incomingDistinct : ([s2Step317ExitGRow,s2Step317ExitFRow,s2Step317ExitFvRow,s2Step317ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317ExitF_Incoming : rowsOwned s2Step317ExitFBefore [s2Step317ExitFRow,s2Step317ExitFvRow,s2Step317ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317ExitGRow,s2Step317ExitFRow,s2Step317ExitFvRow,s2Step317ExitGvRow] 1 s2Step317ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317ExitBank_outgoingOwned : rowsOwned s2Step317ExitGvAfter [s2Step317ExitGOut,s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step317ExitGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317ExitF_Outgoing : rowsOwned s2Step317ExitGvAfter [s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut] :=
  hmrRows_owned_drop s2Step317ExitGvAfter [s2Step317ExitGOut,s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut] 1 s2Step317ExitBank_outgoingOwned

private theorem s2Step317ExitF_distinct : (s2Step317ExitFRow.sign::s2Step317ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317ExitF_owned : (s2Step317ExitFRow.sign::s2Step317ExitFRow.payload).toFinset⊆s2Step317ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317ExitFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317ExitF_retired : s2Step317ExitFBefore.retireSet s2Step317ExitFExtra.toFinset=s2Step317ExitFAfter := by
  unfold Arena.retireSet s2Step317ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step317ExitFBefore,s2Step317ExitGAfter,s2Step317ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step317ExitF_checked : planRowResizeLog s2Step317ExitFBefore s2Step317ExitFRow 112 []=
    some (s2Step317ExitFAfter,s2Step317ExitFOut,shrinkRow 768 s2Step317ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step317ExitFBefore s2Step317ExitFRow 112 s2Step317ExitF_distinct s2Step317ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step317ExitFRow.payload.take 112) s2Step317ExitFRow.sign=s2Step317ExitFOut := by decide +kernel
  have hi : s2Step317ExitFRow.payload.drop 112=s2Step317ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step317ExitF_retired] at result
  exact result

private def s2Step317ExitFvAfter : Arena := s2Step317ExitFAfter

private def s2Step317ExitFvBefore : Arena := s2Step317ExitFAfter

private theorem s2Step317ExitFv_Incoming : rowsOwned s2Step317ExitFvBefore [s2Step317ExitFvRow,s2Step317ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317ExitGRow,s2Step317ExitFRow,s2Step317ExitFvRow,s2Step317ExitGvRow] 2 s2Step317ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317ExitFv_Outgoing : rowsOwned s2Step317ExitGvAfter [s2Step317ExitFvOut,s2Step317ExitGvOut] :=
  hmrRows_owned_drop s2Step317ExitGvAfter [s2Step317ExitGOut,s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut] 2 s2Step317ExitBank_outgoingOwned

private theorem s2Step317ExitFv_distinct : (s2Step317ExitFvRow.sign::s2Step317ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317ExitFv_owned : (s2Step317ExitFvRow.sign::s2Step317ExitFvRow.payload).toFinset⊆s2Step317ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317ExitFvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317ExitFv_reserved : s2Step317ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step317ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step317ExitFv_checked : planRowResizeLog s2Step317ExitFvBefore s2Step317ExitFvRow 175 []=
    some (s2Step317ExitFvAfter,s2Step317ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step317ExitFvBefore s2Step317ExitFvAfter s2Step317ExitFvRow 175 []
    s2Step317ExitFv_distinct s2Step317ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step317ExitFvRow.payload++[]) s2Step317ExitFvRow.sign=s2Step317ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step317ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step317ExitG_Incoming : rowsOwned s2Step317ExitGBefore [s2Step317ExitGRow,s2Step317ExitFRow,s2Step317ExitFvRow,s2Step317ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317ExitGRow,s2Step317ExitFRow,s2Step317ExitFvRow,s2Step317ExitGvRow] 0 s2Step317ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317ExitG_Outgoing : rowsOwned s2Step317ExitGvAfter [s2Step317ExitGOut,s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut] :=
  hmrRows_owned_drop s2Step317ExitGvAfter [s2Step317ExitGOut,s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut] 0 s2Step317ExitBank_outgoingOwned

private theorem s2Step317ExitG_distinct : (s2Step317ExitGRow.sign::s2Step317ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317ExitG_owned : (s2Step317ExitGRow.sign::s2Step317ExitGRow.payload).toFinset⊆s2Step317ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317ExitG_retired : s2Step317ExitGBefore.retireSet s2Step317ExitGExtra.toFinset=s2Step317ExitGAfter := by
  unfold Arena.retireSet s2Step317ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step317ExitGBefore,s2Step317ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step317ExitG_checked : planRowResizeLog s2Step317ExitGBefore s2Step317ExitGRow 112 []=
    some (s2Step317ExitGAfter,s2Step317ExitGOut,shrinkRow 769 s2Step317ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step317ExitGBefore s2Step317ExitGRow 112 s2Step317ExitG_distinct s2Step317ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step317ExitGRow.payload.take 112) s2Step317ExitGRow.sign=s2Step317ExitGOut := by decide +kernel
  have hi : s2Step317ExitGRow.payload.drop 112=s2Step317ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step317ExitG_retired] at result
  exact result

private def s2Step317ExitGvBefore : Arena := s2Step317ExitFAfter

private theorem s2Step317ExitGv_Incoming : rowsOwned s2Step317ExitGvBefore [s2Step317ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317ExitGRow,s2Step317ExitFRow,s2Step317ExitFvRow,s2Step317ExitGvRow] 3 s2Step317ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317ExitGv_Outgoing : rowsOwned s2Step317ExitGvAfter [s2Step317ExitGvOut] :=
  hmrRows_owned_drop s2Step317ExitGvAfter [s2Step317ExitGOut,s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut] 3 s2Step317ExitBank_outgoingOwned

private theorem s2Step317ExitGv_distinct : (s2Step317ExitGvRow.sign::s2Step317ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317ExitGv_owned : (s2Step317ExitGvRow.sign::s2Step317ExitGvRow.payload).toFinset⊆s2Step317ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317ExitGvBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317ExitGv_retired : s2Step317ExitGvBefore.retireSet s2Step317ExitGvExtra.toFinset=s2Step317ExitGvAfter := by
  unfold Arena.retireSet s2Step317ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step317ExitGvBefore,s2Step317ExitFAfter,s2Step317ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step317ExitGv_checked : planRowResizeLog s2Step317ExitGvBefore s2Step317ExitGvRow 174 []=
    some (s2Step317ExitGvAfter,s2Step317ExitGvOut,shrinkRow 771 s2Step317ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step317ExitGvBefore s2Step317ExitGvRow 174 s2Step317ExitGv_distinct s2Step317ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step317ExitGvRow.payload.take 174) s2Step317ExitGvRow.sign=s2Step317ExitGvOut := by decide +kernel
  have hi : s2Step317ExitGvRow.payload.drop 174=s2Step317ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step317ExitGv_retired] at result
  exact result

private theorem s2Step317ExitBank_rows : planWindowRowsLog s2Step317ExitGBefore [(s2Step317ExitGRow,112),(s2Step317ExitFRow,112),(s2Step317ExitFvRow,175),(s2Step317ExitGvRow,174)] [[],[],[],[]]=
    some (s2Step317ExitGvAfter,[s2Step317ExitGOut,s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut],(shrinkRow 769 s2Step317ExitGExtra ++ (shrinkRow 768 s2Step317ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step317ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step317ExitGvAfter [] []=some (s2Step317ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step317ExitGvBefore s2Step317ExitGvAfter s2Step317ExitGvAfter
    s2Step317ExitGvRow s2Step317ExitGvOut 174 [] [] [] []
    (shrinkRow 771 s2Step317ExitGvExtra) ([]) s2Step317ExitGv_Incoming s2Step317ExitGv_checked h4 s2Step317ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step317ExitFvBefore s2Step317ExitFvAfter s2Step317ExitGvAfter
    s2Step317ExitFvRow s2Step317ExitFvOut 175 [] [(s2Step317ExitGvRow,174)] [[]] [s2Step317ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step317ExitGvExtra ++ [])) s2Step317ExitFv_Incoming s2Step317ExitFv_checked h3 s2Step317ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step317ExitFBefore s2Step317ExitFAfter s2Step317ExitGvAfter
    s2Step317ExitFRow s2Step317ExitFOut 112 [] [(s2Step317ExitFvRow,175),(s2Step317ExitGvRow,174)] [[],[]] [s2Step317ExitFvOut,s2Step317ExitGvOut]
    (shrinkRow 768 s2Step317ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step317ExitGvExtra ++ []))) s2Step317ExitF_Incoming s2Step317ExitF_checked h2 s2Step317ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step317ExitGBefore s2Step317ExitGAfter s2Step317ExitGvAfter
    s2Step317ExitGRow s2Step317ExitGOut 112 [] [(s2Step317ExitFRow,112),(s2Step317ExitFvRow,175),(s2Step317ExitGvRow,174)] [[],[],[]] [s2Step317ExitFOut,s2Step317ExitFvOut,s2Step317ExitGvOut]
    (shrinkRow 769 s2Step317ExitGExtra) ((shrinkRow 768 s2Step317ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step317ExitGvExtra ++ [])))) s2Step317ExitG_Incoming s2Step317ExitG_checked h1 s2Step317ExitG_Outgoing
  exact h0

private theorem s2Step317ExitBank_checked : compileHmrBankResizeLog .exit s2Step317ExitGBefore ⟨s2Step317ExitFRow,s2Step317ExitGRow,s2Step317ExitFvRow,s2Step317ExitGvRow⟩ ⟨112,112,175,174⟩ [[],[],[],[]]=
    some (s2Step317ExitGvAfter,⟨s2Step317ExitFOut,s2Step317ExitGOut,s2Step317ExitFvOut,s2Step317ExitGvOut⟩,(shrinkRow 769 s2Step317ExitGExtra ++ (shrinkRow 768 s2Step317ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step317ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step317ExitBank_rows]
  rfl

private theorem s2Step317Add0_apart : Disjoint s2Step317Add0Arena.live s2Step317Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step317Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317Add0_card : s2Step317Add0Arena.live.card=902 := by
  decide +kernel

private theorem s2Step317Add0_borrowed : s2Step317Add0Arena.checkBorrow (hmrHybridCount s2Step317Add0Arena s2Step317Add0B.length) s2Step317Add0Work=some s2Step317Add0During := by
  have len : s2Step317Add0Work.length=hmrHybridCount s2Step317Add0Arena s2Step317Add0B.length := by
    rw [hmrHybridCount,s2Step317Add0_card]
    decide +kernel
  have nd : s2Step317Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step317Add0Arena s2Step317Add0During s2Step317Add0Work.toFinset s2Step317Add0_bounded s2Step317Add0_apart rfl

private theorem s2Step317Add0_distinct : (806::784::846::(s2Step317Add0A++s2Step317Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317Add0_owned : (806::784::846::(s2Step317Add0A++s2Step317Add0B)).toFinset⊆s2Step317Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step317Add0Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317Add0_checked : compileHmrHybridCinLog s2Step317Add0Arena 784 806 846 s2Step317Add0A s2Step317Add0B s2Step317Add0Work=some s2Step317Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step317Add0Arena s2Step317Add0During 784 806 846 s2Step317Add0A s2Step317Add0B s2Step317Add0Work
    (by decide +kernel) (by decide +kernel) s2Step317Add0_distinct
    (fun q hq => s2Step317Add0_owned (List.mem_toFinset.mpr hq)) s2Step317Add0_borrowed

private theorem s2Step317Add1_apart : Disjoint s2Step317Add1Arena.live s2Step317Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step317Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317Add1_card : s2Step317Add1Arena.live.card=902 := by
  decide +kernel

private theorem s2Step317Add1_borrowed : s2Step317Add1Arena.checkBorrow (hmrHybridCount s2Step317Add1Arena s2Step317Add1B.length) s2Step317Add1Work=some s2Step317Add1During := by
  have len : s2Step317Add1Work.length=hmrHybridCount s2Step317Add1Arena s2Step317Add1B.length := by
    rw [hmrHybridCount,s2Step317Add1_card]
    decide +kernel
  have nd : s2Step317Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step317Add1Arena s2Step317Add1During s2Step317Add1Work.toFinset s2Step317Add1_bounded s2Step317Add1_apart rfl

private theorem s2Step317Add1_distinct : (806::784::846::(s2Step317Add1A++s2Step317Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317Add1_owned : (806::784::846::(s2Step317Add1A++s2Step317Add1B)).toFinset⊆s2Step317Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step317Add1Arena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317Add1_checked : compileHmrHybridCinLog s2Step317Add1Arena 784 806 846 s2Step317Add1A s2Step317Add1B s2Step317Add1Work=some s2Step317Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step317Add1Arena s2Step317Add1During 784 806 846 s2Step317Add1A s2Step317Add1B s2Step317Add1Work
    (by decide +kernel) (by decide +kernel) s2Step317Add1_distinct
    (fun q hq => s2Step317Add1_owned (List.mem_toFinset.mpr hq)) s2Step317Add1_borrowed

private theorem s2Step317F4_apart : Disjoint (s2Step317Add0A++s2Step317Add0B).toFinset (s2Step317Add1A++s2Step317Add1B).toFinset := by
  have nd : ((s2Step317Add0A++s2Step317Add0B)++(s2Step317Add1A++s2Step317Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step317F4_carry : s2Step317F4FlagArena.checkBorrow 1 [846]=some s2Step317Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step317F4FlagArena,s2Step317HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step317F4FlagArena,s2Step317HeadFvAfter,s2Step317Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step317F4_distinct : (809::784::806::846::((s2Step317Add0A++s2Step317Add1A)++(s2Step317Add0B++s2Step317Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317F4_flag : s2Step317HeadFvAfter.checkBorrow 1 [806]=some s2Step317F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step317HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step317F4_owned : (809::784::((s2Step317Add0A++s2Step317Add1A)++(s2Step317Add0B++s2Step317Add1B))).toFinset⊆s2Step317HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step317HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317F4_checked : compileHmrHybridF4Log s2Step317HeadFvAfter 809 784 s2Step317Add0A s2Step317Add0B s2Step317Add1A s2Step317Add1B [806] [846] s2Step317Add0Work s2Step317Add1Work=some s2Step317F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step317HeadFvAfter s2Step317F4FlagArena s2Step317Add0Arena s2Step317Add0During s2Step317Add1During 809 784
    s2Step317Add0A s2Step317Add0B s2Step317Add1A s2Step317Add1B [806] [846] s2Step317Add0Work s2Step317Add1Work
    (fun q hq => s2Step317F4_owned (List.mem_toFinset.mpr hq)) s2Step317F4_flag s2Step317F4_carry
    s2Step317F4_distinct s2Step317F4_apart s2Step317Add0_checked s2Step317Add1_checked

private theorem s2Step317Front_branch : s2Step317FrontSigmaArena.checkBorrow 1 [784]=some s2Step317HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step317FrontSigmaArena,s2Step317EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step317FrontSigmaArena,s2Step317EntryGvAfter,s2Step317HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step317Front_entry : HmrFrontEntryValid s2Step317EntryFBefore s2Step317FrontBank 112 174 ⟨112,112,175,174⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step317FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step317EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step317EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<842) ∨ (843≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step317FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step317Front_sigma : s2Step317EntryGvAfter.checkBorrow 1 [809]=some s2Step317FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step317EntryGvAfter,arenaWires]
  · rfl

private def s2Step317HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317HeadFBefore : Arena := s2Step317HeadGAfter

private def s2Step317HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step317HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824],770⟩

private def s2Step317HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step317HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842],771⟩

private theorem s2Step317HeadBank_incomingDistinct : ([s2Step317HeadGRow,s2Step317HeadFRow,s2Step317HeadGvRow,s2Step317HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317HeadF_Incoming : rowsOwned s2Step317HeadFBefore [s2Step317HeadFRow,s2Step317HeadGvRow,s2Step317HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317HeadGRow,s2Step317HeadFRow,s2Step317HeadGvRow,s2Step317HeadFvRow] 1 s2Step317HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317HeadBank_outgoingOwned : rowsOwned s2Step317HeadFvAfter [s2Step317HeadGOut,s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step317HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317HeadF_Outgoing : rowsOwned s2Step317HeadFvAfter [s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut] :=
  hmrRows_owned_drop s2Step317HeadFvAfter [s2Step317HeadGOut,s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut] 1 s2Step317HeadBank_outgoingOwned

private theorem s2Step317HeadF_distinct : (s2Step317HeadFRow.sign::s2Step317HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317HeadF_owned : (s2Step317HeadFRow.sign::s2Step317HeadFRow.payload).toFinset⊆s2Step317HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317HeadF_reserved : s2Step317HeadFBefore.reserve s2Step317HeadFFresh.toFinset=some s2Step317HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step317HeadFFresh,arenaWires]
  · norm_num [s2Step317HeadFBefore,s2Step317HeadGAfter,s2Step317HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step317HeadFAfter,s2Step317HeadFBefore,s2Step317HeadGAfter,s2Step317HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step317HeadF_checked : planRowResizeLog s2Step317HeadFBefore s2Step317HeadFRow 113 s2Step317HeadFFresh=
    some (s2Step317HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩,growRow 768 s2Step317HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step317HeadFBefore s2Step317HeadFAfter s2Step317HeadFRow 113 s2Step317HeadFFresh
    s2Step317HeadF_distinct s2Step317HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317HeadF_reserved
  have rowEq : WindowRow.mk (s2Step317HeadFRow.payload++s2Step317HeadFFresh) s2Step317HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step317HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step317HeadFvBefore : Arena := s2Step317HeadGvAfter

private theorem s2Step317HeadFv_Incoming : rowsOwned s2Step317HeadFvBefore [s2Step317HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317HeadGRow,s2Step317HeadFRow,s2Step317HeadGvRow,s2Step317HeadFvRow] 3 s2Step317HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317HeadFv_Outgoing : rowsOwned s2Step317HeadFvAfter [s2Step317HeadFvOut] :=
  hmrRows_owned_drop s2Step317HeadFvAfter [s2Step317HeadGOut,s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut] 3 s2Step317HeadBank_outgoingOwned

private theorem s2Step317HeadFv_distinct : (s2Step317HeadFvRow.sign::s2Step317HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317HeadFv_owned : (s2Step317HeadFvRow.sign::s2Step317HeadFvRow.payload).toFinset⊆s2Step317HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317HeadFv_reserved : s2Step317HeadFvBefore.reserve s2Step317HeadFvFresh.toFinset=some s2Step317HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step317HeadFvFresh,arenaWires]
  · norm_num [s2Step317HeadFvBefore,s2Step317HeadGvAfter,s2Step317HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step317HeadFvAfter,s2Step317HeadFvBefore,s2Step317HeadGvAfter,s2Step317HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step317HeadFv_checked : planRowResizeLog s2Step317HeadFvBefore s2Step317HeadFvRow 175 s2Step317HeadFvFresh=
    some (s2Step317HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩,growRow 770 s2Step317HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step317HeadFvBefore s2Step317HeadFvAfter s2Step317HeadFvRow 175 s2Step317HeadFvFresh
    s2Step317HeadFv_distinct s2Step317HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step317HeadFvRow.payload++s2Step317HeadFvFresh) s2Step317HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step317HeadG_Incoming : rowsOwned s2Step317HeadGBefore [s2Step317HeadGRow,s2Step317HeadFRow,s2Step317HeadGvRow,s2Step317HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317HeadGRow,s2Step317HeadFRow,s2Step317HeadGvRow,s2Step317HeadFvRow] 0 s2Step317HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317HeadG_Outgoing : rowsOwned s2Step317HeadFvAfter [s2Step317HeadGOut,s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut] :=
  hmrRows_owned_drop s2Step317HeadFvAfter [s2Step317HeadGOut,s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut] 0 s2Step317HeadBank_outgoingOwned

private theorem s2Step317HeadG_distinct : (s2Step317HeadGRow.sign::s2Step317HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317HeadG_owned : (s2Step317HeadGRow.sign::s2Step317HeadGRow.payload).toFinset⊆s2Step317HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317HeadG_reserved : s2Step317HeadGBefore.reserve s2Step317HeadGFresh.toFinset=some s2Step317HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step317HeadGFresh,arenaWires]
  · norm_num [s2Step317HeadGBefore,s2Step317HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step317HeadGAfter,s2Step317HeadGBefore,s2Step317HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step317HeadG_checked : planRowResizeLog s2Step317HeadGBefore s2Step317HeadGRow 113 s2Step317HeadGFresh=
    some (s2Step317HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 787],769⟩,growRow 769 s2Step317HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step317HeadGBefore s2Step317HeadGAfter s2Step317HeadGRow 113 s2Step317HeadGFresh
    s2Step317HeadG_distinct s2Step317HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317HeadG_reserved
  have rowEq : WindowRow.mk (s2Step317HeadGRow.payload++s2Step317HeadGFresh) s2Step317HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step317HeadGvBefore : Arena := s2Step317HeadFAfter

private theorem s2Step317HeadGv_Incoming : rowsOwned s2Step317HeadGvBefore [s2Step317HeadGvRow,s2Step317HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step317HeadGRow,s2Step317HeadFRow,s2Step317HeadGvRow,s2Step317HeadFvRow] 2 s2Step317HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step317HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step317HeadGv_Outgoing : rowsOwned s2Step317HeadFvAfter [s2Step317HeadGvOut,s2Step317HeadFvOut] :=
  hmrRows_owned_drop s2Step317HeadFvAfter [s2Step317HeadGOut,s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut] 2 s2Step317HeadBank_outgoingOwned

private theorem s2Step317HeadGv_distinct : (s2Step317HeadGvRow.sign::s2Step317HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step317HeadGv_owned : (s2Step317HeadGvRow.sign::s2Step317HeadGvRow.payload).toFinset⊆s2Step317HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step317HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<837) ∨ (838≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step317HeadGv_reserved : s2Step317HeadGvBefore.reserve s2Step317HeadGvFresh.toFinset=some s2Step317HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step317HeadGvFresh,arenaWires]
  · norm_num [s2Step317HeadGvBefore,s2Step317HeadFAfter,s2Step317HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step317HeadGvAfter,s2Step317HeadGvBefore,s2Step317HeadFAfter,s2Step317HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step317HeadGv_checked : planRowResizeLog s2Step317HeadGvBefore s2Step317HeadGvRow 175 s2Step317HeadGvFresh=
    some (s2Step317HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 827],771⟩,growRow 771 s2Step317HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step317HeadGvBefore s2Step317HeadGvAfter s2Step317HeadGvRow 175 s2Step317HeadGvFresh
    s2Step317HeadGv_distinct s2Step317HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step317HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step317HeadGvRow.payload++s2Step317HeadGvFresh) s2Step317HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 827],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step317HeadBank_rows : planWindowRowsLog s2Step317HeadGBefore [(s2Step317HeadGRow,113),(s2Step317HeadFRow,113),(s2Step317HeadGvRow,175),(s2Step317HeadFvRow,175)] [s2Step317HeadGFresh,s2Step317HeadFFresh,s2Step317HeadGvFresh,s2Step317HeadFvFresh]=
    some (s2Step317HeadFvAfter,[s2Step317HeadGOut,s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut],(growRow 769 s2Step317HeadGFresh ++ (growRow 768 s2Step317HeadFFresh ++ (growRow 771 s2Step317HeadGvFresh ++ (growRow 770 s2Step317HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step317HeadFvAfter [] []=some (s2Step317HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step317HeadFvBefore s2Step317HeadFvAfter s2Step317HeadFvAfter
    s2Step317HeadFvRow s2Step317HeadFvOut 175 s2Step317HeadFvFresh [] [] []
    (growRow 770 s2Step317HeadFvFresh) ([]) s2Step317HeadFv_Incoming s2Step317HeadFv_checked h4 s2Step317HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step317HeadGvBefore s2Step317HeadGvAfter s2Step317HeadFvAfter
    s2Step317HeadGvRow s2Step317HeadGvOut 175 s2Step317HeadGvFresh [(s2Step317HeadFvRow,175)] [s2Step317HeadFvFresh] [s2Step317HeadFvOut]
    (growRow 771 s2Step317HeadGvFresh) ((growRow 770 s2Step317HeadFvFresh ++ [])) s2Step317HeadGv_Incoming s2Step317HeadGv_checked h3 s2Step317HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step317HeadFBefore s2Step317HeadFAfter s2Step317HeadFvAfter
    s2Step317HeadFRow s2Step317HeadFOut 113 s2Step317HeadFFresh [(s2Step317HeadGvRow,175),(s2Step317HeadFvRow,175)] [s2Step317HeadGvFresh,s2Step317HeadFvFresh] [s2Step317HeadGvOut,s2Step317HeadFvOut]
    (growRow 768 s2Step317HeadFFresh) ((growRow 771 s2Step317HeadGvFresh ++ (growRow 770 s2Step317HeadFvFresh ++ []))) s2Step317HeadF_Incoming s2Step317HeadF_checked h2 s2Step317HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step317HeadGBefore s2Step317HeadGAfter s2Step317HeadFvAfter
    s2Step317HeadGRow s2Step317HeadGOut 113 s2Step317HeadGFresh [(s2Step317HeadFRow,113),(s2Step317HeadGvRow,175),(s2Step317HeadFvRow,175)] [s2Step317HeadFFresh,s2Step317HeadGvFresh,s2Step317HeadFvFresh] [s2Step317HeadFOut,s2Step317HeadGvOut,s2Step317HeadFvOut]
    (growRow 769 s2Step317HeadGFresh) ((growRow 768 s2Step317HeadFFresh ++ (growRow 771 s2Step317HeadGvFresh ++ (growRow 770 s2Step317HeadFvFresh ++ [])))) s2Step317HeadG_Incoming s2Step317HeadG_checked h1 s2Step317HeadG_Outgoing
  exact h0

private theorem s2Step317HeadBank_checked : compileHmrBankResizeLog .headroom s2Step317HeadGBefore ⟨s2Step317HeadFRow,s2Step317HeadGRow,s2Step317HeadFvRow,s2Step317HeadGvRow⟩ ⟨113,113,175,175⟩ [s2Step317HeadGFresh,s2Step317HeadFFresh,s2Step317HeadGvFresh,s2Step317HeadFvFresh]=
    some (s2Step317HeadFvAfter,⟨s2Step317HeadFOut,s2Step317HeadGOut,s2Step317HeadFvOut,s2Step317HeadGvOut⟩,(growRow 769 s2Step317HeadGFresh ++ (growRow 768 s2Step317HeadFFresh ++ (growRow 771 s2Step317HeadGvFresh ++ (growRow 770 s2Step317HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step317HeadBank_rows]
  rfl

private theorem s2Step317Front_checked : compileHmrSourceFrontLog s2Step317EntryFBefore s2Step317FrontBank 112 174 ⟨112,112,175,174⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step317FrontLog=some s2Step317FrontPlan := by
  have pairEq : s2Step317FrontPair=⟨s2Step317HeadFRow,s2Step317HeadGRow,s2Step317HeadFvRow,s2Step317HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step317FrontHead=⟨s2Step317ExitFRow,s2Step317ExitGRow,s2Step317ExitFvRow,s2Step317ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step317Add0A=s2Step317FrontHead.f.wires := by decide +kernel
  have gEq : s2Step317Add0B=s2Step317FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step317Add1A=s2Step317FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step317Add1B=s2Step317FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step317EntryFBefore s2Step317FrontBank 112 174 ⟨112,112,175,174⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step317FrontLog s2Step317FrontPlan
  · exact s2Step317Front_entry
  · exact s2Step317EntryBank_checked
  · exact s2Step317Front_sigma
  · rfl
  · exact s2Step317Front_branch
  · rfl
  · simpa only [s2Step317FrontPlan,pairEq] using s2Step317HeadBank_checked
  · simpa only [s2Step317FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step317F4_checked
  · exact s2Step317Counter_checked
  · rfl
  · simpa only [s2Step317FrontPlan,headEq] using s2Step317ExitBank_checked

private theorem s2Step317Complete_explicit_checked : compileHmrEarlyStepLog s2Step317EntryFBefore s2Step317FrontBank 112 174 ⟨112,112,175,174⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step317CompleteLog=some s2Step317CompletePlan := by
  let Q := s2Step317EarlyControlPlan
  have hq := s2Step317EarlyControl_plan_checked
  have fv1 : s2Step317CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step317CompleteOut.fv.payload[2]?.getD s2Step317CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step317CompleteOut.fv.payload[3]?.getD s2Step317CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step317CompleteOut.fv.payload[4]?.getD s2Step317CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step317EntryFBefore s2Step317EarlyControlArena s2Step317FrontBank 112 174 ⟨112,112,175,174⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step317CompleteLog s2Step317FrontPlan Q
    s2Step317Front_checked s2Step317Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step317Complete_owned s2Step317Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step317EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 s2Step317CompleteOut.fv.second (s2Step317CompleteOut.fv.payload[2]?.getD s2Step317CompleteOut.fv.sign) (s2Step317CompleteOut.fv.payload[3]?.getD s2Step317CompleteOut.fv.sign) (s2Step317CompleteOut.fv.payload[4]?.getD s2Step317CompleteOut.fv.sign) 784 56 s2Step317EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep317Arena : Arena := s2Step317EntryFBefore
def s2PrivateStep317Bank : WindowBank := s2Step317FrontBank
def s2PrivateStep317Spec : HmrSourceWalkStepLog := ⟨112,174,⟨112,112,175,174⟩,56,.early s2Step317CompleteLog⟩
def s2PrivateStep317Plan : HmrSourceStepPlan := .early s2Step317CompletePlan
theorem s2PrivateStep317_source : s2PrivateStep317Spec=s2ObservedLogs304[13] := rfl
theorem s2PrivateStep317_checked : compileHmrSourceStepLog s2PrivateStep317Arena s2PrivateStep317Bank
    s2PrivateStep317Spec.fgWidth s2PrivateStep317Spec.vWidth s2PrivateStep317Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 317 s2PrivateStep317Spec.need none s2PrivateStep317Spec.log=some s2PrivateStep317Plan := by
  change compileHmrSourceStepLog s2Step317EntryFBefore s2Step317FrontBank 112 174 ⟨112,112,175,174⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 317 56 none (.early s2Step317CompleteLog)=some (.early s2Step317CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 317<498)]
  rw [s2Step317Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
