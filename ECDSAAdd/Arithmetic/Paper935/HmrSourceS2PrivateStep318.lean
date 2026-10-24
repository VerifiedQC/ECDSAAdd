import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep316
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

private def s2Step318CompleteMoves : List (Wire × Wire) := [(807,111)]

private def s2Step318EarlyControlLog : HmrEarlyControlLog := ⟨[807, 784, 806, 787, 834],[830],[800],[894, 896, 901, 903, 907, 908],[]⟩

private def s2Step318FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [784]],[[834], [787], [806], [846]],[[], [], [], []]⟩,[809],[827],[830],[800],[894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[830, 800, 894, 896]⟩

private def s2Step318CompleteLog : HmrEarlyStepLog := ⟨s2Step318FrontLog,s2Step318CompleteMoves,s2Step318EarlyControlLog⟩

private def s2Step318ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step318ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step318ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110],769⟩

private def s2Step318ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842],771⟩

private def s2Step318FrontOut : WindowBank := ⟨s2Step318ExitFOut,s2Step318ExitGOut,s2Step318ExitFvOut,s2Step318ExitGvOut⟩

private def s2Step318CompleteOut : WindowBank := s2Step318FrontOut.repacked s2Step318CompleteMoves

private def s2Step318EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step318EarlyControlPositiveArena,[830],s2Step318EarlyControlEqualityArena,[800],⟨⟨809,false⟩,[⟨⟨830,false⟩,800⟩]⟩⟩

private def s2Step318EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨774,false⟩,784⟩,⟨⟨775,false⟩,806⟩,⟨⟨776,false⟩,787⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step318EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step318EarlyControlZeroArena,s2Step318EarlyControlZeroPlan,s2Step318EarlyControlClassPlan,s2Step318EarlyControlFlagArena,s2Step318EarlyControlFittedArena,s2Step318EarlyControlHistoryArena,s2Step318EarlyControlSigmaArena,s2Step318EarlyControlOutputArena,s2Step318EarlyControlLog⟩

private def s2Step318CounterWork : List Wire := [830, 800, 894, 896]

private theorem s2Step318Counter_bounded : s2Step318CounterWork.toFinset⊆arenaWires := by norm_num [s2Step318CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step318HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318CounterDuring : Arena := ⟨s2Step318HeadFvAfter.live∪s2Step318CounterWork.toFinset,Finset.union_subset s2Step318HeadFvAfter.bounded s2Step318Counter_bounded⟩

private def s2Step318EntryFFresh : List Wire := []

private def s2Step318EntryFvFresh : List Wire := []

private def s2Step318EntryGFresh : List Wire := []

private def s2Step318EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EntryGvFresh : List Wire := [784]

private def s2Step318ExitFExtra : List Wire := [787]

private def s2Step318ExitGExtra : List Wire := [111, 834]

private def s2Step318ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318ExitGvExtra : List Wire := [784, 806]

private def s2Step318Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318Add0Work : List Wire := [894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step318Add0_bounded : s2Step318Add0Work.toFinset⊆arenaWires := by
  have h : s2Step318Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step318Add0During : Arena := ⟨s2Step318Add0Arena.live∪s2Step318Add0Work.toFinset,Finset.union_subset s2Step318Add0Arena.bounded s2Step318Add0_bounded⟩

private def s2Step318Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318Add1Work : List Wire := [894, 896, 901, 903, 907, 908, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step318Add1_bounded : s2Step318Add1Work.toFinset⊆arenaWires := by
  have h : s2Step318Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step318Add1During : Arena := ⟨s2Step318Add1Arena.live∪s2Step318Add1Work.toFinset,Finset.union_subset s2Step318Add1Arena.bounded s2Step318Add1_bounded⟩

private def s2Step318F4FlagArena : Arena := ⟨s2Step318HeadFvAfter.live∪{830},Finset.union_subset s2Step318HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step318F4Plan : HmrHybridF4Plan := ⟨s2Step318F4FlagArena,[830],s2Step318Add0Arena,[800],s2Step318Add0During,s2Step318Add0Work,s2Step318Add1During,s2Step318Add1Work⟩

private def s2Step318HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 787],768⟩

private def s2Step318HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step318HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 834],769⟩

private def s2Step318HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784, 806],771⟩

private def s2Step318FrontHead : WindowBank := ⟨s2Step318HeadFOut,s2Step318HeadGOut,s2Step318HeadFvOut,s2Step318HeadGvOut⟩

private def s2Step318EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step318EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩

private def s2Step318EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step318EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784],771⟩

private def s2Step318FrontPair : WindowBank := ⟨s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut⟩

private def s2Step318FrontSigmaArena : Arena := ⟨s2Step318EntryGvAfter.live∪{809},Finset.union_subset s2Step318EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step318HeadFFresh : List Wire := [787]

private def s2Step318HeadFvFresh : List Wire := [846]

private def s2Step318HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318HeadGFresh : List Wire := [834]

private def s2Step318HeadGvFresh : List Wire := [806]

private def s2Step318FrontPlan : HmrSourceFront := ⟨s2Step318EntryGvAfter,s2Step318FrontPair,(growRow 768 s2Step318EntryFFresh ++ (growRow 769 s2Step318EntryGFresh ++ (growRow 770 s2Step318EntryFvFresh ++ (growRow 771 s2Step318EntryGvFresh ++ [])))),s2Step318FrontSigmaArena,[809],s2Step318HeadGBefore,[827],
  s2Step318HeadFvAfter,s2Step318FrontHead,(growRow 769 s2Step318HeadGFresh ++ (growRow 768 s2Step318HeadFFresh ++ (growRow 771 s2Step318HeadGvFresh ++ (growRow 770 s2Step318HeadFvFresh ++ [])))),s2Step318F4Plan,s2Step318CounterDuring,s2Step318CounterWork,s2Step318ExitGvAfter,s2Step318FrontOut,(shrinkRow 769 s2Step318ExitGExtra ++ (shrinkRow 768 s2Step318ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step318ExitGvExtra ++ []))))⟩

private def s2Step318CompletePlan : HmrEarlyStepPlan := ⟨s2Step318FrontPlan,s2Step318EarlyControlArena,s2Step318EarlyControlPlan,s2Step318CompleteMoves⟩

