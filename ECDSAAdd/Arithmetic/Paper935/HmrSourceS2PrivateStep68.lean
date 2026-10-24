import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep66
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

private def s2Step68CompleteMoves : List (Wire × Wire) := [(832,233)]

private def s2Step68EarlyControlLog : HmrEarlyControlLog := ⟨[832, 825, 822, 814, 830],[826],[827],[816, 845, 846, 847, 849, 851],[]⟩

private def s2Step68FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[830], [814], [825], [822]],[[], [], [], []]⟩,[844],[829],[826],[827],[816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913],[826, 827, 816, 845]⟩

private def s2Step68CompleteLog : HmrEarlyStepLog := ⟨s2Step68FrontLog,s2Step68CompleteMoves,s2Step68EarlyControlLog⟩

private def s2Step68ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step68ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step68ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],769⟩

private def s2Step68ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step68FrontOut : WindowBank := ⟨s2Step68ExitFOut,s2Step68ExitGOut,s2Step68ExitFvOut,s2Step68ExitGvOut⟩

private def s2Step68CompleteOut : WindowBank := s2Step68FrontOut.repacked s2Step68CompleteMoves

private def s2Step68EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step68EarlyControlPositiveArena,[826],s2Step68EarlyControlEqualityArena,[827],⟨⟨844,false⟩,[⟨⟨826,false⟩,827⟩]⟩⟩

private def s2Step68EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,832⟩,⟨⟨774,false⟩,825⟩,⟨⟨775,false⟩,822⟩,⟨⟨776,false⟩,814⟩,⟨⟨777,false⟩,830⟩]⟩

private def s2Step68EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step68EarlyControlZeroArena,s2Step68EarlyControlZeroPlan,s2Step68EarlyControlClassPlan,s2Step68EarlyControlFlagArena,s2Step68EarlyControlFittedArena,s2Step68EarlyControlHistoryArena,s2Step68EarlyControlSigmaArena,s2Step68EarlyControlOutputArena,s2Step68EarlyControlLog⟩

private def s2Step68CounterWork : List Wire := [826, 827, 816, 845]

private theorem s2Step68Counter_bounded : s2Step68CounterWork.toFinset⊆arenaWires := by norm_num [s2Step68CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step68HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68CounterDuring : Arena := ⟨s2Step68HeadFvAfter.live∪s2Step68CounterWork.toFinset,Finset.union_subset s2Step68HeadFvAfter.bounded s2Step68Counter_bounded⟩

private def s2Step68EntryFFresh : List Wire := []

private def s2Step68EntryFvFresh : List Wire := []

private def s2Step68EntryGFresh : List Wire := []

private def s2Step68EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68EntryGvAfter : Arena := s2Step68EntryFBefore

private def s2Step68EntryGvFresh : List Wire := []

private def s2Step68ExitFExtra : List Wire := [814]

private def s2Step68ExitFvExtra : List Wire := [822]

private def s2Step68ExitGExtra : List Wire := [233, 830]

private def s2Step68ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68ExitGvExtra : List Wire := [825]

private def s2Step68Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68Add0Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step68Add0_bounded : s2Step68Add0Work.toFinset⊆arenaWires := by
  have h : s2Step68Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step68Add0During : Arena := ⟨s2Step68Add0Arena.live∪s2Step68Add0Work.toFinset,Finset.union_subset s2Step68Add0Arena.bounded s2Step68Add0_bounded⟩

private def s2Step68Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68Add1Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913]

private theorem s2Step68Add1_bounded : s2Step68Add1Work.toFinset⊆arenaWires := by
  have h : s2Step68Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step68Add1During : Arena := ⟨s2Step68Add1Arena.live∪s2Step68Add1Work.toFinset,Finset.union_subset s2Step68Add1Arena.bounded s2Step68Add1_bounded⟩

private def s2Step68F4FlagArena : Arena := ⟨s2Step68HeadFvAfter.live∪{826},Finset.union_subset s2Step68HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step68F4Plan : HmrHybridF4Plan := ⟨s2Step68F4FlagArena,[826],s2Step68Add0Arena,[827],s2Step68Add0During,s2Step68Add0Work,s2Step68Add1During,s2Step68Add1Work⟩

private def s2Step68HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 814],768⟩

private def s2Step68HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 822],770⟩

private def s2Step68HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830],769⟩

private def s2Step68HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 825],771⟩

private def s2Step68FrontHead : WindowBank := ⟨s2Step68HeadFOut,s2Step68HeadGOut,s2Step68HeadFvOut,s2Step68HeadGvOut⟩

private def s2Step68EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step68EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step68EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],769⟩

private def s2Step68EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step68FrontPair : WindowBank := ⟨s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut⟩

private def s2Step68FrontSigmaArena : Arena := ⟨s2Step68EntryGvAfter.live∪{844},Finset.union_subset s2Step68EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step68HeadFFresh : List Wire := [814]

private def s2Step68HeadFvFresh : List Wire := [822]

private def s2Step68HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68HeadGFresh : List Wire := [830]

private def s2Step68HeadGvFresh : List Wire := [825]

private def s2Step68FrontPlan : HmrSourceFront := ⟨s2Step68EntryGvAfter,s2Step68FrontPair,(growRow 768 s2Step68EntryFFresh ++ (growRow 769 s2Step68EntryGFresh ++ (growRow 770 s2Step68EntryFvFresh ++ (growRow 771 s2Step68EntryGvFresh ++ [])))),s2Step68FrontSigmaArena,[844],s2Step68HeadGBefore,[829],
  s2Step68HeadFvAfter,s2Step68FrontHead,(growRow 769 s2Step68HeadGFresh ++ (growRow 768 s2Step68HeadFFresh ++ (growRow 771 s2Step68HeadGvFresh ++ (growRow 770 s2Step68HeadFvFresh ++ [])))),s2Step68F4Plan,s2Step68CounterDuring,s2Step68CounterWork,s2Step68ExitGvAfter,s2Step68FrontOut,(shrinkRow 769 s2Step68ExitGExtra ++ (shrinkRow 768 s2Step68ExitFExtra ++ (shrinkRow 770 s2Step68ExitFvExtra ++ (shrinkRow 771 s2Step68ExitGvExtra ++ []))))⟩

private def s2Step68CompletePlan : HmrEarlyStepPlan := ⟨s2Step68FrontPlan,s2Step68EarlyControlArena,s2Step68EarlyControlPlan,s2Step68CompleteMoves⟩

