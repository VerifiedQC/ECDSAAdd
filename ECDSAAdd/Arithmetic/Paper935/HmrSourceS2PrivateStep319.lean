import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep317
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

private def s2Step319CompleteMoves : List (Wire × Wire) := [(792,110)]

private def s2Step319EarlyControlLog : HmrEarlyControlLog := ⟨[792, 807, 830, 800, 834],[827],[787],[894, 896, 901, 903, 907, 908],[910]⟩

private def s2Step319FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [827], [], [809, 807]],[[787], [834], [830], [800]],[[], [], [], []]⟩,[784],[806],[894],[896],[901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903]⟩

private def s2Step319CompleteLog : HmrEarlyStepLog := ⟨s2Step319FrontLog,s2Step319CompleteMoves,s2Step319EarlyControlLog⟩

private def s2Step319ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step319ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step319ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109],769⟩

private def s2Step319ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809],771⟩

private def s2Step319FrontOut : WindowBank := ⟨s2Step319ExitFOut,s2Step319ExitGOut,s2Step319ExitFvOut,s2Step319ExitGvOut⟩

private def s2Step319CompleteOut : WindowBank := s2Step319FrontOut.repacked s2Step319CompleteMoves

private def s2Step319EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step319EarlyControlPositiveArena,[827],s2Step319EarlyControlEqualityArena,[787],⟨⟨784,false⟩,[⟨⟨827,false⟩,787⟩]⟩⟩

private def s2Step319EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,792⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,830⟩,⟨⟨776,false⟩,800⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step319EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step319EarlyControlZeroArena,s2Step319EarlyControlZeroPlan,s2Step319EarlyControlClassPlan,s2Step319EarlyControlFlagArena,s2Step319EarlyControlFittedArena,s2Step319EarlyControlHistoryArena,s2Step319EarlyControlSigmaArena,s2Step319EarlyControlOutputArena,s2Step319EarlyControlLog⟩

private def s2Step319CounterWork : List Wire := [894, 896, 901, 903]

private theorem s2Step319Counter_bounded : s2Step319CounterWork.toFinset⊆arenaWires := by norm_num [s2Step319CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step319HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319CounterDuring : Arena := ⟨s2Step319HeadFvAfter.live∪s2Step319CounterWork.toFinset,Finset.union_subset s2Step319HeadFvAfter.bounded s2Step319Counter_bounded⟩

private def s2Step319EntryFFresh : List Wire := []

private def s2Step319EntryFvFresh : List Wire := []

private def s2Step319EntryGFresh : List Wire := [827]

private def s2Step319EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319EntryGvFresh : List Wire := [809, 807]

private def s2Step319ExitFExtra : List Wire := [834]

private def s2Step319ExitFvExtra : List Wire := [800]

private def s2Step319ExitGExtra : List Wire := [110, 827, 787]

private def s2Step319ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319ExitGvExtra : List Wire := [807, 830]

private def s2Step319Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319Add0Work : List Wire := [901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step319Add0_bounded : s2Step319Add0Work.toFinset⊆arenaWires := by
  have h : s2Step319Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step319Add0During : Arena := ⟨s2Step319Add0Arena.live∪s2Step319Add0Work.toFinset,Finset.union_subset s2Step319Add0Arena.bounded s2Step319Add0_bounded⟩

private def s2Step319Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319Add1Work : List Wire := [901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step319Add1_bounded : s2Step319Add1Work.toFinset⊆arenaWires := by
  have h : s2Step319Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step319Add1During : Arena := ⟨s2Step319Add1Arena.live∪s2Step319Add1Work.toFinset,Finset.union_subset s2Step319Add1Arena.bounded s2Step319Add1_bounded⟩

private def s2Step319F4FlagArena : Arena := ⟨s2Step319HeadFvAfter.live∪{894},Finset.union_subset s2Step319HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step319F4Plan : HmrHybridF4Plan := ⟨s2Step319F4FlagArena,[894],s2Step319Add0Arena,[896],s2Step319Add0During,s2Step319Add0Work,s2Step319Add1During,s2Step319Add1Work⟩

private def s2Step319HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩

private def s2Step319HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 800],770⟩

private def s2Step319HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827, 787],769⟩

private def s2Step319HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807, 830],771⟩

private def s2Step319FrontHead : WindowBank := ⟨s2Step319HeadFOut,s2Step319HeadGOut,s2Step319HeadFvOut,s2Step319HeadGvOut⟩

private def s2Step319EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step319EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step319EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827],769⟩

private def s2Step319EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807],771⟩

private def s2Step319FrontPair : WindowBank := ⟨s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut⟩

private def s2Step319FrontSigmaArena : Arena := ⟨s2Step319EntryGvAfter.live∪{784},Finset.union_subset s2Step319EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step319HeadFFresh : List Wire := [834]

private def s2Step319HeadFvFresh : List Wire := [800]

private def s2Step319HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319HeadGFresh : List Wire := [787]

private def s2Step319HeadGvFresh : List Wire := [830]

private def s2Step319FrontPlan : HmrSourceFront := ⟨s2Step319EntryGvAfter,s2Step319FrontPair,(growRow 768 s2Step319EntryFFresh ++ (growRow 769 s2Step319EntryGFresh ++ (growRow 770 s2Step319EntryFvFresh ++ (growRow 771 s2Step319EntryGvFresh ++ [])))),s2Step319FrontSigmaArena,[784],s2Step319HeadGBefore,[806],
  s2Step319HeadFvAfter,s2Step319FrontHead,(growRow 769 s2Step319HeadGFresh ++ (growRow 768 s2Step319HeadFFresh ++ (growRow 771 s2Step319HeadGvFresh ++ (growRow 770 s2Step319HeadFvFresh ++ [])))),s2Step319F4Plan,s2Step319CounterDuring,s2Step319CounterWork,s2Step319ExitGvAfter,s2Step319FrontOut,(shrinkRow 769 s2Step319ExitGExtra ++ (shrinkRow 768 s2Step319ExitFExtra ++ (shrinkRow 770 s2Step319ExitFvExtra ++ (shrinkRow 771 s2Step319ExitGvExtra ++ []))))⟩

private def s2Step319CompletePlan : HmrEarlyStepPlan := ⟨s2Step319FrontPlan,s2Step319EarlyControlArena,s2Step319EarlyControlPlan,s2Step319CompleteMoves⟩