private theorem s2Step318Complete_apart : List.Disjoint (s2Step318CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [809, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] := by
  have nd : ((s2Step318CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[809, 827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step318Complete_owned : (s2Step318CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private def s2Step318CompleteMoveArena : Arena := ⟨s2Step318ExitGvAfter.live∪{111},Finset.union_subset s2Step318ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step318Complete_repack : s2Step318ExitGvAfter.checkRepack s2Step318CompleteMoves=some s2Step318EarlyControlArena := by
  have owned : 807∈s2Step318ExitGvAfter.live := by norm_num [s2Step318ExitGvAfter,arenaWires]
  have reserve : s2Step318ExitGvAfter.reserve {111}=some s2Step318CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step318ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step318CompleteMoveArena.retireSet {807}=s2Step318EarlyControlArena := by
    unfold Arena.retireSet s2Step318EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step318CompleteMoveArena,s2Step318ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step318CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step318CompleteMoveArena.retireSet {807}).checkRepack []=some s2Step318EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step318EarlyControl_branchOwned : ([827] : List Wire).toFinset⊆s2Step318EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlSigmaArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_branch : compileHmrBranchRetirement s2Step318EarlyControlSigmaArena 827=some s2Step318EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step318EarlyControl_branchOwned
  · ext q
    simp [s2Step318EarlyControlOutputArena,s2Step318EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step318EarlyControl_classEqualityBorrow : s2Step318EarlyControlPositiveArena.checkBorrow (([809, 830] : List Wire).length-1) s2Step318EarlyControlLog.classWork=some s2Step318EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step318EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step318EarlyControlEqualityArena,s2Step318EarlyControlPositiveArena,s2Step318EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step318EarlyControl_classEqualityOwned : ([809, 830] : List Wire).toFinset⊆s2Step318EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlPositiveArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_classEquality : compileHmrEqualityLog s2Step318EarlyControlPositiveArena [809, 830] 0 s2Step318EarlyControlLog.classWork=some (s2Step318EarlyControlEqualityArena,s2Step318EarlyControlLog.classWork,s2Step318EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step318EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step318EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step318EarlyControl_classOwned : ([777, 834, 809] : List Wire).toFinset⊆s2Step318EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_positiveBorrow : s2Step318EarlyControlZeroArena.checkBorrow (1) s2Step318EarlyControlLog.positiveWork=some s2Step318EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step318EarlyControlZeroArena (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step318EarlyControlPositiveArena,s2Step318EarlyControlZeroArena,s2Step318EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step318EarlyControl_class : compileHmrSourceClassLog s2Step318EarlyControlZeroArena false 777 s2Step318EarlyControlZeroPlan.top 0 809 s2Step318EarlyControlLog.positiveWork s2Step318EarlyControlLog.classWork=some s2Step318EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step318EarlyControlClassPlan s2Step318EarlyControlZeroArena false 777 s2Step318EarlyControlZeroPlan.top 0 809
  constructor
  · decide +kernel
  · exact s2Step318EarlyControl_classOwned
  · exact s2Step318EarlyControl_positiveBorrow
  · exact s2Step318EarlyControl_classEquality

private theorem s2Step318EarlyControl_entryRecordOwned : ([827, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_entrySigmaOwned : ([809, 254] : List Wire).toFinset⊆s2Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_fitBorrow : s2Step318EarlyControlFlagArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step318EarlyControlLog.recordFresh=some s2Step318EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step318EarlyControlFlagArena (fun q => (0≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step318EarlyControlFittedArena,s2Step318EarlyControlFlagArena,s2Step318EarlyControlLog,arenaWires]

private theorem s2Step318EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step318EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlFlagArena (fun q => (0≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_fit : compileHmrRecordGrowLog s2Step318EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step318EarlyControlLog.recordFresh=some s2Step318EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step318EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step318EarlyControl_fitBorrow

private theorem s2Step318EarlyControl_flagsBorrow : s2Step318EarlyControlEqualityArena.checkBorrow (6) s2Step318EarlyControlLog.flagWork=some s2Step318EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step318EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step318EarlyControlFlagArena,s2Step318EarlyControlEqualityArena,s2Step318EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step318EarlyControl_flagsOwned : ([800, 253, 252, 251] : List Wire).toFinset⊆s2Step318EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlEqualityArena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_flags : compileHmrFlagsLog s2Step318EarlyControlClassPlan.equalityArena s2Step318EarlyControlClassPlan.equality.top 253 252 251 s2Step318EarlyControlLog.flagWork=some s2Step318EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step318EarlyControl_flagsOwned⟩
  · exact s2Step318EarlyControl_flagsBorrow

private theorem s2Step318EarlyControl_historyBorrow : s2Step318EarlyControlArena.checkBorrow ((56-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).length)) s2Step318EarlyControlLog.recordFresh=some s2Step318EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step318EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step318EarlyControlHistoryArena,s2Step318EarlyControlArena,s2Step318EarlyControlLog,arenaWires]

private theorem s2Step318EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] : List Wire).toFinset⊆s2Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_history : compileHmrRecordGrowLog s2Step318EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step318EarlyControlLog.recordFresh=some s2Step318EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step318EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step318EarlyControl_historyBorrow

private theorem s2Step318EarlyControl_sigmaOwned : ([254, 809] : List Wire).toFinset⊆s2Step318EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_sigmaReleaseOwned : ([809] : List Wire).toFinset⊆s2Step318EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlHistoryArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_sigmaRelease : s2Step318EarlyControlHistoryArena.release {809} (fun _ => false)=some s2Step318EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step318EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step318EarlyControlSigmaArena,s2Step318EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step318EarlyControl_sigma : compileHmrSigmaDropLog s2Step318EarlyControlHistoryArena false 0 0 254 809 []=some s2Step318EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step318EarlyControl_sigmaOwned⟩
  · exact s2Step318EarlyControl_sigmaRelease

private theorem s2Step318EarlyControl_zeroBorrow : s2Step318EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step318EarlyControlLog.zeroWork=some s2Step318EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step318EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step318EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
      decide +kernel
    · ext q
      simp [s2Step318EarlyControlZeroArena,s2Step318EarlyControlArena,s2Step318EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step318EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step318EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step318EarlyControlArena (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (808≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EarlyControl_zero : compileHmrEqualityLog s2Step318EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step318EarlyControlLog.zeroWork=some (s2Step318EarlyControlZeroArena,s2Step318EarlyControlLog.zeroWork,s2Step318EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step318EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step318EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step318EarlyControl_logged : s2Step318EarlyControlPlan.Logged s2Step318EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 827 56 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step318EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step318EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step318EarlyControl_zero
  · exact s2Step318EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step318EarlyControl_flags
  · exact s2Step318EarlyControl_fit
  · exact s2Step318EarlyControl_history
  · exact s2Step318EarlyControl_sigma
  · exact s2Step318EarlyControl_branch

private theorem s2Step318EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step318EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 827 56 s2Step318EarlyControlLog=some s2Step318EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step318EarlyControlPlan s2Step318EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 254 253 252 251 827 56 s2Step318EarlyControl_logged

private def s2Step318EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step318EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩

private def s2Step318EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step318EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842],771⟩

private def s2Step318FrontBank : WindowBank := ⟨s2Step318EntryFRow,s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow⟩

private def s2Step318Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 787, 768]

private def s2Step318Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 834, 769]

private def s2Step318Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846, 770]

private def s2Step318Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784, 806, 771]

private theorem s2Step318Counter_apart : Disjoint s2Step318HeadFvAfter.live s2Step318CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step318HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318Counter_borrowed : s2Step318HeadFvAfter.checkBorrow 4 s2Step318CounterWork=some s2Step318CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step318HeadFvAfter s2Step318CounterDuring s2Step318CounterWork.toFinset s2Step318Counter_bounded s2Step318Counter_apart rfl

private theorem s2Step318Counter_owned : (809::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step318HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step318HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318Counter_checked : compileHmrCounterStepLog s2Step318HeadFvAfter true 809 [772, 773, 774, 775, 776, 777] s2Step318CounterWork=some s2Step318CounterDuring := by
  have owned : ∀q∈809::[772, 773, 774, 775, 776, 777],q∈s2Step318HeadFvAfter.live := fun q hq => s2Step318Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step318Counter_borrowed

private def s2Step318EntryFAfter : Arena := s2Step318EntryFBefore

private theorem s2Step318EntryBank_incomingDistinct : ([s2Step318EntryFRow,s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318EntryF_Incoming : rowsOwned s2Step318EntryFBefore [s2Step318EntryFRow,s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318EntryFRow,s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow] 0 s2Step318EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318EntryBank_outgoingOwned : rowsOwned s2Step318EntryGvAfter [s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step318EntryGvAfter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318EntryF_Outgoing : rowsOwned s2Step318EntryGvAfter [s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut] :=
  hmrRows_owned_drop s2Step318EntryGvAfter [s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut] 0 s2Step318EntryBank_outgoingOwned

private theorem s2Step318EntryF_distinct : (s2Step318EntryFRow.sign::s2Step318EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318EntryF_owned : (s2Step318EntryFRow.sign::s2Step318EntryFRow.payload).toFinset⊆s2Step318EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EntryF_reserved : s2Step318EntryFBefore.reserve s2Step318EntryFFresh.toFinset=some s2Step318EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step318EntryFFresh,arenaWires]
  · norm_num [s2Step318EntryFBefore,s2Step318EntryFFresh,arenaWires]
  · simp only [s2Step318EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step318EntryF_checked : planRowResizeLog s2Step318EntryFBefore s2Step318EntryFRow 112 s2Step318EntryFFresh=
    some (s2Step318EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩,growRow 768 s2Step318EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step318EntryFBefore s2Step318EntryFAfter s2Step318EntryFRow 112 s2Step318EntryFFresh
    s2Step318EntryF_distinct s2Step318EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318EntryF_reserved
  have rowEq : WindowRow.mk (s2Step318EntryFRow.payload++s2Step318EntryFFresh) s2Step318EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step318EntryFvAfter : Arena := s2Step318EntryFBefore

private def s2Step318EntryFvBefore : Arena := s2Step318EntryFBefore

private theorem s2Step318EntryFv_Incoming : rowsOwned s2Step318EntryFvBefore [s2Step318EntryFvRow,s2Step318EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318EntryFRow,s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow] 2 s2Step318EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318EntryFv_Outgoing : rowsOwned s2Step318EntryGvAfter [s2Step318EntryFvOut,s2Step318EntryGvOut] :=
  hmrRows_owned_drop s2Step318EntryGvAfter [s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut] 2 s2Step318EntryBank_outgoingOwned

private theorem s2Step318EntryFv_distinct : (s2Step318EntryFvRow.sign::s2Step318EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318EntryFv_owned : (s2Step318EntryFvRow.sign::s2Step318EntryFvRow.payload).toFinset⊆s2Step318EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318EntryFvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EntryFv_reserved : s2Step318EntryFvBefore.reserve s2Step318EntryFvFresh.toFinset=some s2Step318EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step318EntryFvFresh,arenaWires]
  · norm_num [s2Step318EntryFvBefore,s2Step318EntryFBefore,s2Step318EntryFvFresh,arenaWires]
  · simp only [s2Step318EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step318EntryFv_checked : planRowResizeLog s2Step318EntryFvBefore s2Step318EntryFvRow 175 s2Step318EntryFvFresh=
    some (s2Step318EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩,growRow 770 s2Step318EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step318EntryFvBefore s2Step318EntryFvAfter s2Step318EntryFvRow 175 s2Step318EntryFvFresh
    s2Step318EntryFv_distinct s2Step318EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step318EntryFvRow.payload++s2Step318EntryFvFresh) s2Step318EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step318EntryGAfter : Arena := s2Step318EntryFBefore

private def s2Step318EntryGBefore : Arena := s2Step318EntryFBefore

private theorem s2Step318EntryG_Incoming : rowsOwned s2Step318EntryGBefore [s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318EntryFRow,s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow] 1 s2Step318EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318EntryG_Outgoing : rowsOwned s2Step318EntryGvAfter [s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut] :=
  hmrRows_owned_drop s2Step318EntryGvAfter [s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut] 1 s2Step318EntryBank_outgoingOwned

private theorem s2Step318EntryG_distinct : (s2Step318EntryGRow.sign::s2Step318EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318EntryG_owned : (s2Step318EntryGRow.sign::s2Step318EntryGRow.payload).toFinset⊆s2Step318EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318EntryGBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EntryG_reserved : s2Step318EntryGBefore.reserve s2Step318EntryGFresh.toFinset=some s2Step318EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step318EntryGFresh,arenaWires]
  · norm_num [s2Step318EntryGBefore,s2Step318EntryFBefore,s2Step318EntryGFresh,arenaWires]
  · simp only [s2Step318EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step318EntryG_checked : planRowResizeLog s2Step318EntryGBefore s2Step318EntryGRow 112 s2Step318EntryGFresh=
    some (s2Step318EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩,growRow 769 s2Step318EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step318EntryGBefore s2Step318EntryGAfter s2Step318EntryGRow 112 s2Step318EntryGFresh
    s2Step318EntryG_distinct s2Step318EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318EntryG_reserved
  have rowEq : WindowRow.mk (s2Step318EntryGRow.payload++s2Step318EntryGFresh) s2Step318EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step318EntryGvBefore : Arena := s2Step318EntryFBefore

private theorem s2Step318EntryGv_Incoming : rowsOwned s2Step318EntryGvBefore [s2Step318EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318EntryFRow,s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow] 3 s2Step318EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318EntryGv_Outgoing : rowsOwned s2Step318EntryGvAfter [s2Step318EntryGvOut] :=
  hmrRows_owned_drop s2Step318EntryGvAfter [s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut] 3 s2Step318EntryBank_outgoingOwned

private theorem s2Step318EntryGv_distinct : (s2Step318EntryGvRow.sign::s2Step318EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318EntryGv_owned : (s2Step318EntryGvRow.sign::s2Step318EntryGvRow.payload).toFinset⊆s2Step318EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318EntryGvBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318EntryGv_reserved : s2Step318EntryGvBefore.reserve s2Step318EntryGvFresh.toFinset=some s2Step318EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step318EntryGvFresh,arenaWires]
  · norm_num [s2Step318EntryGvBefore,s2Step318EntryFBefore,s2Step318EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step318EntryGvAfter,s2Step318EntryGvBefore,s2Step318EntryFBefore,s2Step318EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step318EntryGv_checked : planRowResizeLog s2Step318EntryGvBefore s2Step318EntryGvRow 175 s2Step318EntryGvFresh=
    some (s2Step318EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784],771⟩,growRow 771 s2Step318EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step318EntryGvBefore s2Step318EntryGvAfter s2Step318EntryGvRow 175 s2Step318EntryGvFresh
    s2Step318EntryGv_distinct s2Step318EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step318EntryGvRow.payload++s2Step318EntryGvFresh) s2Step318EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step318EntryBank_rows : planWindowRowsLog s2Step318EntryFBefore [(s2Step318EntryFRow,112),(s2Step318EntryGRow,112),(s2Step318EntryFvRow,175),(s2Step318EntryGvRow,175)] [s2Step318EntryFFresh,s2Step318EntryGFresh,s2Step318EntryFvFresh,s2Step318EntryGvFresh]=
    some (s2Step318EntryGvAfter,[s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut],(growRow 768 s2Step318EntryFFresh ++ (growRow 769 s2Step318EntryGFresh ++ (growRow 770 s2Step318EntryFvFresh ++ (growRow 771 s2Step318EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step318EntryGvAfter [] []=some (s2Step318EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step318EntryGvBefore s2Step318EntryGvAfter s2Step318EntryGvAfter
    s2Step318EntryGvRow s2Step318EntryGvOut 175 s2Step318EntryGvFresh [] [] []
    (growRow 771 s2Step318EntryGvFresh) ([]) s2Step318EntryGv_Incoming s2Step318EntryGv_checked h4 s2Step318EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step318EntryFvBefore s2Step318EntryFvAfter s2Step318EntryGvAfter
    s2Step318EntryFvRow s2Step318EntryFvOut 175 s2Step318EntryFvFresh [(s2Step318EntryGvRow,175)] [s2Step318EntryGvFresh] [s2Step318EntryGvOut]
    (growRow 770 s2Step318EntryFvFresh) ((growRow 771 s2Step318EntryGvFresh ++ [])) s2Step318EntryFv_Incoming s2Step318EntryFv_checked h3 s2Step318EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step318EntryGBefore s2Step318EntryGAfter s2Step318EntryGvAfter
    s2Step318EntryGRow s2Step318EntryGOut 112 s2Step318EntryGFresh [(s2Step318EntryFvRow,175),(s2Step318EntryGvRow,175)] [s2Step318EntryFvFresh,s2Step318EntryGvFresh] [s2Step318EntryFvOut,s2Step318EntryGvOut]
    (growRow 769 s2Step318EntryGFresh) ((growRow 770 s2Step318EntryFvFresh ++ (growRow 771 s2Step318EntryGvFresh ++ []))) s2Step318EntryG_Incoming s2Step318EntryG_checked h2 s2Step318EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step318EntryFBefore s2Step318EntryFAfter s2Step318EntryGvAfter
    s2Step318EntryFRow s2Step318EntryFOut 112 s2Step318EntryFFresh [(s2Step318EntryGRow,112),(s2Step318EntryFvRow,175),(s2Step318EntryGvRow,175)] [s2Step318EntryGFresh,s2Step318EntryFvFresh,s2Step318EntryGvFresh] [s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut]
    (growRow 768 s2Step318EntryFFresh) ((growRow 769 s2Step318EntryGFresh ++ (growRow 770 s2Step318EntryFvFresh ++ (growRow 771 s2Step318EntryGvFresh ++ [])))) s2Step318EntryF_Incoming s2Step318EntryF_checked h1 s2Step318EntryF_Outgoing
  exact h0

private theorem s2Step318EntryBank_checked : compileHmrBankResizeLog .entry s2Step318EntryFBefore ⟨s2Step318EntryFRow,s2Step318EntryGRow,s2Step318EntryFvRow,s2Step318EntryGvRow⟩ ⟨112,112,175,175⟩ [s2Step318EntryFFresh,s2Step318EntryGFresh,s2Step318EntryFvFresh,s2Step318EntryGvFresh]=
    some (s2Step318EntryGvAfter,⟨s2Step318EntryFOut,s2Step318EntryGOut,s2Step318EntryFvOut,s2Step318EntryGvOut⟩,(growRow 768 s2Step318EntryFFresh ++ (growRow 769 s2Step318EntryGFresh ++ (growRow 770 s2Step318EntryFvFresh ++ (growRow 771 s2Step318EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step318EntryBank_rows]
  rfl

private def s2Step318ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318ExitFBefore : Arena := s2Step318ExitGAfter

private def s2Step318ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 787],768⟩

private def s2Step318ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩

private def s2Step318ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 834],769⟩

private def s2Step318ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784, 806],771⟩

private theorem s2Step318ExitBank_incomingDistinct : ([s2Step318ExitGRow,s2Step318ExitFRow,s2Step318ExitFvRow,s2Step318ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318ExitF_Incoming : rowsOwned s2Step318ExitFBefore [s2Step318ExitFRow,s2Step318ExitFvRow,s2Step318ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318ExitGRow,s2Step318ExitFRow,s2Step318ExitFvRow,s2Step318ExitGvRow] 1 s2Step318ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318ExitFBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318ExitBank_outgoingOwned : rowsOwned s2Step318ExitGvAfter [s2Step318ExitGOut,s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step318ExitGvAfter (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318ExitF_Outgoing : rowsOwned s2Step318ExitGvAfter [s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut] :=
  hmrRows_owned_drop s2Step318ExitGvAfter [s2Step318ExitGOut,s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut] 1 s2Step318ExitBank_outgoingOwned

private theorem s2Step318ExitF_distinct : (s2Step318ExitFRow.sign::s2Step318ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318ExitF_owned : (s2Step318ExitFRow.sign::s2Step318ExitFRow.payload).toFinset⊆s2Step318ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318ExitFBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318ExitF_retired : s2Step318ExitFBefore.retireSet s2Step318ExitFExtra.toFinset=s2Step318ExitFAfter := by
  unfold Arena.retireSet s2Step318ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step318ExitFBefore,s2Step318ExitGAfter,s2Step318ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step318ExitF_checked : planRowResizeLog s2Step318ExitFBefore s2Step318ExitFRow 112 []=
    some (s2Step318ExitFAfter,s2Step318ExitFOut,shrinkRow 768 s2Step318ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step318ExitFBefore s2Step318ExitFRow 112 s2Step318ExitF_distinct s2Step318ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step318ExitFRow.payload.take 112) s2Step318ExitFRow.sign=s2Step318ExitFOut := by decide +kernel
  have hi : s2Step318ExitFRow.payload.drop 112=s2Step318ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step318ExitF_retired] at result
  exact result

private def s2Step318ExitFvAfter : Arena := s2Step318ExitFAfter

private def s2Step318ExitFvBefore : Arena := s2Step318ExitFAfter

private theorem s2Step318ExitFv_Incoming : rowsOwned s2Step318ExitFvBefore [s2Step318ExitFvRow,s2Step318ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318ExitGRow,s2Step318ExitFRow,s2Step318ExitFvRow,s2Step318ExitGvRow] 2 s2Step318ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318ExitFvBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318ExitFv_Outgoing : rowsOwned s2Step318ExitGvAfter [s2Step318ExitFvOut,s2Step318ExitGvOut] :=
  hmrRows_owned_drop s2Step318ExitGvAfter [s2Step318ExitGOut,s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut] 2 s2Step318ExitBank_outgoingOwned

private theorem s2Step318ExitFv_distinct : (s2Step318ExitFvRow.sign::s2Step318ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318ExitFv_owned : (s2Step318ExitFvRow.sign::s2Step318ExitFvRow.payload).toFinset⊆s2Step318ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318ExitFvBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318ExitFv_reserved : s2Step318ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step318ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step318ExitFv_checked : planRowResizeLog s2Step318ExitFvBefore s2Step318ExitFvRow 176 []=
    some (s2Step318ExitFvAfter,s2Step318ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step318ExitFvBefore s2Step318ExitFvAfter s2Step318ExitFvRow 176 []
    s2Step318ExitFv_distinct s2Step318ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step318ExitFvRow.payload++[]) s2Step318ExitFvRow.sign=s2Step318ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step318ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private theorem s2Step318ExitG_Incoming : rowsOwned s2Step318ExitGBefore [s2Step318ExitGRow,s2Step318ExitFRow,s2Step318ExitFvRow,s2Step318ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318ExitGRow,s2Step318ExitFRow,s2Step318ExitFvRow,s2Step318ExitGvRow] 0 s2Step318ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318ExitG_Outgoing : rowsOwned s2Step318ExitGvAfter [s2Step318ExitGOut,s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut] :=
  hmrRows_owned_drop s2Step318ExitGvAfter [s2Step318ExitGOut,s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut] 0 s2Step318ExitBank_outgoingOwned

private theorem s2Step318ExitG_distinct : (s2Step318ExitGRow.sign::s2Step318ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318ExitG_owned : (s2Step318ExitGRow.sign::s2Step318ExitGRow.payload).toFinset⊆s2Step318ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318ExitGBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318ExitG_retired : s2Step318ExitGBefore.retireSet s2Step318ExitGExtra.toFinset=s2Step318ExitGAfter := by
  unfold Arena.retireSet s2Step318ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step318ExitGBefore,s2Step318ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step318ExitG_checked : planRowResizeLog s2Step318ExitGBefore s2Step318ExitGRow 111 []=
    some (s2Step318ExitGAfter,s2Step318ExitGOut,shrinkRow 769 s2Step318ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step318ExitGBefore s2Step318ExitGRow 111 s2Step318ExitG_distinct s2Step318ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step318ExitGRow.payload.take 111) s2Step318ExitGRow.sign=s2Step318ExitGOut := by decide +kernel
  have hi : s2Step318ExitGRow.payload.drop 111=s2Step318ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step318ExitG_retired] at result
  exact result

private def s2Step318ExitGvBefore : Arena := s2Step318ExitFAfter

private theorem s2Step318ExitGv_Incoming : rowsOwned s2Step318ExitGvBefore [s2Step318ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318ExitGRow,s2Step318ExitFRow,s2Step318ExitFvRow,s2Step318ExitGvRow] 3 s2Step318ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318ExitGvBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318ExitGv_Outgoing : rowsOwned s2Step318ExitGvAfter [s2Step318ExitGvOut] :=
  hmrRows_owned_drop s2Step318ExitGvAfter [s2Step318ExitGOut,s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut] 3 s2Step318ExitBank_outgoingOwned

private theorem s2Step318ExitGv_distinct : (s2Step318ExitGvRow.sign::s2Step318ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318ExitGv_owned : (s2Step318ExitGvRow.sign::s2Step318ExitGvRow.payload).toFinset⊆s2Step318ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318ExitGvBefore (fun q => (0≤q ∧ q<111) ∨ (112≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318ExitGv_retired : s2Step318ExitGvBefore.retireSet s2Step318ExitGvExtra.toFinset=s2Step318ExitGvAfter := by
  unfold Arena.retireSet s2Step318ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step318ExitGvBefore,s2Step318ExitFAfter,s2Step318ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step318ExitGv_checked : planRowResizeLog s2Step318ExitGvBefore s2Step318ExitGvRow 174 []=
    some (s2Step318ExitGvAfter,s2Step318ExitGvOut,shrinkRow 771 s2Step318ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step318ExitGvBefore s2Step318ExitGvRow 174 s2Step318ExitGv_distinct s2Step318ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step318ExitGvRow.payload.take 174) s2Step318ExitGvRow.sign=s2Step318ExitGvOut := by decide +kernel
  have hi : s2Step318ExitGvRow.payload.drop 174=s2Step318ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step318ExitGv_retired] at result
  exact result

private theorem s2Step318ExitBank_rows : planWindowRowsLog s2Step318ExitGBefore [(s2Step318ExitGRow,111),(s2Step318ExitFRow,112),(s2Step318ExitFvRow,176),(s2Step318ExitGvRow,174)] [[],[],[],[]]=
    some (s2Step318ExitGvAfter,[s2Step318ExitGOut,s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut],(shrinkRow 769 s2Step318ExitGExtra ++ (shrinkRow 768 s2Step318ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step318ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step318ExitGvAfter [] []=some (s2Step318ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step318ExitGvBefore s2Step318ExitGvAfter s2Step318ExitGvAfter
    s2Step318ExitGvRow s2Step318ExitGvOut 174 [] [] [] []
    (shrinkRow 771 s2Step318ExitGvExtra) ([]) s2Step318ExitGv_Incoming s2Step318ExitGv_checked h4 s2Step318ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step318ExitFvBefore s2Step318ExitFvAfter s2Step318ExitGvAfter
    s2Step318ExitFvRow s2Step318ExitFvOut 176 [] [(s2Step318ExitGvRow,174)] [[]] [s2Step318ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step318ExitGvExtra ++ [])) s2Step318ExitFv_Incoming s2Step318ExitFv_checked h3 s2Step318ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step318ExitFBefore s2Step318ExitFAfter s2Step318ExitGvAfter
    s2Step318ExitFRow s2Step318ExitFOut 112 [] [(s2Step318ExitFvRow,176),(s2Step318ExitGvRow,174)] [[],[]] [s2Step318ExitFvOut,s2Step318ExitGvOut]
    (shrinkRow 768 s2Step318ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step318ExitGvExtra ++ []))) s2Step318ExitF_Incoming s2Step318ExitF_checked h2 s2Step318ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step318ExitGBefore s2Step318ExitGAfter s2Step318ExitGvAfter
    s2Step318ExitGRow s2Step318ExitGOut 111 [] [(s2Step318ExitFRow,112),(s2Step318ExitFvRow,176),(s2Step318ExitGvRow,174)] [[],[],[]] [s2Step318ExitFOut,s2Step318ExitFvOut,s2Step318ExitGvOut]
    (shrinkRow 769 s2Step318ExitGExtra) ((shrinkRow 768 s2Step318ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step318ExitGvExtra ++ [])))) s2Step318ExitG_Incoming s2Step318ExitG_checked h1 s2Step318ExitG_Outgoing
  exact h0

private theorem s2Step318ExitBank_checked : compileHmrBankResizeLog .exit s2Step318ExitGBefore ⟨s2Step318ExitFRow,s2Step318ExitGRow,s2Step318ExitFvRow,s2Step318ExitGvRow⟩ ⟨112,111,176,174⟩ [[],[],[],[]]=
    some (s2Step318ExitGvAfter,⟨s2Step318ExitFOut,s2Step318ExitGOut,s2Step318ExitFvOut,s2Step318ExitGvOut⟩,(shrinkRow 769 s2Step318ExitGExtra ++ (shrinkRow 768 s2Step318ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step318ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step318ExitBank_rows]
  rfl

private theorem s2Step318Add0_apart : Disjoint s2Step318Add0Arena.live s2Step318Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step318Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318Add0_card : s2Step318Add0Arena.live.card=904 := by
  decide +kernel

private theorem s2Step318Add0_borrowed : s2Step318Add0Arena.checkBorrow (hmrHybridCount s2Step318Add0Arena s2Step318Add0B.length) s2Step318Add0Work=some s2Step318Add0During := by
  have len : s2Step318Add0Work.length=hmrHybridCount s2Step318Add0Arena s2Step318Add0B.length := by
    rw [hmrHybridCount,s2Step318Add0_card]
    decide +kernel
  have nd : s2Step318Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step318Add0Arena s2Step318Add0During s2Step318Add0Work.toFinset s2Step318Add0_bounded s2Step318Add0_apart rfl

private theorem s2Step318Add0_distinct : (830::827::800::(s2Step318Add0A++s2Step318Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318Add0_owned : (830::827::800::(s2Step318Add0A++s2Step318Add0B)).toFinset⊆s2Step318Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step318Add0Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318Add0_checked : compileHmrHybridCinLog s2Step318Add0Arena 827 830 800 s2Step318Add0A s2Step318Add0B s2Step318Add0Work=some s2Step318Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step318Add0Arena s2Step318Add0During 827 830 800 s2Step318Add0A s2Step318Add0B s2Step318Add0Work
    (by decide +kernel) (by decide +kernel) s2Step318Add0_distinct
    (fun q hq => s2Step318Add0_owned (List.mem_toFinset.mpr hq)) s2Step318Add0_borrowed

private theorem s2Step318Add1_apart : Disjoint s2Step318Add1Arena.live s2Step318Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step318Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318Add1_card : s2Step318Add1Arena.live.card=904 := by
  decide +kernel

private theorem s2Step318Add1_borrowed : s2Step318Add1Arena.checkBorrow (hmrHybridCount s2Step318Add1Arena s2Step318Add1B.length) s2Step318Add1Work=some s2Step318Add1During := by
  have len : s2Step318Add1Work.length=hmrHybridCount s2Step318Add1Arena s2Step318Add1B.length := by
    rw [hmrHybridCount,s2Step318Add1_card]
    decide +kernel
  have nd : s2Step318Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step318Add1Arena s2Step318Add1During s2Step318Add1Work.toFinset s2Step318Add1_bounded s2Step318Add1_apart rfl

private theorem s2Step318Add1_distinct : (830::827::800::(s2Step318Add1A++s2Step318Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318Add1_owned : (830::827::800::(s2Step318Add1A++s2Step318Add1B)).toFinset⊆s2Step318Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step318Add1Arena (fun q => (0≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318Add1_checked : compileHmrHybridCinLog s2Step318Add1Arena 827 830 800 s2Step318Add1A s2Step318Add1B s2Step318Add1Work=some s2Step318Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step318Add1Arena s2Step318Add1During 827 830 800 s2Step318Add1A s2Step318Add1B s2Step318Add1Work
    (by decide +kernel) (by decide +kernel) s2Step318Add1_distinct
    (fun q hq => s2Step318Add1_owned (List.mem_toFinset.mpr hq)) s2Step318Add1_borrowed

private theorem s2Step318F4_apart : Disjoint (s2Step318Add0A++s2Step318Add0B).toFinset (s2Step318Add1A++s2Step318Add1B).toFinset := by
  have nd : ((s2Step318Add0A++s2Step318Add0B)++(s2Step318Add1A++s2Step318Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step318F4_carry : s2Step318F4FlagArena.checkBorrow 1 [800]=some s2Step318Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step318F4FlagArena,s2Step318HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step318F4FlagArena,s2Step318HeadFvAfter,s2Step318Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step318F4_distinct : (809::827::830::800::((s2Step318Add0A++s2Step318Add1A)++(s2Step318Add0B++s2Step318Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318F4_flag : s2Step318HeadFvAfter.checkBorrow 1 [830]=some s2Step318F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step318HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step318F4_owned : (809::827::((s2Step318Add0A++s2Step318Add1A)++(s2Step318Add0B++s2Step318Add1B))).toFinset⊆s2Step318HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step318HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318F4_checked : compileHmrHybridF4Log s2Step318HeadFvAfter 809 827 s2Step318Add0A s2Step318Add0B s2Step318Add1A s2Step318Add1B [830] [800] s2Step318Add0Work s2Step318Add1Work=some s2Step318F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step318HeadFvAfter s2Step318F4FlagArena s2Step318Add0Arena s2Step318Add0During s2Step318Add1During 809 827
    s2Step318Add0A s2Step318Add0B s2Step318Add1A s2Step318Add1B [830] [800] s2Step318Add0Work s2Step318Add1Work
    (fun q hq => s2Step318F4_owned (List.mem_toFinset.mpr hq)) s2Step318F4_flag s2Step318F4_carry
    s2Step318F4_distinct s2Step318F4_apart s2Step318Add0_checked s2Step318Add1_checked

private theorem s2Step318Front_branch : s2Step318FrontSigmaArena.checkBorrow 1 [827]=some s2Step318HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step318FrontSigmaArena,s2Step318EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step318FrontSigmaArena,s2Step318EntryGvAfter,s2Step318HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step318Front_entry : HmrFrontEntryValid s2Step318EntryFBefore s2Step318FrontBank 112 175 ⟨112,111,176,174⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step318FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step318EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step318EntryFBefore (fun q => (0≤q ∧ q<784) ∨ (785≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<827) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step318FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step318Front_sigma : s2Step318EntryGvAfter.checkBorrow 1 [809]=some s2Step318FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step318EntryGvAfter,arenaWires]
  · rfl

private def s2Step318HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318HeadFBefore : Arena := s2Step318HeadGAfter

private def s2Step318HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623],768⟩

private def s2Step318HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837],770⟩

private def s2Step318HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111],769⟩

private def s2Step318HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784],771⟩

private theorem s2Step318HeadBank_incomingDistinct : ([s2Step318HeadGRow,s2Step318HeadFRow,s2Step318HeadGvRow,s2Step318HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318HeadF_Incoming : rowsOwned s2Step318HeadFBefore [s2Step318HeadFRow,s2Step318HeadGvRow,s2Step318HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318HeadGRow,s2Step318HeadFRow,s2Step318HeadGvRow,s2Step318HeadFvRow] 1 s2Step318HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318HeadBank_outgoingOwned : rowsOwned s2Step318HeadFvAfter [s2Step318HeadGOut,s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step318HeadFvAfter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318HeadF_Outgoing : rowsOwned s2Step318HeadFvAfter [s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut] :=
  hmrRows_owned_drop s2Step318HeadFvAfter [s2Step318HeadGOut,s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut] 1 s2Step318HeadBank_outgoingOwned

private theorem s2Step318HeadF_distinct : (s2Step318HeadFRow.sign::s2Step318HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318HeadF_owned : (s2Step318HeadFRow.sign::s2Step318HeadFRow.payload).toFinset⊆s2Step318HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318HeadFBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318HeadF_reserved : s2Step318HeadFBefore.reserve s2Step318HeadFFresh.toFinset=some s2Step318HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step318HeadFFresh,arenaWires]
  · norm_num [s2Step318HeadFBefore,s2Step318HeadGAfter,s2Step318HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step318HeadFAfter,s2Step318HeadFBefore,s2Step318HeadGAfter,s2Step318HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step318HeadF_checked : planRowResizeLog s2Step318HeadFBefore s2Step318HeadFRow 113 s2Step318HeadFFresh=
    some (s2Step318HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 787],768⟩,growRow 768 s2Step318HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step318HeadFBefore s2Step318HeadFAfter s2Step318HeadFRow 113 s2Step318HeadFFresh
    s2Step318HeadF_distinct s2Step318HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318HeadF_reserved
  have rowEq : WindowRow.mk (s2Step318HeadFRow.payload++s2Step318HeadFFresh) s2Step318HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 787],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step318HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)),Finset.filter_subset _ _⟩

private def s2Step318HeadFvBefore : Arena := s2Step318HeadGvAfter

private theorem s2Step318HeadFv_Incoming : rowsOwned s2Step318HeadFvBefore [s2Step318HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318HeadGRow,s2Step318HeadFRow,s2Step318HeadGvRow,s2Step318HeadFvRow] 3 s2Step318HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318HeadFv_Outgoing : rowsOwned s2Step318HeadFvAfter [s2Step318HeadFvOut] :=
  hmrRows_owned_drop s2Step318HeadFvAfter [s2Step318HeadGOut,s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut] 3 s2Step318HeadBank_outgoingOwned

private theorem s2Step318HeadFv_distinct : (s2Step318HeadFvRow.sign::s2Step318HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318HeadFv_owned : (s2Step318HeadFvRow.sign::s2Step318HeadFvRow.payload).toFinset⊆s2Step318HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318HeadFvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318HeadFv_reserved : s2Step318HeadFvBefore.reserve s2Step318HeadFvFresh.toFinset=some s2Step318HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step318HeadFvFresh,arenaWires]
  · norm_num [s2Step318HeadFvBefore,s2Step318HeadGvAfter,s2Step318HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step318HeadFvAfter,s2Step318HeadFvBefore,s2Step318HeadGvAfter,s2Step318HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step318HeadFv_checked : planRowResizeLog s2Step318HeadFvBefore s2Step318HeadFvRow 176 s2Step318HeadFvFresh=
    some (s2Step318HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩,growRow 770 s2Step318HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step318HeadFvBefore s2Step318HeadFvAfter s2Step318HeadFvRow 176 s2Step318HeadFvFresh
    s2Step318HeadFv_distinct s2Step318HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step318HeadFvRow.payload++s2Step318HeadFvFresh) s2Step318HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 201, 200, 199, 198, 197, 196, 195, 194, 193, 192, 191, 190, 189, 188, 187, 186, 185, 184, 183, 182, 181, 180, 179, 178, 177, 176, 175, 174, 173, 172, 171, 170, 169, 168, 167, 166, 165, 164, 163, 162, 161, 160, 159, 158, 157, 156, 155, 154, 153, 152, 151, 150, 149, 148, 147, 146, 145, 144, 143, 142, 141, 140, 139, 138, 137, 136, 135, 134, 133, 132, 131, 130, 129, 128, 127, 126, 125, 124, 123, 122, 121, 120, 119, 118, 117, 116, 115, 114, 113, 112, 807, 792, 867, 885, 782, 794, 836, 786, 816, 789, 841, 839, 798, 891, 781, 815, 796, 790, 821, 785, 882, 783, 797, 820, 805, 802, 825, 793, 810, 824, 837, 846],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step318HeadG_Incoming : rowsOwned s2Step318HeadGBefore [s2Step318HeadGRow,s2Step318HeadFRow,s2Step318HeadGvRow,s2Step318HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318HeadGRow,s2Step318HeadFRow,s2Step318HeadGvRow,s2Step318HeadFvRow] 0 s2Step318HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318HeadG_Outgoing : rowsOwned s2Step318HeadFvAfter [s2Step318HeadGOut,s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut] :=
  hmrRows_owned_drop s2Step318HeadFvAfter [s2Step318HeadGOut,s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut] 0 s2Step318HeadBank_outgoingOwned

private theorem s2Step318HeadG_distinct : (s2Step318HeadGRow.sign::s2Step318HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318HeadG_owned : (s2Step318HeadGRow.sign::s2Step318HeadGRow.payload).toFinset⊆s2Step318HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318HeadGBefore (fun q => (0≤q ∧ q<787) ∨ (788≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<834) ∨ (835≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318HeadG_reserved : s2Step318HeadGBefore.reserve s2Step318HeadGFresh.toFinset=some s2Step318HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step318HeadGFresh,arenaWires]
  · norm_num [s2Step318HeadGBefore,s2Step318HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step318HeadGAfter,s2Step318HeadGBefore,s2Step318HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step318HeadG_checked : planRowResizeLog s2Step318HeadGBefore s2Step318HeadGRow 113 s2Step318HeadGFresh=
    some (s2Step318HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 834],769⟩,growRow 769 s2Step318HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step318HeadGBefore s2Step318HeadGAfter s2Step318HeadGRow 113 s2Step318HeadGFresh
    s2Step318HeadG_distinct s2Step318HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318HeadG_reserved
  have rowEq : WindowRow.mk (s2Step318HeadGRow.payload++s2Step318HeadGFresh) s2Step318HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 834],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step318HeadGvBefore : Arena := s2Step318HeadFAfter

private theorem s2Step318HeadGv_Incoming : rowsOwned s2Step318HeadGvBefore [s2Step318HeadGvRow,s2Step318HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step318HeadGRow,s2Step318HeadFRow,s2Step318HeadGvRow,s2Step318HeadFvRow] 2 s2Step318HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step318HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
    decide +kernel

private theorem s2Step318HeadGv_Outgoing : rowsOwned s2Step318HeadFvAfter [s2Step318HeadGvOut,s2Step318HeadFvOut] :=
  hmrRows_owned_drop s2Step318HeadFvAfter [s2Step318HeadGOut,s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut] 2 s2Step318HeadBank_outgoingOwned

private theorem s2Step318HeadGv_distinct : (s2Step318HeadGvRow.sign::s2Step318HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step318HeadGv_owned : (s2Step318HeadGvRow.sign::s2Step318HeadGvRow.payload).toFinset⊆s2Step318HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step318HeadGvBefore (fun q => (0≤q ∧ q<800) ∨ (801≤q ∧ q<806) ∨ (807≤q ∧ q<830) ∨ (831≤q ∧ q<846) ∨ (847≤q ∧ q<894) ∨ (895≤q ∧ q<896) ∨ (897≤q ∧ q<901) ∨ (902≤q ∧ q<903) ∨ (904≤q ∧ q<907) ∨ (909≤q ∧ q<910)) rfl
  decide +kernel

private theorem s2Step318HeadGv_reserved : s2Step318HeadGvBefore.reserve s2Step318HeadGvFresh.toFinset=some s2Step318HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step318HeadGvFresh,arenaWires]
  · norm_num [s2Step318HeadGvBefore,s2Step318HeadFAfter,s2Step318HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step318HeadGvAfter,s2Step318HeadGvBefore,s2Step318HeadFAfter,s2Step318HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step318HeadGv_checked : planRowResizeLog s2Step318HeadGvBefore s2Step318HeadGvRow 176 s2Step318HeadGvFresh=
    some (s2Step318HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784, 806],771⟩,growRow 771 s2Step318HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step318HeadGvBefore s2Step318HeadGvAfter s2Step318HeadGvRow 176 s2Step318HeadGvFresh
    s2Step318HeadGv_distinct s2Step318HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step318HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step318HeadGvRow.payload++s2Step318HeadGvFresh) s2Step318HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 714, 713, 712, 711, 710, 709, 708, 707, 706, 705, 704, 703, 702, 701, 700, 699, 698, 697, 696, 695, 694, 693, 692, 691, 690, 689, 688, 687, 686, 685, 684, 683, 681, 682, 680, 679, 678, 677, 675, 676, 674, 673, 672, 671, 670, 669, 668, 667, 665, 666, 664, 662, 663, 660, 661, 659, 658, 657, 656, 655, 654, 653, 652, 651, 650, 649, 647, 648, 646, 645, 644, 643, 641, 642, 640, 639, 638, 637, 636, 635, 634, 633, 632, 631, 630, 629, 628, 627, 626, 625, 624, 840, 814, 879, 829, 877, 817, 779, 822, 851, 778, 844, 788, 845, 801, 804, 808, 791, 849, 812, 832, 780, 847, 831, 819, 826, 799, 811, 803, 835, 842, 784, 806],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step318HeadBank_rows : planWindowRowsLog s2Step318HeadGBefore [(s2Step318HeadGRow,113),(s2Step318HeadFRow,113),(s2Step318HeadGvRow,176),(s2Step318HeadFvRow,176)] [s2Step318HeadGFresh,s2Step318HeadFFresh,s2Step318HeadGvFresh,s2Step318HeadFvFresh]=
    some (s2Step318HeadFvAfter,[s2Step318HeadGOut,s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut],(growRow 769 s2Step318HeadGFresh ++ (growRow 768 s2Step318HeadFFresh ++ (growRow 771 s2Step318HeadGvFresh ++ (growRow 770 s2Step318HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step318HeadFvAfter [] []=some (s2Step318HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step318HeadFvBefore s2Step318HeadFvAfter s2Step318HeadFvAfter
    s2Step318HeadFvRow s2Step318HeadFvOut 176 s2Step318HeadFvFresh [] [] []
    (growRow 770 s2Step318HeadFvFresh) ([]) s2Step318HeadFv_Incoming s2Step318HeadFv_checked h4 s2Step318HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step318HeadGvBefore s2Step318HeadGvAfter s2Step318HeadFvAfter
    s2Step318HeadGvRow s2Step318HeadGvOut 176 s2Step318HeadGvFresh [(s2Step318HeadFvRow,176)] [s2Step318HeadFvFresh] [s2Step318HeadFvOut]
    (growRow 771 s2Step318HeadGvFresh) ((growRow 770 s2Step318HeadFvFresh ++ [])) s2Step318HeadGv_Incoming s2Step318HeadGv_checked h3 s2Step318HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step318HeadFBefore s2Step318HeadFAfter s2Step318HeadFvAfter
    s2Step318HeadFRow s2Step318HeadFOut 113 s2Step318HeadFFresh [(s2Step318HeadGvRow,176),(s2Step318HeadFvRow,176)] [s2Step318HeadGvFresh,s2Step318HeadFvFresh] [s2Step318HeadGvOut,s2Step318HeadFvOut]
    (growRow 768 s2Step318HeadFFresh) ((growRow 771 s2Step318HeadGvFresh ++ (growRow 770 s2Step318HeadFvFresh ++ []))) s2Step318HeadF_Incoming s2Step318HeadF_checked h2 s2Step318HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step318HeadGBefore s2Step318HeadGAfter s2Step318HeadFvAfter
    s2Step318HeadGRow s2Step318HeadGOut 113 s2Step318HeadGFresh [(s2Step318HeadFRow,113),(s2Step318HeadGvRow,176),(s2Step318HeadFvRow,176)] [s2Step318HeadFFresh,s2Step318HeadGvFresh,s2Step318HeadFvFresh] [s2Step318HeadFOut,s2Step318HeadGvOut,s2Step318HeadFvOut]
    (growRow 769 s2Step318HeadGFresh) ((growRow 768 s2Step318HeadFFresh ++ (growRow 771 s2Step318HeadGvFresh ++ (growRow 770 s2Step318HeadFvFresh ++ [])))) s2Step318HeadG_Incoming s2Step318HeadG_checked h1 s2Step318HeadG_Outgoing
  exact h0

private theorem s2Step318HeadBank_checked : compileHmrBankResizeLog .headroom s2Step318HeadGBefore ⟨s2Step318HeadFRow,s2Step318HeadGRow,s2Step318HeadFvRow,s2Step318HeadGvRow⟩ ⟨113,113,176,176⟩ [s2Step318HeadGFresh,s2Step318HeadFFresh,s2Step318HeadGvFresh,s2Step318HeadFvFresh]=
    some (s2Step318HeadFvAfter,⟨s2Step318HeadFOut,s2Step318HeadGOut,s2Step318HeadFvOut,s2Step318HeadGvOut⟩,(growRow 769 s2Step318HeadGFresh ++ (growRow 768 s2Step318HeadFFresh ++ (growRow 771 s2Step318HeadGvFresh ++ (growRow 770 s2Step318HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step318HeadBank_rows]
  rfl

private theorem s2Step318Front_checked : compileHmrSourceFrontLog s2Step318EntryFBefore s2Step318FrontBank 112 175 ⟨112,111,176,174⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step318FrontLog=some s2Step318FrontPlan := by
  have pairEq : s2Step318FrontPair=⟨s2Step318HeadFRow,s2Step318HeadGRow,s2Step318HeadFvRow,s2Step318HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step318FrontHead=⟨s2Step318ExitFRow,s2Step318ExitGRow,s2Step318ExitFvRow,s2Step318ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step318Add0A=s2Step318FrontHead.f.wires := by decide +kernel
  have gEq : s2Step318Add0B=s2Step318FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step318Add1A=s2Step318FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step318Add1B=s2Step318FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step318EntryFBefore s2Step318FrontBank 112 175 ⟨112,111,176,174⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step318FrontLog s2Step318FrontPlan
  · exact s2Step318Front_entry
  · exact s2Step318EntryBank_checked
  · exact s2Step318Front_sigma
  · rfl
  · exact s2Step318Front_branch
  · rfl
  · simpa only [s2Step318FrontPlan,pairEq] using s2Step318HeadBank_checked
  · simpa only [s2Step318FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step318F4_checked
  · exact s2Step318Counter_checked
  · rfl
  · simpa only [s2Step318FrontPlan,headEq] using s2Step318ExitBank_checked

private theorem s2Step318Complete_explicit_checked : compileHmrEarlyStepLog s2Step318EntryFBefore s2Step318FrontBank 112 175 ⟨112,111,176,174⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step318CompleteLog=some s2Step318CompletePlan := by
  let Q := s2Step318EarlyControlPlan
  have hq := s2Step318EarlyControl_plan_checked
  have fv1 : s2Step318CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step318CompleteOut.fv.payload[2]?.getD s2Step318CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step318CompleteOut.fv.payload[3]?.getD s2Step318CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step318CompleteOut.fv.payload[4]?.getD s2Step318CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step318EntryFBefore s2Step318EarlyControlArena s2Step318FrontBank 112 175 ⟨112,111,176,174⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 56 s2Step318CompleteLog s2Step318FrontPlan Q
    s2Step318Front_checked s2Step318Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step318Complete_owned s2Step318Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step318EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 777 809 s2Step318CompleteOut.fv.second (s2Step318CompleteOut.fv.payload[2]?.getD s2Step318CompleteOut.fv.sign) (s2Step318CompleteOut.fv.payload[3]?.getD s2Step318CompleteOut.fv.sign) (s2Step318CompleteOut.fv.payload[4]?.getD s2Step318CompleteOut.fv.sign) 827 56 s2Step318EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep318Arena : Arena := s2Step318EntryFBefore
def s2PrivateStep318Bank : WindowBank := s2Step318FrontBank
def s2PrivateStep318Spec : HmrSourceWalkStepLog := ⟨112,175,⟨112,111,176,174⟩,56,.early s2Step318CompleteLog⟩
def s2PrivateStep318Plan : HmrSourceStepPlan := .early s2Step318CompletePlan
theorem s2PrivateStep318_source : s2PrivateStep318Spec=s2ObservedLogs304[14] := rfl
theorem s2PrivateStep318_checked : compileHmrSourceStepLog s2PrivateStep318Arena s2PrivateStep318Bank
    s2PrivateStep318Spec.fgWidth s2PrivateStep318Spec.vWidth s2PrivateStep318Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909]
    6 498 318 s2PrivateStep318Spec.need none s2PrivateStep318Spec.log=some s2PrivateStep318Plan := by
  change compileHmrSourceStepLog s2Step318EntryFBefore s2Step318FrontBank 112 175 ⟨112,111,176,174⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881, 884, 883, 887, 886, 889, 888, 890, 892, 893, 897, 895, 898, 899, 900, 902, 906, 905, 904, 909] 6 498 318 56 none (.early s2Step318CompleteLog)=some (.early s2Step318CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 318<498)]
  rw [s2Step318Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