private theorem s2Step68Complete_apart : List.Disjoint (s2Step68CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step68CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step68Complete_owned : (s2Step68CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step68CompleteMoveArena : Arena := ⟨s2Step68ExitGvAfter.live∪{233},Finset.union_subset s2Step68ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step68Complete_repack : s2Step68ExitGvAfter.checkRepack s2Step68CompleteMoves=some s2Step68EarlyControlArena := by
  have owned : 832∈s2Step68ExitGvAfter.live := by norm_num [s2Step68ExitGvAfter,arenaWires]
  have reserve : s2Step68ExitGvAfter.reserve {233}=some s2Step68CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step68ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step68CompleteMoveArena.retireSet {832}=s2Step68EarlyControlArena := by
    unfold Arena.retireSet s2Step68EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step68CompleteMoveArena,s2Step68ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step68CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step68CompleteMoveArena.retireSet {832}).checkRepack []=some s2Step68EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step68EarlyControl_branchOwned : ([829] : List Wire).toFinset⊆s2Step68EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlSigmaArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_branch : compileHmrBranchRetirement s2Step68EarlyControlSigmaArena 829=some s2Step68EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step68EarlyControl_branchOwned
  · ext q
    simp [s2Step68EarlyControlOutputArena,s2Step68EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step68EarlyControl_classEqualityBorrow : s2Step68EarlyControlPositiveArena.checkBorrow (([844, 826] : List Wire).length-1) s2Step68EarlyControlLog.classWork=some s2Step68EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step68EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step68EarlyControlEqualityArena,s2Step68EarlyControlPositiveArena,s2Step68EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step68EarlyControl_classEqualityOwned : ([844, 826] : List Wire).toFinset⊆s2Step68EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_classEquality : compileHmrEqualityLog s2Step68EarlyControlPositiveArena [844, 826] 0 s2Step68EarlyControlLog.classWork=some (s2Step68EarlyControlEqualityArena,s2Step68EarlyControlLog.classWork,s2Step68EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step68EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step68EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step68EarlyControl_classOwned : ([777, 830, 844] : List Wire).toFinset⊆s2Step68EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_positiveBorrow : s2Step68EarlyControlZeroArena.checkBorrow (1) s2Step68EarlyControlLog.positiveWork=some s2Step68EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step68EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step68EarlyControlPositiveArena,s2Step68EarlyControlZeroArena,s2Step68EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step68EarlyControl_class : compileHmrSourceClassLog s2Step68EarlyControlZeroArena false 777 s2Step68EarlyControlZeroPlan.top 0 844 s2Step68EarlyControlLog.positiveWork s2Step68EarlyControlLog.classWork=some s2Step68EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step68EarlyControlClassPlan s2Step68EarlyControlZeroArena false 777 s2Step68EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step68EarlyControl_classOwned
  · exact s2Step68EarlyControl_positiveBorrow
  · exact s2Step68EarlyControl_classEquality

private theorem s2Step68EarlyControl_entryRecordOwned : ([829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_fitBorrow : s2Step68EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step68EarlyControlLog.recordFresh=some s2Step68EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step68EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step68EarlyControlFittedArena,s2Step68EarlyControlFlagArena,s2Step68EarlyControlLog,arenaWires]

private theorem s2Step68EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step68EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_fit : compileHmrRecordGrowLog s2Step68EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step68EarlyControlLog.recordFresh=some s2Step68EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step68EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step68EarlyControl_fitBorrow

private theorem s2Step68EarlyControl_flagsBorrow : s2Step68EarlyControlEqualityArena.checkBorrow (6) s2Step68EarlyControlLog.flagWork=some s2Step68EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step68EarlyControlEqualityArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step68EarlyControlFlagArena,s2Step68EarlyControlEqualityArena,s2Step68EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step68EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step68EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlEqualityArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_flags : compileHmrFlagsLog s2Step68EarlyControlClassPlan.equalityArena s2Step68EarlyControlClassPlan.equality.top 253 252 251 s2Step68EarlyControlLog.flagWork=some s2Step68EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step68EarlyControl_flagsOwned⟩
  · exact s2Step68EarlyControl_flagsBorrow

private theorem s2Step68EarlyControl_historyBorrow : s2Step68EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step68EarlyControlLog.recordFresh=some s2Step68EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step68EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step68EarlyControlHistoryArena,s2Step68EarlyControlArena,s2Step68EarlyControlLog,arenaWires]

private theorem s2Step68EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_history : compileHmrRecordGrowLog s2Step68EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step68EarlyControlLog.recordFresh=some s2Step68EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step68EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step68EarlyControl_historyBorrow

private theorem s2Step68EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step68EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step68EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_sigmaRelease : s2Step68EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step68EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step68EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step68EarlyControlSigmaArena,s2Step68EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step68EarlyControl_sigma : compileHmrSigmaDropLog s2Step68EarlyControlHistoryArena false 0 0 254 844 []=some s2Step68EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step68EarlyControl_sigmaOwned⟩
  · exact s2Step68EarlyControl_sigmaRelease

private theorem s2Step68EarlyControl_zeroBorrow : s2Step68EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step68EarlyControlLog.zeroWork=some s2Step68EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step68EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step68EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step68EarlyControlZeroArena,s2Step68EarlyControlArena,s2Step68EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step68EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step68EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step68EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<832) ∨ (833≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EarlyControl_zero : compileHmrEqualityLog s2Step68EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step68EarlyControlLog.zeroWork=some (s2Step68EarlyControlZeroArena,s2Step68EarlyControlLog.zeroWork,s2Step68EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step68EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step68EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step68EarlyControl_logged : s2Step68EarlyControlPlan.Logged s2Step68EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 829 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step68EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step68EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step68EarlyControl_zero
  · exact s2Step68EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step68EarlyControl_flags
  · exact s2Step68EarlyControl_fit
  · exact s2Step68EarlyControl_history
  · exact s2Step68EarlyControl_sigma
  · exact s2Step68EarlyControl_branch

private theorem s2Step68EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step68EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 829 30 s2Step68EarlyControlLog=some s2Step68EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step68EarlyControlPlan s2Step68EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 829 30 s2Step68EarlyControl_logged

private def s2Step68EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step68EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step68EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],769⟩

private def s2Step68EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step68FrontBank : WindowBank := ⟨s2Step68EntryFRow,s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow⟩

private def s2Step68Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 814, 768]

private def s2Step68Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830, 769]

private def s2Step68Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 822, 770]

private def s2Step68Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 825, 771]

private theorem s2Step68Counter_apart : Disjoint s2Step68HeadFvAfter.live s2Step68CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step68HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68Counter_borrowed : s2Step68HeadFvAfter.checkBorrow 4 s2Step68CounterWork=some s2Step68CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step68HeadFvAfter s2Step68CounterDuring s2Step68CounterWork.toFinset s2Step68Counter_bounded s2Step68Counter_apart rfl

private theorem s2Step68Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step68HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step68HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68Counter_checked : compileHmrCounterStepLog s2Step68HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step68CounterWork=some s2Step68CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step68HeadFvAfter.live := fun q hq => s2Step68Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step68Counter_borrowed

private def s2Step68EntryFAfter : Arena := s2Step68EntryFBefore

