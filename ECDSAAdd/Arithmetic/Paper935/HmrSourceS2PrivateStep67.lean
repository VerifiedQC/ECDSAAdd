import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep65
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

private def s2Step67CompleteMoves : List (Wire × Wire) := [(830,234)]

private def s2Step67EarlyControlLog : HmrEarlyControlLog := ⟨[830, 814, 825, 822, 826],[827],[816],[845, 846, 847, 849, 851, 867],[]⟩

private def s2Step67FrontLog : HmrFrontAllocationLog := ⟨⟨[[822], [], [], [824]],[[827], [826], [814], [825]],[[], [], [], []]⟩,[829],[844],[816],[845],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915],[816, 845, 846, 847]⟩

private def s2Step67CompleteLog : HmrEarlyStepLog := ⟨s2Step67FrontLog,s2Step67CompleteMoves,s2Step67EarlyControlLog⟩

private def s2Step67ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step67ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step67ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],769⟩

private def s2Step67ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step67FrontOut : WindowBank := ⟨s2Step67ExitFOut,s2Step67ExitGOut,s2Step67ExitFvOut,s2Step67ExitGvOut⟩

private def s2Step67CompleteOut : WindowBank := s2Step67FrontOut.repacked s2Step67CompleteMoves

private def s2Step67EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step67EarlyControlPositiveArena,[827],s2Step67EarlyControlEqualityArena,[816],⟨⟨829,false⟩,[⟨⟨827,false⟩,816⟩]⟩⟩

private def s2Step67EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,830⟩,⟨⟨774,false⟩,814⟩,⟨⟨775,false⟩,825⟩,⟨⟨776,false⟩,822⟩,⟨⟨777,false⟩,826⟩]⟩

private def s2Step67EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step67EarlyControlZeroArena,s2Step67EarlyControlZeroPlan,s2Step67EarlyControlClassPlan,s2Step67EarlyControlFlagArena,s2Step67EarlyControlFittedArena,s2Step67EarlyControlHistoryArena,s2Step67EarlyControlSigmaArena,s2Step67EarlyControlOutputArena,s2Step67EarlyControlLog⟩

private def s2Step67CounterWork : List Wire := [816, 845, 846, 847]

private theorem s2Step67Counter_bounded : s2Step67CounterWork.toFinset⊆arenaWires := by norm_num [s2Step67CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step67HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67CounterDuring : Arena := ⟨s2Step67HeadFvAfter.live∪s2Step67CounterWork.toFinset,Finset.union_subset s2Step67HeadFvAfter.bounded s2Step67Counter_bounded⟩

private def s2Step67EntryFFresh : List Wire := [822]

private def s2Step67EntryFvFresh : List Wire := []

private def s2Step67EntryGFresh : List Wire := []

private def s2Step67EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EntryGvFresh : List Wire := [824]

private def s2Step67ExitFExtra : List Wire := [822, 826]

private def s2Step67ExitFvExtra : List Wire := [825]

private def s2Step67ExitGExtra : List Wire := [234, 827]

private def s2Step67ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67ExitGvExtra : List Wire := [814]

private def s2Step67Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67Add0Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step67Add0_bounded : s2Step67Add0Work.toFinset⊆arenaWires := by
  have h : s2Step67Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step67Add0During : Arena := ⟨s2Step67Add0Arena.live∪s2Step67Add0Work.toFinset,Finset.union_subset s2Step67Add0Arena.bounded s2Step67Add0_bounded⟩

private def s2Step67Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67Add1Work : List Wire := [846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915]

private theorem s2Step67Add1_bounded : s2Step67Add1Work.toFinset⊆arenaWires := by
  have h : s2Step67Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step67Add1During : Arena := ⟨s2Step67Add1Arena.live∪s2Step67Add1Work.toFinset,Finset.union_subset s2Step67Add1Arena.bounded s2Step67Add1_bounded⟩

private def s2Step67F4FlagArena : Arena := ⟨s2Step67HeadFvAfter.live∪{816},Finset.union_subset s2Step67HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step67F4Plan : HmrHybridF4Plan := ⟨s2Step67F4FlagArena,[816],s2Step67Add0Arena,[845],s2Step67Add0During,s2Step67Add0Work,s2Step67Add1During,s2Step67Add1Work⟩

private def s2Step67HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822, 826],768⟩

private def s2Step67HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 825],770⟩

private def s2Step67HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 827],769⟩

private def s2Step67HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814],771⟩

private def s2Step67FrontHead : WindowBank := ⟨s2Step67HeadFOut,s2Step67HeadGOut,s2Step67HeadFvOut,s2Step67HeadGvOut⟩

private def s2Step67EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822],768⟩

private def s2Step67EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step67EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩

private def s2Step67EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step67FrontPair : WindowBank := ⟨s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut⟩

private def s2Step67FrontSigmaArena : Arena := ⟨s2Step67EntryGvAfter.live∪{829},Finset.union_subset s2Step67EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step67HeadFFresh : List Wire := [826]

private def s2Step67HeadFvFresh : List Wire := [825]

private def s2Step67HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67HeadGFresh : List Wire := [827]

private def s2Step67HeadGvFresh : List Wire := [814]

private def s2Step67FrontPlan : HmrSourceFront := ⟨s2Step67EntryGvAfter,s2Step67FrontPair,(growRow 768 s2Step67EntryFFresh ++ (growRow 769 s2Step67EntryGFresh ++ (growRow 770 s2Step67EntryFvFresh ++ (growRow 771 s2Step67EntryGvFresh ++ [])))),s2Step67FrontSigmaArena,[829],s2Step67HeadGBefore,[844],
  s2Step67HeadFvAfter,s2Step67FrontHead,(growRow 769 s2Step67HeadGFresh ++ (growRow 768 s2Step67HeadFFresh ++ (growRow 771 s2Step67HeadGvFresh ++ (growRow 770 s2Step67HeadFvFresh ++ [])))),s2Step67F4Plan,s2Step67CounterDuring,s2Step67CounterWork,s2Step67ExitGvAfter,s2Step67FrontOut,(shrinkRow 769 s2Step67ExitGExtra ++ (shrinkRow 768 s2Step67ExitFExtra ++ (shrinkRow 770 s2Step67ExitFvExtra ++ (shrinkRow 771 s2Step67ExitGvExtra ++ []))))⟩

private def s2Step67CompletePlan : HmrEarlyStepPlan := ⟨s2Step67FrontPlan,s2Step67EarlyControlArena,s2Step67EarlyControlPlan,s2Step67CompleteMoves⟩

