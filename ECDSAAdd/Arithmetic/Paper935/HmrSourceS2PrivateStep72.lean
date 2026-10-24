import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep70
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

private def s2Step72CompleteMoves : List (Wire × Wire) := []

private def s2Step72EarlyControlLog : HmrEarlyControlLog := ⟨[831, 816, 814, 845, 829],[827],[834],[844, 826, 846, 847, 849, 851],[]⟩

private def s2Step72FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [834, 844], [], [837, 831]],[[826], [827], [816], [845]],[[], [], [], []]⟩,[822],[835],[846],[847],[849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920],[846, 847, 849, 851]⟩

private def s2Step72CompleteLog : HmrEarlyStepLog := ⟨s2Step72FrontLog,s2Step72CompleteMoves,s2Step72EarlyControlLog⟩

private def s2Step72ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step72ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step72ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step72ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837],771⟩

private def s2Step72FrontOut : WindowBank := ⟨s2Step72ExitFOut,s2Step72ExitGOut,s2Step72ExitFvOut,s2Step72ExitGvOut⟩

private def s2Step72CompleteOut : WindowBank := s2Step72FrontOut.repacked s2Step72CompleteMoves

private def s2Step72EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step72EarlyControlPositiveArena,[827],s2Step72EarlyControlEqualityArena,[834],⟨⟨822,false⟩,[⟨⟨827,false⟩,834⟩]⟩⟩

private def s2Step72EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,831⟩,⟨⟨774,false⟩,816⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,845⟩,⟨⟨777,false⟩,829⟩]⟩

private def s2Step72EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step72EarlyControlZeroArena,s2Step72EarlyControlZeroPlan,s2Step72EarlyControlClassPlan,s2Step72EarlyControlFlagArena,s2Step72EarlyControlFittedArena,s2Step72EarlyControlHistoryArena,s2Step72EarlyControlSigmaArena,s2Step72EarlyControlOutputArena,s2Step72EarlyControlLog⟩

private def s2Step72CounterWork : List Wire := [846, 847, 849, 851]

private theorem s2Step72Counter_bounded : s2Step72CounterWork.toFinset⊆arenaWires := by norm_num [s2Step72CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step72HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72CounterDuring : Arena := ⟨s2Step72HeadFvAfter.live∪s2Step72CounterWork.toFinset,Finset.union_subset s2Step72HeadFvAfter.bounded s2Step72Counter_bounded⟩

private def s2Step72EntryFFresh : List Wire := []

private def s2Step72EntryFvFresh : List Wire := []

private def s2Step72EntryGFresh : List Wire := [834, 844]

private def s2Step72EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EntryGvFresh : List Wire := [837, 831]

private def s2Step72ExitFExtra : List Wire := [829, 827]

private def s2Step72ExitFvExtra : List Wire := [814, 845]

private def s2Step72ExitGExtra : List Wire := [834, 844, 826]

private def s2Step72ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72ExitGvExtra : List Wire := [831, 816]

private def s2Step72Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72Add0Work : List Wire := [849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step72Add0_bounded : s2Step72Add0Work.toFinset⊆arenaWires := by
  have h : s2Step72Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step72Add0During : Arena := ⟨s2Step72Add0Arena.live∪s2Step72Add0Work.toFinset,Finset.union_subset s2Step72Add0Arena.bounded s2Step72Add0_bounded⟩

private def s2Step72Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72Add1Work : List Wire := [849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920]

private theorem s2Step72Add1_bounded : s2Step72Add1Work.toFinset⊆arenaWires := by
  have h : s2Step72Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step72Add1During : Arena := ⟨s2Step72Add1Arena.live∪s2Step72Add1Work.toFinset,Finset.union_subset s2Step72Add1Arena.bounded s2Step72Add1_bounded⟩

private def s2Step72F4FlagArena : Arena := ⟨s2Step72HeadFvAfter.live∪{846},Finset.union_subset s2Step72HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step72F4Plan : HmrHybridF4Plan := ⟨s2Step72F4FlagArena,[846],s2Step72Add0Arena,[847],s2Step72Add0During,s2Step72Add0Work,s2Step72Add1During,s2Step72Add1Work⟩

private def s2Step72HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829, 827],768⟩

private def s2Step72HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814, 845],770⟩

private def s2Step72HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844, 826],769⟩

private def s2Step72HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831, 816],771⟩

private def s2Step72FrontHead : WindowBank := ⟨s2Step72HeadFOut,s2Step72HeadGOut,s2Step72HeadFvOut,s2Step72HeadGvOut⟩

private def s2Step72EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩

private def s2Step72EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩

private def s2Step72EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844],769⟩

private def s2Step72EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831],771⟩

private def s2Step72FrontPair : WindowBank := ⟨s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut⟩

private def s2Step72FrontSigmaArena : Arena := ⟨s2Step72EntryGvAfter.live∪{822},Finset.union_subset s2Step72EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step72HeadFFresh : List Wire := [827]

private def s2Step72HeadFvFresh : List Wire := [845]

private def s2Step72HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72HeadGFresh : List Wire := [826]

private def s2Step72HeadGvFresh : List Wire := [816]

private def s2Step72FrontPlan : HmrSourceFront := ⟨s2Step72EntryGvAfter,s2Step72FrontPair,(growRow 768 s2Step72EntryFFresh ++ (growRow 769 s2Step72EntryGFresh ++ (growRow 770 s2Step72EntryFvFresh ++ (growRow 771 s2Step72EntryGvFresh ++ [])))),s2Step72FrontSigmaArena,[822],s2Step72HeadGBefore,[835],
  s2Step72HeadFvAfter,s2Step72FrontHead,(growRow 769 s2Step72HeadGFresh ++ (growRow 768 s2Step72HeadFFresh ++ (growRow 771 s2Step72HeadGvFresh ++ (growRow 770 s2Step72HeadFvFresh ++ [])))),s2Step72F4Plan,s2Step72CounterDuring,s2Step72CounterWork,s2Step72ExitGvAfter,s2Step72FrontOut,(shrinkRow 769 s2Step72ExitGExtra ++ (shrinkRow 768 s2Step72ExitFExtra ++ (shrinkRow 770 s2Step72ExitFvExtra ++ (shrinkRow 771 s2Step72ExitGvExtra ++ []))))⟩

private def s2Step72CompletePlan : HmrEarlyStepPlan := ⟨s2Step72FrontPlan,s2Step72EarlyControlArena,s2Step72EarlyControlPlan,s2Step72CompleteMoves⟩