private theorem s2Step68EntryBank_incomingDistinct : ([s2Step68EntryFRow,s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68EntryF_Incoming : rowsOwned s2Step68EntryFBefore [s2Step68EntryFRow,s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68EntryFRow,s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow] 0 s2Step68EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68EntryBank_outgoingOwned : rowsOwned s2Step68EntryGvAfter [s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step68EntryGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68EntryF_Outgoing : rowsOwned s2Step68EntryGvAfter [s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut] :=
  hmrRows_owned_drop s2Step68EntryGvAfter [s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut] 0 s2Step68EntryBank_outgoingOwned

private theorem s2Step68EntryF_distinct : (s2Step68EntryFRow.sign::s2Step68EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68EntryF_owned : (s2Step68EntryFRow.sign::s2Step68EntryFRow.payload).toFinset⊆s2Step68EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EntryF_reserved : s2Step68EntryFBefore.reserve s2Step68EntryFFresh.toFinset=some s2Step68EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step68EntryFFresh,arenaWires]
  · norm_num [s2Step68EntryFBefore,s2Step68EntryFFresh,arenaWires]
  · simp only [s2Step68EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step68EntryF_checked : planRowResizeLog s2Step68EntryFBefore s2Step68EntryFRow 234 s2Step68EntryFFresh=
    some (s2Step68EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩,growRow 768 s2Step68EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step68EntryFBefore s2Step68EntryFAfter s2Step68EntryFRow 234 s2Step68EntryFFresh
    s2Step68EntryF_distinct s2Step68EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step68EntryF_reserved
  have rowEq : WindowRow.mk (s2Step68EntryFRow.payload++s2Step68EntryFFresh) s2Step68EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step68EntryFvAfter : Arena := s2Step68EntryFBefore

private def s2Step68EntryFvBefore : Arena := s2Step68EntryFBefore

private theorem s2Step68EntryFv_Incoming : rowsOwned s2Step68EntryFvBefore [s2Step68EntryFvRow,s2Step68EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68EntryFRow,s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow] 2 s2Step68EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68EntryFv_Outgoing : rowsOwned s2Step68EntryGvAfter [s2Step68EntryFvOut,s2Step68EntryGvOut] :=
  hmrRows_owned_drop s2Step68EntryGvAfter [s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut] 2 s2Step68EntryBank_outgoingOwned

private theorem s2Step68EntryFv_distinct : (s2Step68EntryFvRow.sign::s2Step68EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68EntryFv_owned : (s2Step68EntryFvRow.sign::s2Step68EntryFvRow.payload).toFinset⊆s2Step68EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EntryFv_reserved : s2Step68EntryFvBefore.reserve s2Step68EntryFvFresh.toFinset=some s2Step68EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step68EntryFvFresh,arenaWires]
  · norm_num [s2Step68EntryFvBefore,s2Step68EntryFBefore,s2Step68EntryFvFresh,arenaWires]
  · simp only [s2Step68EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step68EntryFv_checked : planRowResizeLog s2Step68EntryFvBefore s2Step68EntryFvRow 47 s2Step68EntryFvFresh=
    some (s2Step68EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩,growRow 770 s2Step68EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step68EntryFvBefore s2Step68EntryFvAfter s2Step68EntryFvRow 47 s2Step68EntryFvFresh
    s2Step68EntryFv_distinct s2Step68EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step68EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step68EntryFvRow.payload++s2Step68EntryFvFresh) s2Step68EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step68EntryGAfter : Arena := s2Step68EntryFBefore

private def s2Step68EntryGBefore : Arena := s2Step68EntryFBefore

private theorem s2Step68EntryG_Incoming : rowsOwned s2Step68EntryGBefore [s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68EntryFRow,s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow] 1 s2Step68EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68EntryG_Outgoing : rowsOwned s2Step68EntryGvAfter [s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut] :=
  hmrRows_owned_drop s2Step68EntryGvAfter [s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut] 1 s2Step68EntryBank_outgoingOwned

private theorem s2Step68EntryG_distinct : (s2Step68EntryGRow.sign::s2Step68EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68EntryG_owned : (s2Step68EntryGRow.sign::s2Step68EntryGRow.payload).toFinset⊆s2Step68EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EntryG_reserved : s2Step68EntryGBefore.reserve s2Step68EntryGFresh.toFinset=some s2Step68EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step68EntryGFresh,arenaWires]
  · norm_num [s2Step68EntryGBefore,s2Step68EntryFBefore,s2Step68EntryGFresh,arenaWires]
  · simp only [s2Step68EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step68EntryG_checked : planRowResizeLog s2Step68EntryGBefore s2Step68EntryGRow 234 s2Step68EntryGFresh=
    some (s2Step68EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],769⟩,growRow 769 s2Step68EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step68EntryGBefore s2Step68EntryGAfter s2Step68EntryGRow 234 s2Step68EntryGFresh
    s2Step68EntryG_distinct s2Step68EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step68EntryG_reserved
  have rowEq : WindowRow.mk (s2Step68EntryGRow.payload++s2Step68EntryGFresh) s2Step68EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step68EntryGvBefore : Arena := s2Step68EntryFBefore

private theorem s2Step68EntryGv_Incoming : rowsOwned s2Step68EntryGvBefore [s2Step68EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68EntryFRow,s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow] 3 s2Step68EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68EntryGv_Outgoing : rowsOwned s2Step68EntryGvAfter [s2Step68EntryGvOut] :=
  hmrRows_owned_drop s2Step68EntryGvAfter [s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut] 3 s2Step68EntryBank_outgoingOwned

private theorem s2Step68EntryGv_distinct : (s2Step68EntryGvRow.sign::s2Step68EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68EntryGv_owned : (s2Step68EntryGvRow.sign::s2Step68EntryGvRow.payload).toFinset⊆s2Step68EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68EntryGv_reserved : s2Step68EntryGvBefore.reserve s2Step68EntryGvFresh.toFinset=some s2Step68EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step68EntryGvFresh,arenaWires]
  · norm_num [s2Step68EntryGvBefore,s2Step68EntryFBefore,s2Step68EntryGvFresh,arenaWires]
  · simp only [s2Step68EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step68EntryGv_checked : planRowResizeLog s2Step68EntryGvBefore s2Step68EntryGvRow 47 s2Step68EntryGvFresh=
    some (s2Step68EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩,growRow 771 s2Step68EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step68EntryGvBefore s2Step68EntryGvAfter s2Step68EntryGvRow 47 s2Step68EntryGvFresh
    s2Step68EntryGv_distinct s2Step68EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step68EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step68EntryGvRow.payload++s2Step68EntryGvFresh) s2Step68EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step68EntryBank_rows : planWindowRowsLog s2Step68EntryFBefore [(s2Step68EntryFRow,234),(s2Step68EntryGRow,234),(s2Step68EntryFvRow,47),(s2Step68EntryGvRow,47)] [s2Step68EntryFFresh,s2Step68EntryGFresh,s2Step68EntryFvFresh,s2Step68EntryGvFresh]=
    some (s2Step68EntryGvAfter,[s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut],(growRow 768 s2Step68EntryFFresh ++ (growRow 769 s2Step68EntryGFresh ++ (growRow 770 s2Step68EntryFvFresh ++ (growRow 771 s2Step68EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step68EntryGvAfter [] []=some (s2Step68EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step68EntryGvBefore s2Step68EntryGvAfter s2Step68EntryGvAfter
    s2Step68EntryGvRow s2Step68EntryGvOut 47 s2Step68EntryGvFresh [] [] []
    (growRow 771 s2Step68EntryGvFresh) ([]) s2Step68EntryGv_Incoming s2Step68EntryGv_checked h4 s2Step68EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step68EntryFvBefore s2Step68EntryFvAfter s2Step68EntryGvAfter
    s2Step68EntryFvRow s2Step68EntryFvOut 47 s2Step68EntryFvFresh [(s2Step68EntryGvRow,47)] [s2Step68EntryGvFresh] [s2Step68EntryGvOut]
    (growRow 770 s2Step68EntryFvFresh) ((growRow 771 s2Step68EntryGvFresh ++ [])) s2Step68EntryFv_Incoming s2Step68EntryFv_checked h3 s2Step68EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step68EntryGBefore s2Step68EntryGAfter s2Step68EntryGvAfter
    s2Step68EntryGRow s2Step68EntryGOut 234 s2Step68EntryGFresh [(s2Step68EntryFvRow,47),(s2Step68EntryGvRow,47)] [s2Step68EntryFvFresh,s2Step68EntryGvFresh] [s2Step68EntryFvOut,s2Step68EntryGvOut]
    (growRow 769 s2Step68EntryGFresh) ((growRow 770 s2Step68EntryFvFresh ++ (growRow 771 s2Step68EntryGvFresh ++ []))) s2Step68EntryG_Incoming s2Step68EntryG_checked h2 s2Step68EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step68EntryFBefore s2Step68EntryFAfter s2Step68EntryGvAfter
    s2Step68EntryFRow s2Step68EntryFOut 234 s2Step68EntryFFresh [(s2Step68EntryGRow,234),(s2Step68EntryFvRow,47),(s2Step68EntryGvRow,47)] [s2Step68EntryGFresh,s2Step68EntryFvFresh,s2Step68EntryGvFresh] [s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut]
    (growRow 768 s2Step68EntryFFresh) ((growRow 769 s2Step68EntryGFresh ++ (growRow 770 s2Step68EntryFvFresh ++ (growRow 771 s2Step68EntryGvFresh ++ [])))) s2Step68EntryF_Incoming s2Step68EntryF_checked h1 s2Step68EntryF_Outgoing
  exact h0

private theorem s2Step68EntryBank_checked : compileHmrBankResizeLog .entry s2Step68EntryFBefore ⟨s2Step68EntryFRow,s2Step68EntryGRow,s2Step68EntryFvRow,s2Step68EntryGvRow⟩ ⟨234,234,47,47⟩ [s2Step68EntryFFresh,s2Step68EntryGFresh,s2Step68EntryFvFresh,s2Step68EntryGvFresh]=
    some (s2Step68EntryGvAfter,⟨s2Step68EntryFOut,s2Step68EntryGOut,s2Step68EntryFvOut,s2Step68EntryGvOut⟩,(growRow 768 s2Step68EntryFFresh ++ (growRow 769 s2Step68EntryGFresh ++ (growRow 770 s2Step68EntryFvFresh ++ (growRow 771 s2Step68EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step68EntryBank_rows]
  rfl

private def s2Step68ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68ExitFBefore : Arena := s2Step68ExitGAfter

private def s2Step68ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 814],768⟩

private def s2Step68ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 822],770⟩

private def s2Step68ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830],769⟩

private def s2Step68ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 825],771⟩

private theorem s2Step68ExitBank_incomingDistinct : ([s2Step68ExitGRow,s2Step68ExitFRow,s2Step68ExitFvRow,s2Step68ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68ExitF_Incoming : rowsOwned s2Step68ExitFBefore [s2Step68ExitFRow,s2Step68ExitFvRow,s2Step68ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68ExitGRow,s2Step68ExitFRow,s2Step68ExitFvRow,s2Step68ExitGvRow] 1 s2Step68ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68ExitFBefore (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68ExitBank_outgoingOwned : rowsOwned s2Step68ExitGvAfter [s2Step68ExitGOut,s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step68ExitGvAfter (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68ExitF_Outgoing : rowsOwned s2Step68ExitGvAfter [s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut] :=
  hmrRows_owned_drop s2Step68ExitGvAfter [s2Step68ExitGOut,s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut] 1 s2Step68ExitBank_outgoingOwned

private theorem s2Step68ExitF_distinct : (s2Step68ExitFRow.sign::s2Step68ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68ExitF_owned : (s2Step68ExitFRow.sign::s2Step68ExitFRow.payload).toFinset⊆s2Step68ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68ExitFBefore (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68ExitF_retired : s2Step68ExitFBefore.retireSet s2Step68ExitFExtra.toFinset=s2Step68ExitFAfter := by
  unfold Arena.retireSet s2Step68ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step68ExitFBefore,s2Step68ExitGAfter,s2Step68ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step68ExitF_checked : planRowResizeLog s2Step68ExitFBefore s2Step68ExitFRow 234 []=
    some (s2Step68ExitFAfter,s2Step68ExitFOut,shrinkRow 768 s2Step68ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step68ExitFBefore s2Step68ExitFRow 234 s2Step68ExitF_distinct s2Step68ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step68ExitFRow.payload.take 234) s2Step68ExitFRow.sign=s2Step68ExitFOut := by decide +kernel
  have hi : s2Step68ExitFRow.payload.drop 234=s2Step68ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step68ExitF_retired] at result
  exact result

private def s2Step68ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68ExitFvBefore : Arena := s2Step68ExitFAfter

private theorem s2Step68ExitFv_Incoming : rowsOwned s2Step68ExitFvBefore [s2Step68ExitFvRow,s2Step68ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68ExitGRow,s2Step68ExitFRow,s2Step68ExitFvRow,s2Step68ExitGvRow] 2 s2Step68ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68ExitFvBefore (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68ExitFv_Outgoing : rowsOwned s2Step68ExitGvAfter [s2Step68ExitFvOut,s2Step68ExitGvOut] :=
  hmrRows_owned_drop s2Step68ExitGvAfter [s2Step68ExitGOut,s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut] 2 s2Step68ExitBank_outgoingOwned

private theorem s2Step68ExitFv_distinct : (s2Step68ExitFvRow.sign::s2Step68ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68ExitFv_owned : (s2Step68ExitFvRow.sign::s2Step68ExitFvRow.payload).toFinset⊆s2Step68ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68ExitFvBefore (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68ExitFv_retired : s2Step68ExitFvBefore.retireSet s2Step68ExitFvExtra.toFinset=s2Step68ExitFvAfter := by
  unfold Arena.retireSet s2Step68ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step68ExitFvBefore,s2Step68ExitFAfter,s2Step68ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step68ExitFv_checked : planRowResizeLog s2Step68ExitFvBefore s2Step68ExitFvRow 47 []=
    some (s2Step68ExitFvAfter,s2Step68ExitFvOut,shrinkRow 770 s2Step68ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step68ExitFvBefore s2Step68ExitFvRow 47 s2Step68ExitFv_distinct s2Step68ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step68ExitFvRow.payload.take 47) s2Step68ExitFvRow.sign=s2Step68ExitFvOut := by decide +kernel
  have hi : s2Step68ExitFvRow.payload.drop 47=s2Step68ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step68ExitFv_retired] at result
  exact result

private def s2Step68ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step68ExitG_Incoming : rowsOwned s2Step68ExitGBefore [s2Step68ExitGRow,s2Step68ExitFRow,s2Step68ExitFvRow,s2Step68ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68ExitGRow,s2Step68ExitFRow,s2Step68ExitFvRow,s2Step68ExitGvRow] 0 s2Step68ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68ExitG_Outgoing : rowsOwned s2Step68ExitGvAfter [s2Step68ExitGOut,s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut] :=
  hmrRows_owned_drop s2Step68ExitGvAfter [s2Step68ExitGOut,s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut] 0 s2Step68ExitBank_outgoingOwned

private theorem s2Step68ExitG_distinct : (s2Step68ExitGRow.sign::s2Step68ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68ExitG_owned : (s2Step68ExitGRow.sign::s2Step68ExitGRow.payload).toFinset⊆s2Step68ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68ExitG_retired : s2Step68ExitGBefore.retireSet s2Step68ExitGExtra.toFinset=s2Step68ExitGAfter := by
  unfold Arena.retireSet s2Step68ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step68ExitGBefore,s2Step68ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step68ExitG_checked : planRowResizeLog s2Step68ExitGBefore s2Step68ExitGRow 233 []=
    some (s2Step68ExitGAfter,s2Step68ExitGOut,shrinkRow 769 s2Step68ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step68ExitGBefore s2Step68ExitGRow 233 s2Step68ExitG_distinct s2Step68ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step68ExitGRow.payload.take 233) s2Step68ExitGRow.sign=s2Step68ExitGOut := by decide +kernel
  have hi : s2Step68ExitGRow.payload.drop 233=s2Step68ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step68ExitG_retired] at result
  exact result

private def s2Step68ExitGvBefore : Arena := s2Step68ExitFvAfter

private theorem s2Step68ExitGv_Incoming : rowsOwned s2Step68ExitGvBefore [s2Step68ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68ExitGRow,s2Step68ExitFRow,s2Step68ExitFvRow,s2Step68ExitGvRow] 3 s2Step68ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68ExitGvBefore (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68ExitGv_Outgoing : rowsOwned s2Step68ExitGvAfter [s2Step68ExitGvOut] :=
  hmrRows_owned_drop s2Step68ExitGvAfter [s2Step68ExitGOut,s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut] 3 s2Step68ExitBank_outgoingOwned

private theorem s2Step68ExitGv_distinct : (s2Step68ExitGvRow.sign::s2Step68ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68ExitGv_owned : (s2Step68ExitGvRow.sign::s2Step68ExitGvRow.payload).toFinset⊆s2Step68ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68ExitGvBefore (fun q => (0≤q ∧ q<233) ∨ (234≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68ExitGv_retired : s2Step68ExitGvBefore.retireSet s2Step68ExitGvExtra.toFinset=s2Step68ExitGvAfter := by
  unfold Arena.retireSet s2Step68ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step68ExitGvBefore,s2Step68ExitFvAfter,s2Step68ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step68ExitGv_checked : planRowResizeLog s2Step68ExitGvBefore s2Step68ExitGvRow 47 []=
    some (s2Step68ExitGvAfter,s2Step68ExitGvOut,shrinkRow 771 s2Step68ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step68ExitGvBefore s2Step68ExitGvRow 47 s2Step68ExitGv_distinct s2Step68ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step68ExitGvRow.payload.take 47) s2Step68ExitGvRow.sign=s2Step68ExitGvOut := by decide +kernel
  have hi : s2Step68ExitGvRow.payload.drop 47=s2Step68ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step68ExitGv_retired] at result
  exact result

private theorem s2Step68ExitBank_rows : planWindowRowsLog s2Step68ExitGBefore [(s2Step68ExitGRow,233),(s2Step68ExitFRow,234),(s2Step68ExitFvRow,47),(s2Step68ExitGvRow,47)] [[],[],[],[]]=
    some (s2Step68ExitGvAfter,[s2Step68ExitGOut,s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut],(shrinkRow 769 s2Step68ExitGExtra ++ (shrinkRow 768 s2Step68ExitFExtra ++ (shrinkRow 770 s2Step68ExitFvExtra ++ (shrinkRow 771 s2Step68ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step68ExitGvAfter [] []=some (s2Step68ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step68ExitGvBefore s2Step68ExitGvAfter s2Step68ExitGvAfter
    s2Step68ExitGvRow s2Step68ExitGvOut 47 [] [] [] []
    (shrinkRow 771 s2Step68ExitGvExtra) ([]) s2Step68ExitGv_Incoming s2Step68ExitGv_checked h4 s2Step68ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step68ExitFvBefore s2Step68ExitFvAfter s2Step68ExitGvAfter
    s2Step68ExitFvRow s2Step68ExitFvOut 47 [] [(s2Step68ExitGvRow,47)] [[]] [s2Step68ExitGvOut]
    (shrinkRow 770 s2Step68ExitFvExtra) ((shrinkRow 771 s2Step68ExitGvExtra ++ [])) s2Step68ExitFv_Incoming s2Step68ExitFv_checked h3 s2Step68ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step68ExitFBefore s2Step68ExitFAfter s2Step68ExitGvAfter
    s2Step68ExitFRow s2Step68ExitFOut 234 [] [(s2Step68ExitFvRow,47),(s2Step68ExitGvRow,47)] [[],[]] [s2Step68ExitFvOut,s2Step68ExitGvOut]
    (shrinkRow 768 s2Step68ExitFExtra) ((shrinkRow 770 s2Step68ExitFvExtra ++ (shrinkRow 771 s2Step68ExitGvExtra ++ []))) s2Step68ExitF_Incoming s2Step68ExitF_checked h2 s2Step68ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step68ExitGBefore s2Step68ExitGAfter s2Step68ExitGvAfter
    s2Step68ExitGRow s2Step68ExitGOut 233 [] [(s2Step68ExitFRow,234),(s2Step68ExitFvRow,47),(s2Step68ExitGvRow,47)] [[],[],[]] [s2Step68ExitFOut,s2Step68ExitFvOut,s2Step68ExitGvOut]
    (shrinkRow 769 s2Step68ExitGExtra) ((shrinkRow 768 s2Step68ExitFExtra ++ (shrinkRow 770 s2Step68ExitFvExtra ++ (shrinkRow 771 s2Step68ExitGvExtra ++ [])))) s2Step68ExitG_Incoming s2Step68ExitG_checked h1 s2Step68ExitG_Outgoing
  exact h0

private theorem s2Step68ExitBank_checked : compileHmrBankResizeLog .exit s2Step68ExitGBefore ⟨s2Step68ExitFRow,s2Step68ExitGRow,s2Step68ExitFvRow,s2Step68ExitGvRow⟩ ⟨234,233,47,47⟩ [[],[],[],[]]=
    some (s2Step68ExitGvAfter,⟨s2Step68ExitFOut,s2Step68ExitGOut,s2Step68ExitFvOut,s2Step68ExitGvOut⟩,(shrinkRow 769 s2Step68ExitGExtra ++ (shrinkRow 768 s2Step68ExitFExtra ++ (shrinkRow 770 s2Step68ExitFvExtra ++ (shrinkRow 771 s2Step68ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step68ExitBank_rows]
  rfl

private theorem s2Step68Add0_apart : Disjoint s2Step68Add0Arena.live s2Step68Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step68Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68Add0_card : s2Step68Add0Arena.live.card=866 := by
  decide +kernel

private theorem s2Step68Add0_borrowed : s2Step68Add0Arena.checkBorrow (hmrHybridCount s2Step68Add0Arena s2Step68Add0B.length) s2Step68Add0Work=some s2Step68Add0During := by
  have len : s2Step68Add0Work.length=hmrHybridCount s2Step68Add0Arena s2Step68Add0B.length := by
    rw [hmrHybridCount,s2Step68Add0_card]
    decide +kernel
  have nd : s2Step68Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step68Add0Arena s2Step68Add0During s2Step68Add0Work.toFinset s2Step68Add0_bounded s2Step68Add0_apart rfl

private theorem s2Step68Add0_distinct : (826::829::827::(s2Step68Add0A++s2Step68Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68Add0_owned : (826::829::827::(s2Step68Add0A++s2Step68Add0B)).toFinset⊆s2Step68Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step68Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68Add0_checked : compileHmrHybridCinLog s2Step68Add0Arena 829 826 827 s2Step68Add0A s2Step68Add0B s2Step68Add0Work=some s2Step68Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step68Add0Arena s2Step68Add0During 829 826 827 s2Step68Add0A s2Step68Add0B s2Step68Add0Work
    (by decide +kernel) (by decide +kernel) s2Step68Add0_distinct
    (fun q hq => s2Step68Add0_owned (List.mem_toFinset.mpr hq)) s2Step68Add0_borrowed

private theorem s2Step68Add1_apart : Disjoint s2Step68Add1Arena.live s2Step68Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step68Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68Add1_card : s2Step68Add1Arena.live.card=866 := by
  decide +kernel

private theorem s2Step68Add1_borrowed : s2Step68Add1Arena.checkBorrow (hmrHybridCount s2Step68Add1Arena s2Step68Add1B.length) s2Step68Add1Work=some s2Step68Add1During := by
  have len : s2Step68Add1Work.length=hmrHybridCount s2Step68Add1Arena s2Step68Add1B.length := by
    rw [hmrHybridCount,s2Step68Add1_card]
    decide +kernel
  have nd : s2Step68Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step68Add1Arena s2Step68Add1During s2Step68Add1Work.toFinset s2Step68Add1_bounded s2Step68Add1_apart rfl

private theorem s2Step68Add1_distinct : (826::829::827::(s2Step68Add1A++s2Step68Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68Add1_owned : (826::829::827::(s2Step68Add1A++s2Step68Add1B)).toFinset⊆s2Step68Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step68Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68Add1_checked : compileHmrHybridCinLog s2Step68Add1Arena 829 826 827 s2Step68Add1A s2Step68Add1B s2Step68Add1Work=some s2Step68Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step68Add1Arena s2Step68Add1During 829 826 827 s2Step68Add1A s2Step68Add1B s2Step68Add1Work
    (by decide +kernel) (by decide +kernel) s2Step68Add1_distinct
    (fun q hq => s2Step68Add1_owned (List.mem_toFinset.mpr hq)) s2Step68Add1_borrowed

private theorem s2Step68F4_apart : Disjoint (s2Step68Add0A++s2Step68Add0B).toFinset (s2Step68Add1A++s2Step68Add1B).toFinset := by
  have nd : ((s2Step68Add0A++s2Step68Add0B)++(s2Step68Add1A++s2Step68Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step68F4_carry : s2Step68F4FlagArena.checkBorrow 1 [827]=some s2Step68Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step68F4FlagArena,s2Step68HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step68F4FlagArena,s2Step68HeadFvAfter,s2Step68Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step68F4_distinct : (844::829::826::827::((s2Step68Add0A++s2Step68Add1A)++(s2Step68Add0B++s2Step68Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68F4_flag : s2Step68HeadFvAfter.checkBorrow 1 [826]=some s2Step68F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step68HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step68F4_owned : (844::829::((s2Step68Add0A++s2Step68Add1A)++(s2Step68Add0B++s2Step68Add1B))).toFinset⊆s2Step68HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step68HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68F4_checked : compileHmrHybridF4Log s2Step68HeadFvAfter 844 829 s2Step68Add0A s2Step68Add0B s2Step68Add1A s2Step68Add1B [826] [827] s2Step68Add0Work s2Step68Add1Work=some s2Step68F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step68HeadFvAfter s2Step68F4FlagArena s2Step68Add0Arena s2Step68Add0During s2Step68Add1During 844 829
    s2Step68Add0A s2Step68Add0B s2Step68Add1A s2Step68Add1B [826] [827] s2Step68Add0Work s2Step68Add1Work
    (fun q hq => s2Step68F4_owned (List.mem_toFinset.mpr hq)) s2Step68F4_flag s2Step68F4_carry
    s2Step68F4_distinct s2Step68F4_apart s2Step68Add0_checked s2Step68Add1_checked

private theorem s2Step68Front_branch : s2Step68FrontSigmaArena.checkBorrow 1 [829]=some s2Step68HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step68FrontSigmaArena,s2Step68EntryGvAfter,s2Step68EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step68FrontSigmaArena,s2Step68EntryGvAfter,s2Step68EntryFBefore,s2Step68HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step68Front_entry : HmrFrontEntryValid s2Step68EntryFBefore s2Step68FrontBank 234 47 ⟨234,233,47,47⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step68FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step68EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step68EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (831≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step68FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step68Front_sigma : s2Step68EntryGvAfter.checkBorrow 1 [844]=some s2Step68FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step68EntryGvAfter,s2Step68EntryFBefore,arenaWires]
  · rfl

private def s2Step68HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68HeadFBefore : Arena := s2Step68HeadGAfter

private def s2Step68HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745],768⟩

private def s2Step68HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790],770⟩

private def s2Step68HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233],769⟩

private def s2Step68HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private theorem s2Step68HeadBank_incomingDistinct : ([s2Step68HeadGRow,s2Step68HeadFRow,s2Step68HeadGvRow,s2Step68HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68HeadF_Incoming : rowsOwned s2Step68HeadFBefore [s2Step68HeadFRow,s2Step68HeadGvRow,s2Step68HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68HeadGRow,s2Step68HeadFRow,s2Step68HeadGvRow,s2Step68HeadFvRow] 1 s2Step68HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68HeadBank_outgoingOwned : rowsOwned s2Step68HeadFvAfter [s2Step68HeadGOut,s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step68HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68HeadF_Outgoing : rowsOwned s2Step68HeadFvAfter [s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut] :=
  hmrRows_owned_drop s2Step68HeadFvAfter [s2Step68HeadGOut,s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut] 1 s2Step68HeadBank_outgoingOwned

private theorem s2Step68HeadF_distinct : (s2Step68HeadFRow.sign::s2Step68HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68HeadF_owned : (s2Step68HeadFRow.sign::s2Step68HeadFRow.payload).toFinset⊆s2Step68HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68HeadFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68HeadF_reserved : s2Step68HeadFBefore.reserve s2Step68HeadFFresh.toFinset=some s2Step68HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step68HeadFFresh,arenaWires]
  · norm_num [s2Step68HeadFBefore,s2Step68HeadGAfter,s2Step68HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step68HeadFAfter,s2Step68HeadFBefore,s2Step68HeadGAfter,s2Step68HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step68HeadF_checked : planRowResizeLog s2Step68HeadFBefore s2Step68HeadFRow 235 s2Step68HeadFFresh=
    some (s2Step68HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 814],768⟩,growRow 768 s2Step68HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step68HeadFBefore s2Step68HeadFAfter s2Step68HeadFRow 235 s2Step68HeadFFresh
    s2Step68HeadF_distinct s2Step68HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step68HeadF_reserved
  have rowEq : WindowRow.mk (s2Step68HeadFRow.payload++s2Step68HeadFFresh) s2Step68HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 745, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step68HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step68HeadFvBefore : Arena := s2Step68HeadGvAfter

private theorem s2Step68HeadFv_Incoming : rowsOwned s2Step68HeadFvBefore [s2Step68HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68HeadGRow,s2Step68HeadFRow,s2Step68HeadGvRow,s2Step68HeadFvRow] 3 s2Step68HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68HeadFv_Outgoing : rowsOwned s2Step68HeadFvAfter [s2Step68HeadFvOut] :=
  hmrRows_owned_drop s2Step68HeadFvAfter [s2Step68HeadGOut,s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut] 3 s2Step68HeadBank_outgoingOwned

private theorem s2Step68HeadFv_distinct : (s2Step68HeadFvRow.sign::s2Step68HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68HeadFv_owned : (s2Step68HeadFvRow.sign::s2Step68HeadFvRow.payload).toFinset⊆s2Step68HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68HeadFv_reserved : s2Step68HeadFvBefore.reserve s2Step68HeadFvFresh.toFinset=some s2Step68HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step68HeadFvFresh,arenaWires]
  · norm_num [s2Step68HeadFvBefore,s2Step68HeadGvAfter,s2Step68HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step68HeadFvAfter,s2Step68HeadFvBefore,s2Step68HeadGvAfter,s2Step68HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step68HeadFv_checked : planRowResizeLog s2Step68HeadFvBefore s2Step68HeadFvRow 48 s2Step68HeadFvFresh=
    some (s2Step68HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 822],770⟩,growRow 770 s2Step68HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step68HeadFvBefore s2Step68HeadFvAfter s2Step68HeadFvRow 48 s2Step68HeadFvFresh
    s2Step68HeadFv_distinct s2Step68HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step68HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step68HeadFvRow.payload++s2Step68HeadFvFresh) s2Step68HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 832, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step68HeadG_Incoming : rowsOwned s2Step68HeadGBefore [s2Step68HeadGRow,s2Step68HeadFRow,s2Step68HeadGvRow,s2Step68HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68HeadGRow,s2Step68HeadFRow,s2Step68HeadGvRow,s2Step68HeadFvRow] 0 s2Step68HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68HeadG_Outgoing : rowsOwned s2Step68HeadFvAfter [s2Step68HeadGOut,s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut] :=
  hmrRows_owned_drop s2Step68HeadFvAfter [s2Step68HeadGOut,s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut] 0 s2Step68HeadBank_outgoingOwned

private theorem s2Step68HeadG_distinct : (s2Step68HeadGRow.sign::s2Step68HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68HeadG_owned : (s2Step68HeadGRow.sign::s2Step68HeadGRow.payload).toFinset⊆s2Step68HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<830) ∨ (831≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68HeadG_reserved : s2Step68HeadGBefore.reserve s2Step68HeadGFresh.toFinset=some s2Step68HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step68HeadGFresh,arenaWires]
  · norm_num [s2Step68HeadGBefore,s2Step68HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step68HeadGAfter,s2Step68HeadGBefore,s2Step68HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step68HeadG_checked : planRowResizeLog s2Step68HeadGBefore s2Step68HeadGRow 235 s2Step68HeadGFresh=
    some (s2Step68HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830],769⟩,growRow 769 s2Step68HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step68HeadGBefore s2Step68HeadGAfter s2Step68HeadGRow 235 s2Step68HeadGFresh
    s2Step68HeadG_distinct s2Step68HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step68HeadG_reserved
  have rowEq : WindowRow.mk (s2Step68HeadGRow.payload++s2Step68HeadGFresh) s2Step68HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 830],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step68HeadGvBefore : Arena := s2Step68HeadFAfter

private theorem s2Step68HeadGv_Incoming : rowsOwned s2Step68HeadGvBefore [s2Step68HeadGvRow,s2Step68HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step68HeadGRow,s2Step68HeadFRow,s2Step68HeadGvRow,s2Step68HeadFvRow] 2 s2Step68HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step68HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step68HeadGv_Outgoing : rowsOwned s2Step68HeadFvAfter [s2Step68HeadGvOut,s2Step68HeadFvOut] :=
  hmrRows_owned_drop s2Step68HeadFvAfter [s2Step68HeadGOut,s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut] 2 s2Step68HeadBank_outgoingOwned

private theorem s2Step68HeadGv_distinct : (s2Step68HeadGvRow.sign::s2Step68HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step68HeadGv_owned : (s2Step68HeadGvRow.sign::s2Step68HeadGvRow.payload).toFinset⊆s2Step68HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step68HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step68HeadGv_reserved : s2Step68HeadGvBefore.reserve s2Step68HeadGvFresh.toFinset=some s2Step68HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step68HeadGvFresh,arenaWires]
  · norm_num [s2Step68HeadGvBefore,s2Step68HeadFAfter,s2Step68HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step68HeadGvAfter,s2Step68HeadGvBefore,s2Step68HeadFAfter,s2Step68HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step68HeadGv_checked : planRowResizeLog s2Step68HeadGvBefore s2Step68HeadGvRow 48 s2Step68HeadGvFresh=
    some (s2Step68HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 825],771⟩,growRow 771 s2Step68HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step68HeadGvBefore s2Step68HeadGvAfter s2Step68HeadGvRow 48 s2Step68HeadGvFresh
    s2Step68HeadGv_distinct s2Step68HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step68HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step68HeadGvRow.payload++s2Step68HeadGvFresh) s2Step68HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 831, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 825],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step68HeadBank_rows : planWindowRowsLog s2Step68HeadGBefore [(s2Step68HeadGRow,235),(s2Step68HeadFRow,235),(s2Step68HeadGvRow,48),(s2Step68HeadFvRow,48)] [s2Step68HeadGFresh,s2Step68HeadFFresh,s2Step68HeadGvFresh,s2Step68HeadFvFresh]=
    some (s2Step68HeadFvAfter,[s2Step68HeadGOut,s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut],(growRow 769 s2Step68HeadGFresh ++ (growRow 768 s2Step68HeadFFresh ++ (growRow 771 s2Step68HeadGvFresh ++ (growRow 770 s2Step68HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step68HeadFvAfter [] []=some (s2Step68HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step68HeadFvBefore s2Step68HeadFvAfter s2Step68HeadFvAfter
    s2Step68HeadFvRow s2Step68HeadFvOut 48 s2Step68HeadFvFresh [] [] []
    (growRow 770 s2Step68HeadFvFresh) ([]) s2Step68HeadFv_Incoming s2Step68HeadFv_checked h4 s2Step68HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step68HeadGvBefore s2Step68HeadGvAfter s2Step68HeadFvAfter
    s2Step68HeadGvRow s2Step68HeadGvOut 48 s2Step68HeadGvFresh [(s2Step68HeadFvRow,48)] [s2Step68HeadFvFresh] [s2Step68HeadFvOut]
    (growRow 771 s2Step68HeadGvFresh) ((growRow 770 s2Step68HeadFvFresh ++ [])) s2Step68HeadGv_Incoming s2Step68HeadGv_checked h3 s2Step68HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step68HeadFBefore s2Step68HeadFAfter s2Step68HeadFvAfter
    s2Step68HeadFRow s2Step68HeadFOut 235 s2Step68HeadFFresh [(s2Step68HeadGvRow,48),(s2Step68HeadFvRow,48)] [s2Step68HeadGvFresh,s2Step68HeadFvFresh] [s2Step68HeadGvOut,s2Step68HeadFvOut]
    (growRow 768 s2Step68HeadFFresh) ((growRow 771 s2Step68HeadGvFresh ++ (growRow 770 s2Step68HeadFvFresh ++ []))) s2Step68HeadF_Incoming s2Step68HeadF_checked h2 s2Step68HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step68HeadGBefore s2Step68HeadGAfter s2Step68HeadFvAfter
    s2Step68HeadGRow s2Step68HeadGOut 235 s2Step68HeadGFresh [(s2Step68HeadFRow,235),(s2Step68HeadGvRow,48),(s2Step68HeadFvRow,48)] [s2Step68HeadFFresh,s2Step68HeadGvFresh,s2Step68HeadFvFresh] [s2Step68HeadFOut,s2Step68HeadGvOut,s2Step68HeadFvOut]
    (growRow 769 s2Step68HeadGFresh) ((growRow 768 s2Step68HeadFFresh ++ (growRow 771 s2Step68HeadGvFresh ++ (growRow 770 s2Step68HeadFvFresh ++ [])))) s2Step68HeadG_Incoming s2Step68HeadG_checked h1 s2Step68HeadG_Outgoing
  exact h0

private theorem s2Step68HeadBank_checked : compileHmrBankResizeLog .headroom s2Step68HeadGBefore ⟨s2Step68HeadFRow,s2Step68HeadGRow,s2Step68HeadFvRow,s2Step68HeadGvRow⟩ ⟨235,235,48,48⟩ [s2Step68HeadGFresh,s2Step68HeadFFresh,s2Step68HeadGvFresh,s2Step68HeadFvFresh]=
    some (s2Step68HeadFvAfter,⟨s2Step68HeadFOut,s2Step68HeadGOut,s2Step68HeadFvOut,s2Step68HeadGvOut⟩,(growRow 769 s2Step68HeadGFresh ++ (growRow 768 s2Step68HeadFFresh ++ (growRow 771 s2Step68HeadGvFresh ++ (growRow 770 s2Step68HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step68HeadBank_rows]
  rfl

private theorem s2Step68Front_checked : compileHmrSourceFrontLog s2Step68EntryFBefore s2Step68FrontBank 234 47 ⟨234,233,47,47⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step68FrontLog=some s2Step68FrontPlan := by
  have pairEq : s2Step68FrontPair=⟨s2Step68HeadFRow,s2Step68HeadGRow,s2Step68HeadFvRow,s2Step68HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step68FrontHead=⟨s2Step68ExitFRow,s2Step68ExitGRow,s2Step68ExitFvRow,s2Step68ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step68Add0A=s2Step68FrontHead.f.wires := by decide +kernel
  have gEq : s2Step68Add0B=s2Step68FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step68Add1A=s2Step68FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step68Add1B=s2Step68FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step68EntryFBefore s2Step68FrontBank 234 47 ⟨234,233,47,47⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step68FrontLog s2Step68FrontPlan
  · exact s2Step68Front_entry
  · exact s2Step68EntryBank_checked
  · exact s2Step68Front_sigma
  · rfl
  · exact s2Step68Front_branch
  · rfl
  · simpa only [s2Step68FrontPlan,pairEq] using s2Step68HeadBank_checked
  · simpa only [s2Step68FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step68F4_checked
  · exact s2Step68Counter_checked
  · rfl
  · simpa only [s2Step68FrontPlan,headEq] using s2Step68ExitBank_checked

private theorem s2Step68Complete_explicit_checked : compileHmrEarlyStepLog s2Step68EntryFBefore s2Step68FrontBank 234 47 ⟨234,233,47,47⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step68CompleteLog=some s2Step68CompletePlan := by
  let Q := s2Step68EarlyControlPlan
  have hq := s2Step68EarlyControl_plan_checked
  have fv1 : s2Step68CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step68CompleteOut.fv.payload[2]?.getD s2Step68CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step68CompleteOut.fv.payload[3]?.getD s2Step68CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step68CompleteOut.fv.payload[4]?.getD s2Step68CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step68EntryFBefore s2Step68EarlyControlArena s2Step68FrontBank 234 47 ⟨234,233,47,47⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step68CompleteLog s2Step68FrontPlan Q
    s2Step68Front_checked s2Step68Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step68Complete_owned s2Step68Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step68EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 s2Step68CompleteOut.fv.second (s2Step68CompleteOut.fv.payload[2]?.getD s2Step68CompleteOut.fv.sign) (s2Step68CompleteOut.fv.payload[3]?.getD s2Step68CompleteOut.fv.sign) (s2Step68CompleteOut.fv.payload[4]?.getD s2Step68CompleteOut.fv.sign) 829 30 s2Step68EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep68Arena : Arena := s2Step68EntryFBefore
def s2PrivateStep68Bank : WindowBank := s2Step68FrontBank
def s2PrivateStep68Spec : HmrSourceWalkStepLog := ⟨234,47,⟨234,233,47,47⟩,30,.early s2Step68CompleteLog⟩
def s2PrivateStep68Plan : HmrSourceStepPlan := .early s2Step68CompletePlan
theorem s2PrivateStep68_source : s2PrivateStep68Spec=s2ObservedLogs64[4] := rfl
theorem s2PrivateStep68_checked : compileHmrSourceStepLog s2PrivateStep68Arena s2PrivateStep68Bank
    s2PrivateStep68Spec.fgWidth s2PrivateStep68Spec.vWidth s2PrivateStep68Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 68 s2PrivateStep68Spec.need none s2PrivateStep68Spec.log=some s2PrivateStep68Plan := by
  change compileHmrSourceStepLog s2Step68EntryFBefore s2Step68FrontBank 234 47 ⟨234,233,47,47⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 68 30 none (.early s2Step68CompleteLog)=some (.early s2Step68CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 68<498)]
  rw [s2Step68Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
