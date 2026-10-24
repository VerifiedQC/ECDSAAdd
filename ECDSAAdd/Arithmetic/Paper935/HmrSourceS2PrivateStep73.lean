import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep71
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

private def s2Step73CompleteMoves : List (Wire × Wire) := []

private def s2Step73EarlyControlLog : HmrEarlyControlLog := ⟨[845, 814, 835, 816, 827],[834],[844],[826, 846, 847, 849, 851, 867],[]⟩

private def s2Step73FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [835], [], []],[[816], [814], [845], [829]],[[], [], [], []]⟩,[822],[831],[827],[834],[844, 826, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[844, 826, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915],[827, 834, 844, 826]⟩

private def s2Step73CompleteLog : HmrEarlyStepLog := ⟨s2Step73FrontLog,s2Step73CompleteMoves,s2Step73EarlyControlLog⟩

private def s2Step73ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step73ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩

private def s2Step73ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step73ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837],771⟩

private def s2Step73FrontOut : WindowBank := ⟨s2Step73ExitFOut,s2Step73ExitGOut,s2Step73ExitFvOut,s2Step73ExitGvOut⟩

private def s2Step73CompleteOut : WindowBank := s2Step73FrontOut.repacked s2Step73CompleteMoves

private def s2Step73EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step73EarlyControlPositiveArena,[834],s2Step73EarlyControlEqualityArena,[844],⟨⟨822,false⟩,[⟨⟨834,false⟩,844⟩]⟩⟩

private def s2Step73EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,845⟩,⟨⟨774,false⟩,814⟩,⟨⟨775,false⟩,835⟩,⟨⟨776,false⟩,816⟩,⟨⟨777,false⟩,827⟩]⟩

private def s2Step73EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step73EarlyControlZeroArena,s2Step73EarlyControlZeroPlan,s2Step73EarlyControlClassPlan,s2Step73EarlyControlFlagArena,s2Step73EarlyControlFittedArena,s2Step73EarlyControlHistoryArena,s2Step73EarlyControlSigmaArena,s2Step73EarlyControlOutputArena,s2Step73EarlyControlLog⟩

private def s2Step73CounterWork : List Wire := [827, 834, 844, 826]

private theorem s2Step73Counter_bounded : s2Step73CounterWork.toFinset⊆arenaWires := by norm_num [s2Step73CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step73HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73CounterDuring : Arena := ⟨s2Step73HeadFvAfter.live∪s2Step73CounterWork.toFinset,Finset.union_subset s2Step73HeadFvAfter.bounded s2Step73Counter_bounded⟩

private def s2Step73EntryFFresh : List Wire := []

private def s2Step73EntryFvFresh : List Wire := []

private def s2Step73EntryGFresh : List Wire := [835]

private def s2Step73EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EntryGvAfter : Arena := s2Step73EntryGAfter

private def s2Step73EntryGvFresh : List Wire := []

private def s2Step73ExitFExtra : List Wire := [814]

private def s2Step73ExitGExtra : List Wire := [835, 816]

private def s2Step73ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73ExitGvExtra : List Wire := [845]

private def s2Step73Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73Add0Work : List Wire := [844, 826, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step73Add0_bounded : s2Step73Add0Work.toFinset⊆arenaWires := by
  have h : s2Step73Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step73Add0During : Arena := ⟨s2Step73Add0Arena.live∪s2Step73Add0Work.toFinset,Finset.union_subset s2Step73Add0Arena.bounded s2Step73Add0_bounded⟩

private def s2Step73Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73Add1Work : List Wire := [844, 826, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915]

private theorem s2Step73Add1_bounded : s2Step73Add1Work.toFinset⊆arenaWires := by
  have h : s2Step73Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step73Add1During : Arena := ⟨s2Step73Add1Arena.live∪s2Step73Add1Work.toFinset,Finset.union_subset s2Step73Add1Arena.bounded s2Step73Add1_bounded⟩

private def s2Step73F4FlagArena : Arena := ⟨s2Step73HeadFvAfter.live∪{827},Finset.union_subset s2Step73HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step73F4Plan : HmrHybridF4Plan := ⟨s2Step73F4FlagArena,[827],s2Step73Add0Arena,[834],s2Step73Add0During,s2Step73Add0Work,s2Step73Add1During,s2Step73Add1Work⟩

private def s2Step73HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 814],768⟩

private def s2Step73HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩

private def s2Step73HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835, 816],769⟩

private def s2Step73HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 845],771⟩

private def s2Step73FrontHead : WindowBank := ⟨s2Step73HeadFOut,s2Step73HeadGOut,s2Step73HeadFvOut,s2Step73HeadGvOut⟩

private def s2Step73EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step73EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step73EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835],769⟩

private def s2Step73EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837],771⟩

private def s2Step73FrontPair : WindowBank := ⟨s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut⟩

private def s2Step73FrontSigmaArena : Arena := ⟨s2Step73EntryGvAfter.live∪{822},Finset.union_subset s2Step73EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step73HeadFFresh : List Wire := [814]

private def s2Step73HeadFvFresh : List Wire := [829]

private def s2Step73HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73HeadGFresh : List Wire := [816]

private def s2Step73HeadGvFresh : List Wire := [845]

private def s2Step73FrontPlan : HmrSourceFront := ⟨s2Step73EntryGvAfter,s2Step73FrontPair,(growRow 768 s2Step73EntryFFresh ++ (growRow 769 s2Step73EntryGFresh ++ (growRow 770 s2Step73EntryFvFresh ++ (growRow 771 s2Step73EntryGvFresh ++ [])))),s2Step73FrontSigmaArena,[822],s2Step73HeadGBefore,[831],
  s2Step73HeadFvAfter,s2Step73FrontHead,(growRow 769 s2Step73HeadGFresh ++ (growRow 768 s2Step73HeadFFresh ++ (growRow 771 s2Step73HeadGvFresh ++ (growRow 770 s2Step73HeadFvFresh ++ [])))),s2Step73F4Plan,s2Step73CounterDuring,s2Step73CounterWork,s2Step73ExitGvAfter,s2Step73FrontOut,(shrinkRow 769 s2Step73ExitGExtra ++ (shrinkRow 768 s2Step73ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step73ExitGvExtra ++ []))))⟩

private def s2Step73CompletePlan : HmrEarlyStepPlan := ⟨s2Step73FrontPlan,s2Step73EarlyControlArena,s2Step73EarlyControlPlan,s2Step73CompleteMoves⟩

