import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep67
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

private def s2Step69CompleteMoves : List (Wire × Wire) := [(831,745)]

private def s2Step69EarlyControlLog : HmrEarlyControlLog := ⟨[831, 814, 822, 829, 825],[826],[827],[816, 845, 846, 847, 849, 851],[]⟩

private def s2Step69FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [829], [], []],[[825], [822], [814], [830]],[[], [], [], []]⟩,[844],[832],[826],[827],[816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913],[826, 827, 816, 845]⟩

private def s2Step69CompleteLog : HmrEarlyStepLog := ⟨s2Step69FrontLog,s2Step69CompleteMoves,s2Step69EarlyControlLog⟩

private def s2Step69ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744],768⟩

private def s2Step69ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩

private def s2Step69ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],769⟩

private def s2Step69ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step69FrontOut : WindowBank := ⟨s2Step69ExitFOut,s2Step69ExitGOut,s2Step69ExitFvOut,s2Step69ExitGvOut⟩

private def s2Step69CompleteOut : WindowBank := s2Step69FrontOut.repacked s2Step69CompleteMoves

private def s2Step69EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step69EarlyControlPositiveArena,[826],s2Step69EarlyControlEqualityArena,[827],⟨⟨844,false⟩,[⟨⟨826,false⟩,827⟩]⟩⟩

private def s2Step69EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,831⟩,⟨⟨774,false⟩,814⟩,⟨⟨775,false⟩,822⟩,⟨⟨776,false⟩,829⟩,⟨⟨777,false⟩,825⟩]⟩

private def s2Step69EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step69EarlyControlZeroArena,s2Step69EarlyControlZeroPlan,s2Step69EarlyControlClassPlan,s2Step69EarlyControlFlagArena,s2Step69EarlyControlFittedArena,s2Step69EarlyControlHistoryArena,s2Step69EarlyControlSigmaArena,s2Step69EarlyControlOutputArena,s2Step69EarlyControlLog⟩

private def s2Step69CounterWork : List Wire := [826, 827, 816, 845]

private theorem s2Step69Counter_bounded : s2Step69CounterWork.toFinset⊆arenaWires := by norm_num [s2Step69CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step69HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69CounterDuring : Arena := ⟨s2Step69HeadFvAfter.live∪s2Step69CounterWork.toFinset,Finset.union_subset s2Step69HeadFvAfter.bounded s2Step69Counter_bounded⟩

private def s2Step69EntryFFresh : List Wire := []

private def s2Step69EntryFvFresh : List Wire := []

private def s2Step69EntryGFresh : List Wire := [829]

private def s2Step69EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EntryGvAfter : Arena := s2Step69EntryGAfter

private def s2Step69EntryGvFresh : List Wire := []

private def s2Step69ExitFExtra : List Wire := [745, 822]

private def s2Step69ExitGExtra : List Wire := [829, 825]

private def s2Step69ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<745) ∨ (746≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69ExitGvExtra : List Wire := [814]

private def s2Step69Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69Add0Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step69Add0_bounded : s2Step69Add0Work.toFinset⊆arenaWires := by
  have h : s2Step69Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step69Add0During : Arena := ⟨s2Step69Add0Arena.live∪s2Step69Add0Work.toFinset,Finset.union_subset s2Step69Add0Arena.bounded s2Step69Add0_bounded⟩

private def s2Step69Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69Add1Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913]

private theorem s2Step69Add1_bounded : s2Step69Add1Work.toFinset⊆arenaWires := by
  have h : s2Step69Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step69Add1During : Arena := ⟨s2Step69Add1Arena.live∪s2Step69Add1Work.toFinset,Finset.union_subset s2Step69Add1Arena.bounded s2Step69Add1_bounded⟩

private def s2Step69F4FlagArena : Arena := ⟨s2Step69HeadFvAfter.live∪{826},Finset.union_subset s2Step69HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step69F4Plan : HmrHybridF4Plan := ⟨s2Step69F4FlagArena,[826],s2Step69Add0Arena,[827],s2Step69Add0During,s2Step69Add0Work,s2Step69Add1During,s2Step69Add1Work⟩

private def s2Step69HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822],768⟩

private def s2Step69HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩

private def s2Step69HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829, 825],769⟩

private def s2Step69HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814],771⟩

private def s2Step69FrontHead : WindowBank := ⟨s2Step69HeadFOut,s2Step69HeadGOut,s2Step69HeadFvOut,s2Step69HeadGvOut⟩

private def s2Step69EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step69EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step69EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829],769⟩

private def s2Step69EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step69FrontPair : WindowBank := ⟨s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut⟩

private def s2Step69FrontSigmaArena : Arena := ⟨s2Step69EntryGvAfter.live∪{844},Finset.union_subset s2Step69EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step69HeadFFresh : List Wire := [822]

private def s2Step69HeadFvFresh : List Wire := [830]

private def s2Step69HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69HeadGFresh : List Wire := [825]

private def s2Step69HeadGvFresh : List Wire := [814]

private def s2Step69FrontPlan : HmrSourceFront := ⟨s2Step69EntryGvAfter,s2Step69FrontPair,(growRow 768 s2Step69EntryFFresh ++ (growRow 769 s2Step69EntryGFresh ++ (growRow 770 s2Step69EntryFvFresh ++ (growRow 771 s2Step69EntryGvFresh ++ [])))),s2Step69FrontSigmaArena,[844],s2Step69HeadGBefore,[832],
  s2Step69HeadFvAfter,s2Step69FrontHead,(growRow 769 s2Step69HeadGFresh ++ (growRow 768 s2Step69HeadFFresh ++ (growRow 771 s2Step69HeadGvFresh ++ (growRow 770 s2Step69HeadFvFresh ++ [])))),s2Step69F4Plan,s2Step69CounterDuring,s2Step69CounterWork,s2Step69ExitGvAfter,s2Step69FrontOut,(shrinkRow 769 s2Step69ExitGExtra ++ (shrinkRow 768 s2Step69ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step69ExitGvExtra ++ []))))⟩

private def s2Step69CompletePlan : HmrEarlyStepPlan := ⟨s2Step69FrontPlan,s2Step69EarlyControlArena,s2Step69EarlyControlPlan,s2Step69CompleteMoves⟩