private theorem s2Step67Complete_apart : List.Disjoint (s2Step67CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step67CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step67Complete_owned : (s2Step67CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step67CompleteMoveArena : Arena := ⟨s2Step67ExitGvAfter.live∪{234},Finset.union_subset s2Step67ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step67Complete_repack : s2Step67ExitGvAfter.checkRepack s2Step67CompleteMoves=some s2Step67EarlyControlArena := by
  have owned : 830∈s2Step67ExitGvAfter.live := by norm_num [s2Step67ExitGvAfter,arenaWires]
  have reserve : s2Step67ExitGvAfter.reserve {234}=some s2Step67CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step67ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step67CompleteMoveArena.retireSet {830}=s2Step67EarlyControlArena := by
    unfold Arena.retireSet s2Step67EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step67CompleteMoveArena,s2Step67ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step67CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step67CompleteMoveArena.retireSet {830}).checkRepack []=some s2Step67EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step67EarlyControl_branchOwned : ([844] : List Wire).toFinset⊆s2Step67EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlSigmaArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_branch : compileHmrBranchRetirement s2Step67EarlyControlSigmaArena 844=some s2Step67EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step67EarlyControl_branchOwned
  · ext q
    simp [s2Step67EarlyControlOutputArena,s2Step67EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step67EarlyControl_classEqualityBorrow : s2Step67EarlyControlPositiveArena.checkBorrow (([829, 827] : List Wire).length-1) s2Step67EarlyControlLog.classWork=some s2Step67EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step67EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step67EarlyControlEqualityArena,s2Step67EarlyControlPositiveArena,s2Step67EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step67EarlyControl_classEqualityOwned : ([829, 827] : List Wire).toFinset⊆s2Step67EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_classEquality : compileHmrEqualityLog s2Step67EarlyControlPositiveArena [829, 827] 0 s2Step67EarlyControlLog.classWork=some (s2Step67EarlyControlEqualityArena,s2Step67EarlyControlLog.classWork,s2Step67EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step67EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step67EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step67EarlyControl_classOwned : ([777, 826, 829] : List Wire).toFinset⊆s2Step67EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_positiveBorrow : s2Step67EarlyControlZeroArena.checkBorrow (1) s2Step67EarlyControlLog.positiveWork=some s2Step67EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step67EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step67EarlyControlPositiveArena,s2Step67EarlyControlZeroArena,s2Step67EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step67EarlyControl_class : compileHmrSourceClassLog s2Step67EarlyControlZeroArena false 777 s2Step67EarlyControlZeroPlan.top 0 829 s2Step67EarlyControlLog.positiveWork s2Step67EarlyControlLog.classWork=some s2Step67EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step67EarlyControlClassPlan s2Step67EarlyControlZeroArena false 777 s2Step67EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step67EarlyControl_classOwned
  · exact s2Step67EarlyControl_positiveBorrow
  · exact s2Step67EarlyControl_classEquality

private theorem s2Step67EarlyControl_entryRecordOwned : ([844, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_entrySigmaOwned : ([829, 254] : List Wire).toFinset⊆s2Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_fitBorrow : s2Step67EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step67EarlyControlLog.recordFresh=some s2Step67EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step67EarlyControlFlagArena (fun q => (0≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step67EarlyControlFittedArena,s2Step67EarlyControlFlagArena,s2Step67EarlyControlLog,arenaWires]

private theorem s2Step67EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step67EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlFlagArena (fun q => (0≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_fit : compileHmrRecordGrowLog s2Step67EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step67EarlyControlLog.recordFresh=some s2Step67EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step67EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step67EarlyControl_fitBorrow

private theorem s2Step67EarlyControl_flagsBorrow : s2Step67EarlyControlEqualityArena.checkBorrow (6) s2Step67EarlyControlLog.flagWork=some s2Step67EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step67EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step67EarlyControlFlagArena,s2Step67EarlyControlEqualityArena,s2Step67EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step67EarlyControl_flagsOwned : ([816, 253, 252, 251] : List Wire).toFinset⊆s2Step67EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlEqualityArena (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_flags : compileHmrFlagsLog s2Step67EarlyControlClassPlan.equalityArena s2Step67EarlyControlClassPlan.equality.top 253 252 251 s2Step67EarlyControlLog.flagWork=some s2Step67EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step67EarlyControl_flagsOwned⟩
  · exact s2Step67EarlyControl_flagsBorrow

private theorem s2Step67EarlyControl_historyBorrow : s2Step67EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step67EarlyControlLog.recordFresh=some s2Step67EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step67EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step67EarlyControlHistoryArena,s2Step67EarlyControlArena,s2Step67EarlyControlLog,arenaWires]

private theorem s2Step67EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_history : compileHmrRecordGrowLog s2Step67EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step67EarlyControlLog.recordFresh=some s2Step67EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step67EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step67EarlyControl_historyBorrow

private theorem s2Step67EarlyControl_sigmaOwned : ([254, 829] : List Wire).toFinset⊆s2Step67EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step67EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_sigmaRelease : s2Step67EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step67EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step67EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step67EarlyControlSigmaArena,s2Step67EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step67EarlyControl_sigma : compileHmrSigmaDropLog s2Step67EarlyControlHistoryArena false 0 0 254 829 []=some s2Step67EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step67EarlyControl_sigmaOwned⟩
  · exact s2Step67EarlyControl_sigmaRelease

private theorem s2Step67EarlyControl_zeroBorrow : s2Step67EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step67EarlyControlLog.zeroWork=some s2Step67EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step67EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step67EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step67EarlyControlZeroArena,s2Step67EarlyControlArena,s2Step67EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step67EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step67EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step67EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EarlyControl_zero : compileHmrEqualityLog s2Step67EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step67EarlyControlLog.zeroWork=some (s2Step67EarlyControlZeroArena,s2Step67EarlyControlLog.zeroWork,s2Step67EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step67EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step67EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step67EarlyControl_logged : s2Step67EarlyControlPlan.Logged s2Step67EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 829 254 253 252 251 844 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step67EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step67EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step67EarlyControl_zero
  · exact s2Step67EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step67EarlyControl_flags
  · exact s2Step67EarlyControl_fit
  · exact s2Step67EarlyControl_history
  · exact s2Step67EarlyControl_sigma
  · exact s2Step67EarlyControl_branch

private theorem s2Step67EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step67EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 829 254 253 252 251 844 30 s2Step67EarlyControlLog=some s2Step67EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step67EarlyControlPlan s2Step67EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 829 254 253 252 251 844 30 s2Step67EarlyControl_logged

private def s2Step67EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step67EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step67EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩

private def s2Step67EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819],771⟩

private def s2Step67FrontBank : WindowBank := ⟨s2Step67EntryFRow,s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow⟩

private def s2Step67Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822, 826, 768]

private def s2Step67Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 827, 769]

private def s2Step67Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 825, 770]

private def s2Step67Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814, 771]

private theorem s2Step67Counter_apart : Disjoint s2Step67HeadFvAfter.live s2Step67CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step67HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67Counter_borrowed : s2Step67HeadFvAfter.checkBorrow 4 s2Step67CounterWork=some s2Step67CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step67HeadFvAfter s2Step67CounterDuring s2Step67CounterWork.toFinset s2Step67Counter_bounded s2Step67Counter_apart rfl

private theorem s2Step67Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step67HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step67HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67Counter_checked : compileHmrCounterStepLog s2Step67HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step67CounterWork=some s2Step67CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step67HeadFvAfter.live := fun q hq => s2Step67Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step67Counter_borrowed

private def s2Step67EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step67EntryBank_incomingDistinct : ([s2Step67EntryFRow,s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67EntryF_Incoming : rowsOwned s2Step67EntryFBefore [s2Step67EntryFRow,s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67EntryFRow,s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow] 0 s2Step67EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67EntryBank_outgoingOwned : rowsOwned s2Step67EntryGvAfter [s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step67EntryGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67EntryF_Outgoing : rowsOwned s2Step67EntryGvAfter [s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut] :=
  hmrRows_owned_drop s2Step67EntryGvAfter [s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut] 0 s2Step67EntryBank_outgoingOwned

private theorem s2Step67EntryF_distinct : (s2Step67EntryFRow.sign::s2Step67EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67EntryF_owned : (s2Step67EntryFRow.sign::s2Step67EntryFRow.payload).toFinset⊆s2Step67EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EntryF_reserved : s2Step67EntryFBefore.reserve s2Step67EntryFFresh.toFinset=some s2Step67EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step67EntryFFresh,arenaWires]
  · norm_num [s2Step67EntryFBefore,s2Step67EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step67EntryFAfter,s2Step67EntryFBefore,s2Step67EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step67EntryF_checked : planRowResizeLog s2Step67EntryFBefore s2Step67EntryFRow 235 s2Step67EntryFFresh=
    some (s2Step67EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822],768⟩,growRow 768 s2Step67EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step67EntryFBefore s2Step67EntryFAfter s2Step67EntryFRow 235 s2Step67EntryFFresh
    s2Step67EntryF_distinct s2Step67EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step67EntryF_reserved
  have rowEq : WindowRow.mk (s2Step67EntryFRow.payload++s2Step67EntryFFresh) s2Step67EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step67EntryFvAfter : Arena := s2Step67EntryFAfter

private def s2Step67EntryFvBefore : Arena := s2Step67EntryFAfter

private theorem s2Step67EntryFv_Incoming : rowsOwned s2Step67EntryFvBefore [s2Step67EntryFvRow,s2Step67EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67EntryFRow,s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow] 2 s2Step67EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67EntryFv_Outgoing : rowsOwned s2Step67EntryGvAfter [s2Step67EntryFvOut,s2Step67EntryGvOut] :=
  hmrRows_owned_drop s2Step67EntryGvAfter [s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut] 2 s2Step67EntryBank_outgoingOwned

private theorem s2Step67EntryFv_distinct : (s2Step67EntryFvRow.sign::s2Step67EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67EntryFv_owned : (s2Step67EntryFvRow.sign::s2Step67EntryFvRow.payload).toFinset⊆s2Step67EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EntryFv_reserved : s2Step67EntryFvBefore.reserve s2Step67EntryFvFresh.toFinset=some s2Step67EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step67EntryFvFresh,arenaWires]
  · norm_num [s2Step67EntryFvBefore,s2Step67EntryFAfter,s2Step67EntryFvFresh,arenaWires]
  · simp only [s2Step67EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step67EntryFv_checked : planRowResizeLog s2Step67EntryFvBefore s2Step67EntryFvRow 47 s2Step67EntryFvFresh=
    some (s2Step67EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩,growRow 770 s2Step67EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step67EntryFvBefore s2Step67EntryFvAfter s2Step67EntryFvRow 47 s2Step67EntryFvFresh
    s2Step67EntryFv_distinct s2Step67EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step67EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step67EntryFvRow.payload++s2Step67EntryFvFresh) s2Step67EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step67EntryGAfter : Arena := s2Step67EntryFAfter

private def s2Step67EntryGBefore : Arena := s2Step67EntryFAfter

private theorem s2Step67EntryG_Incoming : rowsOwned s2Step67EntryGBefore [s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67EntryFRow,s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow] 1 s2Step67EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67EntryG_Outgoing : rowsOwned s2Step67EntryGvAfter [s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut] :=
  hmrRows_owned_drop s2Step67EntryGvAfter [s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut] 1 s2Step67EntryBank_outgoingOwned

private theorem s2Step67EntryG_distinct : (s2Step67EntryGRow.sign::s2Step67EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67EntryG_owned : (s2Step67EntryGRow.sign::s2Step67EntryGRow.payload).toFinset⊆s2Step67EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EntryG_reserved : s2Step67EntryGBefore.reserve s2Step67EntryGFresh.toFinset=some s2Step67EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step67EntryGFresh,arenaWires]
  · norm_num [s2Step67EntryGBefore,s2Step67EntryFAfter,s2Step67EntryGFresh,arenaWires]
  · simp only [s2Step67EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step67EntryG_checked : planRowResizeLog s2Step67EntryGBefore s2Step67EntryGRow 235 s2Step67EntryGFresh=
    some (s2Step67EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩,growRow 769 s2Step67EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step67EntryGBefore s2Step67EntryGAfter s2Step67EntryGRow 235 s2Step67EntryGFresh
    s2Step67EntryG_distinct s2Step67EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step67EntryG_reserved
  have rowEq : WindowRow.mk (s2Step67EntryGRow.payload++s2Step67EntryGFresh) s2Step67EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step67EntryGvBefore : Arena := s2Step67EntryFAfter

private theorem s2Step67EntryGv_Incoming : rowsOwned s2Step67EntryGvBefore [s2Step67EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67EntryFRow,s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow] 3 s2Step67EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67EntryGv_Outgoing : rowsOwned s2Step67EntryGvAfter [s2Step67EntryGvOut] :=
  hmrRows_owned_drop s2Step67EntryGvAfter [s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut] 3 s2Step67EntryBank_outgoingOwned

private theorem s2Step67EntryGv_distinct : (s2Step67EntryGvRow.sign::s2Step67EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67EntryGv_owned : (s2Step67EntryGvRow.sign::s2Step67EntryGvRow.payload).toFinset⊆s2Step67EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67EntryGv_reserved : s2Step67EntryGvBefore.reserve s2Step67EntryGvFresh.toFinset=some s2Step67EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step67EntryGvFresh,arenaWires]
  · norm_num [s2Step67EntryGvBefore,s2Step67EntryFAfter,s2Step67EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step67EntryGvAfter,s2Step67EntryGvBefore,s2Step67EntryFAfter,s2Step67EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step67EntryGv_checked : planRowResizeLog s2Step67EntryGvBefore s2Step67EntryGvRow 47 s2Step67EntryGvFresh=
    some (s2Step67EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩,growRow 771 s2Step67EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step67EntryGvBefore s2Step67EntryGvAfter s2Step67EntryGvRow 47 s2Step67EntryGvFresh
    s2Step67EntryGv_distinct s2Step67EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step67EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step67EntryGvRow.payload++s2Step67EntryGvFresh) s2Step67EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step67EntryBank_rows : planWindowRowsLog s2Step67EntryFBefore [(s2Step67EntryFRow,235),(s2Step67EntryGRow,235),(s2Step67EntryFvRow,47),(s2Step67EntryGvRow,47)] [s2Step67EntryFFresh,s2Step67EntryGFresh,s2Step67EntryFvFresh,s2Step67EntryGvFresh]=
    some (s2Step67EntryGvAfter,[s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut],(growRow 768 s2Step67EntryFFresh ++ (growRow 769 s2Step67EntryGFresh ++ (growRow 770 s2Step67EntryFvFresh ++ (growRow 771 s2Step67EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step67EntryGvAfter [] []=some (s2Step67EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step67EntryGvBefore s2Step67EntryGvAfter s2Step67EntryGvAfter
    s2Step67EntryGvRow s2Step67EntryGvOut 47 s2Step67EntryGvFresh [] [] []
    (growRow 771 s2Step67EntryGvFresh) ([]) s2Step67EntryGv_Incoming s2Step67EntryGv_checked h4 s2Step67EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step67EntryFvBefore s2Step67EntryFvAfter s2Step67EntryGvAfter
    s2Step67EntryFvRow s2Step67EntryFvOut 47 s2Step67EntryFvFresh [(s2Step67EntryGvRow,47)] [s2Step67EntryGvFresh] [s2Step67EntryGvOut]
    (growRow 770 s2Step67EntryFvFresh) ((growRow 771 s2Step67EntryGvFresh ++ [])) s2Step67EntryFv_Incoming s2Step67EntryFv_checked h3 s2Step67EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step67EntryGBefore s2Step67EntryGAfter s2Step67EntryGvAfter
    s2Step67EntryGRow s2Step67EntryGOut 235 s2Step67EntryGFresh [(s2Step67EntryFvRow,47),(s2Step67EntryGvRow,47)] [s2Step67EntryFvFresh,s2Step67EntryGvFresh] [s2Step67EntryFvOut,s2Step67EntryGvOut]
    (growRow 769 s2Step67EntryGFresh) ((growRow 770 s2Step67EntryFvFresh ++ (growRow 771 s2Step67EntryGvFresh ++ []))) s2Step67EntryG_Incoming s2Step67EntryG_checked h2 s2Step67EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step67EntryFBefore s2Step67EntryFAfter s2Step67EntryGvAfter
    s2Step67EntryFRow s2Step67EntryFOut 235 s2Step67EntryFFresh [(s2Step67EntryGRow,235),(s2Step67EntryFvRow,47),(s2Step67EntryGvRow,47)] [s2Step67EntryGFresh,s2Step67EntryFvFresh,s2Step67EntryGvFresh] [s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut]
    (growRow 768 s2Step67EntryFFresh) ((growRow 769 s2Step67EntryGFresh ++ (growRow 770 s2Step67EntryFvFresh ++ (growRow 771 s2Step67EntryGvFresh ++ [])))) s2Step67EntryF_Incoming s2Step67EntryF_checked h1 s2Step67EntryF_Outgoing
  exact h0

private theorem s2Step67EntryBank_checked : compileHmrBankResizeLog .entry s2Step67EntryFBefore ⟨s2Step67EntryFRow,s2Step67EntryGRow,s2Step67EntryFvRow,s2Step67EntryGvRow⟩ ⟨235,235,47,47⟩ [s2Step67EntryFFresh,s2Step67EntryGFresh,s2Step67EntryFvFresh,s2Step67EntryGvFresh]=
    some (s2Step67EntryGvAfter,⟨s2Step67EntryFOut,s2Step67EntryGOut,s2Step67EntryFvOut,s2Step67EntryGvOut⟩,(growRow 768 s2Step67EntryFFresh ++ (growRow 769 s2Step67EntryGFresh ++ (growRow 770 s2Step67EntryFvFresh ++ (growRow 771 s2Step67EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step67EntryBank_rows]
  rfl

private def s2Step67ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67ExitFBefore : Arena := s2Step67ExitGAfter

private def s2Step67ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822, 826],768⟩

private def s2Step67ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 825],770⟩

private def s2Step67ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 827],769⟩

private def s2Step67ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814],771⟩

private theorem s2Step67ExitBank_incomingDistinct : ([s2Step67ExitGRow,s2Step67ExitFRow,s2Step67ExitFvRow,s2Step67ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67ExitF_Incoming : rowsOwned s2Step67ExitFBefore [s2Step67ExitFRow,s2Step67ExitFvRow,s2Step67ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67ExitGRow,s2Step67ExitFRow,s2Step67ExitFvRow,s2Step67ExitGvRow] 1 s2Step67ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67ExitFBefore (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67ExitBank_outgoingOwned : rowsOwned s2Step67ExitGvAfter [s2Step67ExitGOut,s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step67ExitGvAfter (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67ExitF_Outgoing : rowsOwned s2Step67ExitGvAfter [s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut] :=
  hmrRows_owned_drop s2Step67ExitGvAfter [s2Step67ExitGOut,s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut] 1 s2Step67ExitBank_outgoingOwned

private theorem s2Step67ExitF_distinct : (s2Step67ExitFRow.sign::s2Step67ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67ExitF_owned : (s2Step67ExitFRow.sign::s2Step67ExitFRow.payload).toFinset⊆s2Step67ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67ExitFBefore (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67ExitF_retired : s2Step67ExitFBefore.retireSet s2Step67ExitFExtra.toFinset=s2Step67ExitFAfter := by
  unfold Arena.retireSet s2Step67ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step67ExitFBefore,s2Step67ExitGAfter,s2Step67ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step67ExitF_checked : planRowResizeLog s2Step67ExitFBefore s2Step67ExitFRow 234 []=
    some (s2Step67ExitFAfter,s2Step67ExitFOut,shrinkRow 768 s2Step67ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step67ExitFBefore s2Step67ExitFRow 234 s2Step67ExitF_distinct s2Step67ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step67ExitFRow.payload.take 234) s2Step67ExitFRow.sign=s2Step67ExitFOut := by decide +kernel
  have hi : s2Step67ExitFRow.payload.drop 234=s2Step67ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step67ExitF_retired] at result
  exact result

private def s2Step67ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67ExitFvBefore : Arena := s2Step67ExitFAfter

private theorem s2Step67ExitFv_Incoming : rowsOwned s2Step67ExitFvBefore [s2Step67ExitFvRow,s2Step67ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67ExitGRow,s2Step67ExitFRow,s2Step67ExitFvRow,s2Step67ExitGvRow] 2 s2Step67ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67ExitFvBefore (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67ExitFv_Outgoing : rowsOwned s2Step67ExitGvAfter [s2Step67ExitFvOut,s2Step67ExitGvOut] :=
  hmrRows_owned_drop s2Step67ExitGvAfter [s2Step67ExitGOut,s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut] 2 s2Step67ExitBank_outgoingOwned

private theorem s2Step67ExitFv_distinct : (s2Step67ExitFvRow.sign::s2Step67ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67ExitFv_owned : (s2Step67ExitFvRow.sign::s2Step67ExitFvRow.payload).toFinset⊆s2Step67ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67ExitFvBefore (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67ExitFv_retired : s2Step67ExitFvBefore.retireSet s2Step67ExitFvExtra.toFinset=s2Step67ExitFvAfter := by
  unfold Arena.retireSet s2Step67ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step67ExitFvBefore,s2Step67ExitFAfter,s2Step67ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step67ExitFv_checked : planRowResizeLog s2Step67ExitFvBefore s2Step67ExitFvRow 47 []=
    some (s2Step67ExitFvAfter,s2Step67ExitFvOut,shrinkRow 770 s2Step67ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step67ExitFvBefore s2Step67ExitFvRow 47 s2Step67ExitFv_distinct s2Step67ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step67ExitFvRow.payload.take 47) s2Step67ExitFvRow.sign=s2Step67ExitFvOut := by decide +kernel
  have hi : s2Step67ExitFvRow.payload.drop 47=s2Step67ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step67ExitFv_retired] at result
  exact result

private def s2Step67ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step67ExitG_Incoming : rowsOwned s2Step67ExitGBefore [s2Step67ExitGRow,s2Step67ExitFRow,s2Step67ExitFvRow,s2Step67ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67ExitGRow,s2Step67ExitFRow,s2Step67ExitFvRow,s2Step67ExitGvRow] 0 s2Step67ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67ExitG_Outgoing : rowsOwned s2Step67ExitGvAfter [s2Step67ExitGOut,s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut] :=
  hmrRows_owned_drop s2Step67ExitGvAfter [s2Step67ExitGOut,s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut] 0 s2Step67ExitBank_outgoingOwned

private theorem s2Step67ExitG_distinct : (s2Step67ExitGRow.sign::s2Step67ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67ExitG_owned : (s2Step67ExitGRow.sign::s2Step67ExitGRow.payload).toFinset⊆s2Step67ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67ExitG_retired : s2Step67ExitGBefore.retireSet s2Step67ExitGExtra.toFinset=s2Step67ExitGAfter := by
  unfold Arena.retireSet s2Step67ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step67ExitGBefore,s2Step67ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step67ExitG_checked : planRowResizeLog s2Step67ExitGBefore s2Step67ExitGRow 234 []=
    some (s2Step67ExitGAfter,s2Step67ExitGOut,shrinkRow 769 s2Step67ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step67ExitGBefore s2Step67ExitGRow 234 s2Step67ExitG_distinct s2Step67ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step67ExitGRow.payload.take 234) s2Step67ExitGRow.sign=s2Step67ExitGOut := by decide +kernel
  have hi : s2Step67ExitGRow.payload.drop 234=s2Step67ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step67ExitG_retired] at result
  exact result

private def s2Step67ExitGvBefore : Arena := s2Step67ExitFvAfter

private theorem s2Step67ExitGv_Incoming : rowsOwned s2Step67ExitGvBefore [s2Step67ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67ExitGRow,s2Step67ExitFRow,s2Step67ExitFvRow,s2Step67ExitGvRow] 3 s2Step67ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67ExitGvBefore (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67ExitGv_Outgoing : rowsOwned s2Step67ExitGvAfter [s2Step67ExitGvOut] :=
  hmrRows_owned_drop s2Step67ExitGvAfter [s2Step67ExitGOut,s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut] 3 s2Step67ExitBank_outgoingOwned

private theorem s2Step67ExitGv_distinct : (s2Step67ExitGvRow.sign::s2Step67ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67ExitGv_owned : (s2Step67ExitGvRow.sign::s2Step67ExitGvRow.payload).toFinset⊆s2Step67ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67ExitGvBefore (fun q => (0≤q ∧ q<234) ∨ (235≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67ExitGv_retired : s2Step67ExitGvBefore.retireSet s2Step67ExitGvExtra.toFinset=s2Step67ExitGvAfter := by
  unfold Arena.retireSet s2Step67ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step67ExitGvBefore,s2Step67ExitFvAfter,s2Step67ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step67ExitGv_checked : planRowResizeLog s2Step67ExitGvBefore s2Step67ExitGvRow 47 []=
    some (s2Step67ExitGvAfter,s2Step67ExitGvOut,shrinkRow 771 s2Step67ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step67ExitGvBefore s2Step67ExitGvRow 47 s2Step67ExitGv_distinct s2Step67ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step67ExitGvRow.payload.take 47) s2Step67ExitGvRow.sign=s2Step67ExitGvOut := by decide +kernel
  have hi : s2Step67ExitGvRow.payload.drop 47=s2Step67ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step67ExitGv_retired] at result
  exact result

private theorem s2Step67ExitBank_rows : planWindowRowsLog s2Step67ExitGBefore [(s2Step67ExitGRow,234),(s2Step67ExitFRow,234),(s2Step67ExitFvRow,47),(s2Step67ExitGvRow,47)] [[],[],[],[]]=
    some (s2Step67ExitGvAfter,[s2Step67ExitGOut,s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut],(shrinkRow 769 s2Step67ExitGExtra ++ (shrinkRow 768 s2Step67ExitFExtra ++ (shrinkRow 770 s2Step67ExitFvExtra ++ (shrinkRow 771 s2Step67ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step67ExitGvAfter [] []=some (s2Step67ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step67ExitGvBefore s2Step67ExitGvAfter s2Step67ExitGvAfter
    s2Step67ExitGvRow s2Step67ExitGvOut 47 [] [] [] []
    (shrinkRow 771 s2Step67ExitGvExtra) ([]) s2Step67ExitGv_Incoming s2Step67ExitGv_checked h4 s2Step67ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step67ExitFvBefore s2Step67ExitFvAfter s2Step67ExitGvAfter
    s2Step67ExitFvRow s2Step67ExitFvOut 47 [] [(s2Step67ExitGvRow,47)] [[]] [s2Step67ExitGvOut]
    (shrinkRow 770 s2Step67ExitFvExtra) ((shrinkRow 771 s2Step67ExitGvExtra ++ [])) s2Step67ExitFv_Incoming s2Step67ExitFv_checked h3 s2Step67ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step67ExitFBefore s2Step67ExitFAfter s2Step67ExitGvAfter
    s2Step67ExitFRow s2Step67ExitFOut 234 [] [(s2Step67ExitFvRow,47),(s2Step67ExitGvRow,47)] [[],[]] [s2Step67ExitFvOut,s2Step67ExitGvOut]
    (shrinkRow 768 s2Step67ExitFExtra) ((shrinkRow 770 s2Step67ExitFvExtra ++ (shrinkRow 771 s2Step67ExitGvExtra ++ []))) s2Step67ExitF_Incoming s2Step67ExitF_checked h2 s2Step67ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step67ExitGBefore s2Step67ExitGAfter s2Step67ExitGvAfter
    s2Step67ExitGRow s2Step67ExitGOut 234 [] [(s2Step67ExitFRow,234),(s2Step67ExitFvRow,47),(s2Step67ExitGvRow,47)] [[],[],[]] [s2Step67ExitFOut,s2Step67ExitFvOut,s2Step67ExitGvOut]
    (shrinkRow 769 s2Step67ExitGExtra) ((shrinkRow 768 s2Step67ExitFExtra ++ (shrinkRow 770 s2Step67ExitFvExtra ++ (shrinkRow 771 s2Step67ExitGvExtra ++ [])))) s2Step67ExitG_Incoming s2Step67ExitG_checked h1 s2Step67ExitG_Outgoing
  exact h0

private theorem s2Step67ExitBank_checked : compileHmrBankResizeLog .exit s2Step67ExitGBefore ⟨s2Step67ExitFRow,s2Step67ExitGRow,s2Step67ExitFvRow,s2Step67ExitGvRow⟩ ⟨234,234,47,47⟩ [[],[],[],[]]=
    some (s2Step67ExitGvAfter,⟨s2Step67ExitFOut,s2Step67ExitGOut,s2Step67ExitFvOut,s2Step67ExitGvOut⟩,(shrinkRow 769 s2Step67ExitGExtra ++ (shrinkRow 768 s2Step67ExitFExtra ++ (shrinkRow 770 s2Step67ExitFvExtra ++ (shrinkRow 771 s2Step67ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step67ExitBank_rows]
  rfl

private theorem s2Step67Add0_apart : Disjoint s2Step67Add0Arena.live s2Step67Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step67Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67Add0_card : s2Step67Add0Arena.live.card=868 := by
  decide +kernel

private theorem s2Step67Add0_borrowed : s2Step67Add0Arena.checkBorrow (hmrHybridCount s2Step67Add0Arena s2Step67Add0B.length) s2Step67Add0Work=some s2Step67Add0During := by
  have len : s2Step67Add0Work.length=hmrHybridCount s2Step67Add0Arena s2Step67Add0B.length := by
    rw [hmrHybridCount,s2Step67Add0_card]
    decide +kernel
  have nd : s2Step67Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step67Add0Arena s2Step67Add0During s2Step67Add0Work.toFinset s2Step67Add0_bounded s2Step67Add0_apart rfl

private theorem s2Step67Add0_distinct : (816::844::845::(s2Step67Add0A++s2Step67Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67Add0_owned : (816::844::845::(s2Step67Add0A++s2Step67Add0B)).toFinset⊆s2Step67Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step67Add0Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67Add0_checked : compileHmrHybridCinLog s2Step67Add0Arena 844 816 845 s2Step67Add0A s2Step67Add0B s2Step67Add0Work=some s2Step67Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step67Add0Arena s2Step67Add0During 844 816 845 s2Step67Add0A s2Step67Add0B s2Step67Add0Work
    (by decide +kernel) (by decide +kernel) s2Step67Add0_distinct
    (fun q hq => s2Step67Add0_owned (List.mem_toFinset.mpr hq)) s2Step67Add0_borrowed

private theorem s2Step67Add1_apart : Disjoint s2Step67Add1Arena.live s2Step67Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step67Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67Add1_card : s2Step67Add1Arena.live.card=868 := by
  decide +kernel

private theorem s2Step67Add1_borrowed : s2Step67Add1Arena.checkBorrow (hmrHybridCount s2Step67Add1Arena s2Step67Add1B.length) s2Step67Add1Work=some s2Step67Add1During := by
  have len : s2Step67Add1Work.length=hmrHybridCount s2Step67Add1Arena s2Step67Add1B.length := by
    rw [hmrHybridCount,s2Step67Add1_card]
    decide +kernel
  have nd : s2Step67Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step67Add1Arena s2Step67Add1During s2Step67Add1Work.toFinset s2Step67Add1_bounded s2Step67Add1_apart rfl

private theorem s2Step67Add1_distinct : (816::844::845::(s2Step67Add1A++s2Step67Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67Add1_owned : (816::844::845::(s2Step67Add1A++s2Step67Add1B)).toFinset⊆s2Step67Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step67Add1Arena (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67Add1_checked : compileHmrHybridCinLog s2Step67Add1Arena 844 816 845 s2Step67Add1A s2Step67Add1B s2Step67Add1Work=some s2Step67Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step67Add1Arena s2Step67Add1During 844 816 845 s2Step67Add1A s2Step67Add1B s2Step67Add1Work
    (by decide +kernel) (by decide +kernel) s2Step67Add1_distinct
    (fun q hq => s2Step67Add1_owned (List.mem_toFinset.mpr hq)) s2Step67Add1_borrowed

private theorem s2Step67F4_apart : Disjoint (s2Step67Add0A++s2Step67Add0B).toFinset (s2Step67Add1A++s2Step67Add1B).toFinset := by
  have nd : ((s2Step67Add0A++s2Step67Add0B)++(s2Step67Add1A++s2Step67Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step67F4_carry : s2Step67F4FlagArena.checkBorrow 1 [845]=some s2Step67Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step67F4FlagArena,s2Step67HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step67F4FlagArena,s2Step67HeadFvAfter,s2Step67Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step67F4_distinct : (829::844::816::845::((s2Step67Add0A++s2Step67Add1A)++(s2Step67Add0B++s2Step67Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67F4_flag : s2Step67HeadFvAfter.checkBorrow 1 [816]=some s2Step67F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step67HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step67F4_owned : (829::844::((s2Step67Add0A++s2Step67Add1A)++(s2Step67Add0B++s2Step67Add1B))).toFinset⊆s2Step67HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step67HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67F4_checked : compileHmrHybridF4Log s2Step67HeadFvAfter 829 844 s2Step67Add0A s2Step67Add0B s2Step67Add1A s2Step67Add1B [816] [845] s2Step67Add0Work s2Step67Add1Work=some s2Step67F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step67HeadFvAfter s2Step67F4FlagArena s2Step67Add0Arena s2Step67Add0During s2Step67Add1During 829 844
    s2Step67Add0A s2Step67Add0B s2Step67Add1A s2Step67Add1B [816] [845] s2Step67Add0Work s2Step67Add1Work
    (fun q hq => s2Step67F4_owned (List.mem_toFinset.mpr hq)) s2Step67F4_flag s2Step67F4_carry
    s2Step67F4_distinct s2Step67F4_apart s2Step67Add0_checked s2Step67Add1_checked

private theorem s2Step67Front_branch : s2Step67FrontSigmaArena.checkBorrow 1 [844]=some s2Step67HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step67FrontSigmaArena,s2Step67EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step67FrontSigmaArena,s2Step67EntryGvAfter,s2Step67HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step67Front_entry : HmrFrontEntryValid s2Step67EntryFBefore s2Step67FrontBank 235 47 ⟨234,234,47,47⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step67FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step67EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step67EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<824) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step67FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step67Front_sigma : s2Step67EntryGvAfter.checkBorrow 1 [829]=some s2Step67FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step67EntryGvAfter,arenaWires]
  · rfl

private def s2Step67HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (827≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67HeadFBefore : Arena := s2Step67HeadGAfter

private def s2Step67HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822],768⟩

private def s2Step67HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step67HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234],769⟩

private def s2Step67HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private theorem s2Step67HeadBank_incomingDistinct : ([s2Step67HeadGRow,s2Step67HeadFRow,s2Step67HeadGvRow,s2Step67HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67HeadF_Incoming : rowsOwned s2Step67HeadFBefore [s2Step67HeadFRow,s2Step67HeadGvRow,s2Step67HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67HeadGRow,s2Step67HeadFRow,s2Step67HeadGvRow,s2Step67HeadFvRow] 1 s2Step67HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (827≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67HeadBank_outgoingOwned : rowsOwned s2Step67HeadFvAfter [s2Step67HeadGOut,s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step67HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67HeadF_Outgoing : rowsOwned s2Step67HeadFvAfter [s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut] :=
  hmrRows_owned_drop s2Step67HeadFvAfter [s2Step67HeadGOut,s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut] 1 s2Step67HeadBank_outgoingOwned

private theorem s2Step67HeadF_distinct : (s2Step67HeadFRow.sign::s2Step67HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67HeadF_owned : (s2Step67HeadFRow.sign::s2Step67HeadFRow.payload).toFinset⊆s2Step67HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (827≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67HeadF_reserved : s2Step67HeadFBefore.reserve s2Step67HeadFFresh.toFinset=some s2Step67HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step67HeadFFresh,arenaWires]
  · norm_num [s2Step67HeadFBefore,s2Step67HeadGAfter,s2Step67HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step67HeadFAfter,s2Step67HeadFBefore,s2Step67HeadGAfter,s2Step67HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step67HeadF_checked : planRowResizeLog s2Step67HeadFBefore s2Step67HeadFRow 236 s2Step67HeadFFresh=
    some (s2Step67HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822, 826],768⟩,growRow 768 s2Step67HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step67HeadFBefore s2Step67HeadFAfter s2Step67HeadFRow 236 s2Step67HeadFFresh
    s2Step67HeadF_distinct s2Step67HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step67HeadF_reserved
  have rowEq : WindowRow.mk (s2Step67HeadFRow.payload++s2Step67HeadFFresh) s2Step67HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822, 826],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step67HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step67HeadFvBefore : Arena := s2Step67HeadGvAfter

private theorem s2Step67HeadFv_Incoming : rowsOwned s2Step67HeadFvBefore [s2Step67HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67HeadGRow,s2Step67HeadFRow,s2Step67HeadGvRow,s2Step67HeadFvRow] 3 s2Step67HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67HeadFv_Outgoing : rowsOwned s2Step67HeadFvAfter [s2Step67HeadFvOut] :=
  hmrRows_owned_drop s2Step67HeadFvAfter [s2Step67HeadGOut,s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut] 3 s2Step67HeadBank_outgoingOwned

private theorem s2Step67HeadFv_distinct : (s2Step67HeadFvRow.sign::s2Step67HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67HeadFv_owned : (s2Step67HeadFvRow.sign::s2Step67HeadFvRow.payload).toFinset⊆s2Step67HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67HeadFv_reserved : s2Step67HeadFvBefore.reserve s2Step67HeadFvFresh.toFinset=some s2Step67HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step67HeadFvFresh,arenaWires]
  · norm_num [s2Step67HeadFvBefore,s2Step67HeadGvAfter,s2Step67HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step67HeadFvAfter,s2Step67HeadFvBefore,s2Step67HeadGvAfter,s2Step67HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step67HeadFv_checked : planRowResizeLog s2Step67HeadFvBefore s2Step67HeadFvRow 48 s2Step67HeadFvFresh=
    some (s2Step67HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 825],770⟩,growRow 770 s2Step67HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step67HeadFvBefore s2Step67HeadFvAfter s2Step67HeadFvRow 48 s2Step67HeadFvFresh
    s2Step67HeadFv_distinct s2Step67HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step67HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step67HeadFvRow.payload++s2Step67HeadFvFresh) s2Step67HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 830, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step67HeadG_Incoming : rowsOwned s2Step67HeadGBefore [s2Step67HeadGRow,s2Step67HeadFRow,s2Step67HeadGvRow,s2Step67HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67HeadGRow,s2Step67HeadFRow,s2Step67HeadGvRow,s2Step67HeadFvRow] 0 s2Step67HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67HeadG_Outgoing : rowsOwned s2Step67HeadFvAfter [s2Step67HeadGOut,s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut] :=
  hmrRows_owned_drop s2Step67HeadFvAfter [s2Step67HeadGOut,s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut] 0 s2Step67HeadBank_outgoingOwned

private theorem s2Step67HeadG_distinct : (s2Step67HeadGRow.sign::s2Step67HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67HeadG_owned : (s2Step67HeadGRow.sign::s2Step67HeadGRow.payload).toFinset⊆s2Step67HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67HeadG_reserved : s2Step67HeadGBefore.reserve s2Step67HeadGFresh.toFinset=some s2Step67HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step67HeadGFresh,arenaWires]
  · norm_num [s2Step67HeadGBefore,s2Step67HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step67HeadGAfter,s2Step67HeadGBefore,s2Step67HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step67HeadG_checked : planRowResizeLog s2Step67HeadGBefore s2Step67HeadGRow 236 s2Step67HeadGFresh=
    some (s2Step67HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 827],769⟩,growRow 769 s2Step67HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step67HeadGBefore s2Step67HeadGAfter s2Step67HeadGRow 236 s2Step67HeadGFresh
    s2Step67HeadG_distinct s2Step67HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step67HeadG_reserved
  have rowEq : WindowRow.mk (s2Step67HeadGRow.payload++s2Step67HeadGFresh) s2Step67HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 827],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step67HeadGvBefore : Arena := s2Step67HeadFAfter

private theorem s2Step67HeadGv_Incoming : rowsOwned s2Step67HeadGvBefore [s2Step67HeadGvRow,s2Step67HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step67HeadGRow,s2Step67HeadFRow,s2Step67HeadGvRow,s2Step67HeadFvRow] 2 s2Step67HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step67HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step67HeadGv_Outgoing : rowsOwned s2Step67HeadFvAfter [s2Step67HeadGvOut,s2Step67HeadFvOut] :=
  hmrRows_owned_drop s2Step67HeadFvAfter [s2Step67HeadGOut,s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut] 2 s2Step67HeadBank_outgoingOwned

private theorem s2Step67HeadGv_distinct : (s2Step67HeadGvRow.sign::s2Step67HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step67HeadGv_owned : (s2Step67HeadGvRow.sign::s2Step67HeadGvRow.payload).toFinset⊆s2Step67HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step67HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (826≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step67HeadGv_reserved : s2Step67HeadGvBefore.reserve s2Step67HeadGvFresh.toFinset=some s2Step67HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step67HeadGvFresh,arenaWires]
  · norm_num [s2Step67HeadGvBefore,s2Step67HeadFAfter,s2Step67HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step67HeadGvAfter,s2Step67HeadGvBefore,s2Step67HeadFAfter,s2Step67HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step67HeadGv_checked : planRowResizeLog s2Step67HeadGvBefore s2Step67HeadGvRow 48 s2Step67HeadGvFresh=
    some (s2Step67HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814],771⟩,growRow 771 s2Step67HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step67HeadGvBefore s2Step67HeadGvAfter s2Step67HeadGvRow 48 s2Step67HeadGvFresh
    s2Step67HeadGv_distinct s2Step67HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step67HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step67HeadGvRow.payload++s2Step67HeadGvFresh) s2Step67HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step67HeadBank_rows : planWindowRowsLog s2Step67HeadGBefore [(s2Step67HeadGRow,236),(s2Step67HeadFRow,236),(s2Step67HeadGvRow,48),(s2Step67HeadFvRow,48)] [s2Step67HeadGFresh,s2Step67HeadFFresh,s2Step67HeadGvFresh,s2Step67HeadFvFresh]=
    some (s2Step67HeadFvAfter,[s2Step67HeadGOut,s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut],(growRow 769 s2Step67HeadGFresh ++ (growRow 768 s2Step67HeadFFresh ++ (growRow 771 s2Step67HeadGvFresh ++ (growRow 770 s2Step67HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step67HeadFvAfter [] []=some (s2Step67HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step67HeadFvBefore s2Step67HeadFvAfter s2Step67HeadFvAfter
    s2Step67HeadFvRow s2Step67HeadFvOut 48 s2Step67HeadFvFresh [] [] []
    (growRow 770 s2Step67HeadFvFresh) ([]) s2Step67HeadFv_Incoming s2Step67HeadFv_checked h4 s2Step67HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step67HeadGvBefore s2Step67HeadGvAfter s2Step67HeadFvAfter
    s2Step67HeadGvRow s2Step67HeadGvOut 48 s2Step67HeadGvFresh [(s2Step67HeadFvRow,48)] [s2Step67HeadFvFresh] [s2Step67HeadFvOut]
    (growRow 771 s2Step67HeadGvFresh) ((growRow 770 s2Step67HeadFvFresh ++ [])) s2Step67HeadGv_Incoming s2Step67HeadGv_checked h3 s2Step67HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step67HeadFBefore s2Step67HeadFAfter s2Step67HeadFvAfter
    s2Step67HeadFRow s2Step67HeadFOut 236 s2Step67HeadFFresh [(s2Step67HeadGvRow,48),(s2Step67HeadFvRow,48)] [s2Step67HeadGvFresh,s2Step67HeadFvFresh] [s2Step67HeadGvOut,s2Step67HeadFvOut]
    (growRow 768 s2Step67HeadFFresh) ((growRow 771 s2Step67HeadGvFresh ++ (growRow 770 s2Step67HeadFvFresh ++ []))) s2Step67HeadF_Incoming s2Step67HeadF_checked h2 s2Step67HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step67HeadGBefore s2Step67HeadGAfter s2Step67HeadFvAfter
    s2Step67HeadGRow s2Step67HeadGOut 236 s2Step67HeadGFresh [(s2Step67HeadFRow,236),(s2Step67HeadGvRow,48),(s2Step67HeadFvRow,48)] [s2Step67HeadFFresh,s2Step67HeadGvFresh,s2Step67HeadFvFresh] [s2Step67HeadFOut,s2Step67HeadGvOut,s2Step67HeadFvOut]
    (growRow 769 s2Step67HeadGFresh) ((growRow 768 s2Step67HeadFFresh ++ (growRow 771 s2Step67HeadGvFresh ++ (growRow 770 s2Step67HeadFvFresh ++ [])))) s2Step67HeadG_Incoming s2Step67HeadG_checked h1 s2Step67HeadG_Outgoing
  exact h0

private theorem s2Step67HeadBank_checked : compileHmrBankResizeLog .headroom s2Step67HeadGBefore ⟨s2Step67HeadFRow,s2Step67HeadGRow,s2Step67HeadFvRow,s2Step67HeadGvRow⟩ ⟨236,236,48,48⟩ [s2Step67HeadGFresh,s2Step67HeadFFresh,s2Step67HeadGvFresh,s2Step67HeadFvFresh]=
    some (s2Step67HeadFvAfter,⟨s2Step67HeadFOut,s2Step67HeadGOut,s2Step67HeadFvOut,s2Step67HeadGvOut⟩,(growRow 769 s2Step67HeadGFresh ++ (growRow 768 s2Step67HeadFFresh ++ (growRow 771 s2Step67HeadGvFresh ++ (growRow 770 s2Step67HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step67HeadBank_rows]
  rfl

private theorem s2Step67Front_checked : compileHmrSourceFrontLog s2Step67EntryFBefore s2Step67FrontBank 235 47 ⟨234,234,47,47⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step67FrontLog=some s2Step67FrontPlan := by
  have pairEq : s2Step67FrontPair=⟨s2Step67HeadFRow,s2Step67HeadGRow,s2Step67HeadFvRow,s2Step67HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step67FrontHead=⟨s2Step67ExitFRow,s2Step67ExitGRow,s2Step67ExitFvRow,s2Step67ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step67Add0A=s2Step67FrontHead.f.wires := by decide +kernel
  have gEq : s2Step67Add0B=s2Step67FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step67Add1A=s2Step67FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step67Add1B=s2Step67FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step67EntryFBefore s2Step67FrontBank 235 47 ⟨234,234,47,47⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step67FrontLog s2Step67FrontPlan
  · exact s2Step67Front_entry
  · exact s2Step67EntryBank_checked
  · exact s2Step67Front_sigma
  · rfl
  · exact s2Step67Front_branch
  · rfl
  · simpa only [s2Step67FrontPlan,pairEq] using s2Step67HeadBank_checked
  · simpa only [s2Step67FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step67F4_checked
  · exact s2Step67Counter_checked
  · rfl
  · simpa only [s2Step67FrontPlan,headEq] using s2Step67ExitBank_checked

private theorem s2Step67Complete_explicit_checked : compileHmrEarlyStepLog s2Step67EntryFBefore s2Step67FrontBank 235 47 ⟨234,234,47,47⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step67CompleteLog=some s2Step67CompletePlan := by
  let Q := s2Step67EarlyControlPlan
  have hq := s2Step67EarlyControl_plan_checked
  have fv1 : s2Step67CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step67CompleteOut.fv.payload[2]?.getD s2Step67CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step67CompleteOut.fv.payload[3]?.getD s2Step67CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step67CompleteOut.fv.payload[4]?.getD s2Step67CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step67EntryFBefore s2Step67EarlyControlArena s2Step67FrontBank 235 47 ⟨234,234,47,47⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step67CompleteLog s2Step67FrontPlan Q
    s2Step67Front_checked s2Step67Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step67Complete_owned s2Step67Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step67EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 829 s2Step67CompleteOut.fv.second (s2Step67CompleteOut.fv.payload[2]?.getD s2Step67CompleteOut.fv.sign) (s2Step67CompleteOut.fv.payload[3]?.getD s2Step67CompleteOut.fv.sign) (s2Step67CompleteOut.fv.payload[4]?.getD s2Step67CompleteOut.fv.sign) 844 30 s2Step67EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep67Arena : Arena := s2Step67EntryFBefore
def s2PrivateStep67Bank : WindowBank := s2Step67FrontBank
def s2PrivateStep67Spec : HmrSourceWalkStepLog := ⟨235,47,⟨234,234,47,47⟩,30,.early s2Step67CompleteLog⟩
def s2PrivateStep67Plan : HmrSourceStepPlan := .early s2Step67CompletePlan
theorem s2PrivateStep67_source : s2PrivateStep67Spec=s2ObservedLogs64[3] := rfl
theorem s2PrivateStep67_checked : compileHmrSourceStepLog s2PrivateStep67Arena s2PrivateStep67Bank
    s2PrivateStep67Spec.fgWidth s2PrivateStep67Spec.vWidth s2PrivateStep67Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 67 s2PrivateStep67Spec.need none s2PrivateStep67Spec.log=some s2PrivateStep67Plan := by
  change compileHmrSourceStepLog s2Step67EntryFBefore s2Step67FrontBank 235 47 ⟨234,234,47,47⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 67 30 none (.early s2Step67CompleteLog)=some (.early s2Step67CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 67<498)]
  rw [s2Step67Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