private theorem s2Step72Complete_apart : List.Disjoint (s2Step72CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [822, 835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step72CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[822, 835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step72Complete_owned : (s2Step72CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72Complete_repack : s2Step72ExitGvAfter.checkRepack s2Step72CompleteMoves=some s2Step72EarlyControlArena := by rfl

private theorem s2Step72EarlyControl_branchOwned : ([835] : List Wire).toFinset⊆s2Step72EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlSigmaArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_branch : compileHmrBranchRetirement s2Step72EarlyControlSigmaArena 835=some s2Step72EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step72EarlyControl_branchOwned
  · ext q
    simp [s2Step72EarlyControlOutputArena,s2Step72EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step72EarlyControl_classEqualityBorrow : s2Step72EarlyControlPositiveArena.checkBorrow (([822, 827] : List Wire).length-1) s2Step72EarlyControlLog.classWork=some s2Step72EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step72EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step72EarlyControlEqualityArena,s2Step72EarlyControlPositiveArena,s2Step72EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step72EarlyControl_classEqualityOwned : ([822, 827] : List Wire).toFinset⊆s2Step72EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlPositiveArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_classEquality : compileHmrEqualityLog s2Step72EarlyControlPositiveArena [822, 827] 0 s2Step72EarlyControlLog.classWork=some (s2Step72EarlyControlEqualityArena,s2Step72EarlyControlLog.classWork,s2Step72EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step72EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step72EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step72EarlyControl_classOwned : ([777, 829, 822] : List Wire).toFinset⊆s2Step72EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_positiveBorrow : s2Step72EarlyControlZeroArena.checkBorrow (1) s2Step72EarlyControlLog.positiveWork=some s2Step72EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step72EarlyControlZeroArena (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step72EarlyControlPositiveArena,s2Step72EarlyControlZeroArena,s2Step72EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step72EarlyControl_class : compileHmrSourceClassLog s2Step72EarlyControlZeroArena false 777 s2Step72EarlyControlZeroPlan.top 0 822 s2Step72EarlyControlLog.positiveWork s2Step72EarlyControlLog.classWork=some s2Step72EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step72EarlyControlClassPlan s2Step72EarlyControlZeroArena false 777 s2Step72EarlyControlZeroPlan.top 0 822
  constructor
  · decide +kernel
  · exact s2Step72EarlyControl_classOwned
  · exact s2Step72EarlyControl_positiveBorrow
  · exact s2Step72EarlyControl_classEquality

private theorem s2Step72EarlyControl_entryRecordOwned : ([835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_entrySigmaOwned : ([822, 254] : List Wire).toFinset⊆s2Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_fitBorrow : s2Step72EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step72EarlyControlLog.recordFresh=some s2Step72EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step72EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step72EarlyControlFittedArena,s2Step72EarlyControlFlagArena,s2Step72EarlyControlLog,arenaWires]

private theorem s2Step72EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step72EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_fit : compileHmrRecordGrowLog s2Step72EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step72EarlyControlLog.recordFresh=some s2Step72EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step72EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step72EarlyControl_fitBorrow

private theorem s2Step72EarlyControl_flagsBorrow : s2Step72EarlyControlEqualityArena.checkBorrow (6) s2Step72EarlyControlLog.flagWork=some s2Step72EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step72EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step72EarlyControlFlagArena,s2Step72EarlyControlEqualityArena,s2Step72EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step72EarlyControl_flagsOwned : ([834, 253, 252, 251] : List Wire).toFinset⊆s2Step72EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlEqualityArena (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_flags : compileHmrFlagsLog s2Step72EarlyControlClassPlan.equalityArena s2Step72EarlyControlClassPlan.equality.top 253 252 251 s2Step72EarlyControlLog.flagWork=some s2Step72EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step72EarlyControl_flagsOwned⟩
  · exact s2Step72EarlyControl_flagsBorrow

private theorem s2Step72EarlyControl_historyBorrow : s2Step72EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step72EarlyControlLog.recordFresh=some s2Step72EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step72EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step72EarlyControlHistoryArena,s2Step72EarlyControlArena,s2Step72EarlyControlLog,arenaWires]

private theorem s2Step72EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_history : compileHmrRecordGrowLog s2Step72EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step72EarlyControlLog.recordFresh=some s2Step72EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step72EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step72EarlyControl_historyBorrow

private theorem s2Step72EarlyControl_sigmaOwned : ([254, 822] : List Wire).toFinset⊆s2Step72EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_sigmaReleaseOwned : ([822] : List Wire).toFinset⊆s2Step72EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_sigmaRelease : s2Step72EarlyControlHistoryArena.release {822} (fun _ => false)=some s2Step72EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step72EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step72EarlyControlSigmaArena,s2Step72EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step72EarlyControl_sigma : compileHmrSigmaDropLog s2Step72EarlyControlHistoryArena false 0 0 254 822 []=some s2Step72EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step72EarlyControl_sigmaOwned⟩
  · exact s2Step72EarlyControl_sigmaRelease

private theorem s2Step72EarlyControl_zeroBorrow : s2Step72EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step72EarlyControlLog.zeroWork=some s2Step72EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step72EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step72EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step72EarlyControlZeroArena,s2Step72EarlyControlArena,s2Step72EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step72EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step72EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step72EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EarlyControl_zero : compileHmrEqualityLog s2Step72EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step72EarlyControlLog.zeroWork=some (s2Step72EarlyControlZeroArena,s2Step72EarlyControlLog.zeroWork,s2Step72EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step72EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step72EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step72EarlyControl_logged : s2Step72EarlyControlPlan.Logged s2Step72EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 822 254 253 252 251 835 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step72EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step72EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step72EarlyControl_zero
  · exact s2Step72EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step72EarlyControl_flags
  · exact s2Step72EarlyControl_fit
  · exact s2Step72EarlyControl_history
  · exact s2Step72EarlyControl_sigma
  · exact s2Step72EarlyControl_branch

private theorem s2Step72EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step72EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 822 254 253 252 251 835 30 s2Step72EarlyControlLog=some s2Step72EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step72EarlyControlPlan s2Step72EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 822 254 253 252 251 835 30 s2Step72EarlyControl_logged

private def s2Step72EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩

private def s2Step72EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩

private def s2Step72EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230],769⟩

private def s2Step72EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832],771⟩

private def s2Step72FrontBank : WindowBank := ⟨s2Step72EntryFRow,s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow⟩

private def s2Step72Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829, 827, 768]

private def s2Step72Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844, 826, 769]

private def s2Step72Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814, 845, 770]

private def s2Step72Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831, 816, 771]

private theorem s2Step72Counter_apart : Disjoint s2Step72HeadFvAfter.live s2Step72CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step72HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72Counter_borrowed : s2Step72HeadFvAfter.checkBorrow 4 s2Step72CounterWork=some s2Step72CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step72HeadFvAfter s2Step72CounterDuring s2Step72CounterWork.toFinset s2Step72Counter_bounded s2Step72Counter_apart rfl

private theorem s2Step72Counter_owned : (822::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step72HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step72HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72Counter_checked : compileHmrCounterStepLog s2Step72HeadFvAfter true 822 [772, 773, 774, 775, 776, 777] s2Step72CounterWork=some s2Step72CounterDuring := by
  have owned : ∀q∈822::[772, 773, 774, 775, 776, 777],q∈s2Step72HeadFvAfter.live := fun q hq => s2Step72Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step72Counter_borrowed

private def s2Step72EntryFAfter : Arena := s2Step72EntryFBefore

private theorem s2Step72EntryBank_incomingDistinct : ([s2Step72EntryFRow,s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72EntryF_Incoming : rowsOwned s2Step72EntryFBefore [s2Step72EntryFRow,s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72EntryFRow,s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow] 0 s2Step72EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72EntryFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72EntryBank_outgoingOwned : rowsOwned s2Step72EntryGvAfter [s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step72EntryGvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72EntryF_Outgoing : rowsOwned s2Step72EntryGvAfter [s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut] :=
  hmrRows_owned_drop s2Step72EntryGvAfter [s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut] 0 s2Step72EntryBank_outgoingOwned

private theorem s2Step72EntryF_distinct : (s2Step72EntryFRow.sign::s2Step72EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72EntryF_owned : (s2Step72EntryFRow.sign::s2Step72EntryFRow.payload).toFinset⊆s2Step72EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72EntryFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EntryF_reserved : s2Step72EntryFBefore.reserve s2Step72EntryFFresh.toFinset=some s2Step72EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step72EntryFFresh,arenaWires]
  · norm_num [s2Step72EntryFBefore,s2Step72EntryFFresh,arenaWires]
  · simp only [s2Step72EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step72EntryF_checked : planRowResizeLog s2Step72EntryFBefore s2Step72EntryFRow 233 s2Step72EntryFFresh=
    some (s2Step72EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩,growRow 768 s2Step72EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step72EntryFBefore s2Step72EntryFAfter s2Step72EntryFRow 233 s2Step72EntryFFresh
    s2Step72EntryF_distinct s2Step72EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step72EntryF_reserved
  have rowEq : WindowRow.mk (s2Step72EntryFRow.payload++s2Step72EntryFFresh) s2Step72EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step72EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72EntryFvAfter : Arena := s2Step72EntryGAfter

private def s2Step72EntryFvBefore : Arena := s2Step72EntryGAfter

private theorem s2Step72EntryFv_Incoming : rowsOwned s2Step72EntryFvBefore [s2Step72EntryFvRow,s2Step72EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72EntryFRow,s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow] 2 s2Step72EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72EntryFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72EntryFv_Outgoing : rowsOwned s2Step72EntryGvAfter [s2Step72EntryFvOut,s2Step72EntryGvOut] :=
  hmrRows_owned_drop s2Step72EntryGvAfter [s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut] 2 s2Step72EntryBank_outgoingOwned

private theorem s2Step72EntryFv_distinct : (s2Step72EntryFvRow.sign::s2Step72EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72EntryFv_owned : (s2Step72EntryFvRow.sign::s2Step72EntryFvRow.payload).toFinset⊆s2Step72EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72EntryFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EntryFv_reserved : s2Step72EntryFvBefore.reserve s2Step72EntryFvFresh.toFinset=some s2Step72EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step72EntryFvFresh,arenaWires]
  · norm_num [s2Step72EntryFvBefore,s2Step72EntryGAfter,s2Step72EntryFvFresh,arenaWires]
  · simp only [s2Step72EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step72EntryFv_checked : planRowResizeLog s2Step72EntryFvBefore s2Step72EntryFvRow 50 s2Step72EntryFvFresh=
    some (s2Step72EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩,growRow 770 s2Step72EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step72EntryFvBefore s2Step72EntryFvAfter s2Step72EntryFvRow 50 s2Step72EntryFvFresh
    s2Step72EntryFv_distinct s2Step72EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step72EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step72EntryFvRow.payload++s2Step72EntryFvFresh) s2Step72EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step72EntryGBefore : Arena := s2Step72EntryFBefore

private theorem s2Step72EntryG_Incoming : rowsOwned s2Step72EntryGBefore [s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72EntryFRow,s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow] 1 s2Step72EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72EntryGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72EntryG_Outgoing : rowsOwned s2Step72EntryGvAfter [s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut] :=
  hmrRows_owned_drop s2Step72EntryGvAfter [s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut] 1 s2Step72EntryBank_outgoingOwned

private theorem s2Step72EntryG_distinct : (s2Step72EntryGRow.sign::s2Step72EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72EntryG_owned : (s2Step72EntryGRow.sign::s2Step72EntryGRow.payload).toFinset⊆s2Step72EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72EntryGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EntryG_reserved : s2Step72EntryGBefore.reserve s2Step72EntryGFresh.toFinset=some s2Step72EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step72EntryGFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step72EntryGBefore,s2Step72EntryFBefore,s2Step72EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step72EntryGAfter,s2Step72EntryGBefore,s2Step72EntryFBefore,s2Step72EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step72EntryG_checked : planRowResizeLog s2Step72EntryGBefore s2Step72EntryGRow 233 s2Step72EntryGFresh=
    some (s2Step72EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844],769⟩,growRow 769 s2Step72EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step72EntryGBefore s2Step72EntryGAfter s2Step72EntryGRow 233 s2Step72EntryGFresh
    s2Step72EntryG_distinct s2Step72EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step72EntryG_reserved
  have rowEq : WindowRow.mk (s2Step72EntryGRow.payload++s2Step72EntryGFresh) s2Step72EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step72EntryGvBefore : Arena := s2Step72EntryGAfter

private theorem s2Step72EntryGv_Incoming : rowsOwned s2Step72EntryGvBefore [s2Step72EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72EntryFRow,s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow] 3 s2Step72EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72EntryGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72EntryGv_Outgoing : rowsOwned s2Step72EntryGvAfter [s2Step72EntryGvOut] :=
  hmrRows_owned_drop s2Step72EntryGvAfter [s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut] 3 s2Step72EntryBank_outgoingOwned

private theorem s2Step72EntryGv_distinct : (s2Step72EntryGvRow.sign::s2Step72EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72EntryGv_owned : (s2Step72EntryGvRow.sign::s2Step72EntryGvRow.payload).toFinset⊆s2Step72EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72EntryGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72EntryGv_reserved : s2Step72EntryGvBefore.reserve s2Step72EntryGvFresh.toFinset=some s2Step72EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step72EntryGvFresh,arenaWires,Finset.insert_subset_iff]
  · norm_num [s2Step72EntryGvBefore,s2Step72EntryGAfter,s2Step72EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step72EntryGvAfter,s2Step72EntryGvBefore,s2Step72EntryGAfter,s2Step72EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step72EntryGv_checked : planRowResizeLog s2Step72EntryGvBefore s2Step72EntryGvRow 50 s2Step72EntryGvFresh=
    some (s2Step72EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831],771⟩,growRow 771 s2Step72EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step72EntryGvBefore s2Step72EntryGvAfter s2Step72EntryGvRow 50 s2Step72EntryGvFresh
    s2Step72EntryGv_distinct s2Step72EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step72EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step72EntryGvRow.payload++s2Step72EntryGvFresh) s2Step72EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step72EntryBank_rows : planWindowRowsLog s2Step72EntryFBefore [(s2Step72EntryFRow,233),(s2Step72EntryGRow,233),(s2Step72EntryFvRow,50),(s2Step72EntryGvRow,50)] [s2Step72EntryFFresh,s2Step72EntryGFresh,s2Step72EntryFvFresh,s2Step72EntryGvFresh]=
    some (s2Step72EntryGvAfter,[s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut],(growRow 768 s2Step72EntryFFresh ++ (growRow 769 s2Step72EntryGFresh ++ (growRow 770 s2Step72EntryFvFresh ++ (growRow 771 s2Step72EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step72EntryGvAfter [] []=some (s2Step72EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step72EntryGvBefore s2Step72EntryGvAfter s2Step72EntryGvAfter
    s2Step72EntryGvRow s2Step72EntryGvOut 50 s2Step72EntryGvFresh [] [] []
    (growRow 771 s2Step72EntryGvFresh) ([]) s2Step72EntryGv_Incoming s2Step72EntryGv_checked h4 s2Step72EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step72EntryFvBefore s2Step72EntryFvAfter s2Step72EntryGvAfter
    s2Step72EntryFvRow s2Step72EntryFvOut 50 s2Step72EntryFvFresh [(s2Step72EntryGvRow,50)] [s2Step72EntryGvFresh] [s2Step72EntryGvOut]
    (growRow 770 s2Step72EntryFvFresh) ((growRow 771 s2Step72EntryGvFresh ++ [])) s2Step72EntryFv_Incoming s2Step72EntryFv_checked h3 s2Step72EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step72EntryGBefore s2Step72EntryGAfter s2Step72EntryGvAfter
    s2Step72EntryGRow s2Step72EntryGOut 233 s2Step72EntryGFresh [(s2Step72EntryFvRow,50),(s2Step72EntryGvRow,50)] [s2Step72EntryFvFresh,s2Step72EntryGvFresh] [s2Step72EntryFvOut,s2Step72EntryGvOut]
    (growRow 769 s2Step72EntryGFresh) ((growRow 770 s2Step72EntryFvFresh ++ (growRow 771 s2Step72EntryGvFresh ++ []))) s2Step72EntryG_Incoming s2Step72EntryG_checked h2 s2Step72EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step72EntryFBefore s2Step72EntryFAfter s2Step72EntryGvAfter
    s2Step72EntryFRow s2Step72EntryFOut 233 s2Step72EntryFFresh [(s2Step72EntryGRow,233),(s2Step72EntryFvRow,50),(s2Step72EntryGvRow,50)] [s2Step72EntryGFresh,s2Step72EntryFvFresh,s2Step72EntryGvFresh] [s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut]
    (growRow 768 s2Step72EntryFFresh) ((growRow 769 s2Step72EntryGFresh ++ (growRow 770 s2Step72EntryFvFresh ++ (growRow 771 s2Step72EntryGvFresh ++ [])))) s2Step72EntryF_Incoming s2Step72EntryF_checked h1 s2Step72EntryF_Outgoing
  exact h0

private theorem s2Step72EntryBank_checked : compileHmrBankResizeLog .entry s2Step72EntryFBefore ⟨s2Step72EntryFRow,s2Step72EntryGRow,s2Step72EntryFvRow,s2Step72EntryGvRow⟩ ⟨233,233,50,50⟩ [s2Step72EntryFFresh,s2Step72EntryGFresh,s2Step72EntryFvFresh,s2Step72EntryGvFresh]=
    some (s2Step72EntryGvAfter,⟨s2Step72EntryFOut,s2Step72EntryGOut,s2Step72EntryFvOut,s2Step72EntryGvOut⟩,(growRow 768 s2Step72EntryFFresh ++ (growRow 769 s2Step72EntryGFresh ++ (growRow 770 s2Step72EntryFvFresh ++ (growRow 771 s2Step72EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step72EntryBank_rows]
  rfl

private def s2Step72ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72ExitFBefore : Arena := s2Step72ExitGAfter

private def s2Step72ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829, 827],768⟩

private def s2Step72ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814, 845],770⟩

private def s2Step72ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844, 826],769⟩

private def s2Step72ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831, 816],771⟩

private theorem s2Step72ExitBank_incomingDistinct : ([s2Step72ExitGRow,s2Step72ExitFRow,s2Step72ExitFvRow,s2Step72ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72ExitF_Incoming : rowsOwned s2Step72ExitFBefore [s2Step72ExitFRow,s2Step72ExitFvRow,s2Step72ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72ExitGRow,s2Step72ExitFRow,s2Step72ExitFvRow,s2Step72ExitGvRow] 1 s2Step72ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72ExitFBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72ExitBank_outgoingOwned : rowsOwned s2Step72ExitGvAfter [s2Step72ExitGOut,s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step72ExitGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72ExitF_Outgoing : rowsOwned s2Step72ExitGvAfter [s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut] :=
  hmrRows_owned_drop s2Step72ExitGvAfter [s2Step72ExitGOut,s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut] 1 s2Step72ExitBank_outgoingOwned

private theorem s2Step72ExitF_distinct : (s2Step72ExitFRow.sign::s2Step72ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72ExitF_owned : (s2Step72ExitFRow.sign::s2Step72ExitFRow.payload).toFinset⊆s2Step72ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72ExitFBefore (fun q => (0≤q ∧ q<826) ∨ (827≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72ExitF_retired : s2Step72ExitFBefore.retireSet s2Step72ExitFExtra.toFinset=s2Step72ExitFAfter := by
  unfold Arena.retireSet s2Step72ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step72ExitFBefore,s2Step72ExitGAfter,s2Step72ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step72ExitF_checked : planRowResizeLog s2Step72ExitFBefore s2Step72ExitFRow 232 []=
    some (s2Step72ExitFAfter,s2Step72ExitFOut,shrinkRow 768 s2Step72ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step72ExitFBefore s2Step72ExitFRow 232 s2Step72ExitF_distinct s2Step72ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step72ExitFRow.payload.take 232) s2Step72ExitFRow.sign=s2Step72ExitFOut := by decide +kernel
  have hi : s2Step72ExitFRow.payload.drop 232=s2Step72ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step72ExitF_retired] at result
  exact result

private def s2Step72ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72ExitFvBefore : Arena := s2Step72ExitFAfter

private theorem s2Step72ExitFv_Incoming : rowsOwned s2Step72ExitFvBefore [s2Step72ExitFvRow,s2Step72ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72ExitGRow,s2Step72ExitFRow,s2Step72ExitFvRow,s2Step72ExitGvRow] 2 s2Step72ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72ExitFvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72ExitFv_Outgoing : rowsOwned s2Step72ExitGvAfter [s2Step72ExitFvOut,s2Step72ExitGvOut] :=
  hmrRows_owned_drop s2Step72ExitGvAfter [s2Step72ExitGOut,s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut] 2 s2Step72ExitBank_outgoingOwned

private theorem s2Step72ExitFv_distinct : (s2Step72ExitFvRow.sign::s2Step72ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72ExitFv_owned : (s2Step72ExitFvRow.sign::s2Step72ExitFvRow.payload).toFinset⊆s2Step72ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72ExitFvBefore (fun q => (0≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (845≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72ExitFv_retired : s2Step72ExitFvBefore.retireSet s2Step72ExitFvExtra.toFinset=s2Step72ExitFvAfter := by
  unfold Arena.retireSet s2Step72ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step72ExitFvBefore,s2Step72ExitFAfter,s2Step72ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step72ExitFv_checked : planRowResizeLog s2Step72ExitFvBefore s2Step72ExitFvRow 49 []=
    some (s2Step72ExitFvAfter,s2Step72ExitFvOut,shrinkRow 770 s2Step72ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step72ExitFvBefore s2Step72ExitFvRow 49 s2Step72ExitFv_distinct s2Step72ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step72ExitFvRow.payload.take 49) s2Step72ExitFvRow.sign=s2Step72ExitFvOut := by decide +kernel
  have hi : s2Step72ExitFvRow.payload.drop 49=s2Step72ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step72ExitFv_retired] at result
  exact result

private def s2Step72ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step72ExitG_Incoming : rowsOwned s2Step72ExitGBefore [s2Step72ExitGRow,s2Step72ExitFRow,s2Step72ExitFvRow,s2Step72ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72ExitGRow,s2Step72ExitFRow,s2Step72ExitFvRow,s2Step72ExitGvRow] 0 s2Step72ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72ExitG_Outgoing : rowsOwned s2Step72ExitGvAfter [s2Step72ExitGOut,s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut] :=
  hmrRows_owned_drop s2Step72ExitGvAfter [s2Step72ExitGOut,s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut] 0 s2Step72ExitBank_outgoingOwned

private theorem s2Step72ExitG_distinct : (s2Step72ExitGRow.sign::s2Step72ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72ExitG_owned : (s2Step72ExitGRow.sign::s2Step72ExitGRow.payload).toFinset⊆s2Step72ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72ExitGBefore (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72ExitG_retired : s2Step72ExitGBefore.retireSet s2Step72ExitGExtra.toFinset=s2Step72ExitGAfter := by
  unfold Arena.retireSet s2Step72ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step72ExitGBefore,s2Step72ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step72ExitG_checked : planRowResizeLog s2Step72ExitGBefore s2Step72ExitGRow 231 []=
    some (s2Step72ExitGAfter,s2Step72ExitGOut,shrinkRow 769 s2Step72ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step72ExitGBefore s2Step72ExitGRow 231 s2Step72ExitG_distinct s2Step72ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step72ExitGRow.payload.take 231) s2Step72ExitGRow.sign=s2Step72ExitGOut := by decide +kernel
  have hi : s2Step72ExitGRow.payload.drop 231=s2Step72ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step72ExitG_retired] at result
  exact result

private def s2Step72ExitGvBefore : Arena := s2Step72ExitFvAfter

private theorem s2Step72ExitGv_Incoming : rowsOwned s2Step72ExitGvBefore [s2Step72ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72ExitGRow,s2Step72ExitFRow,s2Step72ExitFvRow,s2Step72ExitGvRow] 3 s2Step72ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72ExitGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72ExitGv_Outgoing : rowsOwned s2Step72ExitGvAfter [s2Step72ExitGvOut] :=
  hmrRows_owned_drop s2Step72ExitGvAfter [s2Step72ExitGOut,s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut] 3 s2Step72ExitBank_outgoingOwned

private theorem s2Step72ExitGv_distinct : (s2Step72ExitGvRow.sign::s2Step72ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72ExitGv_owned : (s2Step72ExitGvRow.sign::s2Step72ExitGvRow.payload).toFinset⊆s2Step72ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72ExitGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72ExitGv_retired : s2Step72ExitGvBefore.retireSet s2Step72ExitGvExtra.toFinset=s2Step72ExitGvAfter := by
  unfold Arena.retireSet s2Step72ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step72ExitGvBefore,s2Step72ExitFvAfter,s2Step72ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step72ExitGv_checked : planRowResizeLog s2Step72ExitGvBefore s2Step72ExitGvRow 49 []=
    some (s2Step72ExitGvAfter,s2Step72ExitGvOut,shrinkRow 771 s2Step72ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step72ExitGvBefore s2Step72ExitGvRow 49 s2Step72ExitGv_distinct s2Step72ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step72ExitGvRow.payload.take 49) s2Step72ExitGvRow.sign=s2Step72ExitGvOut := by decide +kernel
  have hi : s2Step72ExitGvRow.payload.drop 49=s2Step72ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step72ExitGv_retired] at result
  exact result

private theorem s2Step72ExitBank_rows : planWindowRowsLog s2Step72ExitGBefore [(s2Step72ExitGRow,231),(s2Step72ExitFRow,232),(s2Step72ExitFvRow,49),(s2Step72ExitGvRow,49)] [[],[],[],[]]=
    some (s2Step72ExitGvAfter,[s2Step72ExitGOut,s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut],(shrinkRow 769 s2Step72ExitGExtra ++ (shrinkRow 768 s2Step72ExitFExtra ++ (shrinkRow 770 s2Step72ExitFvExtra ++ (shrinkRow 771 s2Step72ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step72ExitGvAfter [] []=some (s2Step72ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step72ExitGvBefore s2Step72ExitGvAfter s2Step72ExitGvAfter
    s2Step72ExitGvRow s2Step72ExitGvOut 49 [] [] [] []
    (shrinkRow 771 s2Step72ExitGvExtra) ([]) s2Step72ExitGv_Incoming s2Step72ExitGv_checked h4 s2Step72ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step72ExitFvBefore s2Step72ExitFvAfter s2Step72ExitGvAfter
    s2Step72ExitFvRow s2Step72ExitFvOut 49 [] [(s2Step72ExitGvRow,49)] [[]] [s2Step72ExitGvOut]
    (shrinkRow 770 s2Step72ExitFvExtra) ((shrinkRow 771 s2Step72ExitGvExtra ++ [])) s2Step72ExitFv_Incoming s2Step72ExitFv_checked h3 s2Step72ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step72ExitFBefore s2Step72ExitFAfter s2Step72ExitGvAfter
    s2Step72ExitFRow s2Step72ExitFOut 232 [] [(s2Step72ExitFvRow,49),(s2Step72ExitGvRow,49)] [[],[]] [s2Step72ExitFvOut,s2Step72ExitGvOut]
    (shrinkRow 768 s2Step72ExitFExtra) ((shrinkRow 770 s2Step72ExitFvExtra ++ (shrinkRow 771 s2Step72ExitGvExtra ++ []))) s2Step72ExitF_Incoming s2Step72ExitF_checked h2 s2Step72ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step72ExitGBefore s2Step72ExitGAfter s2Step72ExitGvAfter
    s2Step72ExitGRow s2Step72ExitGOut 231 [] [(s2Step72ExitFRow,232),(s2Step72ExitFvRow,49),(s2Step72ExitGvRow,49)] [[],[],[]] [s2Step72ExitFOut,s2Step72ExitFvOut,s2Step72ExitGvOut]
    (shrinkRow 769 s2Step72ExitGExtra) ((shrinkRow 768 s2Step72ExitFExtra ++ (shrinkRow 770 s2Step72ExitFvExtra ++ (shrinkRow 771 s2Step72ExitGvExtra ++ [])))) s2Step72ExitG_Incoming s2Step72ExitG_checked h1 s2Step72ExitG_Outgoing
  exact h0

private theorem s2Step72ExitBank_checked : compileHmrBankResizeLog .exit s2Step72ExitGBefore ⟨s2Step72ExitFRow,s2Step72ExitGRow,s2Step72ExitFvRow,s2Step72ExitGvRow⟩ ⟨232,231,49,49⟩ [[],[],[],[]]=
    some (s2Step72ExitGvAfter,⟨s2Step72ExitFOut,s2Step72ExitGOut,s2Step72ExitFvOut,s2Step72ExitGvOut⟩,(shrinkRow 769 s2Step72ExitGExtra ++ (shrinkRow 768 s2Step72ExitFExtra ++ (shrinkRow 770 s2Step72ExitFvExtra ++ (shrinkRow 771 s2Step72ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step72ExitBank_rows]
  rfl

private theorem s2Step72Add0_apart : Disjoint s2Step72Add0Arena.live s2Step72Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step72Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72Add0_card : s2Step72Add0Arena.live.card=870 := by
  decide +kernel

private theorem s2Step72Add0_borrowed : s2Step72Add0Arena.checkBorrow (hmrHybridCount s2Step72Add0Arena s2Step72Add0B.length) s2Step72Add0Work=some s2Step72Add0During := by
  have len : s2Step72Add0Work.length=hmrHybridCount s2Step72Add0Arena s2Step72Add0B.length := by
    rw [hmrHybridCount,s2Step72Add0_card]
    decide +kernel
  have nd : s2Step72Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step72Add0Arena s2Step72Add0During s2Step72Add0Work.toFinset s2Step72Add0_bounded s2Step72Add0_apart rfl

private theorem s2Step72Add0_distinct : (846::835::847::(s2Step72Add0A++s2Step72Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72Add0_owned : (846::835::847::(s2Step72Add0A++s2Step72Add0B)).toFinset⊆s2Step72Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step72Add0Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72Add0_checked : compileHmrHybridCinLog s2Step72Add0Arena 835 846 847 s2Step72Add0A s2Step72Add0B s2Step72Add0Work=some s2Step72Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step72Add0Arena s2Step72Add0During 835 846 847 s2Step72Add0A s2Step72Add0B s2Step72Add0Work
    (by decide +kernel) (by decide +kernel) s2Step72Add0_distinct
    (fun q hq => s2Step72Add0_owned (List.mem_toFinset.mpr hq)) s2Step72Add0_borrowed

private theorem s2Step72Add1_apart : Disjoint s2Step72Add1Arena.live s2Step72Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step72Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72Add1_card : s2Step72Add1Arena.live.card=870 := by
  decide +kernel

private theorem s2Step72Add1_borrowed : s2Step72Add1Arena.checkBorrow (hmrHybridCount s2Step72Add1Arena s2Step72Add1B.length) s2Step72Add1Work=some s2Step72Add1During := by
  have len : s2Step72Add1Work.length=hmrHybridCount s2Step72Add1Arena s2Step72Add1B.length := by
    rw [hmrHybridCount,s2Step72Add1_card]
    decide +kernel
  have nd : s2Step72Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step72Add1Arena s2Step72Add1During s2Step72Add1Work.toFinset s2Step72Add1_bounded s2Step72Add1_apart rfl

private theorem s2Step72Add1_distinct : (846::835::847::(s2Step72Add1A++s2Step72Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72Add1_owned : (846::835::847::(s2Step72Add1A++s2Step72Add1B)).toFinset⊆s2Step72Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step72Add1Arena (fun q => (0≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72Add1_checked : compileHmrHybridCinLog s2Step72Add1Arena 835 846 847 s2Step72Add1A s2Step72Add1B s2Step72Add1Work=some s2Step72Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step72Add1Arena s2Step72Add1During 835 846 847 s2Step72Add1A s2Step72Add1B s2Step72Add1Work
    (by decide +kernel) (by decide +kernel) s2Step72Add1_distinct
    (fun q hq => s2Step72Add1_owned (List.mem_toFinset.mpr hq)) s2Step72Add1_borrowed

private theorem s2Step72F4_apart : Disjoint (s2Step72Add0A++s2Step72Add0B).toFinset (s2Step72Add1A++s2Step72Add1B).toFinset := by
  have nd : ((s2Step72Add0A++s2Step72Add0B)++(s2Step72Add1A++s2Step72Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step72F4_carry : s2Step72F4FlagArena.checkBorrow 1 [847]=some s2Step72Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step72F4FlagArena,s2Step72HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step72F4FlagArena,s2Step72HeadFvAfter,s2Step72Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step72F4_distinct : (822::835::846::847::((s2Step72Add0A++s2Step72Add1A)++(s2Step72Add0B++s2Step72Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72F4_flag : s2Step72HeadFvAfter.checkBorrow 1 [846]=some s2Step72F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step72HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step72F4_owned : (822::835::((s2Step72Add0A++s2Step72Add1A)++(s2Step72Add0B++s2Step72Add1B))).toFinset⊆s2Step72HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step72HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72F4_checked : compileHmrHybridF4Log s2Step72HeadFvAfter 822 835 s2Step72Add0A s2Step72Add0B s2Step72Add1A s2Step72Add1B [846] [847] s2Step72Add0Work s2Step72Add1Work=some s2Step72F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step72HeadFvAfter s2Step72F4FlagArena s2Step72Add0Arena s2Step72Add0During s2Step72Add1During 822 835
    s2Step72Add0A s2Step72Add0B s2Step72Add1A s2Step72Add1B [846] [847] s2Step72Add0Work s2Step72Add1Work
    (fun q hq => s2Step72F4_owned (List.mem_toFinset.mpr hq)) s2Step72F4_flag s2Step72F4_carry
    s2Step72F4_distinct s2Step72F4_apart s2Step72Add0_checked s2Step72Add1_checked

private theorem s2Step72Front_branch : s2Step72FrontSigmaArena.checkBorrow 1 [835]=some s2Step72HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step72FrontSigmaArena,s2Step72EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step72FrontSigmaArena,s2Step72EntryGvAfter,s2Step72HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step72Front_entry : HmrFrontEntryValid s2Step72EntryFBefore s2Step72FrontBank 233 50 ⟨232,231,49,49⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step72FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step72EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step72EntryFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step72FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step72Front_sigma : s2Step72EntryGvAfter.checkBorrow 1 [822]=some s2Step72FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step72EntryGvAfter,arenaWires]
  · rfl

private def s2Step72HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72HeadFBefore : Arena := s2Step72HeadGAfter

private def s2Step72HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829],768⟩

private def s2Step72HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814],770⟩

private def s2Step72HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844],769⟩

private def s2Step72HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831],771⟩

private theorem s2Step72HeadBank_incomingDistinct : ([s2Step72HeadGRow,s2Step72HeadFRow,s2Step72HeadGvRow,s2Step72HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72HeadF_Incoming : rowsOwned s2Step72HeadFBefore [s2Step72HeadFRow,s2Step72HeadGvRow,s2Step72HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72HeadGRow,s2Step72HeadFRow,s2Step72HeadGvRow,s2Step72HeadFvRow] 1 s2Step72HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72HeadBank_outgoingOwned : rowsOwned s2Step72HeadFvAfter [s2Step72HeadGOut,s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step72HeadFvAfter (fun q => (0≤q ∧ q<846) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72HeadF_Outgoing : rowsOwned s2Step72HeadFvAfter [s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut] :=
  hmrRows_owned_drop s2Step72HeadFvAfter [s2Step72HeadGOut,s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut] 1 s2Step72HeadBank_outgoingOwned

private theorem s2Step72HeadF_distinct : (s2Step72HeadFRow.sign::s2Step72HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72HeadF_owned : (s2Step72HeadFRow.sign::s2Step72HeadFRow.payload).toFinset⊆s2Step72HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72HeadF_reserved : s2Step72HeadFBefore.reserve s2Step72HeadFFresh.toFinset=some s2Step72HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step72HeadFFresh,arenaWires]
  · norm_num [s2Step72HeadFBefore,s2Step72HeadGAfter,s2Step72HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step72HeadFAfter,s2Step72HeadFBefore,s2Step72HeadGAfter,s2Step72HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step72HeadF_checked : planRowResizeLog s2Step72HeadFBefore s2Step72HeadFRow 234 s2Step72HeadFFresh=
    some (s2Step72HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829, 827],768⟩,growRow 768 s2Step72HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step72HeadFBefore s2Step72HeadFAfter s2Step72HeadFRow 234 s2Step72HeadFFresh
    s2Step72HeadF_distinct s2Step72HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step72HeadF_reserved
  have rowEq : WindowRow.mk (s2Step72HeadFRow.payload++s2Step72HeadFFresh) s2Step72HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 829, 827],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step72HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step72HeadFvBefore : Arena := s2Step72HeadGvAfter

private theorem s2Step72HeadFv_Incoming : rowsOwned s2Step72HeadFvBefore [s2Step72HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72HeadGRow,s2Step72HeadFRow,s2Step72HeadGvRow,s2Step72HeadFvRow] 3 s2Step72HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72HeadFvBefore (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72HeadFv_Outgoing : rowsOwned s2Step72HeadFvAfter [s2Step72HeadFvOut] :=
  hmrRows_owned_drop s2Step72HeadFvAfter [s2Step72HeadGOut,s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut] 3 s2Step72HeadBank_outgoingOwned

private theorem s2Step72HeadFv_distinct : (s2Step72HeadFvRow.sign::s2Step72HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72HeadFv_owned : (s2Step72HeadFvRow.sign::s2Step72HeadFvRow.payload).toFinset⊆s2Step72HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72HeadFvBefore (fun q => (0≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72HeadFv_reserved : s2Step72HeadFvBefore.reserve s2Step72HeadFvFresh.toFinset=some s2Step72HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step72HeadFvFresh,arenaWires]
  · norm_num [s2Step72HeadFvBefore,s2Step72HeadGvAfter,s2Step72HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step72HeadFvAfter,s2Step72HeadFvBefore,s2Step72HeadGvAfter,s2Step72HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step72HeadFv_checked : planRowResizeLog s2Step72HeadFvBefore s2Step72HeadFvRow 51 s2Step72HeadFvFresh=
    some (s2Step72HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814, 845],770⟩,growRow 770 s2Step72HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step72HeadFvBefore s2Step72HeadFvAfter s2Step72HeadFvRow 51 s2Step72HeadFvFresh
    s2Step72HeadFv_distinct s2Step72HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step72HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step72HeadFvRow.payload++s2Step72HeadFvFresh) s2Step72HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 814, 845],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step72HeadG_Incoming : rowsOwned s2Step72HeadGBefore [s2Step72HeadGRow,s2Step72HeadFRow,s2Step72HeadGvRow,s2Step72HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72HeadGRow,s2Step72HeadFRow,s2Step72HeadGvRow,s2Step72HeadFvRow] 0 s2Step72HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72HeadG_Outgoing : rowsOwned s2Step72HeadFvAfter [s2Step72HeadGOut,s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut] :=
  hmrRows_owned_drop s2Step72HeadFvAfter [s2Step72HeadGOut,s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut] 0 s2Step72HeadBank_outgoingOwned

private theorem s2Step72HeadG_distinct : (s2Step72HeadGRow.sign::s2Step72HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72HeadG_owned : (s2Step72HeadGRow.sign::s2Step72HeadGRow.payload).toFinset⊆s2Step72HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72HeadGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72HeadG_reserved : s2Step72HeadGBefore.reserve s2Step72HeadGFresh.toFinset=some s2Step72HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step72HeadGFresh,arenaWires]
  · norm_num [s2Step72HeadGBefore,s2Step72HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step72HeadGAfter,s2Step72HeadGBefore,s2Step72HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step72HeadG_checked : planRowResizeLog s2Step72HeadGBefore s2Step72HeadGRow 234 s2Step72HeadGFresh=
    some (s2Step72HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844, 826],769⟩,growRow 769 s2Step72HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step72HeadGBefore s2Step72HeadGAfter s2Step72HeadGRow 234 s2Step72HeadGFresh
    s2Step72HeadG_distinct s2Step72HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step72HeadG_reserved
  have rowEq : WindowRow.mk (s2Step72HeadGRow.payload++s2Step72HeadGFresh) s2Step72HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 834, 844, 826],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step72HeadGvBefore : Arena := s2Step72HeadFAfter

private theorem s2Step72HeadGv_Incoming : rowsOwned s2Step72HeadGvBefore [s2Step72HeadGvRow,s2Step72HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step72HeadGRow,s2Step72HeadFRow,s2Step72HeadGvRow,s2Step72HeadFvRow] 2 s2Step72HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step72HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step72HeadGv_Outgoing : rowsOwned s2Step72HeadFvAfter [s2Step72HeadGvOut,s2Step72HeadFvOut] :=
  hmrRows_owned_drop s2Step72HeadFvAfter [s2Step72HeadGOut,s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut] 2 s2Step72HeadBank_outgoingOwned

private theorem s2Step72HeadGv_distinct : (s2Step72HeadGvRow.sign::s2Step72HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step72HeadGv_owned : (s2Step72HeadGvRow.sign::s2Step72HeadGvRow.payload).toFinset⊆s2Step72HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step72HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step72HeadGv_reserved : s2Step72HeadGvBefore.reserve s2Step72HeadGvFresh.toFinset=some s2Step72HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step72HeadGvFresh,arenaWires]
  · norm_num [s2Step72HeadGvBefore,s2Step72HeadFAfter,s2Step72HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step72HeadGvAfter,s2Step72HeadGvBefore,s2Step72HeadFAfter,s2Step72HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step72HeadGv_checked : planRowResizeLog s2Step72HeadGvBefore s2Step72HeadGvRow 51 s2Step72HeadGvFresh=
    some (s2Step72HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831, 816],771⟩,growRow 771 s2Step72HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step72HeadGvBefore s2Step72HeadGvAfter s2Step72HeadGvRow 51 s2Step72HeadGvFresh
    s2Step72HeadGv_distinct s2Step72HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step72HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step72HeadGvRow.payload++s2Step72HeadGvFresh) s2Step72HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 837, 831, 816],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step72HeadBank_rows : planWindowRowsLog s2Step72HeadGBefore [(s2Step72HeadGRow,234),(s2Step72HeadFRow,234),(s2Step72HeadGvRow,51),(s2Step72HeadFvRow,51)] [s2Step72HeadGFresh,s2Step72HeadFFresh,s2Step72HeadGvFresh,s2Step72HeadFvFresh]=
    some (s2Step72HeadFvAfter,[s2Step72HeadGOut,s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut],(growRow 769 s2Step72HeadGFresh ++ (growRow 768 s2Step72HeadFFresh ++ (growRow 771 s2Step72HeadGvFresh ++ (growRow 770 s2Step72HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step72HeadFvAfter [] []=some (s2Step72HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step72HeadFvBefore s2Step72HeadFvAfter s2Step72HeadFvAfter
    s2Step72HeadFvRow s2Step72HeadFvOut 51 s2Step72HeadFvFresh [] [] []
    (growRow 770 s2Step72HeadFvFresh) ([]) s2Step72HeadFv_Incoming s2Step72HeadFv_checked h4 s2Step72HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step72HeadGvBefore s2Step72HeadGvAfter s2Step72HeadFvAfter
    s2Step72HeadGvRow s2Step72HeadGvOut 51 s2Step72HeadGvFresh [(s2Step72HeadFvRow,51)] [s2Step72HeadFvFresh] [s2Step72HeadFvOut]
    (growRow 771 s2Step72HeadGvFresh) ((growRow 770 s2Step72HeadFvFresh ++ [])) s2Step72HeadGv_Incoming s2Step72HeadGv_checked h3 s2Step72HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step72HeadFBefore s2Step72HeadFAfter s2Step72HeadFvAfter
    s2Step72HeadFRow s2Step72HeadFOut 234 s2Step72HeadFFresh [(s2Step72HeadGvRow,51),(s2Step72HeadFvRow,51)] [s2Step72HeadGvFresh,s2Step72HeadFvFresh] [s2Step72HeadGvOut,s2Step72HeadFvOut]
    (growRow 768 s2Step72HeadFFresh) ((growRow 771 s2Step72HeadGvFresh ++ (growRow 770 s2Step72HeadFvFresh ++ []))) s2Step72HeadF_Incoming s2Step72HeadF_checked h2 s2Step72HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step72HeadGBefore s2Step72HeadGAfter s2Step72HeadFvAfter
    s2Step72HeadGRow s2Step72HeadGOut 234 s2Step72HeadGFresh [(s2Step72HeadFRow,234),(s2Step72HeadGvRow,51),(s2Step72HeadFvRow,51)] [s2Step72HeadFFresh,s2Step72HeadGvFresh,s2Step72HeadFvFresh] [s2Step72HeadFOut,s2Step72HeadGvOut,s2Step72HeadFvOut]
    (growRow 769 s2Step72HeadGFresh) ((growRow 768 s2Step72HeadFFresh ++ (growRow 771 s2Step72HeadGvFresh ++ (growRow 770 s2Step72HeadFvFresh ++ [])))) s2Step72HeadG_Incoming s2Step72HeadG_checked h1 s2Step72HeadG_Outgoing
  exact h0

private theorem s2Step72HeadBank_checked : compileHmrBankResizeLog .headroom s2Step72HeadGBefore ⟨s2Step72HeadFRow,s2Step72HeadGRow,s2Step72HeadFvRow,s2Step72HeadGvRow⟩ ⟨234,234,51,51⟩ [s2Step72HeadGFresh,s2Step72HeadFFresh,s2Step72HeadGvFresh,s2Step72HeadFvFresh]=
    some (s2Step72HeadFvAfter,⟨s2Step72HeadFOut,s2Step72HeadGOut,s2Step72HeadFvOut,s2Step72HeadGvOut⟩,(growRow 769 s2Step72HeadGFresh ++ (growRow 768 s2Step72HeadFFresh ++ (growRow 771 s2Step72HeadGvFresh ++ (growRow 770 s2Step72HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step72HeadBank_rows]
  rfl

private theorem s2Step72Front_checked : compileHmrSourceFrontLog s2Step72EntryFBefore s2Step72FrontBank 233 50 ⟨232,231,49,49⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step72FrontLog=some s2Step72FrontPlan := by
  have pairEq : s2Step72FrontPair=⟨s2Step72HeadFRow,s2Step72HeadGRow,s2Step72HeadFvRow,s2Step72HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step72FrontHead=⟨s2Step72ExitFRow,s2Step72ExitGRow,s2Step72ExitFvRow,s2Step72ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step72Add0A=s2Step72FrontHead.f.wires := by decide +kernel
  have gEq : s2Step72Add0B=s2Step72FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step72Add1A=s2Step72FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step72Add1B=s2Step72FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step72EntryFBefore s2Step72FrontBank 233 50 ⟨232,231,49,49⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step72FrontLog s2Step72FrontPlan
  · exact s2Step72Front_entry
  · exact s2Step72EntryBank_checked
  · exact s2Step72Front_sigma
  · rfl
  · exact s2Step72Front_branch
  · rfl
  · simpa only [s2Step72FrontPlan,pairEq] using s2Step72HeadBank_checked
  · simpa only [s2Step72FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step72F4_checked
  · exact s2Step72Counter_checked
  · rfl
  · simpa only [s2Step72FrontPlan,headEq] using s2Step72ExitBank_checked

private theorem s2Step72Complete_explicit_checked : compileHmrEarlyStepLog s2Step72EntryFBefore s2Step72FrontBank 233 50 ⟨232,231,49,49⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step72CompleteLog=some s2Step72CompletePlan := by
  let Q := s2Step72EarlyControlPlan
  have hq := s2Step72EarlyControl_plan_checked
  have fv1 : s2Step72CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step72CompleteOut.fv.payload[2]?.getD s2Step72CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step72CompleteOut.fv.payload[3]?.getD s2Step72CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step72CompleteOut.fv.payload[4]?.getD s2Step72CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step72EntryFBefore s2Step72EarlyControlArena s2Step72FrontBank 233 50 ⟨232,231,49,49⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step72CompleteLog s2Step72FrontPlan Q
    s2Step72Front_checked s2Step72Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step72Complete_owned s2Step72Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step72EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 822 s2Step72CompleteOut.fv.second (s2Step72CompleteOut.fv.payload[2]?.getD s2Step72CompleteOut.fv.sign) (s2Step72CompleteOut.fv.payload[3]?.getD s2Step72CompleteOut.fv.sign) (s2Step72CompleteOut.fv.payload[4]?.getD s2Step72CompleteOut.fv.sign) 835 30 s2Step72EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep72Arena : Arena := s2Step72EntryFBefore
def s2PrivateStep72Bank : WindowBank := s2Step72FrontBank
def s2PrivateStep72Spec : HmrSourceWalkStepLog := ⟨233,50,⟨232,231,49,49⟩,30,.early s2Step72CompleteLog⟩
def s2PrivateStep72Plan : HmrSourceStepPlan := .early s2Step72CompletePlan
theorem s2PrivateStep72_source : s2PrivateStep72Spec=s2ObservedLogs64[8] := rfl
theorem s2PrivateStep72_checked : compileHmrSourceStepLog s2PrivateStep72Arena s2PrivateStep72Bank
    s2PrivateStep72Spec.fgWidth s2PrivateStep72Spec.vWidth s2PrivateStep72Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 72 s2PrivateStep72Spec.need none s2PrivateStep72Spec.log=some s2PrivateStep72Plan := by
  change compileHmrSourceStepLog s2Step72EntryFBefore s2Step72FrontBank 233 50 ⟨232,231,49,49⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 72 30 none (.early s2Step72CompleteLog)=some (.early s2Step72CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 72<498)]
  rw [s2Step72Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