private theorem s2Step69Complete_apart : List.Disjoint (s2Step69CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step69CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step69Complete_owned : (s2Step69CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step69CompleteMoveArena : Arena := ⟨s2Step69ExitGvAfter.live∪{745},Finset.union_subset s2Step69ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step69Complete_repack : s2Step69ExitGvAfter.checkRepack s2Step69CompleteMoves=some s2Step69EarlyControlArena := by
  have owned : 831∈s2Step69ExitGvAfter.live := by norm_num [s2Step69ExitGvAfter,arenaWires]
  have reserve : s2Step69ExitGvAfter.reserve {745}=some s2Step69CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step69ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step69CompleteMoveArena.retireSet {831}=s2Step69EarlyControlArena := by
    unfold Arena.retireSet s2Step69EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step69CompleteMoveArena,s2Step69ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step69CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step69CompleteMoveArena.retireSet {831}).checkRepack []=some s2Step69EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step69EarlyControl_branchOwned : ([832] : List Wire).toFinset⊆s2Step69EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlSigmaArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_branch : compileHmrBranchRetirement s2Step69EarlyControlSigmaArena 832=some s2Step69EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step69EarlyControl_branchOwned
  · ext q
    simp [s2Step69EarlyControlOutputArena,s2Step69EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step69EarlyControl_classEqualityBorrow : s2Step69EarlyControlPositiveArena.checkBorrow (([844, 826] : List Wire).length-1) s2Step69EarlyControlLog.classWork=some s2Step69EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step69EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step69EarlyControlEqualityArena,s2Step69EarlyControlPositiveArena,s2Step69EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step69EarlyControl_classEqualityOwned : ([844, 826] : List Wire).toFinset⊆s2Step69EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_classEquality : compileHmrEqualityLog s2Step69EarlyControlPositiveArena [844, 826] 0 s2Step69EarlyControlLog.classWork=some (s2Step69EarlyControlEqualityArena,s2Step69EarlyControlLog.classWork,s2Step69EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step69EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step69EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step69EarlyControl_classOwned : ([777, 825, 844] : List Wire).toFinset⊆s2Step69EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_positiveBorrow : s2Step69EarlyControlZeroArena.checkBorrow (1) s2Step69EarlyControlLog.positiveWork=some s2Step69EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step69EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step69EarlyControlPositiveArena,s2Step69EarlyControlZeroArena,s2Step69EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step69EarlyControl_class : compileHmrSourceClassLog s2Step69EarlyControlZeroArena false 777 s2Step69EarlyControlZeroPlan.top 0 844 s2Step69EarlyControlLog.positiveWork s2Step69EarlyControlLog.classWork=some s2Step69EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step69EarlyControlClassPlan s2Step69EarlyControlZeroArena false 777 s2Step69EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step69EarlyControl_classOwned
  · exact s2Step69EarlyControl_positiveBorrow
  · exact s2Step69EarlyControl_classEquality

private theorem s2Step69EarlyControl_entryRecordOwned : ([832, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_fitBorrow : s2Step69EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step69EarlyControlLog.recordFresh=some s2Step69EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step69EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step69EarlyControlFittedArena,s2Step69EarlyControlFlagArena,s2Step69EarlyControlLog,arenaWires]

private theorem s2Step69EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step69EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_fit : compileHmrRecordGrowLog s2Step69EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step69EarlyControlLog.recordFresh=some s2Step69EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step69EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step69EarlyControl_fitBorrow

private theorem s2Step69EarlyControl_flagsBorrow : s2Step69EarlyControlEqualityArena.checkBorrow (6) s2Step69EarlyControlLog.flagWork=some s2Step69EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step69EarlyControlEqualityArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step69EarlyControlFlagArena,s2Step69EarlyControlEqualityArena,s2Step69EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step69EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step69EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlEqualityArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_flags : compileHmrFlagsLog s2Step69EarlyControlClassPlan.equalityArena s2Step69EarlyControlClassPlan.equality.top 253 252 251 s2Step69EarlyControlLog.flagWork=some s2Step69EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step69EarlyControl_flagsOwned⟩
  · exact s2Step69EarlyControl_flagsBorrow

private theorem s2Step69EarlyControl_historyBorrow : s2Step69EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step69EarlyControlLog.recordFresh=some s2Step69EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step69EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step69EarlyControlHistoryArena,s2Step69EarlyControlArena,s2Step69EarlyControlLog,arenaWires]

private theorem s2Step69EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_history : compileHmrRecordGrowLog s2Step69EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step69EarlyControlLog.recordFresh=some s2Step69EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step69EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step69EarlyControl_historyBorrow

private theorem s2Step69EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step69EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step69EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_sigmaRelease : s2Step69EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step69EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step69EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step69EarlyControlSigmaArena,s2Step69EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step69EarlyControl_sigma : compileHmrSigmaDropLog s2Step69EarlyControlHistoryArena false 0 0 254 844 []=some s2Step69EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step69EarlyControl_sigmaOwned⟩
  · exact s2Step69EarlyControl_sigmaRelease

private theorem s2Step69EarlyControl_zeroBorrow : s2Step69EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step69EarlyControlLog.zeroWork=some s2Step69EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step69EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step69EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step69EarlyControlZeroArena,s2Step69EarlyControlArena,s2Step69EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step69EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step69EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step69EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EarlyControl_zero : compileHmrEqualityLog s2Step69EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step69EarlyControlLog.zeroWork=some (s2Step69EarlyControlZeroArena,s2Step69EarlyControlLog.zeroWork,s2Step69EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step69EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step69EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step69EarlyControl_logged : s2Step69EarlyControlPlan.Logged s2Step69EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 832 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step69EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step69EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step69EarlyControl_zero
  · exact s2Step69EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step69EarlyControl_flags
  · exact s2Step69EarlyControl_fit
  · exact s2Step69EarlyControl_history
  · exact s2Step69EarlyControl_sigma
  · exact s2Step69EarlyControl_branch

private theorem s2Step69EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step69EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 832 30 s2Step69EarlyControlLog=some s2Step69EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step69EarlyControlPlan s2Step69EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 832 30 s2Step69EarlyControl_logged

private def s2Step69EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step69EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step69EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],769⟩

private def s2Step69EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step69FrontBank : WindowBank := ⟨s2Step69EntryFRow,s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow⟩

private def s2Step69Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822, 768]

private def s2Step69Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829, 825, 769]

private def s2Step69Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 770]

private def s2Step69Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814, 771]

private theorem s2Step69Counter_apart : Disjoint s2Step69HeadFvAfter.live s2Step69CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step69HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69Counter_borrowed : s2Step69HeadFvAfter.checkBorrow 4 s2Step69CounterWork=some s2Step69CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step69HeadFvAfter s2Step69CounterDuring s2Step69CounterWork.toFinset s2Step69Counter_bounded s2Step69Counter_apart rfl

private theorem s2Step69Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step69HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step69HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69Counter_checked : compileHmrCounterStepLog s2Step69HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step69CounterWork=some s2Step69CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step69HeadFvAfter.live := fun q hq => s2Step69Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step69Counter_borrowed

private def s2Step69EntryFAfter : Arena := s2Step69EntryFBefore