private theorem s2Step319Complete_apart : List.Disjoint (s2Step319CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [784, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step319CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[784, 806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step319Complete_owned : (s2Step319CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step319CompleteMoveArena : Arena := ⟨s2Step319ExitGvAfter.live∪{110},Finset.union_subset s2Step319ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step319Complete_repack : s2Step319ExitGvAfter.checkRepack s2Step319CompleteMoves=some s2Step319EarlyControlArena := by
  have owned : 792∈s2Step319ExitGvAfter.live := by norm_num [s2Step319ExitGvAfter,arenaWires]
  have reserve : s2Step319ExitGvAfter.reserve {110}=some s2Step319CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step319ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step319CompleteMoveArena.retireSet {792}=s2Step319EarlyControlArena := by
    unfold Arena.retireSet s2Step319EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step319CompleteMoveArena,s2Step319ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step319CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step319CompleteMoveArena.retireSet {792}).checkRepack []=some s2Step319EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step319EarlyControl_branchOwned : ([806] : List Wire).toFinset⊆s2Step319EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_branch : compileHmrBranchRetirement s2Step319EarlyControlSigmaArena 806=some s2Step319EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step319EarlyControl_branchOwned
  · ext q
    simp [s2Step319EarlyControlOutputArena,s2Step319EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step319EarlyControl_classEqualityBorrow : s2Step319EarlyControlPositiveArena.checkBorrow (([784, 827] : List Wire).length-1) s2Step319EarlyControlLog.classWork=some s2Step319EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step319EarlyControlPositiveArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step319EarlyControlEqualityArena,s2Step319EarlyControlPositiveArena,s2Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step319EarlyControl_classEqualityOwned : ([784, 827] : List Wire).toFinset⊆s2Step319EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlPositiveArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_classEquality : compileHmrEqualityLog s2Step319EarlyControlPositiveArena [784, 827] 0 s2Step319EarlyControlLog.classWork=some (s2Step319EarlyControlEqualityArena,s2Step319EarlyControlLog.classWork,s2Step319EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step319EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step319EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step319EarlyControl_classOwned : ([777, 834, 784] : List Wire).toFinset⊆s2Step319EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_positiveBorrow : s2Step319EarlyControlZeroArena.checkBorrow (1) s2Step319EarlyControlLog.positiveWork=some s2Step319EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step319EarlyControlZeroArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step319EarlyControlPositiveArena,s2Step319EarlyControlZeroArena,s2Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step319EarlyControl_class : compileHmrSourceClassLog s2Step319EarlyControlZeroArena false 777 s2Step319EarlyControlZeroPlan.top 0 784 s2Step319EarlyControlLog.positiveWork s2Step319EarlyControlLog.classWork=some s2Step319EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step319EarlyControlClassPlan s2Step319EarlyControlZeroArena false 777 s2Step319EarlyControlZeroPlan.top 0 784
  constructor
  · decide +kernel
  · exact s2Step319EarlyControl_classOwned
  · exact s2Step319EarlyControl_positiveBorrow
  · exact s2Step319EarlyControl_classEquality

private theorem s2Step319EarlyControl_entryRecordOwned : ([806, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_entrySigmaOwned : ([784, 254] : List Wire).toFinset⊆s2Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_fitBorrow : s2Step319EarlyControlFlagArena.checkBorrow ((57-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step319EarlyControlLog.recordFresh=some s2Step319EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step319EarlyControlFlagArena (fun q => (0≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step319EarlyControlFittedArena,s2Step319EarlyControlFlagArena,s2Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step319EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step319EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlFlagArena (fun q => (0≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_fit : compileHmrRecordGrowLog s2Step319EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 57 s2Step319EarlyControlLog.recordFresh=some s2Step319EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step319EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step319EarlyControl_fitBorrow

private theorem s2Step319EarlyControl_flagsBorrow : s2Step319EarlyControlEqualityArena.checkBorrow (6) s2Step319EarlyControlLog.flagWork=some s2Step319EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step319EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step319EarlyControlFlagArena,s2Step319EarlyControlEqualityArena,s2Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step319EarlyControl_flagsOwned : ([787, 253, 252, 251] : List Wire).toFinset⊆s2Step319EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_flags : compileHmrFlagsLog s2Step319EarlyControlClassPlan.equalityArena s2Step319EarlyControlClassPlan.equality.top 253 252 251 s2Step319EarlyControlLog.flagWork=some s2Step319EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step319EarlyControl_flagsOwned⟩
  · exact s2Step319EarlyControl_flagsBorrow

private theorem s2Step319EarlyControl_historyBorrow : s2Step319EarlyControlArena.checkBorrow ((57-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step319EarlyControlLog.recordFresh=some s2Step319EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step319EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step319EarlyControlHistoryArena,s2Step319EarlyControlArena,s2Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step319EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_history : compileHmrRecordGrowLog s2Step319EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 57 s2Step319EarlyControlLog.recordFresh=some s2Step319EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step319EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step319EarlyControl_historyBorrow

private theorem s2Step319EarlyControl_sigmaOwned : ([254, 784] : List Wire).toFinset⊆s2Step319EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_sigmaReleaseOwned : ([784] : List Wire).toFinset⊆s2Step319EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlHistoryArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<911)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_sigmaRelease : s2Step319EarlyControlHistoryArena.release {784} (fun _ => false)=some s2Step319EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step319EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step319EarlyControlSigmaArena,s2Step319EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step319EarlyControl_sigma : compileHmrSigmaDropLog s2Step319EarlyControlHistoryArena false 0 0 254 784 []=some s2Step319EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step319EarlyControl_sigmaOwned⟩
  · exact s2Step319EarlyControl_sigmaRelease

private theorem s2Step319EarlyControl_zeroBorrow : s2Step319EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step319EarlyControlLog.zeroWork=some s2Step319EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step319EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step319EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step319EarlyControlZeroArena,s2Step319EarlyControlArena,s2Step319EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step319EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step319EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step319EarlyControlArena (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EarlyControl_zero : compileHmrEqualityLog s2Step319EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step319EarlyControlLog.zeroWork=some (s2Step319EarlyControlZeroArena,s2Step319EarlyControlLog.zeroWork,s2Step319EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step319EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step319EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step319EarlyControl_logged : s2Step319EarlyControlPlan.Logged s2Step319EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 784 254 253 252 251 806 57 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step319EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step319EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step319EarlyControl_zero
  · exact s2Step319EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step319EarlyControl_flags
  · exact s2Step319EarlyControl_fit
  · exact s2Step319EarlyControl_history
  · exact s2Step319EarlyControl_sigma
  · exact s2Step319EarlyControl_branch

private theorem s2Step319EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step319EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 784 254 253 252 251 806 57 s2Step319EarlyControlLog=some s2Step319EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step319EarlyControlPlan s2Step319EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 784 254 253 252 251 806 57 s2Step319EarlyControl_logged

private def s2Step319EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step319EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step319EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110],769⟩

private def s2Step319EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842],771⟩

private def s2Step319FrontBank : WindowBank := ⟨s2Step319EntryFRow,s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow⟩

private def s2Step319Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834, 768]

private def s2Step319Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827, 787, 769]

private def s2Step319Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 800, 770]

private def s2Step319Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807, 830, 771]

private theorem s2Step319Counter_apart : Disjoint s2Step319HeadFvAfter.live s2Step319CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step319HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319Counter_borrowed : s2Step319HeadFvAfter.checkBorrow 4 s2Step319CounterWork=some s2Step319CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step319HeadFvAfter s2Step319CounterDuring s2Step319CounterWork.toFinset s2Step319Counter_bounded s2Step319Counter_apart rfl

private theorem s2Step319Counter_owned : (784::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step319HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step319HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319Counter_checked : compileHmrCounterStepLog s2Step319HeadFvAfter true 784 [772, 773, 774, 775, 776, 777] s2Step319CounterWork=some s2Step319CounterDuring := by
  have owned : ∀q∈784::[772, 773, 774, 775, 776, 777],q∈s2Step319HeadFvAfter.live := fun q hq => s2Step319Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step319Counter_borrowed

private def s2Step319EntryFAfter : Arena := s2Step319EntryFBefore

private theorem s2Step319EntryBank_incomingDistinct : ([s2Step319EntryFRow,s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319EntryF_Incoming : rowsOwned s2Step319EntryFBefore [s2Step319EntryFRow,s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319EntryFRow,s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow] 0 s2Step319EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319EntryBank_outgoingOwned : rowsOwned s2Step319EntryGvAfter [s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step319EntryGvAfter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319EntryF_Outgoing : rowsOwned s2Step319EntryGvAfter [s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut] :=
  hmrRows_owned_drop s2Step319EntryGvAfter [s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut] 0 s2Step319EntryBank_outgoingOwned

private theorem s2Step319EntryF_distinct : (s2Step319EntryFRow.sign::s2Step319EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319EntryF_owned : (s2Step319EntryFRow.sign::s2Step319EntryFRow.payload).toFinset⊆s2Step319EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EntryF_reserved : s2Step319EntryFBefore.reserve s2Step319EntryFFresh.toFinset=some s2Step319EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step319EntryFFresh,arenaWires]
  · norm_num [s2Step319EntryFBefore,s2Step319EntryFFresh,arenaWires]
  · simp only [s2Step319EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step319EntryF_checked : planRowResizeLog s2Step319EntryFBefore s2Step319EntryFRow 112 s2Step319EntryFFresh=
    some (s2Step319EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩,growRow 768 s2Step319EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step319EntryFBefore s2Step319EntryFAfter s2Step319EntryFRow 112 s2Step319EntryFFresh
    s2Step319EntryF_distinct s2Step319EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step319EntryF_reserved
  have rowEq : WindowRow.mk (s2Step319EntryFRow.payload++s2Step319EntryFFresh) s2Step319EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step319EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319EntryFvAfter : Arena := s2Step319EntryGAfter

private def s2Step319EntryFvBefore : Arena := s2Step319EntryGAfter

private theorem s2Step319EntryFv_Incoming : rowsOwned s2Step319EntryFvBefore [s2Step319EntryFvRow,s2Step319EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319EntryFRow,s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow] 2 s2Step319EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319EntryFv_Outgoing : rowsOwned s2Step319EntryGvAfter [s2Step319EntryFvOut,s2Step319EntryGvOut] :=
  hmrRows_owned_drop s2Step319EntryGvAfter [s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut] 2 s2Step319EntryBank_outgoingOwned

private theorem s2Step319EntryFv_distinct : (s2Step319EntryFvRow.sign::s2Step319EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319EntryFv_owned : (s2Step319EntryFvRow.sign::s2Step319EntryFvRow.payload).toFinset⊆s2Step319EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EntryFv_reserved : s2Step319EntryFvBefore.reserve s2Step319EntryFvFresh.toFinset=some s2Step319EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step319EntryFvFresh,arenaWires]
  · norm_num [s2Step319EntryFvBefore,s2Step319EntryGAfter,s2Step319EntryFvFresh,arenaWires]
  · simp only [s2Step319EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step319EntryFv_checked : planRowResizeLog s2Step319EntryFvBefore s2Step319EntryFvRow 176 s2Step319EntryFvFresh=
    some (s2Step319EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩,growRow 770 s2Step319EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step319EntryFvBefore s2Step319EntryFvAfter s2Step319EntryFvRow 176 s2Step319EntryFvFresh
    s2Step319EntryFv_distinct s2Step319EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step319EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step319EntryFvRow.payload++s2Step319EntryFvFresh) s2Step319EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step319EntryGBefore : Arena := s2Step319EntryFBefore

private theorem s2Step319EntryG_Incoming : rowsOwned s2Step319EntryGBefore [s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319EntryFRow,s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow] 1 s2Step319EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319EntryG_Outgoing : rowsOwned s2Step319EntryGvAfter [s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut] :=
  hmrRows_owned_drop s2Step319EntryGvAfter [s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut] 1 s2Step319EntryBank_outgoingOwned

private theorem s2Step319EntryG_distinct : (s2Step319EntryGRow.sign::s2Step319EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319EntryG_owned : (s2Step319EntryGRow.sign::s2Step319EntryGRow.payload).toFinset⊆s2Step319EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EntryG_reserved : s2Step319EntryGBefore.reserve s2Step319EntryGFresh.toFinset=some s2Step319EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step319EntryGFresh,arenaWires]
  · norm_num [s2Step319EntryGBefore,s2Step319EntryFBefore,s2Step319EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step319EntryGAfter,s2Step319EntryGBefore,s2Step319EntryFBefore,s2Step319EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step319EntryG_checked : planRowResizeLog s2Step319EntryGBefore s2Step319EntryGRow 112 s2Step319EntryGFresh=
    some (s2Step319EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827],769⟩,growRow 769 s2Step319EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step319EntryGBefore s2Step319EntryGAfter s2Step319EntryGRow 112 s2Step319EntryGFresh
    s2Step319EntryG_distinct s2Step319EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step319EntryG_reserved
  have rowEq : WindowRow.mk (s2Step319EntryGRow.payload++s2Step319EntryGFresh) s2Step319EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step319EntryGvBefore : Arena := s2Step319EntryGAfter

private theorem s2Step319EntryGv_Incoming : rowsOwned s2Step319EntryGvBefore [s2Step319EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319EntryFRow,s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow] 3 s2Step319EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319EntryGv_Outgoing : rowsOwned s2Step319EntryGvAfter [s2Step319EntryGvOut] :=
  hmrRows_owned_drop s2Step319EntryGvAfter [s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut] 3 s2Step319EntryBank_outgoingOwned

private theorem s2Step319EntryGv_distinct : (s2Step319EntryGvRow.sign::s2Step319EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319EntryGv_owned : (s2Step319EntryGvRow.sign::s2Step319EntryGvRow.payload).toFinset⊆s2Step319EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319EntryGv_reserved : s2Step319EntryGvBefore.reserve s2Step319EntryGvFresh.toFinset=some s2Step319EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step319EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step319EntryGvBefore,s2Step319EntryGAfter,s2Step319EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step319EntryGvAfter,s2Step319EntryGvBefore,s2Step319EntryGAfter,s2Step319EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step319EntryGv_checked : planRowResizeLog s2Step319EntryGvBefore s2Step319EntryGvRow 176 s2Step319EntryGvFresh=
    some (s2Step319EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807],771⟩,growRow 771 s2Step319EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step319EntryGvBefore s2Step319EntryGvAfter s2Step319EntryGvRow 176 s2Step319EntryGvFresh
    s2Step319EntryGv_distinct s2Step319EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step319EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step319EntryGvRow.payload++s2Step319EntryGvFresh) s2Step319EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step319EntryBank_rows : planWindowRowsLog s2Step319EntryFBefore [(s2Step319EntryFRow,112),(s2Step319EntryGRow,112),(s2Step319EntryFvRow,176),(s2Step319EntryGvRow,176)] [s2Step319EntryFFresh,s2Step319EntryGFresh,s2Step319EntryFvFresh,s2Step319EntryGvFresh]=
    some (s2Step319EntryGvAfter,[s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut],(growRow 768 s2Step319EntryFFresh ++ (growRow 769 s2Step319EntryGFresh ++ (growRow 770 s2Step319EntryFvFresh ++ (growRow 771 s2Step319EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step319EntryGvAfter [] []=some (s2Step319EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step319EntryGvBefore s2Step319EntryGvAfter s2Step319EntryGvAfter
    s2Step319EntryGvRow s2Step319EntryGvOut 176 s2Step319EntryGvFresh [] [] []
    (growRow 771 s2Step319EntryGvFresh) ([]) s2Step319EntryGv_Incoming s2Step319EntryGv_checked h4 s2Step319EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step319EntryFvBefore s2Step319EntryFvAfter s2Step319EntryGvAfter
    s2Step319EntryFvRow s2Step319EntryFvOut 176 s2Step319EntryFvFresh [(s2Step319EntryGvRow,176)] [s2Step319EntryGvFresh] [s2Step319EntryGvOut]
    (growRow 770 s2Step319EntryFvFresh) ((growRow 771 s2Step319EntryGvFresh ++ [])) s2Step319EntryFv_Incoming s2Step319EntryFv_checked h3 s2Step319EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step319EntryGBefore s2Step319EntryGAfter s2Step319EntryGvAfter
    s2Step319EntryGRow s2Step319EntryGOut 112 s2Step319EntryGFresh [(s2Step319EntryFvRow,176),(s2Step319EntryGvRow,176)] [s2Step319EntryFvFresh,s2Step319EntryGvFresh] [s2Step319EntryFvOut,s2Step319EntryGvOut]
    (growRow 769 s2Step319EntryGFresh) ((growRow 770 s2Step319EntryFvFresh ++ (growRow 771 s2Step319EntryGvFresh ++ []))) s2Step319EntryG_Incoming s2Step319EntryG_checked h2 s2Step319EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step319EntryFBefore s2Step319EntryFAfter s2Step319EntryGvAfter
    s2Step319EntryFRow s2Step319EntryFOut 112 s2Step319EntryFFresh [(s2Step319EntryGRow,112),(s2Step319EntryFvRow,176),(s2Step319EntryGvRow,176)] [s2Step319EntryGFresh,s2Step319EntryFvFresh,s2Step319EntryGvFresh] [s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut]
    (growRow 768 s2Step319EntryFFresh) ((growRow 769 s2Step319EntryGFresh ++ (growRow 770 s2Step319EntryFvFresh ++ (growRow 771 s2Step319EntryGvFresh ++ [])))) s2Step319EntryF_Incoming s2Step319EntryF_checked h1 s2Step319EntryF_Outgoing
  exact h0

private theorem s2Step319EntryBank_checked : compileHmrBankResizeLog .entry s2Step319EntryFBefore ⟨s2Step319EntryFRow,s2Step319EntryGRow,s2Step319EntryFvRow,s2Step319EntryGvRow⟩ ⟨112,112,176,176⟩ [s2Step319EntryFFresh,s2Step319EntryGFresh,s2Step319EntryFvFresh,s2Step319EntryGvFresh]=
    some (s2Step319EntryGvAfter,⟨s2Step319EntryFOut,s2Step319EntryGOut,s2Step319EntryFvOut,s2Step319EntryGvOut⟩,(growRow 768 s2Step319EntryFFresh ++ (growRow 769 s2Step319EntryGFresh ++ (growRow 770 s2Step319EntryFvFresh ++ (growRow 771 s2Step319EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step319EntryBank_rows]
  rfl

private def s2Step319ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319ExitFBefore : Arena := s2Step319ExitGAfter

private def s2Step319ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩

private def s2Step319ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 800],770⟩

private def s2Step319ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827, 787],769⟩

private def s2Step319ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807, 830],771⟩

private theorem s2Step319ExitBank_incomingDistinct : ([s2Step319ExitGRow,s2Step319ExitFRow,s2Step319ExitFvRow,s2Step319ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319ExitF_Incoming : rowsOwned s2Step319ExitFBefore [s2Step319ExitFRow,s2Step319ExitFvRow,s2Step319ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319ExitGRow,s2Step319ExitFRow,s2Step319ExitFvRow,s2Step319ExitGvRow] 1 s2Step319ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319ExitFBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319ExitBank_outgoingOwned : rowsOwned s2Step319ExitGvAfter [s2Step319ExitGOut,s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step319ExitGvAfter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<807) ∨ (808≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319ExitF_Outgoing : rowsOwned s2Step319ExitGvAfter [s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut] :=
  hmrRows_owned_drop s2Step319ExitGvAfter [s2Step319ExitGOut,s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut] 1 s2Step319ExitBank_outgoingOwned

private theorem s2Step319ExitF_distinct : (s2Step319ExitFRow.sign::s2Step319ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319ExitF_owned : (s2Step319ExitFRow.sign::s2Step319ExitFRow.payload).toFinset⊆s2Step319ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319ExitFBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319ExitF_retired : s2Step319ExitFBefore.retireSet s2Step319ExitFExtra.toFinset=s2Step319ExitFAfter := by
  unfold Arena.retireSet s2Step319ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step319ExitFBefore,s2Step319ExitGAfter,s2Step319ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step319ExitF_checked : planRowResizeLog s2Step319ExitFBefore s2Step319ExitFRow 112 []=
    some (s2Step319ExitFAfter,s2Step319ExitFOut,shrinkRow 768 s2Step319ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step319ExitFBefore s2Step319ExitFRow 112 s2Step319ExitF_distinct s2Step319ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step319ExitFRow.payload.take 112) s2Step319ExitFRow.sign=s2Step319ExitFOut := by decide +kernel
  have hi : s2Step319ExitFRow.payload.drop 112=s2Step319ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step319ExitF_retired] at result
  exact result

private def s2Step319ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319ExitFvBefore : Arena := s2Step319ExitFAfter

private theorem s2Step319ExitFv_Incoming : rowsOwned s2Step319ExitFvBefore [s2Step319ExitFvRow,s2Step319ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319ExitGRow,s2Step319ExitFRow,s2Step319ExitFvRow,s2Step319ExitGvRow] 2 s2Step319ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319ExitFvBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319ExitFv_Outgoing : rowsOwned s2Step319ExitGvAfter [s2Step319ExitFvOut,s2Step319ExitGvOut] :=
  hmrRows_owned_drop s2Step319ExitGvAfter [s2Step319ExitGOut,s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut] 2 s2Step319ExitBank_outgoingOwned

private theorem s2Step319ExitFv_distinct : (s2Step319ExitFvRow.sign::s2Step319ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319ExitFv_owned : (s2Step319ExitFvRow.sign::s2Step319ExitFvRow.payload).toFinset⊆s2Step319ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319ExitFvBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319ExitFv_retired : s2Step319ExitFvBefore.retireSet s2Step319ExitFvExtra.toFinset=s2Step319ExitFvAfter := by
  unfold Arena.retireSet s2Step319ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step319ExitFvBefore,s2Step319ExitFAfter,s2Step319ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step319ExitFv_checked : planRowResizeLog s2Step319ExitFvBefore s2Step319ExitFvRow 176 []=
    some (s2Step319ExitFvAfter,s2Step319ExitFvOut,shrinkRow 770 s2Step319ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step319ExitFvBefore s2Step319ExitFvRow 176 s2Step319ExitFv_distinct s2Step319ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step319ExitFvRow.payload.take 176) s2Step319ExitFvRow.sign=s2Step319ExitFvOut := by decide +kernel
  have hi : s2Step319ExitFvRow.payload.drop 176=s2Step319ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step319ExitFv_retired] at result
  exact result

private def s2Step319ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step319ExitG_Incoming : rowsOwned s2Step319ExitGBefore [s2Step319ExitGRow,s2Step319ExitFRow,s2Step319ExitFvRow,s2Step319ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319ExitGRow,s2Step319ExitFRow,s2Step319ExitFvRow,s2Step319ExitGvRow] 0 s2Step319ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319ExitG_Outgoing : rowsOwned s2Step319ExitGvAfter [s2Step319ExitGOut,s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut] :=
  hmrRows_owned_drop s2Step319ExitGvAfter [s2Step319ExitGOut,s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut] 0 s2Step319ExitBank_outgoingOwned

private theorem s2Step319ExitG_distinct : (s2Step319ExitGRow.sign::s2Step319ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319ExitG_owned : (s2Step319ExitGRow.sign::s2Step319ExitGRow.payload).toFinset⊆s2Step319ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319ExitGBefore (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319ExitG_retired : s2Step319ExitGBefore.retireSet s2Step319ExitGExtra.toFinset=s2Step319ExitGAfter := by
  unfold Arena.retireSet s2Step319ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step319ExitGBefore,s2Step319ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step319ExitG_checked : planRowResizeLog s2Step319ExitGBefore s2Step319ExitGRow 110 []=
    some (s2Step319ExitGAfter,s2Step319ExitGOut,shrinkRow 769 s2Step319ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step319ExitGBefore s2Step319ExitGRow 110 s2Step319ExitG_distinct s2Step319ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step319ExitGRow.payload.take 110) s2Step319ExitGRow.sign=s2Step319ExitGOut := by decide +kernel
  have hi : s2Step319ExitGRow.payload.drop 110=s2Step319ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step319ExitG_retired] at result
  exact result

private def s2Step319ExitGvBefore : Arena := s2Step319ExitFvAfter

private theorem s2Step319ExitGv_Incoming : rowsOwned s2Step319ExitGvBefore [s2Step319ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319ExitGRow,s2Step319ExitFRow,s2Step319ExitFvRow,s2Step319ExitGvRow] 3 s2Step319ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319ExitGvBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319ExitGv_Outgoing : rowsOwned s2Step319ExitGvAfter [s2Step319ExitGvOut] :=
  hmrRows_owned_drop s2Step319ExitGvAfter [s2Step319ExitGOut,s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut] 3 s2Step319ExitBank_outgoingOwned

private theorem s2Step319ExitGv_distinct : (s2Step319ExitGvRow.sign::s2Step319ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319ExitGv_owned : (s2Step319ExitGvRow.sign::s2Step319ExitGvRow.payload).toFinset⊆s2Step319ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319ExitGvBefore (fun q => (0≤q ∧ q<110) ∨ (111≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<827) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319ExitGv_retired : s2Step319ExitGvBefore.retireSet s2Step319ExitGvExtra.toFinset=s2Step319ExitGvAfter := by
  unfold Arena.retireSet s2Step319ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step319ExitGvBefore,s2Step319ExitFvAfter,s2Step319ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step319ExitGv_checked : planRowResizeLog s2Step319ExitGvBefore s2Step319ExitGvRow 175 []=
    some (s2Step319ExitGvAfter,s2Step319ExitGvOut,shrinkRow 771 s2Step319ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step319ExitGvBefore s2Step319ExitGvRow 175 s2Step319ExitGv_distinct s2Step319ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step319ExitGvRow.payload.take 175) s2Step319ExitGvRow.sign=s2Step319ExitGvOut := by decide +kernel
  have hi : s2Step319ExitGvRow.payload.drop 175=s2Step319ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step319ExitGv_retired] at result
  exact result

private theorem s2Step319ExitBank_rows : planWindowRowsLog s2Step319ExitGBefore [(s2Step319ExitGRow,110),(s2Step319ExitFRow,112),(s2Step319ExitFvRow,176),(s2Step319ExitGvRow,175)] [[],[],[],[]]=
    some (s2Step319ExitGvAfter,[s2Step319ExitGOut,s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut],(shrinkRow 769 s2Step319ExitGExtra ++ (shrinkRow 768 s2Step319ExitFExtra ++ (shrinkRow 770 s2Step319ExitFvExtra ++ (shrinkRow 771 s2Step319ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step319ExitGvAfter [] []=some (s2Step319ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step319ExitGvBefore s2Step319ExitGvAfter s2Step319ExitGvAfter
    s2Step319ExitGvRow s2Step319ExitGvOut 175 [] [] [] []
    (shrinkRow 771 s2Step319ExitGvExtra) ([]) s2Step319ExitGv_Incoming s2Step319ExitGv_checked h4 s2Step319ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step319ExitFvBefore s2Step319ExitFvAfter s2Step319ExitGvAfter
    s2Step319ExitFvRow s2Step319ExitFvOut 176 [] [(s2Step319ExitGvRow,175)] [[]] [s2Step319ExitGvOut]
    (shrinkRow 770 s2Step319ExitFvExtra) ((shrinkRow 771 s2Step319ExitGvExtra ++ [])) s2Step319ExitFv_Incoming s2Step319ExitFv_checked h3 s2Step319ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step319ExitFBefore s2Step319ExitFAfter s2Step319ExitGvAfter
    s2Step319ExitFRow s2Step319ExitFOut 112 [] [(s2Step319ExitFvRow,176),(s2Step319ExitGvRow,175)] [[],[]] [s2Step319ExitFvOut,s2Step319ExitGvOut]
    (shrinkRow 768 s2Step319ExitFExtra) ((shrinkRow 770 s2Step319ExitFvExtra ++ (shrinkRow 771 s2Step319ExitGvExtra ++ []))) s2Step319ExitF_Incoming s2Step319ExitF_checked h2 s2Step319ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step319ExitGBefore s2Step319ExitGAfter s2Step319ExitGvAfter
    s2Step319ExitGRow s2Step319ExitGOut 110 [] [(s2Step319ExitFRow,112),(s2Step319ExitFvRow,176),(s2Step319ExitGvRow,175)] [[],[],[]] [s2Step319ExitFOut,s2Step319ExitFvOut,s2Step319ExitGvOut]
    (shrinkRow 769 s2Step319ExitGExtra) ((shrinkRow 768 s2Step319ExitFExtra ++ (shrinkRow 770 s2Step319ExitFvExtra ++ (shrinkRow 771 s2Step319ExitGvExtra ++ [])))) s2Step319ExitG_Incoming s2Step319ExitG_checked h1 s2Step319ExitG_Outgoing
  exact h0

private theorem s2Step319ExitBank_checked : compileHmrBankResizeLog .exit s2Step319ExitGBefore ⟨s2Step319ExitFRow,s2Step319ExitGRow,s2Step319ExitFvRow,s2Step319ExitGvRow⟩ ⟨112,110,176,175⟩ [[],[],[],[]]=
    some (s2Step319ExitGvAfter,⟨s2Step319ExitFOut,s2Step319ExitGOut,s2Step319ExitFvOut,s2Step319ExitGvOut⟩,(shrinkRow 769 s2Step319ExitGExtra ++ (shrinkRow 768 s2Step319ExitFExtra ++ (shrinkRow 770 s2Step319ExitFvExtra ++ (shrinkRow 771 s2Step319ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step319ExitBank_rows]
  rfl

private theorem s2Step319Add0_apart : Disjoint s2Step319Add0Arena.live s2Step319Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step319Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319Add0_card : s2Step319Add0Arena.live.card=906 := by
  decide +kernel

private theorem s2Step319Add0_borrowed : s2Step319Add0Arena.checkBorrow (hmrHybridCount s2Step319Add0Arena s2Step319Add0B.length) s2Step319Add0Work=some s2Step319Add0During := by
  have len : s2Step319Add0Work.length=hmrHybridCount s2Step319Add0Arena s2Step319Add0B.length := by
    rw [hmrHybridCount,s2Step319Add0_card]
    decide +kernel
  have nd : s2Step319Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step319Add0Arena s2Step319Add0During s2Step319Add0Work.toFinset s2Step319Add0_bounded s2Step319Add0_apart rfl

private theorem s2Step319Add0_distinct : (894::806::896::(s2Step319Add0A++s2Step319Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319Add0_owned : (894::806::896::(s2Step319Add0A++s2Step319Add0B)).toFinset⊆s2Step319Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step319Add0Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319Add0_checked : compileHmrHybridCinLog s2Step319Add0Arena 806 894 896 s2Step319Add0A s2Step319Add0B s2Step319Add0Work=some s2Step319Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step319Add0Arena s2Step319Add0During 806 894 896 s2Step319Add0A s2Step319Add0B s2Step319Add0Work
    (by decide +kernel) (by decide +kernel) s2Step319Add0_distinct
    (fun q hq => s2Step319Add0_owned (List.mem_toFinset.mpr hq)) s2Step319Add0_borrowed

private theorem s2Step319Add1_apart : Disjoint s2Step319Add1Arena.live s2Step319Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step319Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319Add1_card : s2Step319Add1Arena.live.card=906 := by
  decide +kernel

private theorem s2Step319Add1_borrowed : s2Step319Add1Arena.checkBorrow (hmrHybridCount s2Step319Add1Arena s2Step319Add1B.length) s2Step319Add1Work=some s2Step319Add1During := by
  have len : s2Step319Add1Work.length=hmrHybridCount s2Step319Add1Arena s2Step319Add1B.length := by
    rw [hmrHybridCount,s2Step319Add1_card]
    decide +kernel
  have nd : s2Step319Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step319Add1Arena s2Step319Add1During s2Step319Add1Work.toFinset s2Step319Add1_bounded s2Step319Add1_apart rfl

private theorem s2Step319Add1_distinct : (894::806::896::(s2Step319Add1A++s2Step319Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319Add1_owned : (894::806::896::(s2Step319Add1A++s2Step319Add1B)).toFinset⊆s2Step319Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step319Add1Arena (fun q => (0≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319Add1_checked : compileHmrHybridCinLog s2Step319Add1Arena 806 894 896 s2Step319Add1A s2Step319Add1B s2Step319Add1Work=some s2Step319Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step319Add1Arena s2Step319Add1During 806 894 896 s2Step319Add1A s2Step319Add1B s2Step319Add1Work
    (by decide +kernel) (by decide +kernel) s2Step319Add1_distinct
    (fun q hq => s2Step319Add1_owned (List.mem_toFinset.mpr hq)) s2Step319Add1_borrowed

private theorem s2Step319F4_apart : Disjoint (s2Step319Add0A++s2Step319Add0B).toFinset (s2Step319Add1A++s2Step319Add1B).toFinset := by
  have nd : ((s2Step319Add0A++s2Step319Add0B)++(s2Step319Add1A++s2Step319Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step319F4_carry : s2Step319F4FlagArena.checkBorrow 1 [896]=some s2Step319Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step319F4FlagArena,s2Step319HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step319F4FlagArena,s2Step319HeadFvAfter,s2Step319Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step319F4_distinct : (784::806::894::896::((s2Step319Add0A++s2Step319Add1A)++(s2Step319Add0B++s2Step319Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319F4_flag : s2Step319HeadFvAfter.checkBorrow 1 [894]=some s2Step319F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step319HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step319F4_owned : (784::806::((s2Step319Add0A++s2Step319Add1A)++(s2Step319Add0B++s2Step319Add1B))).toFinset⊆s2Step319HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step319HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319F4_checked : compileHmrHybridF4Log s2Step319HeadFvAfter 784 806 s2Step319Add0A s2Step319Add0B s2Step319Add1A s2Step319Add1B [894] [896] s2Step319Add0Work s2Step319Add1Work=some s2Step319F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step319HeadFvAfter s2Step319F4FlagArena s2Step319Add0Arena s2Step319Add0During s2Step319Add1During 784 806
    s2Step319Add0A s2Step319Add0B s2Step319Add1A s2Step319Add1B [894] [896] s2Step319Add0Work s2Step319Add1Work
    (fun q hq => s2Step319F4_owned (List.mem_toFinset.mpr hq)) s2Step319F4_flag s2Step319F4_carry
    s2Step319F4_distinct s2Step319F4_apart s2Step319Add0_checked s2Step319Add1_checked

private theorem s2Step319Front_branch : s2Step319FrontSigmaArena.checkBorrow 1 [806]=some s2Step319HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step319FrontSigmaArena,s2Step319EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step319FrontSigmaArena,s2Step319EntryGvAfter,s2Step319HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step319Front_entry : HmrFrontEntryValid s2Step319EntryFBefore s2Step319FrontBank 112 176 ⟨112,110,176,175⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step319FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step319EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step319EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step319FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step319Front_sigma : s2Step319EntryGvAfter.checkBorrow 1 [784]=some s2Step319FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step319EntryGvAfter,arenaWires]
  · rfl

private def s2Step319HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319HeadFBefore : Arena := s2Step319HeadGAfter

private def s2Step319HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step319HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step319HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827],769⟩

private def s2Step319HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807],771⟩

private theorem s2Step319HeadBank_incomingDistinct : ([s2Step319HeadGRow,s2Step319HeadFRow,s2Step319HeadGvRow,s2Step319HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319HeadF_Incoming : rowsOwned s2Step319HeadFBefore [s2Step319HeadFRow,s2Step319HeadGvRow,s2Step319HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319HeadGRow,s2Step319HeadFRow,s2Step319HeadGvRow,s2Step319HeadFvRow] 1 s2Step319HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319HeadBank_outgoingOwned : rowsOwned s2Step319HeadFvAfter [s2Step319HeadGOut,s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step319HeadFvAfter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319HeadF_Outgoing : rowsOwned s2Step319HeadFvAfter [s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut] :=
  hmrRows_owned_drop s2Step319HeadFvAfter [s2Step319HeadGOut,s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut] 1 s2Step319HeadBank_outgoingOwned

private theorem s2Step319HeadF_distinct : (s2Step319HeadFRow.sign::s2Step319HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319HeadF_owned : (s2Step319HeadFRow.sign::s2Step319HeadFRow.payload).toFinset⊆s2Step319HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319HeadFBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319HeadF_reserved : s2Step319HeadFBefore.reserve s2Step319HeadFFresh.toFinset=some s2Step319HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step319HeadFFresh,arenaWires]
  · norm_num [s2Step319HeadFBefore,s2Step319HeadGAfter,s2Step319HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step319HeadFAfter,s2Step319HeadFBefore,s2Step319HeadGAfter,s2Step319HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step319HeadF_checked : planRowResizeLog s2Step319HeadFBefore s2Step319HeadFRow 113 s2Step319HeadFFresh=
    some (s2Step319HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩,growRow 768 s2Step319HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step319HeadFBefore s2Step319HeadFAfter s2Step319HeadFRow 113 s2Step319HeadFFresh
    s2Step319HeadF_distinct s2Step319HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step319HeadF_reserved
  have rowEq : WindowRow.mk (s2Step319HeadFRow.payload++s2Step319HeadFFresh) s2Step319HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 834],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step319HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step319HeadFvBefore : Arena := s2Step319HeadGvAfter

private theorem s2Step319HeadFv_Incoming : rowsOwned s2Step319HeadFvBefore [s2Step319HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319HeadGRow,s2Step319HeadFRow,s2Step319HeadGvRow,s2Step319HeadFvRow] 3 s2Step319HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319HeadFv_Outgoing : rowsOwned s2Step319HeadFvAfter [s2Step319HeadFvOut] :=
  hmrRows_owned_drop s2Step319HeadFvAfter [s2Step319HeadGOut,s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut] 3 s2Step319HeadBank_outgoingOwned

private theorem s2Step319HeadFv_distinct : (s2Step319HeadFvRow.sign::s2Step319HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319HeadFv_owned : (s2Step319HeadFvRow.sign::s2Step319HeadFvRow.payload).toFinset⊆s2Step319HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319HeadFv_reserved : s2Step319HeadFvBefore.reserve s2Step319HeadFvFresh.toFinset=some s2Step319HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step319HeadFvFresh,arenaWires]
  · norm_num [s2Step319HeadFvBefore,s2Step319HeadGvAfter,s2Step319HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step319HeadFvAfter,s2Step319HeadFvBefore,s2Step319HeadGvAfter,s2Step319HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step319HeadFv_checked : planRowResizeLog s2Step319HeadFvBefore s2Step319HeadFvRow 177 s2Step319HeadFvFresh=
    some (s2Step319HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 800],770⟩,growRow 770 s2Step319HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step319HeadFvBefore s2Step319HeadFvAfter s2Step319HeadFvRow 177 s2Step319HeadFvFresh
    s2Step319HeadFv_distinct s2Step319HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step319HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step319HeadFvRow.payload++s2Step319HeadFvFresh) s2Step319HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 111, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 800],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step319HeadG_Incoming : rowsOwned s2Step319HeadGBefore [s2Step319HeadGRow,s2Step319HeadFRow,s2Step319HeadGvRow,s2Step319HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319HeadGRow,s2Step319HeadFRow,s2Step319HeadGvRow,s2Step319HeadFvRow] 0 s2Step319HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319HeadG_Outgoing : rowsOwned s2Step319HeadFvAfter [s2Step319HeadGOut,s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut] :=
  hmrRows_owned_drop s2Step319HeadFvAfter [s2Step319HeadGOut,s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut] 0 s2Step319HeadBank_outgoingOwned

private theorem s2Step319HeadG_distinct : (s2Step319HeadGRow.sign::s2Step319HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319HeadG_owned : (s2Step319HeadGRow.sign::s2Step319HeadGRow.payload).toFinset⊆s2Step319HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319HeadG_reserved : s2Step319HeadGBefore.reserve s2Step319HeadGFresh.toFinset=some s2Step319HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step319HeadGFresh,arenaWires]
  · norm_num [s2Step319HeadGBefore,s2Step319HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step319HeadGAfter,s2Step319HeadGBefore,s2Step319HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step319HeadG_checked : planRowResizeLog s2Step319HeadGBefore s2Step319HeadGRow 113 s2Step319HeadGFresh=
    some (s2Step319HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827, 787],769⟩,growRow 769 s2Step319HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step319HeadGBefore s2Step319HeadGAfter s2Step319HeadGRow 113 s2Step319HeadGFresh
    s2Step319HeadG_distinct s2Step319HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step319HeadG_reserved
  have rowEq : WindowRow.mk (s2Step319HeadGRow.payload++s2Step319HeadGFresh) s2Step319HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 827, 787],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step319HeadGvBefore : Arena := s2Step319HeadFAfter

private theorem s2Step319HeadGv_Incoming : rowsOwned s2Step319HeadGvBefore [s2Step319HeadGvRow,s2Step319HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step319HeadGRow,s2Step319HeadFRow,s2Step319HeadGvRow,s2Step319HeadFvRow] 2 s2Step319HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step319HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step319HeadGv_Outgoing : rowsOwned s2Step319HeadFvAfter [s2Step319HeadGvOut,s2Step319HeadFvOut] :=
  hmrRows_owned_drop s2Step319HeadFvAfter [s2Step319HeadGOut,s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut] 2 s2Step319HeadBank_outgoingOwned

private theorem s2Step319HeadGv_distinct : (s2Step319HeadGvRow.sign::s2Step319HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step319HeadGv_owned : (s2Step319HeadGvRow.sign::s2Step319HeadGvRow.payload).toFinset⊆s2Step319HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step319HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step319HeadGv_reserved : s2Step319HeadGvBefore.reserve s2Step319HeadGvFresh.toFinset=some s2Step319HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step319HeadGvFresh,arenaWires]
  · norm_num [s2Step319HeadGvBefore,s2Step319HeadFAfter,s2Step319HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step319HeadGvAfter,s2Step319HeadGvBefore,s2Step319HeadFAfter,s2Step319HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step319HeadGv_checked : planRowResizeLog s2Step319HeadGvBefore s2Step319HeadGvRow 177 s2Step319HeadGvFresh=
    some (s2Step319HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807, 830],771⟩,growRow 771 s2Step319HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step319HeadGvBefore s2Step319HeadGvAfter s2Step319HeadGvRow 177 s2Step319HeadGvFresh
    s2Step319HeadGv_distinct s2Step319HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step319HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step319HeadGvRow.payload++s2Step319HeadGvFresh) s2Step319HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 809, 807, 830],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step319HeadBank_rows : planWindowRowsLog s2Step319HeadGBefore [(s2Step319HeadGRow,113),(s2Step319HeadFRow,113),(s2Step319HeadGvRow,177),(s2Step319HeadFvRow,177)] [s2Step319HeadGFresh,s2Step319HeadFFresh,s2Step319HeadGvFresh,s2Step319HeadFvFresh]=
    some (s2Step319HeadFvAfter,[s2Step319HeadGOut,s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut],(growRow 769 s2Step319HeadGFresh ++ (growRow 768 s2Step319HeadFFresh ++ (growRow 771 s2Step319HeadGvFresh ++ (growRow 770 s2Step319HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step319HeadFvAfter [] []=some (s2Step319HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step319HeadFvBefore s2Step319HeadFvAfter s2Step319HeadFvAfter
    s2Step319HeadFvRow s2Step319HeadFvOut 177 s2Step319HeadFvFresh [] [] []
    (growRow 770 s2Step319HeadFvFresh) ([]) s2Step319HeadFv_Incoming s2Step319HeadFv_checked h4 s2Step319HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step319HeadGvBefore s2Step319HeadGvAfter s2Step319HeadFvAfter
    s2Step319HeadGvRow s2Step319HeadGvOut 177 s2Step319HeadGvFresh [(s2Step319HeadFvRow,177)] [s2Step319HeadFvFresh] [s2Step319HeadFvOut]
    (growRow 771 s2Step319HeadGvFresh) ((growRow 770 s2Step319HeadFvFresh ++ [])) s2Step319HeadGv_Incoming s2Step319HeadGv_checked h3 s2Step319HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step319HeadFBefore s2Step319HeadFAfter s2Step319HeadFvAfter
    s2Step319HeadFRow s2Step319HeadFOut 113 s2Step319HeadFFresh [(s2Step319HeadGvRow,177),(s2Step319HeadFvRow,177)] [s2Step319HeadGvFresh,s2Step319HeadFvFresh] [s2Step319HeadGvOut,s2Step319HeadFvOut]
    (growRow 768 s2Step319HeadFFresh) ((growRow 771 s2Step319HeadGvFresh ++ (growRow 770 s2Step319HeadFvFresh ++ []))) s2Step319HeadF_Incoming s2Step319HeadF_checked h2 s2Step319HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step319HeadGBefore s2Step319HeadGAfter s2Step319HeadFvAfter
    s2Step319HeadGRow s2Step319HeadGOut 113 s2Step319HeadGFresh [(s2Step319HeadFRow,113),(s2Step319HeadGvRow,177),(s2Step319HeadFvRow,177)] [s2Step319HeadFFresh,s2Step319HeadGvFresh,s2Step319HeadFvFresh] [s2Step319HeadFOut,s2Step319HeadGvOut,s2Step319HeadFvOut]
    (growRow 769 s2Step319HeadGFresh) ((growRow 768 s2Step319HeadFFresh ++ (growRow 771 s2Step319HeadGvFresh ++ (growRow 770 s2Step319HeadFvFresh ++ [])))) s2Step319HeadG_Incoming s2Step319HeadG_checked h1 s2Step319HeadG_Outgoing
  exact h0

private theorem s2Step319HeadBank_checked : compileHmrBankResizeLog .headroom s2Step319HeadGBefore ⟨s2Step319HeadFRow,s2Step319HeadGRow,s2Step319HeadFvRow,s2Step319HeadGvRow⟩ ⟨113,113,177,177⟩ [s2Step319HeadGFresh,s2Step319HeadFFresh,s2Step319HeadGvFresh,s2Step319HeadFvFresh]=
    some (s2Step319HeadFvAfter,⟨s2Step319HeadFOut,s2Step319HeadGOut,s2Step319HeadFvOut,s2Step319HeadGvOut⟩,(growRow 769 s2Step319HeadGFresh ++ (growRow 768 s2Step319HeadFFresh ++ (growRow 771 s2Step319HeadGvFresh ++ (growRow 770 s2Step319HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step319HeadBank_rows]
  rfl

private theorem s2Step319Front_checked : compileHmrSourceFrontLog s2Step319EntryFBefore s2Step319FrontBank 112 176 ⟨112,110,176,175⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step319FrontLog=some s2Step319FrontPlan := by
  have pairEq : s2Step319FrontPair=⟨s2Step319HeadFRow,s2Step319HeadGRow,s2Step319HeadFvRow,s2Step319HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step319FrontHead=⟨s2Step319ExitFRow,s2Step319ExitGRow,s2Step319ExitFvRow,s2Step319ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step319Add0A=s2Step319FrontHead.f.wires := by decide +kernel
  have gEq : s2Step319Add0B=s2Step319FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step319Add1A=s2Step319FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step319Add1B=s2Step319FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step319EntryFBefore s2Step319FrontBank 112 176 ⟨112,110,176,175⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step319FrontLog s2Step319FrontPlan
  · exact s2Step319Front_entry
  · exact s2Step319EntryBank_checked
  · exact s2Step319Front_sigma
  · rfl
  · exact s2Step319Front_branch
  · rfl
  · simpa only [s2Step319FrontPlan,pairEq] using s2Step319HeadBank_checked
  · simpa only [s2Step319FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step319F4_checked
  · exact s2Step319Counter_checked
  · rfl
  · simpa only [s2Step319FrontPlan,headEq] using s2Step319ExitBank_checked

private theorem s2Step319Complete_explicit_checked : compileHmrEarlyStepLog s2Step319EntryFBefore s2Step319FrontBank 112 176 ⟨112,110,176,175⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 57 s2Step319CompleteLog=some s2Step319CompletePlan := by
  let Q := s2Step319EarlyControlPlan
  have hq := s2Step319EarlyControl_plan_checked
  have fv1 : s2Step319CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step319CompleteOut.fv.payload[2]?.getD s2Step319CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step319CompleteOut.fv.payload[3]?.getD s2Step319CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step319CompleteOut.fv.payload[4]?.getD s2Step319CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step319EntryFBefore s2Step319EarlyControlArena s2Step319FrontBank 112 176 ⟨112,110,176,175⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 57 s2Step319CompleteLog s2Step319FrontPlan Q
    s2Step319Front_checked s2Step319Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step319Complete_owned s2Step319Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step319EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 784 s2Step319CompleteOut.fv.second (s2Step319CompleteOut.fv.payload[2]?.getD s2Step319CompleteOut.fv.sign) (s2Step319CompleteOut.fv.payload[3]?.getD s2Step319CompleteOut.fv.sign) (s2Step319CompleteOut.fv.payload[4]?.getD s2Step319CompleteOut.fv.sign) 806 57 s2Step319EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep319Arena : Arena := s2Step319EntryFBefore
def s2PrivateStep319Bank : WindowBank := s2Step319FrontBank
def s2PrivateStep319Spec : HmrSourceWalkStepLog := ⟨112,176,⟨112,110,176,175⟩,57,.early s2Step319CompleteLog⟩
def s2PrivateStep319Plan : HmrSourceStepPlan := .early s2Step319CompletePlan
theorem s2PrivateStep319_source : s2PrivateStep319Spec=s2ObservedLogs304[15] := rfl
theorem s2PrivateStep319_checked : compileHmrSourceStepLog s2PrivateStep319Arena s2PrivateStep319Bank
    s2PrivateStep319Spec.fgWidth s2PrivateStep319Spec.vWidth s2PrivateStep319Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 319 s2PrivateStep319Spec.need none s2PrivateStep319Spec.log=some s2PrivateStep319Plan := by
  change compileHmrSourceStepLog s2Step319EntryFBefore s2Step319FrontBank 112 176 ⟨112,110,176,175⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 319 57 none (.early s2Step319CompleteLog)=some (.early s2Step319CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 319<498)]
  rw [s2Step319Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