private theorem s2Step73Complete_apart : List.Disjoint (s2Step73CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [822, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step73CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[822, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step73Complete_owned : (s2Step73CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73Complete_repack : s2Step73ExitGvAfter.checkRepack s2Step73CompleteMoves=some s2Step73EarlyControlArena := by rfl

private theorem s2Step73EarlyControl_branchOwned : ([831] : List Wire).toFinset⊆s2Step73EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlSigmaArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_branch : compileHmrBranchRetirement s2Step73EarlyControlSigmaArena 831=some s2Step73EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step73EarlyControl_branchOwned
  · ext q
    simp [s2Step73EarlyControlOutputArena,s2Step73EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step73EarlyControl_classEqualityBorrow : s2Step73EarlyControlPositiveArena.checkBorrow (([822, 834] : List Wire).length-1) s2Step73EarlyControlLog.classWork=some s2Step73EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step73EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step73EarlyControlEqualityArena,s2Step73EarlyControlPositiveArena,s2Step73EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step73EarlyControl_classEqualityOwned : ([822, 834] : List Wire).toFinset⊆s2Step73EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_classEquality : compileHmrEqualityLog s2Step73EarlyControlPositiveArena [822, 834] 0 s2Step73EarlyControlLog.classWork=some (s2Step73EarlyControlEqualityArena,s2Step73EarlyControlLog.classWork,s2Step73EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step73EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step73EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step73EarlyControl_classOwned : ([777, 827, 822] : List Wire).toFinset⊆s2Step73EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_positiveBorrow : s2Step73EarlyControlZeroArena.checkBorrow (1) s2Step73EarlyControlLog.positiveWork=some s2Step73EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step73EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step73EarlyControlPositiveArena,s2Step73EarlyControlZeroArena,s2Step73EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step73EarlyControl_class : compileHmrSourceClassLog s2Step73EarlyControlZeroArena false 777 s2Step73EarlyControlZeroPlan.top 0 822 s2Step73EarlyControlLog.positiveWork s2Step73EarlyControlLog.classWork=some s2Step73EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step73EarlyControlClassPlan s2Step73EarlyControlZeroArena false 777 s2Step73EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s2Step73EarlyControl_classOwned
  · exact s2Step73EarlyControl_positiveBorrow
  · exact s2Step73EarlyControl_classEquality

private theorem s2Step73EarlyControl_entryRecordOwned : ([831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s2Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_fitBorrow : s2Step73EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step73EarlyControlLog.recordFresh=some s2Step73EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step73EarlyControlFlagArena (fun q => (0≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step73EarlyControlFittedArena,s2Step73EarlyControlFlagArena,s2Step73EarlyControlLog,arenaWires]

private theorem s2Step73EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step73EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlFlagArena (fun q => (0≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_fit : compileHmrRecordGrowLog s2Step73EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step73EarlyControlLog.recordFresh=some s2Step73EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step73EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step73EarlyControl_fitBorrow

private theorem s2Step73EarlyControl_flagsBorrow : s2Step73EarlyControlEqualityArena.checkBorrow (6) s2Step73EarlyControlLog.flagWork=some s2Step73EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step73EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step73EarlyControlFlagArena,s2Step73EarlyControlEqualityArena,s2Step73EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step73EarlyControl_flagsOwned : ([844, 253, 252, 251] : List Wire).toFinset⊆s2Step73EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_flags : compileHmrFlagsLog s2Step73EarlyControlClassPlan.equalityArena s2Step73EarlyControlClassPlan.equality.top 253 252 251 s2Step73EarlyControlLog.flagWork=some s2Step73EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step73EarlyControl_flagsOwned⟩
  · exact s2Step73EarlyControl_flagsBorrow

private theorem s2Step73EarlyControl_historyBorrow : s2Step73EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step73EarlyControlLog.recordFresh=some s2Step73EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step73EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step73EarlyControlHistoryArena,s2Step73EarlyControlArena,s2Step73EarlyControlLog,arenaWires]

private theorem s2Step73EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_history : compileHmrRecordGrowLog s2Step73EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step73EarlyControlLog.recordFresh=some s2Step73EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step73EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step73EarlyControl_historyBorrow

private theorem s2Step73EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s2Step73EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s2Step73EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_sigmaRelease : s2Step73EarlyControlHistoryArena.release {822} (fun _ => false)=some s2Step73EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step73EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step73EarlyControlSigmaArena,s2Step73EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step73EarlyControl_sigma : compileHmrSigmaDropLog s2Step73EarlyControlHistoryArena false 0 0 254 822 []=some s2Step73EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step73EarlyControl_sigmaOwned⟩
  · exact s2Step73EarlyControl_sigmaRelease

private theorem s2Step73EarlyControl_zeroBorrow : s2Step73EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step73EarlyControlLog.zeroWork=some s2Step73EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step73EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step73EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step73EarlyControlZeroArena,s2Step73EarlyControlArena,s2Step73EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step73EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step73EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step73EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EarlyControl_zero : compileHmrEqualityLog s2Step73EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step73EarlyControlLog.zeroWork=some (s2Step73EarlyControlZeroArena,s2Step73EarlyControlLog.zeroWork,s2Step73EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step73EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step73EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step73EarlyControl_logged : s2Step73EarlyControlPlan.Logged s2Step73EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 822 254 253 252 251 831 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step73EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step73EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step73EarlyControl_zero
  · exact s2Step73EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step73EarlyControl_flags
  · exact s2Step73EarlyControl_fit
  · exact s2Step73EarlyControl_history
  · exact s2Step73EarlyControl_sigma
  · exact s2Step73EarlyControl_branch

private theorem s2Step73EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step73EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 822 254 253 252 251 831 30 s2Step73EarlyControlLog=some s2Step73EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step73EarlyControlPlan s2Step73EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 822 254 253 252 251 831 30 s2Step73EarlyControl_logged

private def s2Step73EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step73EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step73EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step73EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837],771⟩

private def s2Step73FrontBank : WindowBank := ⟨s2Step73EntryFRow,s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow⟩

private def s2Step73Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 814, 768]

private def s2Step73Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835, 816, 769]

private def s2Step73Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829, 770]

private def s2Step73Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 845, 771]

private theorem s2Step73Counter_apart : Disjoint s2Step73HeadFvAfter.live s2Step73CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step73HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73Counter_borrowed : s2Step73HeadFvAfter.checkBorrow 4 s2Step73CounterWork=some s2Step73CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step73HeadFvAfter s2Step73CounterDuring s2Step73CounterWork.toFinset s2Step73Counter_bounded s2Step73Counter_apart rfl

private theorem s2Step73Counter_owned : (822::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step73HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step73HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73Counter_checked : compileHmrCounterStepLog s2Step73HeadFvAfter true 822 [772, 773, 774, 775, 776, 777] s2Step73CounterWork=some s2Step73CounterDuring := by
  have owned : ∀q∈822::[772, 773, 774, 775, 776, 777],q∈s2Step73HeadFvAfter.live := fun q hq => s2Step73Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step73Counter_borrowed

private def s2Step73EntryFAfter : Arena := s2Step73EntryFBefore

private theorem s2Step73EntryBank_incomingDistinct : ([s2Step73EntryFRow,s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73EntryF_Incoming : rowsOwned s2Step73EntryFBefore [s2Step73EntryFRow,s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73EntryFRow,s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow] 0 s2Step73EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73EntryBank_outgoingOwned : rowsOwned s2Step73EntryGvAfter [s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step73EntryGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73EntryF_Outgoing : rowsOwned s2Step73EntryGvAfter [s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut] :=
  hmrRows_owned_drop s2Step73EntryGvAfter [s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut] 0 s2Step73EntryBank_outgoingOwned

private theorem s2Step73EntryF_distinct : (s2Step73EntryFRow.sign::s2Step73EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73EntryF_owned : (s2Step73EntryFRow.sign::s2Step73EntryFRow.payload).toFinset⊆s2Step73EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EntryF_reserved : s2Step73EntryFBefore.reserve s2Step73EntryFFresh.toFinset=some s2Step73EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step73EntryFFresh,arenaWires]
  · norm_num [s2Step73EntryFBefore,s2Step73EntryFFresh,arenaWires]
  · simp only [s2Step73EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step73EntryF_checked : planRowResizeLog s2Step73EntryFBefore s2Step73EntryFRow 232 s2Step73EntryFFresh=
    some (s2Step73EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩,growRow 768 s2Step73EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step73EntryFBefore s2Step73EntryFAfter s2Step73EntryFRow 232 s2Step73EntryFFresh
    s2Step73EntryF_distinct s2Step73EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73EntryF_reserved
  have rowEq : WindowRow.mk (s2Step73EntryFRow.payload++s2Step73EntryFFresh) s2Step73EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step73EntryFvAfter : Arena := s2Step73EntryGAfter

private def s2Step73EntryFvBefore : Arena := s2Step73EntryGAfter

private theorem s2Step73EntryFv_Incoming : rowsOwned s2Step73EntryFvBefore [s2Step73EntryFvRow,s2Step73EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73EntryFRow,s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow] 2 s2Step73EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73EntryFv_Outgoing : rowsOwned s2Step73EntryGvAfter [s2Step73EntryFvOut,s2Step73EntryGvOut] :=
  hmrRows_owned_drop s2Step73EntryGvAfter [s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut] 2 s2Step73EntryBank_outgoingOwned

private theorem s2Step73EntryFv_distinct : (s2Step73EntryFvRow.sign::s2Step73EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73EntryFv_owned : (s2Step73EntryFvRow.sign::s2Step73EntryFvRow.payload).toFinset⊆s2Step73EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EntryFv_reserved : s2Step73EntryFvBefore.reserve s2Step73EntryFvFresh.toFinset=some s2Step73EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step73EntryFvFresh,arenaWires]
  · norm_num [s2Step73EntryFvBefore,s2Step73EntryGAfter,s2Step73EntryFvFresh,arenaWires]
  · simp only [s2Step73EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step73EntryFv_checked : planRowResizeLog s2Step73EntryFvBefore s2Step73EntryFvRow 49 s2Step73EntryFvFresh=
    some (s2Step73EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩,growRow 770 s2Step73EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step73EntryFvBefore s2Step73EntryFvAfter s2Step73EntryFvRow 49 s2Step73EntryFvFresh
    s2Step73EntryFv_distinct s2Step73EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step73EntryFvRow.payload++s2Step73EntryFvFresh) s2Step73EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step73EntryGBefore : Arena := s2Step73EntryFBefore

private theorem s2Step73EntryG_Incoming : rowsOwned s2Step73EntryGBefore [s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73EntryFRow,s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow] 1 s2Step73EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73EntryG_Outgoing : rowsOwned s2Step73EntryGvAfter [s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut] :=
  hmrRows_owned_drop s2Step73EntryGvAfter [s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut] 1 s2Step73EntryBank_outgoingOwned

private theorem s2Step73EntryG_distinct : (s2Step73EntryGRow.sign::s2Step73EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73EntryG_owned : (s2Step73EntryGRow.sign::s2Step73EntryGRow.payload).toFinset⊆s2Step73EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EntryG_reserved : s2Step73EntryGBefore.reserve s2Step73EntryGFresh.toFinset=some s2Step73EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step73EntryGFresh,arenaWires]
  · norm_num [s2Step73EntryGBefore,s2Step73EntryFBefore,s2Step73EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step73EntryGAfter,s2Step73EntryGBefore,s2Step73EntryFBefore,s2Step73EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step73EntryG_checked : planRowResizeLog s2Step73EntryGBefore s2Step73EntryGRow 232 s2Step73EntryGFresh=
    some (s2Step73EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835],769⟩,growRow 769 s2Step73EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step73EntryGBefore s2Step73EntryGAfter s2Step73EntryGRow 232 s2Step73EntryGFresh
    s2Step73EntryG_distinct s2Step73EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73EntryG_reserved
  have rowEq : WindowRow.mk (s2Step73EntryGRow.payload++s2Step73EntryGFresh) s2Step73EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step73EntryGvBefore : Arena := s2Step73EntryGAfter

private theorem s2Step73EntryGv_Incoming : rowsOwned s2Step73EntryGvBefore [s2Step73EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73EntryFRow,s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow] 3 s2Step73EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73EntryGv_Outgoing : rowsOwned s2Step73EntryGvAfter [s2Step73EntryGvOut] :=
  hmrRows_owned_drop s2Step73EntryGvAfter [s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut] 3 s2Step73EntryBank_outgoingOwned

private theorem s2Step73EntryGv_distinct : (s2Step73EntryGvRow.sign::s2Step73EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73EntryGv_owned : (s2Step73EntryGvRow.sign::s2Step73EntryGvRow.payload).toFinset⊆s2Step73EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73EntryGv_reserved : s2Step73EntryGvBefore.reserve s2Step73EntryGvFresh.toFinset=some s2Step73EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step73EntryGvFresh,arenaWires]
  · norm_num [s2Step73EntryGvBefore,s2Step73EntryGAfter,s2Step73EntryGvFresh,arenaWires]
  · simp only [s2Step73EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step73EntryGv_checked : planRowResizeLog s2Step73EntryGvBefore s2Step73EntryGvRow 49 s2Step73EntryGvFresh=
    some (s2Step73EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837],771⟩,growRow 771 s2Step73EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step73EntryGvBefore s2Step73EntryGvAfter s2Step73EntryGvRow 49 s2Step73EntryGvFresh
    s2Step73EntryGv_distinct s2Step73EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step73EntryGvRow.payload++s2Step73EntryGvFresh) s2Step73EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step73EntryBank_rows : planWindowRowsLog s2Step73EntryFBefore [(s2Step73EntryFRow,232),(s2Step73EntryGRow,232),(s2Step73EntryFvRow,49),(s2Step73EntryGvRow,49)] [s2Step73EntryFFresh,s2Step73EntryGFresh,s2Step73EntryFvFresh,s2Step73EntryGvFresh]=
    some (s2Step73EntryGvAfter,[s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut],(growRow 768 s2Step73EntryFFresh ++ (growRow 769 s2Step73EntryGFresh ++ (growRow 770 s2Step73EntryFvFresh ++ (growRow 771 s2Step73EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step73EntryGvAfter [] []=some (s2Step73EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step73EntryGvBefore s2Step73EntryGvAfter s2Step73EntryGvAfter
    s2Step73EntryGvRow s2Step73EntryGvOut 49 s2Step73EntryGvFresh [] [] []
    (growRow 771 s2Step73EntryGvFresh) ([]) s2Step73EntryGv_Incoming s2Step73EntryGv_checked h4 s2Step73EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step73EntryFvBefore s2Step73EntryFvAfter s2Step73EntryGvAfter
    s2Step73EntryFvRow s2Step73EntryFvOut 49 s2Step73EntryFvFresh [(s2Step73EntryGvRow,49)] [s2Step73EntryGvFresh] [s2Step73EntryGvOut]
    (growRow 770 s2Step73EntryFvFresh) ((growRow 771 s2Step73EntryGvFresh ++ [])) s2Step73EntryFv_Incoming s2Step73EntryFv_checked h3 s2Step73EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step73EntryGBefore s2Step73EntryGAfter s2Step73EntryGvAfter
    s2Step73EntryGRow s2Step73EntryGOut 232 s2Step73EntryGFresh [(s2Step73EntryFvRow,49),(s2Step73EntryGvRow,49)] [s2Step73EntryFvFresh,s2Step73EntryGvFresh] [s2Step73EntryFvOut,s2Step73EntryGvOut]
    (growRow 769 s2Step73EntryGFresh) ((growRow 770 s2Step73EntryFvFresh ++ (growRow 771 s2Step73EntryGvFresh ++ []))) s2Step73EntryG_Incoming s2Step73EntryG_checked h2 s2Step73EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step73EntryFBefore s2Step73EntryFAfter s2Step73EntryGvAfter
    s2Step73EntryFRow s2Step73EntryFOut 232 s2Step73EntryFFresh [(s2Step73EntryGRow,232),(s2Step73EntryFvRow,49),(s2Step73EntryGvRow,49)] [s2Step73EntryGFresh,s2Step73EntryFvFresh,s2Step73EntryGvFresh] [s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut]
    (growRow 768 s2Step73EntryFFresh) ((growRow 769 s2Step73EntryGFresh ++ (growRow 770 s2Step73EntryFvFresh ++ (growRow 771 s2Step73EntryGvFresh ++ [])))) s2Step73EntryF_Incoming s2Step73EntryF_checked h1 s2Step73EntryF_Outgoing
  exact h0

private theorem s2Step73EntryBank_checked : compileHmrBankResizeLog .entry s2Step73EntryFBefore ⟨s2Step73EntryFRow,s2Step73EntryGRow,s2Step73EntryFvRow,s2Step73EntryGvRow⟩ ⟨232,232,49,49⟩ [s2Step73EntryFFresh,s2Step73EntryGFresh,s2Step73EntryFvFresh,s2Step73EntryGvFresh]=
    some (s2Step73EntryGvAfter,⟨s2Step73EntryFOut,s2Step73EntryGOut,s2Step73EntryFvOut,s2Step73EntryGvOut⟩,(growRow 768 s2Step73EntryFFresh ++ (growRow 769 s2Step73EntryGFresh ++ (growRow 770 s2Step73EntryFvFresh ++ (growRow 771 s2Step73EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step73EntryBank_rows]
  rfl

private def s2Step73ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73ExitFBefore : Arena := s2Step73ExitGAfter

private def s2Step73ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 814],768⟩

private def s2Step73ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩

private def s2Step73ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835, 816],769⟩

private def s2Step73ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 845],771⟩

private theorem s2Step73ExitBank_incomingDistinct : ([s2Step73ExitGRow,s2Step73ExitFRow,s2Step73ExitFvRow,s2Step73ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73ExitF_Incoming : rowsOwned s2Step73ExitFBefore [s2Step73ExitFRow,s2Step73ExitFvRow,s2Step73ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73ExitGRow,s2Step73ExitFRow,s2Step73ExitFvRow,s2Step73ExitGvRow] 1 s2Step73ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73ExitFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73ExitBank_outgoingOwned : rowsOwned s2Step73ExitGvAfter [s2Step73ExitGOut,s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step73ExitGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73ExitF_Outgoing : rowsOwned s2Step73ExitGvAfter [s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut] :=
  hmrRows_owned_drop s2Step73ExitGvAfter [s2Step73ExitGOut,s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut] 1 s2Step73ExitBank_outgoingOwned

private theorem s2Step73ExitF_distinct : (s2Step73ExitFRow.sign::s2Step73ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73ExitF_owned : (s2Step73ExitFRow.sign::s2Step73ExitFRow.payload).toFinset⊆s2Step73ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73ExitFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73ExitF_retired : s2Step73ExitFBefore.retireSet s2Step73ExitFExtra.toFinset=s2Step73ExitFAfter := by
  unfold Arena.retireSet s2Step73ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step73ExitFBefore,s2Step73ExitGAfter,s2Step73ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step73ExitF_checked : planRowResizeLog s2Step73ExitFBefore s2Step73ExitFRow 232 []=
    some (s2Step73ExitFAfter,s2Step73ExitFOut,shrinkRow 768 s2Step73ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step73ExitFBefore s2Step73ExitFRow 232 s2Step73ExitF_distinct s2Step73ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step73ExitFRow.payload.take 232) s2Step73ExitFRow.sign=s2Step73ExitFOut := by decide +kernel
  have hi : s2Step73ExitFRow.payload.drop 232=s2Step73ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step73ExitF_retired] at result
  exact result

private def s2Step73ExitFvAfter : Arena := s2Step73ExitFAfter

private def s2Step73ExitFvBefore : Arena := s2Step73ExitFAfter

private theorem s2Step73ExitFv_Incoming : rowsOwned s2Step73ExitFvBefore [s2Step73ExitFvRow,s2Step73ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73ExitGRow,s2Step73ExitFRow,s2Step73ExitFvRow,s2Step73ExitGvRow] 2 s2Step73ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73ExitFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73ExitFv_Outgoing : rowsOwned s2Step73ExitGvAfter [s2Step73ExitFvOut,s2Step73ExitGvOut] :=
  hmrRows_owned_drop s2Step73ExitGvAfter [s2Step73ExitGOut,s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut] 2 s2Step73ExitBank_outgoingOwned

private theorem s2Step73ExitFv_distinct : (s2Step73ExitFvRow.sign::s2Step73ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73ExitFv_owned : (s2Step73ExitFvRow.sign::s2Step73ExitFvRow.payload).toFinset⊆s2Step73ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73ExitFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73ExitFv_reserved : s2Step73ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step73ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step73ExitFv_checked : planRowResizeLog s2Step73ExitFvBefore s2Step73ExitFvRow 50 []=
    some (s2Step73ExitFvAfter,s2Step73ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step73ExitFvBefore s2Step73ExitFvAfter s2Step73ExitFvRow 50 []
    s2Step73ExitFv_distinct s2Step73ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step73ExitFvRow.payload++[]) s2Step73ExitFvRow.sign=s2Step73ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step73ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step73ExitG_Incoming : rowsOwned s2Step73ExitGBefore [s2Step73ExitGRow,s2Step73ExitFRow,s2Step73ExitFvRow,s2Step73ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73ExitGRow,s2Step73ExitFRow,s2Step73ExitFvRow,s2Step73ExitGvRow] 0 s2Step73ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73ExitG_Outgoing : rowsOwned s2Step73ExitGvAfter [s2Step73ExitGOut,s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut] :=
  hmrRows_owned_drop s2Step73ExitGvAfter [s2Step73ExitGOut,s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut] 0 s2Step73ExitBank_outgoingOwned

private theorem s2Step73ExitG_distinct : (s2Step73ExitGRow.sign::s2Step73ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73ExitG_owned : (s2Step73ExitGRow.sign::s2Step73ExitGRow.payload).toFinset⊆s2Step73ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73ExitGBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73ExitG_retired : s2Step73ExitGBefore.retireSet s2Step73ExitGExtra.toFinset=s2Step73ExitGAfter := by
  unfold Arena.retireSet s2Step73ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step73ExitGBefore,s2Step73ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step73ExitG_checked : planRowResizeLog s2Step73ExitGBefore s2Step73ExitGRow 231 []=
    some (s2Step73ExitGAfter,s2Step73ExitGOut,shrinkRow 769 s2Step73ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step73ExitGBefore s2Step73ExitGRow 231 s2Step73ExitG_distinct s2Step73ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step73ExitGRow.payload.take 231) s2Step73ExitGRow.sign=s2Step73ExitGOut := by decide +kernel
  have hi : s2Step73ExitGRow.payload.drop 231=s2Step73ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step73ExitG_retired] at result
  exact result

private def s2Step73ExitGvBefore : Arena := s2Step73ExitFAfter

private theorem s2Step73ExitGv_Incoming : rowsOwned s2Step73ExitGvBefore [s2Step73ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73ExitGRow,s2Step73ExitFRow,s2Step73ExitFvRow,s2Step73ExitGvRow] 3 s2Step73ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73ExitGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73ExitGv_Outgoing : rowsOwned s2Step73ExitGvAfter [s2Step73ExitGvOut] :=
  hmrRows_owned_drop s2Step73ExitGvAfter [s2Step73ExitGOut,s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut] 3 s2Step73ExitBank_outgoingOwned

private theorem s2Step73ExitGv_distinct : (s2Step73ExitGvRow.sign::s2Step73ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73ExitGv_owned : (s2Step73ExitGvRow.sign::s2Step73ExitGvRow.payload).toFinset⊆s2Step73ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73ExitGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73ExitGv_retired : s2Step73ExitGvBefore.retireSet s2Step73ExitGvExtra.toFinset=s2Step73ExitGvAfter := by
  unfold Arena.retireSet s2Step73ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step73ExitGvBefore,s2Step73ExitFAfter,s2Step73ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step73ExitGv_checked : planRowResizeLog s2Step73ExitGvBefore s2Step73ExitGvRow 49 []=
    some (s2Step73ExitGvAfter,s2Step73ExitGvOut,shrinkRow 771 s2Step73ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step73ExitGvBefore s2Step73ExitGvRow 49 s2Step73ExitGv_distinct s2Step73ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step73ExitGvRow.payload.take 49) s2Step73ExitGvRow.sign=s2Step73ExitGvOut := by decide +kernel
  have hi : s2Step73ExitGvRow.payload.drop 49=s2Step73ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step73ExitGv_retired] at result
  exact result

private theorem s2Step73ExitBank_rows : planWindowRowsLog s2Step73ExitGBefore [(s2Step73ExitGRow,231),(s2Step73ExitFRow,232),(s2Step73ExitFvRow,50),(s2Step73ExitGvRow,49)] [[],[],[],[]]=
    some (s2Step73ExitGvAfter,[s2Step73ExitGOut,s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut],(shrinkRow 769 s2Step73ExitGExtra ++ (shrinkRow 768 s2Step73ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step73ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step73ExitGvAfter [] []=some (s2Step73ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step73ExitGvBefore s2Step73ExitGvAfter s2Step73ExitGvAfter
    s2Step73ExitGvRow s2Step73ExitGvOut 49 [] [] [] []
    (shrinkRow 771 s2Step73ExitGvExtra) ([]) s2Step73ExitGv_Incoming s2Step73ExitGv_checked h4 s2Step73ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step73ExitFvBefore s2Step73ExitFvAfter s2Step73ExitGvAfter
    s2Step73ExitFvRow s2Step73ExitFvOut 50 [] [(s2Step73ExitGvRow,49)] [[]] [s2Step73ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step73ExitGvExtra ++ [])) s2Step73ExitFv_Incoming s2Step73ExitFv_checked h3 s2Step73ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step73ExitFBefore s2Step73ExitFAfter s2Step73ExitGvAfter
    s2Step73ExitFRow s2Step73ExitFOut 232 [] [(s2Step73ExitFvRow,50),(s2Step73ExitGvRow,49)] [[],[]] [s2Step73ExitFvOut,s2Step73ExitGvOut]
    (shrinkRow 768 s2Step73ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step73ExitGvExtra ++ []))) s2Step73ExitF_Incoming s2Step73ExitF_checked h2 s2Step73ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step73ExitGBefore s2Step73ExitGAfter s2Step73ExitGvAfter
    s2Step73ExitGRow s2Step73ExitGOut 231 [] [(s2Step73ExitFRow,232),(s2Step73ExitFvRow,50),(s2Step73ExitGvRow,49)] [[],[],[]] [s2Step73ExitFOut,s2Step73ExitFvOut,s2Step73ExitGvOut]
    (shrinkRow 769 s2Step73ExitGExtra) ((shrinkRow 768 s2Step73ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step73ExitGvExtra ++ [])))) s2Step73ExitG_Incoming s2Step73ExitG_checked h1 s2Step73ExitG_Outgoing
  exact h0

private theorem s2Step73ExitBank_checked : compileHmrBankResizeLog .exit s2Step73ExitGBefore ⟨s2Step73ExitFRow,s2Step73ExitGRow,s2Step73ExitFvRow,s2Step73ExitGvRow⟩ ⟨232,231,50,49⟩ [[],[],[],[]]=
    some (s2Step73ExitGvAfter,⟨s2Step73ExitFOut,s2Step73ExitGOut,s2Step73ExitFvOut,s2Step73ExitGvOut⟩,(shrinkRow 769 s2Step73ExitGExtra ++ (shrinkRow 768 s2Step73ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step73ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step73ExitBank_rows]
  rfl

private theorem s2Step73Add0_apart : Disjoint s2Step73Add0Arena.live s2Step73Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step73Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73Add0_card : s2Step73Add0Arena.live.card=866 := by
  decide +kernel

private theorem s2Step73Add0_borrowed : s2Step73Add0Arena.checkBorrow (hmrHybridCount s2Step73Add0Arena s2Step73Add0B.length) s2Step73Add0Work=some s2Step73Add0During := by
  have len : s2Step73Add0Work.length=hmrHybridCount s2Step73Add0Arena s2Step73Add0B.length := by
    rw [hmrHybridCount,s2Step73Add0_card]
    decide +kernel
  have nd : s2Step73Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step73Add0Arena s2Step73Add0During s2Step73Add0Work.toFinset s2Step73Add0_bounded s2Step73Add0_apart rfl

private theorem s2Step73Add0_distinct : (827::831::834::(s2Step73Add0A++s2Step73Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73Add0_owned : (827::831::834::(s2Step73Add0A++s2Step73Add0B)).toFinset⊆s2Step73Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step73Add0Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73Add0_checked : compileHmrHybridCinLog s2Step73Add0Arena 831 827 834 s2Step73Add0A s2Step73Add0B s2Step73Add0Work=some s2Step73Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step73Add0Arena s2Step73Add0During 831 827 834 s2Step73Add0A s2Step73Add0B s2Step73Add0Work
    (by decide +kernel) (by decide +kernel) s2Step73Add0_distinct
    (fun q hq => s2Step73Add0_owned (List.mem_toFinset.mpr hq)) s2Step73Add0_borrowed

private theorem s2Step73Add1_apart : Disjoint s2Step73Add1Arena.live s2Step73Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step73Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73Add1_card : s2Step73Add1Arena.live.card=866 := by
  decide +kernel

private theorem s2Step73Add1_borrowed : s2Step73Add1Arena.checkBorrow (hmrHybridCount s2Step73Add1Arena s2Step73Add1B.length) s2Step73Add1Work=some s2Step73Add1During := by
  have len : s2Step73Add1Work.length=hmrHybridCount s2Step73Add1Arena s2Step73Add1B.length := by
    rw [hmrHybridCount,s2Step73Add1_card]
    decide +kernel
  have nd : s2Step73Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step73Add1Arena s2Step73Add1During s2Step73Add1Work.toFinset s2Step73Add1_bounded s2Step73Add1_apart rfl

private theorem s2Step73Add1_distinct : (827::831::834::(s2Step73Add1A++s2Step73Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73Add1_owned : (827::831::834::(s2Step73Add1A++s2Step73Add1B)).toFinset⊆s2Step73Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step73Add1Arena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73Add1_checked : compileHmrHybridCinLog s2Step73Add1Arena 831 827 834 s2Step73Add1A s2Step73Add1B s2Step73Add1Work=some s2Step73Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step73Add1Arena s2Step73Add1During 831 827 834 s2Step73Add1A s2Step73Add1B s2Step73Add1Work
    (by decide +kernel) (by decide +kernel) s2Step73Add1_distinct
    (fun q hq => s2Step73Add1_owned (List.mem_toFinset.mpr hq)) s2Step73Add1_borrowed

private theorem s2Step73F4_apart : Disjoint (s2Step73Add0A++s2Step73Add0B).toFinset (s2Step73Add1A++s2Step73Add1B).toFinset := by
  have nd : ((s2Step73Add0A++s2Step73Add0B)++(s2Step73Add1A++s2Step73Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step73F4_carry : s2Step73F4FlagArena.checkBorrow 1 [834]=some s2Step73Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step73F4FlagArena,s2Step73HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step73F4FlagArena,s2Step73HeadFvAfter,s2Step73Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step73F4_distinct : (822::831::827::834::((s2Step73Add0A++s2Step73Add1A)++(s2Step73Add0B++s2Step73Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73F4_flag : s2Step73HeadFvAfter.checkBorrow 1 [827]=some s2Step73F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step73HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step73F4_owned : (822::831::((s2Step73Add0A++s2Step73Add1A)++(s2Step73Add0B++s2Step73Add1B))).toFinset⊆s2Step73HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step73HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73F4_checked : compileHmrHybridF4Log s2Step73HeadFvAfter 822 831 s2Step73Add0A s2Step73Add0B s2Step73Add1A s2Step73Add1B [827] [834] s2Step73Add0Work s2Step73Add1Work=some s2Step73F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step73HeadFvAfter s2Step73F4FlagArena s2Step73Add0Arena s2Step73Add0During s2Step73Add1During 822 831
    s2Step73Add0A s2Step73Add0B s2Step73Add1A s2Step73Add1B [827] [834] s2Step73Add0Work s2Step73Add1Work
    (fun q hq => s2Step73F4_owned (List.mem_toFinset.mpr hq)) s2Step73F4_flag s2Step73F4_carry
    s2Step73F4_distinct s2Step73F4_apart s2Step73Add0_checked s2Step73Add1_checked

private theorem s2Step73Front_branch : s2Step73FrontSigmaArena.checkBorrow 1 [831]=some s2Step73HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step73FrontSigmaArena,s2Step73EntryGvAfter,s2Step73EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step73FrontSigmaArena,s2Step73EntryGvAfter,s2Step73EntryGAfter,s2Step73HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step73Front_entry : HmrFrontEntryValid s2Step73EntryFBefore s2Step73FrontBank 232 49 ⟨232,231,50,49⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step73FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step73EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step73EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step73FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step73Front_sigma : s2Step73EntryGvAfter.checkBorrow 1 [822]=some s2Step73FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step73EntryGvAfter,s2Step73EntryGAfter,arenaWires]
  · rfl

private def s2Step73HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73HeadFBefore : Arena := s2Step73HeadGAfter

private def s2Step73HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step73HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step73HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835],769⟩

private def s2Step73HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837],771⟩

private theorem s2Step73HeadBank_incomingDistinct : ([s2Step73HeadGRow,s2Step73HeadFRow,s2Step73HeadGvRow,s2Step73HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73HeadF_Incoming : rowsOwned s2Step73HeadFBefore [s2Step73HeadFRow,s2Step73HeadGvRow,s2Step73HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73HeadGRow,s2Step73HeadFRow,s2Step73HeadGvRow,s2Step73HeadFvRow] 1 s2Step73HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73HeadBank_outgoingOwned : rowsOwned s2Step73HeadFvAfter [s2Step73HeadGOut,s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step73HeadFvAfter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73HeadF_Outgoing : rowsOwned s2Step73HeadFvAfter [s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut] :=
  hmrRows_owned_drop s2Step73HeadFvAfter [s2Step73HeadGOut,s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut] 1 s2Step73HeadBank_outgoingOwned

private theorem s2Step73HeadF_distinct : (s2Step73HeadFRow.sign::s2Step73HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73HeadF_owned : (s2Step73HeadFRow.sign::s2Step73HeadFRow.payload).toFinset⊆s2Step73HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73HeadF_reserved : s2Step73HeadFBefore.reserve s2Step73HeadFFresh.toFinset=some s2Step73HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step73HeadFFresh,arenaWires]
  · norm_num [s2Step73HeadFBefore,s2Step73HeadGAfter,s2Step73HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step73HeadFAfter,s2Step73HeadFBefore,s2Step73HeadGAfter,s2Step73HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step73HeadF_checked : planRowResizeLog s2Step73HeadFBefore s2Step73HeadFRow 233 s2Step73HeadFFresh=
    some (s2Step73HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 814],768⟩,growRow 768 s2Step73HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step73HeadFBefore s2Step73HeadFAfter s2Step73HeadFRow 233 s2Step73HeadFFresh
    s2Step73HeadF_distinct s2Step73HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73HeadF_reserved
  have rowEq : WindowRow.mk (s2Step73HeadFRow.payload++s2Step73HeadFFresh) s2Step73HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step73HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step73HeadFvBefore : Arena := s2Step73HeadGvAfter

private theorem s2Step73HeadFv_Incoming : rowsOwned s2Step73HeadFvBefore [s2Step73HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73HeadGRow,s2Step73HeadFRow,s2Step73HeadGvRow,s2Step73HeadFvRow] 3 s2Step73HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73HeadFvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73HeadFv_Outgoing : rowsOwned s2Step73HeadFvAfter [s2Step73HeadFvOut] :=
  hmrRows_owned_drop s2Step73HeadFvAfter [s2Step73HeadGOut,s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut] 3 s2Step73HeadBank_outgoingOwned

private theorem s2Step73HeadFv_distinct : (s2Step73HeadFvRow.sign::s2Step73HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73HeadFv_owned : (s2Step73HeadFvRow.sign::s2Step73HeadFvRow.payload).toFinset⊆s2Step73HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73HeadFvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73HeadFv_reserved : s2Step73HeadFvBefore.reserve s2Step73HeadFvFresh.toFinset=some s2Step73HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step73HeadFvFresh,arenaWires]
  · norm_num [s2Step73HeadFvBefore,s2Step73HeadGvAfter,s2Step73HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step73HeadFvAfter,s2Step73HeadFvBefore,s2Step73HeadGvAfter,s2Step73HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step73HeadFv_checked : planRowResizeLog s2Step73HeadFvBefore s2Step73HeadFvRow 50 s2Step73HeadFvFresh=
    some (s2Step73HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩,growRow 770 s2Step73HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step73HeadFvBefore s2Step73HeadFvAfter s2Step73HeadFvRow 50 s2Step73HeadFvFresh
    s2Step73HeadFv_distinct s2Step73HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step73HeadFvRow.payload++s2Step73HeadFvFresh) s2Step73HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 829],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step73HeadG_Incoming : rowsOwned s2Step73HeadGBefore [s2Step73HeadGRow,s2Step73HeadFRow,s2Step73HeadGvRow,s2Step73HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73HeadGRow,s2Step73HeadFRow,s2Step73HeadGvRow,s2Step73HeadFvRow] 0 s2Step73HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73HeadG_Outgoing : rowsOwned s2Step73HeadFvAfter [s2Step73HeadGOut,s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut] :=
  hmrRows_owned_drop s2Step73HeadFvAfter [s2Step73HeadGOut,s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut] 0 s2Step73HeadBank_outgoingOwned

private theorem s2Step73HeadG_distinct : (s2Step73HeadGRow.sign::s2Step73HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73HeadG_owned : (s2Step73HeadGRow.sign::s2Step73HeadGRow.payload).toFinset⊆s2Step73HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73HeadG_reserved : s2Step73HeadGBefore.reserve s2Step73HeadGFresh.toFinset=some s2Step73HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step73HeadGFresh,arenaWires]
  · norm_num [s2Step73HeadGBefore,s2Step73HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step73HeadGAfter,s2Step73HeadGBefore,s2Step73HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step73HeadG_checked : planRowResizeLog s2Step73HeadGBefore s2Step73HeadGRow 233 s2Step73HeadGFresh=
    some (s2Step73HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835, 816],769⟩,growRow 769 s2Step73HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step73HeadGBefore s2Step73HeadGAfter s2Step73HeadGRow 233 s2Step73HeadGFresh
    s2Step73HeadG_distinct s2Step73HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73HeadG_reserved
  have rowEq : WindowRow.mk (s2Step73HeadGRow.payload++s2Step73HeadGFresh) s2Step73HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 835, 816],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step73HeadGvBefore : Arena := s2Step73HeadFAfter

private theorem s2Step73HeadGv_Incoming : rowsOwned s2Step73HeadGvBefore [s2Step73HeadGvRow,s2Step73HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step73HeadGRow,s2Step73HeadFRow,s2Step73HeadGvRow,s2Step73HeadFvRow] 2 s2Step73HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step73HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step73HeadGv_Outgoing : rowsOwned s2Step73HeadFvAfter [s2Step73HeadGvOut,s2Step73HeadFvOut] :=
  hmrRows_owned_drop s2Step73HeadFvAfter [s2Step73HeadGOut,s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut] 2 s2Step73HeadBank_outgoingOwned

private theorem s2Step73HeadGv_distinct : (s2Step73HeadGvRow.sign::s2Step73HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step73HeadGv_owned : (s2Step73HeadGvRow.sign::s2Step73HeadGvRow.payload).toFinset⊆s2Step73HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step73HeadGvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step73HeadGv_reserved : s2Step73HeadGvBefore.reserve s2Step73HeadGvFresh.toFinset=some s2Step73HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step73HeadGvFresh,arenaWires]
  · norm_num [s2Step73HeadGvBefore,s2Step73HeadFAfter,s2Step73HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step73HeadGvAfter,s2Step73HeadGvBefore,s2Step73HeadFAfter,s2Step73HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step73HeadGv_checked : planRowResizeLog s2Step73HeadGvBefore s2Step73HeadGvRow 50 s2Step73HeadGvFresh=
    some (s2Step73HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 845],771⟩,growRow 771 s2Step73HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step73HeadGvBefore s2Step73HeadGvAfter s2Step73HeadGvRow 50 s2Step73HeadGvFresh
    s2Step73HeadGv_distinct s2Step73HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step73HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step73HeadGvRow.payload++s2Step73HeadGvFresh) s2Step73HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 845],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step73HeadBank_rows : planWindowRowsLog s2Step73HeadGBefore [(s2Step73HeadGRow,233),(s2Step73HeadFRow,233),(s2Step73HeadGvRow,50),(s2Step73HeadFvRow,50)] [s2Step73HeadGFresh,s2Step73HeadFFresh,s2Step73HeadGvFresh,s2Step73HeadFvFresh]=
    some (s2Step73HeadFvAfter,[s2Step73HeadGOut,s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut],(growRow 769 s2Step73HeadGFresh ++ (growRow 768 s2Step73HeadFFresh ++ (growRow 771 s2Step73HeadGvFresh ++ (growRow 770 s2Step73HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step73HeadFvAfter [] []=some (s2Step73HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step73HeadFvBefore s2Step73HeadFvAfter s2Step73HeadFvAfter
    s2Step73HeadFvRow s2Step73HeadFvOut 50 s2Step73HeadFvFresh [] [] []
    (growRow 770 s2Step73HeadFvFresh) ([]) s2Step73HeadFv_Incoming s2Step73HeadFv_checked h4 s2Step73HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step73HeadGvBefore s2Step73HeadGvAfter s2Step73HeadFvAfter
    s2Step73HeadGvRow s2Step73HeadGvOut 50 s2Step73HeadGvFresh [(s2Step73HeadFvRow,50)] [s2Step73HeadFvFresh] [s2Step73HeadFvOut]
    (growRow 771 s2Step73HeadGvFresh) ((growRow 770 s2Step73HeadFvFresh ++ [])) s2Step73HeadGv_Incoming s2Step73HeadGv_checked h3 s2Step73HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step73HeadFBefore s2Step73HeadFAfter s2Step73HeadFvAfter
    s2Step73HeadFRow s2Step73HeadFOut 233 s2Step73HeadFFresh [(s2Step73HeadGvRow,50),(s2Step73HeadFvRow,50)] [s2Step73HeadGvFresh,s2Step73HeadFvFresh] [s2Step73HeadGvOut,s2Step73HeadFvOut]
    (growRow 768 s2Step73HeadFFresh) ((growRow 771 s2Step73HeadGvFresh ++ (growRow 770 s2Step73HeadFvFresh ++ []))) s2Step73HeadF_Incoming s2Step73HeadF_checked h2 s2Step73HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step73HeadGBefore s2Step73HeadGAfter s2Step73HeadFvAfter
    s2Step73HeadGRow s2Step73HeadGOut 233 s2Step73HeadGFresh [(s2Step73HeadFRow,233),(s2Step73HeadGvRow,50),(s2Step73HeadFvRow,50)] [s2Step73HeadFFresh,s2Step73HeadGvFresh,s2Step73HeadFvFresh] [s2Step73HeadFOut,s2Step73HeadGvOut,s2Step73HeadFvOut]
    (growRow 769 s2Step73HeadGFresh) ((growRow 768 s2Step73HeadFFresh ++ (growRow 771 s2Step73HeadGvFresh ++ (growRow 770 s2Step73HeadFvFresh ++ [])))) s2Step73HeadG_Incoming s2Step73HeadG_checked h1 s2Step73HeadG_Outgoing
  exact h0

private theorem s2Step73HeadBank_checked : compileHmrBankResizeLog .headroom s2Step73HeadGBefore ⟨s2Step73HeadFRow,s2Step73HeadGRow,s2Step73HeadFvRow,s2Step73HeadGvRow⟩ ⟨233,233,50,50⟩ [s2Step73HeadGFresh,s2Step73HeadFFresh,s2Step73HeadGvFresh,s2Step73HeadFvFresh]=
    some (s2Step73HeadFvAfter,⟨s2Step73HeadFOut,s2Step73HeadGOut,s2Step73HeadFvOut,s2Step73HeadGvOut⟩,(growRow 769 s2Step73HeadGFresh ++ (growRow 768 s2Step73HeadFFresh ++ (growRow 771 s2Step73HeadGvFresh ++ (growRow 770 s2Step73HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step73HeadBank_rows]
  rfl

private theorem s2Step73Front_checked : compileHmrSourceFrontLog s2Step73EntryFBefore s2Step73FrontBank 232 49 ⟨232,231,50,49⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step73FrontLog=some s2Step73FrontPlan := by
  have pairEq : s2Step73FrontPair=⟨s2Step73HeadFRow,s2Step73HeadGRow,s2Step73HeadFvRow,s2Step73HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step73FrontHead=⟨s2Step73ExitFRow,s2Step73ExitGRow,s2Step73ExitFvRow,s2Step73ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step73Add0A=s2Step73FrontHead.f.wires := by decide +kernel
  have gEq : s2Step73Add0B=s2Step73FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step73Add1A=s2Step73FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step73Add1B=s2Step73FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step73EntryFBefore s2Step73FrontBank 232 49 ⟨232,231,50,49⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step73FrontLog s2Step73FrontPlan
  · exact s2Step73Front_entry
  · exact s2Step73EntryBank_checked
  · exact s2Step73Front_sigma
  · rfl
  · exact s2Step73Front_branch
  · rfl
  · simpa only [s2Step73FrontPlan,pairEq] using s2Step73HeadBank_checked
  · simpa only [s2Step73FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step73F4_checked
  · exact s2Step73Counter_checked
  · rfl
  · simpa only [s2Step73FrontPlan,headEq] using s2Step73ExitBank_checked

private theorem s2Step73Complete_explicit_checked : compileHmrEarlyStepLog s2Step73EntryFBefore s2Step73FrontBank 232 49 ⟨232,231,50,49⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step73CompleteLog=some s2Step73CompletePlan := by
  let Q := s2Step73EarlyControlPlan
  have hq := s2Step73EarlyControl_plan_checked
  have fv1 : s2Step73CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step73CompleteOut.fv.payload[2]?.getD s2Step73CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step73CompleteOut.fv.payload[3]?.getD s2Step73CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step73CompleteOut.fv.payload[4]?.getD s2Step73CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step73EntryFBefore s2Step73EarlyControlArena s2Step73FrontBank 232 49 ⟨232,231,50,49⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step73CompleteLog s2Step73FrontPlan Q
    s2Step73Front_checked s2Step73Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step73Complete_owned s2Step73Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step73EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 822 s2Step73CompleteOut.fv.second (s2Step73CompleteOut.fv.payload[2]?.getD s2Step73CompleteOut.fv.sign) (s2Step73CompleteOut.fv.payload[3]?.getD s2Step73CompleteOut.fv.sign) (s2Step73CompleteOut.fv.payload[4]?.getD s2Step73CompleteOut.fv.sign) 831 30 s2Step73EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep73Arena : Arena := s2Step73EntryFBefore
def s2PrivateStep73Bank : WindowBank := s2Step73FrontBank
def s2PrivateStep73Spec : HmrSourceWalkStepLog := ⟨232,49,⟨232,231,50,49⟩,30,.early s2Step73CompleteLog⟩
def s2PrivateStep73Plan : HmrSourceStepPlan := .early s2Step73CompletePlan
theorem s2PrivateStep73_source : s2PrivateStep73Spec=s2ObservedLogs64[9] := rfl
theorem s2PrivateStep73_checked : compileHmrSourceStepLog s2PrivateStep73Arena s2PrivateStep73Bank
    s2PrivateStep73Spec.fgWidth s2PrivateStep73Spec.vWidth s2PrivateStep73Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 73 s2PrivateStep73Spec.need none s2PrivateStep73Spec.log=some s2PrivateStep73Plan := by
  change compileHmrSourceStepLog s2Step73EntryFBefore s2Step73FrontBank 232 49 ⟨232,231,50,49⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 73 30 none (.early s2Step73CompleteLog)=some (.early s2Step73CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 73<498)]
  rw [s2Step73Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