private theorem s2Step69EntryBank_incomingDistinct : ([s2Step69EntryFRow,s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69EntryF_Incoming : rowsOwned s2Step69EntryFBefore [s2Step69EntryFRow,s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69EntryFRow,s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow] 0 s2Step69EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69EntryBank_outgoingOwned : rowsOwned s2Step69EntryGvAfter [s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step69EntryGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69EntryF_Outgoing : rowsOwned s2Step69EntryGvAfter [s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut] :=
  hmrRows_owned_drop s2Step69EntryGvAfter [s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut] 0 s2Step69EntryBank_outgoingOwned

private theorem s2Step69EntryF_distinct : (s2Step69EntryFRow.sign::s2Step69EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69EntryF_owned : (s2Step69EntryFRow.sign::s2Step69EntryFRow.payload).toFinset⊆s2Step69EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EntryF_reserved : s2Step69EntryFBefore.reserve s2Step69EntryFFresh.toFinset=some s2Step69EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step69EntryFFresh,arenaWires]
  · norm_num [s2Step69EntryFBefore,s2Step69EntryFFresh,arenaWires]
  · simp only [s2Step69EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step69EntryF_checked : planRowResizeLog s2Step69EntryFBefore s2Step69EntryFRow 234 s2Step69EntryFFresh=
    some (s2Step69EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩,growRow 768 s2Step69EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step69EntryFBefore s2Step69EntryFAfter s2Step69EntryFRow 234 s2Step69EntryFFresh
    s2Step69EntryF_distinct s2Step69EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69EntryF_reserved
  have rowEq : WindowRow.mk (s2Step69EntryFRow.payload++s2Step69EntryFFresh) s2Step69EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step69EntryFvAfter : Arena := s2Step69EntryGAfter

private def s2Step69EntryFvBefore : Arena := s2Step69EntryGAfter

private theorem s2Step69EntryFv_Incoming : rowsOwned s2Step69EntryFvBefore [s2Step69EntryFvRow,s2Step69EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69EntryFRow,s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow] 2 s2Step69EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69EntryFv_Outgoing : rowsOwned s2Step69EntryGvAfter [s2Step69EntryFvOut,s2Step69EntryGvOut] :=
  hmrRows_owned_drop s2Step69EntryGvAfter [s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut] 2 s2Step69EntryBank_outgoingOwned

private theorem s2Step69EntryFv_distinct : (s2Step69EntryFvRow.sign::s2Step69EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69EntryFv_owned : (s2Step69EntryFvRow.sign::s2Step69EntryFvRow.payload).toFinset⊆s2Step69EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EntryFv_reserved : s2Step69EntryFvBefore.reserve s2Step69EntryFvFresh.toFinset=some s2Step69EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step69EntryFvFresh,arenaWires]
  · norm_num [s2Step69EntryFvBefore,s2Step69EntryGAfter,s2Step69EntryFvFresh,arenaWires]
  · simp only [s2Step69EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step69EntryFv_checked : planRowResizeLog s2Step69EntryFvBefore s2Step69EntryFvRow 47 s2Step69EntryFvFresh=
    some (s2Step69EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩,growRow 770 s2Step69EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step69EntryFvBefore s2Step69EntryFvAfter s2Step69EntryFvRow 47 s2Step69EntryFvFresh
    s2Step69EntryFv_distinct s2Step69EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step69EntryFvRow.payload++s2Step69EntryFvFresh) s2Step69EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step69EntryGBefore : Arena := s2Step69EntryFBefore

private theorem s2Step69EntryG_Incoming : rowsOwned s2Step69EntryGBefore [s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69EntryFRow,s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow] 1 s2Step69EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69EntryG_Outgoing : rowsOwned s2Step69EntryGvAfter [s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut] :=
  hmrRows_owned_drop s2Step69EntryGvAfter [s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut] 1 s2Step69EntryBank_outgoingOwned

private theorem s2Step69EntryG_distinct : (s2Step69EntryGRow.sign::s2Step69EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69EntryG_owned : (s2Step69EntryGRow.sign::s2Step69EntryGRow.payload).toFinset⊆s2Step69EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EntryG_reserved : s2Step69EntryGBefore.reserve s2Step69EntryGFresh.toFinset=some s2Step69EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step69EntryGFresh,arenaWires]
  · norm_num [s2Step69EntryGBefore,s2Step69EntryFBefore,s2Step69EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step69EntryGAfter,s2Step69EntryGBefore,s2Step69EntryFBefore,s2Step69EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step69EntryG_checked : planRowResizeLog s2Step69EntryGBefore s2Step69EntryGRow 234 s2Step69EntryGFresh=
    some (s2Step69EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829],769⟩,growRow 769 s2Step69EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step69EntryGBefore s2Step69EntryGAfter s2Step69EntryGRow 234 s2Step69EntryGFresh
    s2Step69EntryG_distinct s2Step69EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69EntryG_reserved
  have rowEq : WindowRow.mk (s2Step69EntryGRow.payload++s2Step69EntryGFresh) s2Step69EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step69EntryGvBefore : Arena := s2Step69EntryGAfter

private theorem s2Step69EntryGv_Incoming : rowsOwned s2Step69EntryGvBefore [s2Step69EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69EntryFRow,s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow] 3 s2Step69EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69EntryGv_Outgoing : rowsOwned s2Step69EntryGvAfter [s2Step69EntryGvOut] :=
  hmrRows_owned_drop s2Step69EntryGvAfter [s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut] 3 s2Step69EntryBank_outgoingOwned

private theorem s2Step69EntryGv_distinct : (s2Step69EntryGvRow.sign::s2Step69EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69EntryGv_owned : (s2Step69EntryGvRow.sign::s2Step69EntryGvRow.payload).toFinset⊆s2Step69EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69EntryGv_reserved : s2Step69EntryGvBefore.reserve s2Step69EntryGvFresh.toFinset=some s2Step69EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step69EntryGvFresh,arenaWires]
  · norm_num [s2Step69EntryGvBefore,s2Step69EntryGAfter,s2Step69EntryGvFresh,arenaWires]
  · simp only [s2Step69EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step69EntryGv_checked : planRowResizeLog s2Step69EntryGvBefore s2Step69EntryGvRow 47 s2Step69EntryGvFresh=
    some (s2Step69EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩,growRow 771 s2Step69EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step69EntryGvBefore s2Step69EntryGvAfter s2Step69EntryGvRow 47 s2Step69EntryGvFresh
    s2Step69EntryGv_distinct s2Step69EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step69EntryGvRow.payload++s2Step69EntryGvFresh) s2Step69EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step69EntryBank_rows : planWindowRowsLog s2Step69EntryFBefore [(s2Step69EntryFRow,234),(s2Step69EntryGRow,234),(s2Step69EntryFvRow,47),(s2Step69EntryGvRow,47)] [s2Step69EntryFFresh,s2Step69EntryGFresh,s2Step69EntryFvFresh,s2Step69EntryGvFresh]=
    some (s2Step69EntryGvAfter,[s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut],(growRow 768 s2Step69EntryFFresh ++ (growRow 769 s2Step69EntryGFresh ++ (growRow 770 s2Step69EntryFvFresh ++ (growRow 771 s2Step69EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step69EntryGvAfter [] []=some (s2Step69EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step69EntryGvBefore s2Step69EntryGvAfter s2Step69EntryGvAfter
    s2Step69EntryGvRow s2Step69EntryGvOut 47 s2Step69EntryGvFresh [] [] []
    (growRow 771 s2Step69EntryGvFresh) ([]) s2Step69EntryGv_Incoming s2Step69EntryGv_checked h4 s2Step69EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step69EntryFvBefore s2Step69EntryFvAfter s2Step69EntryGvAfter
    s2Step69EntryFvRow s2Step69EntryFvOut 47 s2Step69EntryFvFresh [(s2Step69EntryGvRow,47)] [s2Step69EntryGvFresh] [s2Step69EntryGvOut]
    (growRow 770 s2Step69EntryFvFresh) ((growRow 771 s2Step69EntryGvFresh ++ [])) s2Step69EntryFv_Incoming s2Step69EntryFv_checked h3 s2Step69EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step69EntryGBefore s2Step69EntryGAfter s2Step69EntryGvAfter
    s2Step69EntryGRow s2Step69EntryGOut 234 s2Step69EntryGFresh [(s2Step69EntryFvRow,47),(s2Step69EntryGvRow,47)] [s2Step69EntryFvFresh,s2Step69EntryGvFresh] [s2Step69EntryFvOut,s2Step69EntryGvOut]
    (growRow 769 s2Step69EntryGFresh) ((growRow 770 s2Step69EntryFvFresh ++ (growRow 771 s2Step69EntryGvFresh ++ []))) s2Step69EntryG_Incoming s2Step69EntryG_checked h2 s2Step69EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step69EntryFBefore s2Step69EntryFAfter s2Step69EntryGvAfter
    s2Step69EntryFRow s2Step69EntryFOut 234 s2Step69EntryFFresh [(s2Step69EntryGRow,234),(s2Step69EntryFvRow,47),(s2Step69EntryGvRow,47)] [s2Step69EntryGFresh,s2Step69EntryFvFresh,s2Step69EntryGvFresh] [s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut]
    (growRow 768 s2Step69EntryFFresh) ((growRow 769 s2Step69EntryGFresh ++ (growRow 770 s2Step69EntryFvFresh ++ (growRow 771 s2Step69EntryGvFresh ++ [])))) s2Step69EntryF_Incoming s2Step69EntryF_checked h1 s2Step69EntryF_Outgoing
  exact h0

private theorem s2Step69EntryBank_checked : compileHmrBankResizeLog .entry s2Step69EntryFBefore ⟨s2Step69EntryFRow,s2Step69EntryGRow,s2Step69EntryFvRow,s2Step69EntryGvRow⟩ ⟨234,234,47,47⟩ [s2Step69EntryFFresh,s2Step69EntryGFresh,s2Step69EntryFvFresh,s2Step69EntryGvFresh]=
    some (s2Step69EntryGvAfter,⟨s2Step69EntryFOut,s2Step69EntryGOut,s2Step69EntryFvOut,s2Step69EntryGvOut⟩,(growRow 768 s2Step69EntryFFresh ++ (growRow 769 s2Step69EntryGFresh ++ (growRow 770 s2Step69EntryFvFresh ++ (growRow 771 s2Step69EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step69EntryBank_rows]
  rfl

private def s2Step69ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<745) ∨ (746≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69ExitFBefore : Arena := s2Step69ExitGAfter

private def s2Step69ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822],768⟩

private def s2Step69ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩

private def s2Step69ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829, 825],769⟩

private def s2Step69ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814],771⟩

private theorem s2Step69ExitBank_incomingDistinct : ([s2Step69ExitGRow,s2Step69ExitFRow,s2Step69ExitFvRow,s2Step69ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69ExitF_Incoming : rowsOwned s2Step69ExitFBefore [s2Step69ExitFRow,s2Step69ExitFvRow,s2Step69ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69ExitGRow,s2Step69ExitFRow,s2Step69ExitFvRow,s2Step69ExitGvRow] 1 s2Step69ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69ExitFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69ExitBank_outgoingOwned : rowsOwned s2Step69ExitGvAfter [s2Step69ExitGOut,s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step69ExitGvAfter (fun q => (0≤q ∧ q<745) ∨ (746≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69ExitF_Outgoing : rowsOwned s2Step69ExitGvAfter [s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut] :=
  hmrRows_owned_drop s2Step69ExitGvAfter [s2Step69ExitGOut,s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut] 1 s2Step69ExitBank_outgoingOwned

private theorem s2Step69ExitF_distinct : (s2Step69ExitFRow.sign::s2Step69ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69ExitF_owned : (s2Step69ExitFRow.sign::s2Step69ExitFRow.payload).toFinset⊆s2Step69ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69ExitFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69ExitF_retired : s2Step69ExitFBefore.retireSet s2Step69ExitFExtra.toFinset=s2Step69ExitFAfter := by
  unfold Arena.retireSet s2Step69ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step69ExitFBefore,s2Step69ExitGAfter,s2Step69ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step69ExitF_checked : planRowResizeLog s2Step69ExitFBefore s2Step69ExitFRow 233 []=
    some (s2Step69ExitFAfter,s2Step69ExitFOut,shrinkRow 768 s2Step69ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step69ExitFBefore s2Step69ExitFRow 233 s2Step69ExitF_distinct s2Step69ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step69ExitFRow.payload.take 233) s2Step69ExitFRow.sign=s2Step69ExitFOut := by decide +kernel
  have hi : s2Step69ExitFRow.payload.drop 233=s2Step69ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step69ExitF_retired] at result
  exact result

private def s2Step69ExitFvAfter : Arena := s2Step69ExitFAfter

private def s2Step69ExitFvBefore : Arena := s2Step69ExitFAfter

private theorem s2Step69ExitFv_Incoming : rowsOwned s2Step69ExitFvBefore [s2Step69ExitFvRow,s2Step69ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69ExitGRow,s2Step69ExitFRow,s2Step69ExitFvRow,s2Step69ExitGvRow] 2 s2Step69ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69ExitFvBefore (fun q => (0≤q ∧ q<745) ∨ (746≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69ExitFv_Outgoing : rowsOwned s2Step69ExitGvAfter [s2Step69ExitFvOut,s2Step69ExitGvOut] :=
  hmrRows_owned_drop s2Step69ExitGvAfter [s2Step69ExitGOut,s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut] 2 s2Step69ExitBank_outgoingOwned

private theorem s2Step69ExitFv_distinct : (s2Step69ExitFvRow.sign::s2Step69ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69ExitFv_owned : (s2Step69ExitFvRow.sign::s2Step69ExitFvRow.payload).toFinset⊆s2Step69ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69ExitFvBefore (fun q => (0≤q ∧ q<745) ∨ (746≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69ExitFv_reserved : s2Step69ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step69ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step69ExitFv_checked : planRowResizeLog s2Step69ExitFvBefore s2Step69ExitFvRow 48 []=
    some (s2Step69ExitFvAfter,s2Step69ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step69ExitFvBefore s2Step69ExitFvAfter s2Step69ExitFvRow 48 []
    s2Step69ExitFv_distinct s2Step69ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step69ExitFvRow.payload++[]) s2Step69ExitFvRow.sign=s2Step69ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step69ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step69ExitG_Incoming : rowsOwned s2Step69ExitGBefore [s2Step69ExitGRow,s2Step69ExitFRow,s2Step69ExitFvRow,s2Step69ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69ExitGRow,s2Step69ExitFRow,s2Step69ExitFvRow,s2Step69ExitGvRow] 0 s2Step69ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69ExitG_Outgoing : rowsOwned s2Step69ExitGvAfter [s2Step69ExitGOut,s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut] :=
  hmrRows_owned_drop s2Step69ExitGvAfter [s2Step69ExitGOut,s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut] 0 s2Step69ExitBank_outgoingOwned

private theorem s2Step69ExitG_distinct : (s2Step69ExitGRow.sign::s2Step69ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69ExitG_owned : (s2Step69ExitGRow.sign::s2Step69ExitGRow.payload).toFinset⊆s2Step69ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69ExitG_retired : s2Step69ExitGBefore.retireSet s2Step69ExitGExtra.toFinset=s2Step69ExitGAfter := by
  unfold Arena.retireSet s2Step69ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step69ExitGBefore,s2Step69ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step69ExitG_checked : planRowResizeLog s2Step69ExitGBefore s2Step69ExitGRow 233 []=
    some (s2Step69ExitGAfter,s2Step69ExitGOut,shrinkRow 769 s2Step69ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step69ExitGBefore s2Step69ExitGRow 233 s2Step69ExitG_distinct s2Step69ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step69ExitGRow.payload.take 233) s2Step69ExitGRow.sign=s2Step69ExitGOut := by decide +kernel
  have hi : s2Step69ExitGRow.payload.drop 233=s2Step69ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step69ExitG_retired] at result
  exact result

private def s2Step69ExitGvBefore : Arena := s2Step69ExitFAfter

private theorem s2Step69ExitGv_Incoming : rowsOwned s2Step69ExitGvBefore [s2Step69ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69ExitGRow,s2Step69ExitFRow,s2Step69ExitFvRow,s2Step69ExitGvRow] 3 s2Step69ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69ExitGvBefore (fun q => (0≤q ∧ q<745) ∨ (746≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69ExitGv_Outgoing : rowsOwned s2Step69ExitGvAfter [s2Step69ExitGvOut] :=
  hmrRows_owned_drop s2Step69ExitGvAfter [s2Step69ExitGOut,s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut] 3 s2Step69ExitBank_outgoingOwned

private theorem s2Step69ExitGv_distinct : (s2Step69ExitGvRow.sign::s2Step69ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69ExitGv_owned : (s2Step69ExitGvRow.sign::s2Step69ExitGvRow.payload).toFinset⊆s2Step69ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69ExitGvBefore (fun q => (0≤q ∧ q<745) ∨ (746≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69ExitGv_retired : s2Step69ExitGvBefore.retireSet s2Step69ExitGvExtra.toFinset=s2Step69ExitGvAfter := by
  unfold Arena.retireSet s2Step69ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step69ExitGvBefore,s2Step69ExitFAfter,s2Step69ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step69ExitGv_checked : planRowResizeLog s2Step69ExitGvBefore s2Step69ExitGvRow 47 []=
    some (s2Step69ExitGvAfter,s2Step69ExitGvOut,shrinkRow 771 s2Step69ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step69ExitGvBefore s2Step69ExitGvRow 47 s2Step69ExitGv_distinct s2Step69ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step69ExitGvRow.payload.take 47) s2Step69ExitGvRow.sign=s2Step69ExitGvOut := by decide +kernel
  have hi : s2Step69ExitGvRow.payload.drop 47=s2Step69ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step69ExitGv_retired] at result
  exact result

private theorem s2Step69ExitBank_rows : planWindowRowsLog s2Step69ExitGBefore [(s2Step69ExitGRow,233),(s2Step69ExitFRow,233),(s2Step69ExitFvRow,48),(s2Step69ExitGvRow,47)] [[],[],[],[]]=
    some (s2Step69ExitGvAfter,[s2Step69ExitGOut,s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut],(shrinkRow 769 s2Step69ExitGExtra ++ (shrinkRow 768 s2Step69ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step69ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step69ExitGvAfter [] []=some (s2Step69ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step69ExitGvBefore s2Step69ExitGvAfter s2Step69ExitGvAfter
    s2Step69ExitGvRow s2Step69ExitGvOut 47 [] [] [] []
    (shrinkRow 771 s2Step69ExitGvExtra) ([]) s2Step69ExitGv_Incoming s2Step69ExitGv_checked h4 s2Step69ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step69ExitFvBefore s2Step69ExitFvAfter s2Step69ExitGvAfter
    s2Step69ExitFvRow s2Step69ExitFvOut 48 [] [(s2Step69ExitGvRow,47)] [[]] [s2Step69ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step69ExitGvExtra ++ [])) s2Step69ExitFv_Incoming s2Step69ExitFv_checked h3 s2Step69ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step69ExitFBefore s2Step69ExitFAfter s2Step69ExitGvAfter
    s2Step69ExitFRow s2Step69ExitFOut 233 [] [(s2Step69ExitFvRow,48),(s2Step69ExitGvRow,47)] [[],[]] [s2Step69ExitFvOut,s2Step69ExitGvOut]
    (shrinkRow 768 s2Step69ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step69ExitGvExtra ++ []))) s2Step69ExitF_Incoming s2Step69ExitF_checked h2 s2Step69ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step69ExitGBefore s2Step69ExitGAfter s2Step69ExitGvAfter
    s2Step69ExitGRow s2Step69ExitGOut 233 [] [(s2Step69ExitFRow,233),(s2Step69ExitFvRow,48),(s2Step69ExitGvRow,47)] [[],[],[]] [s2Step69ExitFOut,s2Step69ExitFvOut,s2Step69ExitGvOut]
    (shrinkRow 769 s2Step69ExitGExtra) ((shrinkRow 768 s2Step69ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step69ExitGvExtra ++ [])))) s2Step69ExitG_Incoming s2Step69ExitG_checked h1 s2Step69ExitG_Outgoing
  exact h0

private theorem s2Step69ExitBank_checked : compileHmrBankResizeLog .exit s2Step69ExitGBefore ⟨s2Step69ExitFRow,s2Step69ExitGRow,s2Step69ExitFvRow,s2Step69ExitGvRow⟩ ⟨233,233,48,47⟩ [[],[],[],[]]=
    some (s2Step69ExitGvAfter,⟨s2Step69ExitFOut,s2Step69ExitGOut,s2Step69ExitFvOut,s2Step69ExitGvOut⟩,(shrinkRow 769 s2Step69ExitGExtra ++ (shrinkRow 768 s2Step69ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step69ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step69ExitBank_rows]
  rfl

private theorem s2Step69Add0_apart : Disjoint s2Step69Add0Arena.live s2Step69Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step69Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69Add0_card : s2Step69Add0Arena.live.card=866 := by
  decide +kernel

private theorem s2Step69Add0_borrowed : s2Step69Add0Arena.checkBorrow (hmrHybridCount s2Step69Add0Arena s2Step69Add0B.length) s2Step69Add0Work=some s2Step69Add0During := by
  have len : s2Step69Add0Work.length=hmrHybridCount s2Step69Add0Arena s2Step69Add0B.length := by
    rw [hmrHybridCount,s2Step69Add0_card]
    decide +kernel
  have nd : s2Step69Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step69Add0Arena s2Step69Add0During s2Step69Add0Work.toFinset s2Step69Add0_bounded s2Step69Add0_apart rfl

private theorem s2Step69Add0_distinct : (826::832::827::(s2Step69Add0A++s2Step69Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69Add0_owned : (826::832::827::(s2Step69Add0A++s2Step69Add0B)).toFinset⊆s2Step69Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step69Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69Add0_checked : compileHmrHybridCinLog s2Step69Add0Arena 832 826 827 s2Step69Add0A s2Step69Add0B s2Step69Add0Work=some s2Step69Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step69Add0Arena s2Step69Add0During 832 826 827 s2Step69Add0A s2Step69Add0B s2Step69Add0Work
    (by decide +kernel) (by decide +kernel) s2Step69Add0_distinct
    (fun q hq => s2Step69Add0_owned (List.mem_toFinset.mpr hq)) s2Step69Add0_borrowed

private theorem s2Step69Add1_apart : Disjoint s2Step69Add1Arena.live s2Step69Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step69Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69Add1_card : s2Step69Add1Arena.live.card=866 := by
  decide +kernel

private theorem s2Step69Add1_borrowed : s2Step69Add1Arena.checkBorrow (hmrHybridCount s2Step69Add1Arena s2Step69Add1B.length) s2Step69Add1Work=some s2Step69Add1During := by
  have len : s2Step69Add1Work.length=hmrHybridCount s2Step69Add1Arena s2Step69Add1B.length := by
    rw [hmrHybridCount,s2Step69Add1_card]
    decide +kernel
  have nd : s2Step69Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step69Add1Arena s2Step69Add1During s2Step69Add1Work.toFinset s2Step69Add1_bounded s2Step69Add1_apart rfl

private theorem s2Step69Add1_distinct : (826::832::827::(s2Step69Add1A++s2Step69Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69Add1_owned : (826::832::827::(s2Step69Add1A++s2Step69Add1B)).toFinset⊆s2Step69Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step69Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69Add1_checked : compileHmrHybridCinLog s2Step69Add1Arena 832 826 827 s2Step69Add1A s2Step69Add1B s2Step69Add1Work=some s2Step69Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step69Add1Arena s2Step69Add1During 832 826 827 s2Step69Add1A s2Step69Add1B s2Step69Add1Work
    (by decide +kernel) (by decide +kernel) s2Step69Add1_distinct
    (fun q hq => s2Step69Add1_owned (List.mem_toFinset.mpr hq)) s2Step69Add1_borrowed

private theorem s2Step69F4_apart : Disjoint (s2Step69Add0A++s2Step69Add0B).toFinset (s2Step69Add1A++s2Step69Add1B).toFinset := by
  have nd : ((s2Step69Add0A++s2Step69Add0B)++(s2Step69Add1A++s2Step69Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step69F4_carry : s2Step69F4FlagArena.checkBorrow 1 [827]=some s2Step69Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step69F4FlagArena,s2Step69HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step69F4FlagArena,s2Step69HeadFvAfter,s2Step69Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step69F4_distinct : (844::832::826::827::((s2Step69Add0A++s2Step69Add1A)++(s2Step69Add0B++s2Step69Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69F4_flag : s2Step69HeadFvAfter.checkBorrow 1 [826]=some s2Step69F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step69HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step69F4_owned : (844::832::((s2Step69Add0A++s2Step69Add1A)++(s2Step69Add0B++s2Step69Add1B))).toFinset⊆s2Step69HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step69HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69F4_checked : compileHmrHybridF4Log s2Step69HeadFvAfter 844 832 s2Step69Add0A s2Step69Add0B s2Step69Add1A s2Step69Add1B [826] [827] s2Step69Add0Work s2Step69Add1Work=some s2Step69F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step69HeadFvAfter s2Step69F4FlagArena s2Step69Add0Arena s2Step69Add0During s2Step69Add1During 844 832
    s2Step69Add0A s2Step69Add0B s2Step69Add1A s2Step69Add1B [826] [827] s2Step69Add0Work s2Step69Add1Work
    (fun q hq => s2Step69F4_owned (List.mem_toFinset.mpr hq)) s2Step69F4_flag s2Step69F4_carry
    s2Step69F4_distinct s2Step69F4_apart s2Step69Add0_checked s2Step69Add1_checked

private theorem s2Step69Front_branch : s2Step69FrontSigmaArena.checkBorrow 1 [832]=some s2Step69HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step69FrontSigmaArena,s2Step69EntryGvAfter,s2Step69EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step69FrontSigmaArena,s2Step69EntryGvAfter,s2Step69EntryGAfter,s2Step69HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step69Front_entry : HmrFrontEntryValid s2Step69EntryFBefore s2Step69FrontBank 234 47 ⟨233,233,48,47⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step69FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step69EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step69EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step69FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step69Front_sigma : s2Step69EntryGvAfter.checkBorrow 1 [844]=some s2Step69FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step69EntryGvAfter,s2Step69EntryGAfter,arenaWires]
  · rfl

private def s2Step69HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69HeadFBefore : Arena := s2Step69HeadGAfter

private def s2Step69HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step69HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step69HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829],769⟩

private def s2Step69HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private theorem s2Step69HeadBank_incomingDistinct : ([s2Step69HeadGRow,s2Step69HeadFRow,s2Step69HeadGvRow,s2Step69HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69HeadF_Incoming : rowsOwned s2Step69HeadFBefore [s2Step69HeadFRow,s2Step69HeadGvRow,s2Step69HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69HeadGRow,s2Step69HeadFRow,s2Step69HeadGvRow,s2Step69HeadFvRow] 1 s2Step69HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69HeadBank_outgoingOwned : rowsOwned s2Step69HeadFvAfter [s2Step69HeadGOut,s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step69HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69HeadF_Outgoing : rowsOwned s2Step69HeadFvAfter [s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut] :=
  hmrRows_owned_drop s2Step69HeadFvAfter [s2Step69HeadGOut,s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut] 1 s2Step69HeadBank_outgoingOwned

private theorem s2Step69HeadF_distinct : (s2Step69HeadFRow.sign::s2Step69HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69HeadF_owned : (s2Step69HeadFRow.sign::s2Step69HeadFRow.payload).toFinset⊆s2Step69HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69HeadF_reserved : s2Step69HeadFBefore.reserve s2Step69HeadFFresh.toFinset=some s2Step69HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step69HeadFFresh,arenaWires]
  · norm_num [s2Step69HeadFBefore,s2Step69HeadGAfter,s2Step69HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step69HeadFAfter,s2Step69HeadFBefore,s2Step69HeadGAfter,s2Step69HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step69HeadF_checked : planRowResizeLog s2Step69HeadFBefore s2Step69HeadFRow 235 s2Step69HeadFFresh=
    some (s2Step69HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822],768⟩,growRow 768 s2Step69HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step69HeadFBefore s2Step69HeadFAfter s2Step69HeadFRow 235 s2Step69HeadFFresh
    s2Step69HeadF_distinct s2Step69HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69HeadF_reserved
  have rowEq : WindowRow.mk (s2Step69HeadFRow.payload++s2Step69HeadFFresh) s2Step69HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 822],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step69HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step69HeadFvBefore : Arena := s2Step69HeadGvAfter

private theorem s2Step69HeadFv_Incoming : rowsOwned s2Step69HeadFvBefore [s2Step69HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69HeadGRow,s2Step69HeadFRow,s2Step69HeadGvRow,s2Step69HeadFvRow] 3 s2Step69HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69HeadFv_Outgoing : rowsOwned s2Step69HeadFvAfter [s2Step69HeadFvOut] :=
  hmrRows_owned_drop s2Step69HeadFvAfter [s2Step69HeadGOut,s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut] 3 s2Step69HeadBank_outgoingOwned

private theorem s2Step69HeadFv_distinct : (s2Step69HeadFvRow.sign::s2Step69HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69HeadFv_owned : (s2Step69HeadFvRow.sign::s2Step69HeadFvRow.payload).toFinset⊆s2Step69HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69HeadFv_reserved : s2Step69HeadFvBefore.reserve s2Step69HeadFvFresh.toFinset=some s2Step69HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step69HeadFvFresh,arenaWires]
  · norm_num [s2Step69HeadFvBefore,s2Step69HeadGvAfter,s2Step69HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step69HeadFvAfter,s2Step69HeadFvBefore,s2Step69HeadGvAfter,s2Step69HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step69HeadFv_checked : planRowResizeLog s2Step69HeadFvBefore s2Step69HeadFvRow 48 s2Step69HeadFvFresh=
    some (s2Step69HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩,growRow 770 s2Step69HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step69HeadFvBefore s2Step69HeadFvAfter s2Step69HeadFvRow 48 s2Step69HeadFvFresh
    s2Step69HeadFv_distinct s2Step69HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step69HeadFvRow.payload++s2Step69HeadFvFresh) s2Step69HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step69HeadG_Incoming : rowsOwned s2Step69HeadGBefore [s2Step69HeadGRow,s2Step69HeadFRow,s2Step69HeadGvRow,s2Step69HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69HeadGRow,s2Step69HeadFRow,s2Step69HeadGvRow,s2Step69HeadFvRow] 0 s2Step69HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69HeadG_Outgoing : rowsOwned s2Step69HeadFvAfter [s2Step69HeadGOut,s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut] :=
  hmrRows_owned_drop s2Step69HeadFvAfter [s2Step69HeadGOut,s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut] 0 s2Step69HeadBank_outgoingOwned

private theorem s2Step69HeadG_distinct : (s2Step69HeadGRow.sign::s2Step69HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69HeadG_owned : (s2Step69HeadGRow.sign::s2Step69HeadGRow.payload).toFinset⊆s2Step69HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69HeadG_reserved : s2Step69HeadGBefore.reserve s2Step69HeadGFresh.toFinset=some s2Step69HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step69HeadGFresh,arenaWires]
  · norm_num [s2Step69HeadGBefore,s2Step69HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step69HeadGAfter,s2Step69HeadGBefore,s2Step69HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step69HeadG_checked : planRowResizeLog s2Step69HeadGBefore s2Step69HeadGRow 235 s2Step69HeadGFresh=
    some (s2Step69HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829, 825],769⟩,growRow 769 s2Step69HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step69HeadGBefore s2Step69HeadGAfter s2Step69HeadGRow 235 s2Step69HeadGFresh
    s2Step69HeadG_distinct s2Step69HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69HeadG_reserved
  have rowEq : WindowRow.mk (s2Step69HeadGRow.payload++s2Step69HeadGFresh) s2Step69HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 829, 825],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step69HeadGvBefore : Arena := s2Step69HeadFAfter

private theorem s2Step69HeadGv_Incoming : rowsOwned s2Step69HeadGvBefore [s2Step69HeadGvRow,s2Step69HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step69HeadGRow,s2Step69HeadFRow,s2Step69HeadGvRow,s2Step69HeadFvRow] 2 s2Step69HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step69HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step69HeadGv_Outgoing : rowsOwned s2Step69HeadFvAfter [s2Step69HeadGvOut,s2Step69HeadFvOut] :=
  hmrRows_owned_drop s2Step69HeadFvAfter [s2Step69HeadGOut,s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut] 2 s2Step69HeadBank_outgoingOwned

private theorem s2Step69HeadGv_distinct : (s2Step69HeadGvRow.sign::s2Step69HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step69HeadGv_owned : (s2Step69HeadGvRow.sign::s2Step69HeadGvRow.payload).toFinset⊆s2Step69HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step69HeadGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step69HeadGv_reserved : s2Step69HeadGvBefore.reserve s2Step69HeadGvFresh.toFinset=some s2Step69HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step69HeadGvFresh,arenaWires]
  · norm_num [s2Step69HeadGvBefore,s2Step69HeadFAfter,s2Step69HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step69HeadGvAfter,s2Step69HeadGvBefore,s2Step69HeadFAfter,s2Step69HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step69HeadGv_checked : planRowResizeLog s2Step69HeadGvBefore s2Step69HeadGvRow 48 s2Step69HeadGvFresh=
    some (s2Step69HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814],771⟩,growRow 771 s2Step69HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step69HeadGvBefore s2Step69HeadGvAfter s2Step69HeadGvRow 48 s2Step69HeadGvFresh
    s2Step69HeadGv_distinct s2Step69HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step69HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step69HeadGvRow.payload++s2Step69HeadGvFresh) s2Step69HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step69HeadBank_rows : planWindowRowsLog s2Step69HeadGBefore [(s2Step69HeadGRow,235),(s2Step69HeadFRow,235),(s2Step69HeadGvRow,48),(s2Step69HeadFvRow,48)] [s2Step69HeadGFresh,s2Step69HeadFFresh,s2Step69HeadGvFresh,s2Step69HeadFvFresh]=
    some (s2Step69HeadFvAfter,[s2Step69HeadGOut,s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut],(growRow 769 s2Step69HeadGFresh ++ (growRow 768 s2Step69HeadFFresh ++ (growRow 771 s2Step69HeadGvFresh ++ (growRow 770 s2Step69HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step69HeadFvAfter [] []=some (s2Step69HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step69HeadFvBefore s2Step69HeadFvAfter s2Step69HeadFvAfter
    s2Step69HeadFvRow s2Step69HeadFvOut 48 s2Step69HeadFvFresh [] [] []
    (growRow 770 s2Step69HeadFvFresh) ([]) s2Step69HeadFv_Incoming s2Step69HeadFv_checked h4 s2Step69HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step69HeadGvBefore s2Step69HeadGvAfter s2Step69HeadFvAfter
    s2Step69HeadGvRow s2Step69HeadGvOut 48 s2Step69HeadGvFresh [(s2Step69HeadFvRow,48)] [s2Step69HeadFvFresh] [s2Step69HeadFvOut]
    (growRow 771 s2Step69HeadGvFresh) ((growRow 770 s2Step69HeadFvFresh ++ [])) s2Step69HeadGv_Incoming s2Step69HeadGv_checked h3 s2Step69HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step69HeadFBefore s2Step69HeadFAfter s2Step69HeadFvAfter
    s2Step69HeadFRow s2Step69HeadFOut 235 s2Step69HeadFFresh [(s2Step69HeadGvRow,48),(s2Step69HeadFvRow,48)] [s2Step69HeadGvFresh,s2Step69HeadFvFresh] [s2Step69HeadGvOut,s2Step69HeadFvOut]
    (growRow 768 s2Step69HeadFFresh) ((growRow 771 s2Step69HeadGvFresh ++ (growRow 770 s2Step69HeadFvFresh ++ []))) s2Step69HeadF_Incoming s2Step69HeadF_checked h2 s2Step69HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step69HeadGBefore s2Step69HeadGAfter s2Step69HeadFvAfter
    s2Step69HeadGRow s2Step69HeadGOut 235 s2Step69HeadGFresh [(s2Step69HeadFRow,235),(s2Step69HeadGvRow,48),(s2Step69HeadFvRow,48)] [s2Step69HeadFFresh,s2Step69HeadGvFresh,s2Step69HeadFvFresh] [s2Step69HeadFOut,s2Step69HeadGvOut,s2Step69HeadFvOut]
    (growRow 769 s2Step69HeadGFresh) ((growRow 768 s2Step69HeadFFresh ++ (growRow 771 s2Step69HeadGvFresh ++ (growRow 770 s2Step69HeadFvFresh ++ [])))) s2Step69HeadG_Incoming s2Step69HeadG_checked h1 s2Step69HeadG_Outgoing
  exact h0

private theorem s2Step69HeadBank_checked : compileHmrBankResizeLog .headroom s2Step69HeadGBefore ⟨s2Step69HeadFRow,s2Step69HeadGRow,s2Step69HeadFvRow,s2Step69HeadGvRow⟩ ⟨235,235,48,48⟩ [s2Step69HeadGFresh,s2Step69HeadFFresh,s2Step69HeadGvFresh,s2Step69HeadFvFresh]=
    some (s2Step69HeadFvAfter,⟨s2Step69HeadFOut,s2Step69HeadGOut,s2Step69HeadFvOut,s2Step69HeadGvOut⟩,(growRow 769 s2Step69HeadGFresh ++ (growRow 768 s2Step69HeadFFresh ++ (growRow 771 s2Step69HeadGvFresh ++ (growRow 770 s2Step69HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step69HeadBank_rows]
  rfl

private theorem s2Step69Front_checked : compileHmrSourceFrontLog s2Step69EntryFBefore s2Step69FrontBank 234 47 ⟨233,233,48,47⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step69FrontLog=some s2Step69FrontPlan := by
  have pairEq : s2Step69FrontPair=⟨s2Step69HeadFRow,s2Step69HeadGRow,s2Step69HeadFvRow,s2Step69HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step69FrontHead=⟨s2Step69ExitFRow,s2Step69ExitGRow,s2Step69ExitFvRow,s2Step69ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step69Add0A=s2Step69FrontHead.f.wires := by decide +kernel
  have gEq : s2Step69Add0B=s2Step69FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step69Add1A=s2Step69FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step69Add1B=s2Step69FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step69EntryFBefore s2Step69FrontBank 234 47 ⟨233,233,48,47⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step69FrontLog s2Step69FrontPlan
  · exact s2Step69Front_entry
  · exact s2Step69EntryBank_checked
  · exact s2Step69Front_sigma
  · rfl
  · exact s2Step69Front_branch
  · rfl
  · simpa only [s2Step69FrontPlan,pairEq] using s2Step69HeadBank_checked
  · simpa only [s2Step69FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step69F4_checked
  · exact s2Step69Counter_checked
  · rfl
  · simpa only [s2Step69FrontPlan,headEq] using s2Step69ExitBank_checked

private theorem s2Step69Complete_explicit_checked : compileHmrEarlyStepLog s2Step69EntryFBefore s2Step69FrontBank 234 47 ⟨233,233,48,47⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step69CompleteLog=some s2Step69CompletePlan := by
  let Q := s2Step69EarlyControlPlan
  have hq := s2Step69EarlyControl_plan_checked
  have fv1 : s2Step69CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step69CompleteOut.fv.payload[2]?.getD s2Step69CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step69CompleteOut.fv.payload[3]?.getD s2Step69CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step69CompleteOut.fv.payload[4]?.getD s2Step69CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step69EntryFBefore s2Step69EarlyControlArena s2Step69FrontBank 234 47 ⟨233,233,48,47⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step69CompleteLog s2Step69FrontPlan Q
    s2Step69Front_checked s2Step69Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step69Complete_owned s2Step69Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step69EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 s2Step69CompleteOut.fv.second (s2Step69CompleteOut.fv.payload[2]?.getD s2Step69CompleteOut.fv.sign) (s2Step69CompleteOut.fv.payload[3]?.getD s2Step69CompleteOut.fv.sign) (s2Step69CompleteOut.fv.payload[4]?.getD s2Step69CompleteOut.fv.sign) 832 30 s2Step69EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep69Arena : Arena := s2Step69EntryFBefore
def s2PrivateStep69Bank : WindowBank := s2Step69FrontBank
def s2PrivateStep69Spec : HmrSourceWalkStepLog := ⟨234,47,⟨233,233,48,47⟩,30,.early s2Step69CompleteLog⟩
def s2PrivateStep69Plan : HmrSourceStepPlan := .early s2Step69CompletePlan
theorem s2PrivateStep69_source : s2PrivateStep69Spec=s2ObservedLogs64[5] := rfl
theorem s2PrivateStep69_checked : compileHmrSourceStepLog s2PrivateStep69Arena s2PrivateStep69Bank
    s2PrivateStep69Spec.fgWidth s2PrivateStep69Spec.vWidth s2PrivateStep69Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 69 s2PrivateStep69Spec.need none s2PrivateStep69Spec.log=some s2PrivateStep69Plan := by
  change compileHmrSourceStepLog s2Step69EntryFBefore s2Step69FrontBank 234 47 ⟨233,233,48,47⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 69 30 none (.early s2Step69CompleteLog)=some (.early s2Step69CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 69<498)]
  rw [s2Step69Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
