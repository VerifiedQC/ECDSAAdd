import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep68
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

private def s2Step70CompleteMoves : List (Wire × Wire) := [(835,232),(834,744)]

private def s2Step70EarlyControlLog : HmrEarlyControlLog := ⟨[834, 835, 829, 822, 814],[826],[827],[816, 845, 846, 847, 849, 851],[]⟩

private def s2Step70FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [832]],[[814], [822], [829], [825]],[[], [], [], []]⟩,[844],[831],[826],[827],[816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914],[826, 827, 816, 845]⟩

private def s2Step70CompleteLog : HmrEarlyStepLog := ⟨s2Step70FrontLog,s2Step70CompleteMoves,s2Step70EarlyControlLog⟩

private def s2Step70ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743],768⟩

private def s2Step70ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step70ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231],769⟩

private def s2Step70ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832],771⟩

private def s2Step70FrontOut : WindowBank := ⟨s2Step70ExitFOut,s2Step70ExitGOut,s2Step70ExitFvOut,s2Step70ExitGvOut⟩

private def s2Step70CompleteOut : WindowBank := s2Step70FrontOut.repacked s2Step70CompleteMoves

private def s2Step70EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step70EarlyControlPositiveArena,[826],s2Step70EarlyControlEqualityArena,[827],⟨⟨844,false⟩,[⟨⟨826,false⟩,827⟩]⟩⟩

private def s2Step70EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,834⟩,⟨⟨774,false⟩,835⟩,⟨⟨775,false⟩,829⟩,⟨⟨776,false⟩,822⟩,⟨⟨777,false⟩,814⟩]⟩

private def s2Step70EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step70EarlyControlZeroArena,s2Step70EarlyControlZeroPlan,s2Step70EarlyControlClassPlan,s2Step70EarlyControlFlagArena,s2Step70EarlyControlFittedArena,s2Step70EarlyControlHistoryArena,s2Step70EarlyControlSigmaArena,s2Step70EarlyControlOutputArena,s2Step70EarlyControlLog⟩

private def s2Step70CounterWork : List Wire := [826, 827, 816, 845]

private theorem s2Step70Counter_bounded : s2Step70CounterWork.toFinset⊆arenaWires := by norm_num [s2Step70CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step70HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70CounterDuring : Arena := ⟨s2Step70HeadFvAfter.live∪s2Step70CounterWork.toFinset,Finset.union_subset s2Step70HeadFvAfter.bounded s2Step70Counter_bounded⟩

private def s2Step70EntryFFresh : List Wire := []

private def s2Step70EntryFvFresh : List Wire := []

private def s2Step70EntryGFresh : List Wire := []

private def s2Step70EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EntryGvFresh : List Wire := [832]

private def s2Step70ExitFExtra : List Wire := [744, 822]

private def s2Step70ExitGExtra : List Wire := [232, 814]

private def s2Step70ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<744) ∨ (745≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70ExitGvExtra : List Wire := [829]

private def s2Step70Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70Add0Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step70Add0_bounded : s2Step70Add0Work.toFinset⊆arenaWires := by
  have h : s2Step70Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step70Add0During : Arena := ⟨s2Step70Add0Arena.live∪s2Step70Add0Work.toFinset,Finset.union_subset s2Step70Add0Arena.bounded s2Step70Add0_bounded⟩

private def s2Step70Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70Add1Work : List Wire := [816, 845, 846, 847, 849, 851, 867, 873, 874, 875, 876, 877, 878, 879, 880, 881, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914]

private theorem s2Step70Add1_bounded : s2Step70Add1Work.toFinset⊆arenaWires := by
  have h : s2Step70Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step70Add1During : Arena := ⟨s2Step70Add1Arena.live∪s2Step70Add1Work.toFinset,Finset.union_subset s2Step70Add1Arena.bounded s2Step70Add1_bounded⟩

private def s2Step70F4FlagArena : Arena := ⟨s2Step70HeadFvAfter.live∪{826},Finset.union_subset s2Step70HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step70F4Plan : HmrHybridF4Plan := ⟨s2Step70F4FlagArena,[826],s2Step70Add0Arena,[827],s2Step70Add0During,s2Step70Add0Work,s2Step70Add1During,s2Step70Add1Work⟩

private def s2Step70HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 822],768⟩

private def s2Step70HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step70HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 814],769⟩

private def s2Step70HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 829],771⟩

private def s2Step70FrontHead : WindowBank := ⟨s2Step70HeadFOut,s2Step70HeadGOut,s2Step70HeadFvOut,s2Step70HeadGvOut⟩

private def s2Step70EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744],768⟩

private def s2Step70EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩

private def s2Step70EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],769⟩

private def s2Step70EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832],771⟩

private def s2Step70FrontPair : WindowBank := ⟨s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut⟩

private def s2Step70FrontSigmaArena : Arena := ⟨s2Step70EntryGvAfter.live∪{844},Finset.union_subset s2Step70EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step70HeadFFresh : List Wire := [822]

private def s2Step70HeadFvFresh : List Wire := [825]

private def s2Step70HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70HeadGFresh : List Wire := [814]

private def s2Step70HeadGvFresh : List Wire := [829]

private def s2Step70FrontPlan : HmrSourceFront := ⟨s2Step70EntryGvAfter,s2Step70FrontPair,(growRow 768 s2Step70EntryFFresh ++ (growRow 769 s2Step70EntryGFresh ++ (growRow 770 s2Step70EntryFvFresh ++ (growRow 771 s2Step70EntryGvFresh ++ [])))),s2Step70FrontSigmaArena,[844],s2Step70HeadGBefore,[831],
  s2Step70HeadFvAfter,s2Step70FrontHead,(growRow 769 s2Step70HeadGFresh ++ (growRow 768 s2Step70HeadFFresh ++ (growRow 771 s2Step70HeadGvFresh ++ (growRow 770 s2Step70HeadFvFresh ++ [])))),s2Step70F4Plan,s2Step70CounterDuring,s2Step70CounterWork,s2Step70ExitGvAfter,s2Step70FrontOut,(shrinkRow 769 s2Step70ExitGExtra ++ (shrinkRow 768 s2Step70ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step70ExitGvExtra ++ []))))⟩

private def s2Step70CompletePlan : HmrEarlyStepPlan := ⟨s2Step70FrontPlan,s2Step70EarlyControlArena,s2Step70EarlyControlPlan,s2Step70CompleteMoves⟩

private theorem s2Step70Complete_apart : List.Disjoint (s2Step70CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [844, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] := by
  have nd : ((s2Step70CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[844, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step70Complete_owned : (s2Step70CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step70EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private def s2Step70CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,744),(745,814),(815,816),(817,822),(823,826),(828,829),(830,835),(836,845),(848,849),(850,851),(852,867),(868,873)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step70CompleteRelocationMove0Borrowed : Arena := ⟨s2Step70ExitGvAfter.live∪{232},Finset.union_subset s2Step70ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step70CompleteRelocationMove1Borrowed : Arena := ⟨s2Step70CompleteRelocationMove0After.live∪{744},Finset.union_subset s2Step70CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step70CompleteRelocation_move0_owned : 835∈s2Step70ExitGvAfter.live := by norm_num [s2Step70ExitGvAfter,arenaWires]

private theorem s2Step70CompleteRelocation_move0_reserve : s2Step70ExitGvAfter.reserve {232}=some s2Step70CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step70ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step70CompleteRelocation_move0_retire : s2Step70CompleteRelocationMove0Borrowed.retireSet {835}=s2Step70CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step70CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step70CompleteRelocationMove0Borrowed,s2Step70ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step70CompleteRelocation_move1_owned : 834∈s2Step70CompleteRelocationMove0After.live := by norm_num [s2Step70CompleteRelocationMove0After,arenaWires]

private theorem s2Step70CompleteRelocation_move1_reserve : s2Step70CompleteRelocationMove0After.reserve {744}=some s2Step70CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step70CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step70CompleteRelocation_move1_retire : s2Step70CompleteRelocationMove1Borrowed.retireSet {834}=s2Step70EarlyControlArena := by
  unfold Arena.retireSet s2Step70EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step70CompleteRelocationMove1Borrowed,s2Step70CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step70CompleteRelocation_checked : s2Step70ExitGvAfter.checkRepack [(835,232),(834,744)]=some s2Step70EarlyControlArena := by
  have tail2 : s2Step70EarlyControlArena.checkRepack []=some s2Step70EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step70CompleteRelocationMove0After s2Step70CompleteRelocationMove1Borrowed s2Step70EarlyControlArena s2Step70EarlyControlArena 834 744 []
    s2Step70CompleteRelocation_move1_owned s2Step70CompleteRelocation_move1_reserve s2Step70CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step70ExitGvAfter s2Step70CompleteRelocationMove0Borrowed s2Step70CompleteRelocationMove0After s2Step70EarlyControlArena 835 232 [(834,744)]
    s2Step70CompleteRelocation_move0_owned s2Step70CompleteRelocation_move0_reserve s2Step70CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step70Complete_repack : s2Step70ExitGvAfter.checkRepack s2Step70CompleteMoves=some s2Step70EarlyControlArena := by
  simpa only [s2Step70CompleteMoves] using s2Step70CompleteRelocation_checked

private theorem s2Step70EarlyControl_branchOwned : ([831] : List Wire).toFinset⊆s2Step70EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlSigmaArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_branch : compileHmrBranchRetirement s2Step70EarlyControlSigmaArena 831=some s2Step70EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step70EarlyControl_branchOwned
  · ext q
    simp [s2Step70EarlyControlOutputArena,s2Step70EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step70EarlyControl_classEqualityBorrow : s2Step70EarlyControlPositiveArena.checkBorrow (([844, 826] : List Wire).length-1) s2Step70EarlyControlLog.classWork=some s2Step70EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step70EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step70EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step70EarlyControlEqualityArena,s2Step70EarlyControlPositiveArena,s2Step70EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step70EarlyControl_classEqualityOwned : ([844, 826] : List Wire).toFinset⊆s2Step70EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlPositiveArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<827) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_classEquality : compileHmrEqualityLog s2Step70EarlyControlPositiveArena [844, 826] 0 s2Step70EarlyControlLog.classWork=some (s2Step70EarlyControlEqualityArena,s2Step70EarlyControlLog.classWork,s2Step70EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step70EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step70EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step70EarlyControl_classOwned : ([777, 814, 844] : List Wire).toFinset⊆s2Step70EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_positiveBorrow : s2Step70EarlyControlZeroArena.checkBorrow (1) s2Step70EarlyControlLog.positiveWork=some s2Step70EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step70EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step70EarlyControlZeroArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step70EarlyControlPositiveArena,s2Step70EarlyControlZeroArena,s2Step70EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step70EarlyControl_class : compileHmrSourceClassLog s2Step70EarlyControlZeroArena false 777 s2Step70EarlyControlZeroPlan.top 0 844 s2Step70EarlyControlLog.positiveWork s2Step70EarlyControlLog.classWork=some s2Step70EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step70EarlyControlClassPlan s2Step70EarlyControlZeroArena false 777 s2Step70EarlyControlZeroPlan.top 0 844
  constructor
  · decide +kernel
  · exact s2Step70EarlyControl_classOwned
  · exact s2Step70EarlyControl_positiveBorrow
  · exact s2Step70EarlyControl_classEquality

private theorem s2Step70EarlyControl_entryRecordOwned : ([831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step70EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_entrySigmaOwned : ([844, 254] : List Wire).toFinset⊆s2Step70EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_fitBorrow : s2Step70EarlyControlFlagArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step70EarlyControlLog.recordFresh=some s2Step70EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step70EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step70EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step70EarlyControlFittedArena,s2Step70EarlyControlFlagArena,s2Step70EarlyControlLog,arenaWires]

private theorem s2Step70EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step70EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlFlagArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_fit : compileHmrRecordGrowLog s2Step70EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step70EarlyControlLog.recordFresh=some s2Step70EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step70EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step70EarlyControl_fitBorrow

private theorem s2Step70EarlyControl_flagsBorrow : s2Step70EarlyControlEqualityArena.checkBorrow (6) s2Step70EarlyControlLog.flagWork=some s2Step70EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step70EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step70EarlyControlEqualityArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step70EarlyControlFlagArena,s2Step70EarlyControlEqualityArena,s2Step70EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step70EarlyControl_flagsOwned : ([827, 253, 252, 251] : List Wire).toFinset⊆s2Step70EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlEqualityArena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_flags : compileHmrFlagsLog s2Step70EarlyControlClassPlan.equalityArena s2Step70EarlyControlClassPlan.equality.top 253 252 251 s2Step70EarlyControlLog.flagWork=some s2Step70EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step70EarlyControl_flagsOwned⟩
  · exact s2Step70EarlyControl_flagsBorrow

private theorem s2Step70EarlyControl_historyBorrow : s2Step70EarlyControlArena.checkBorrow ((30-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).length)) s2Step70EarlyControlLog.recordFresh=some s2Step70EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step70EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step70EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step70EarlyControlHistoryArena,s2Step70EarlyControlArena,s2Step70EarlyControlLog,arenaWires]

private theorem s2Step70EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] : List Wire).toFinset⊆s2Step70EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_history : compileHmrRecordGrowLog s2Step70EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step70EarlyControlLog.recordFresh=some s2Step70EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step70EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step70EarlyControl_historyBorrow

private theorem s2Step70EarlyControl_sigmaOwned : ([254, 844] : List Wire).toFinset⊆s2Step70EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_sigmaReleaseOwned : ([844] : List Wire).toFinset⊆s2Step70EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlHistoryArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_sigmaRelease : s2Step70EarlyControlHistoryArena.release {844} (fun _ => false)=some s2Step70EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step70EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step70EarlyControlSigmaArena,s2Step70EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step70EarlyControl_sigma : compileHmrSigmaDropLog s2Step70EarlyControlHistoryArena false 0 0 254 844 []=some s2Step70EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step70EarlyControl_sigmaOwned⟩
  · exact s2Step70EarlyControl_sigmaRelease

private theorem s2Step70EarlyControl_zeroBorrow : s2Step70EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step70EarlyControlLog.zeroWork=some s2Step70EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step70EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step70EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
      decide +kernel
    · ext q
      simp [s2Step70EarlyControlZeroArena,s2Step70EarlyControlArena,s2Step70EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step70EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step70EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step70EarlyControlArena (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (836≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EarlyControl_zero : compileHmrEqualityLog s2Step70EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step70EarlyControlLog.zeroWork=some (s2Step70EarlyControlZeroArena,s2Step70EarlyControlLog.zeroWork,s2Step70EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step70EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step70EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step70EarlyControl_logged : s2Step70EarlyControlPlan.Logged s2Step70EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 831 30 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step70EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step70EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step70EarlyControl_zero
  · exact s2Step70EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step70EarlyControl_flags
  · exact s2Step70EarlyControl_fit
  · exact s2Step70EarlyControl_history
  · exact s2Step70EarlyControl_sigma
  · exact s2Step70EarlyControl_branch

private theorem s2Step70EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step70EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 831 30 s2Step70EarlyControlLog=some s2Step70EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step70EarlyControlPlan s2Step70EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 254 253 252 251 831 30 s2Step70EarlyControl_logged

private def s2Step70EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744],768⟩

private def s2Step70EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩

private def s2Step70EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],769⟩

private def s2Step70EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824],771⟩

private def s2Step70FrontBank : WindowBank := ⟨s2Step70EntryFRow,s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow⟩

private def s2Step70Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 822, 768]

private def s2Step70Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 814, 769]

private def s2Step70Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825, 770]

private def s2Step70Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 829, 771]

private theorem s2Step70Counter_apart : Disjoint s2Step70HeadFvAfter.live s2Step70CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step70HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70Counter_borrowed : s2Step70HeadFvAfter.checkBorrow 4 s2Step70CounterWork=some s2Step70CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step70HeadFvAfter s2Step70CounterDuring s2Step70CounterWork.toFinset s2Step70Counter_bounded s2Step70Counter_apart rfl

private theorem s2Step70Counter_owned : (844::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step70HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step70HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70Counter_checked : compileHmrCounterStepLog s2Step70HeadFvAfter true 844 [772, 773, 774, 775, 776, 777] s2Step70CounterWork=some s2Step70CounterDuring := by
  have owned : ∀q∈844::[772, 773, 774, 775, 776, 777],q∈s2Step70HeadFvAfter.live := fun q hq => s2Step70Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step70Counter_borrowed

private def s2Step70EntryFAfter : Arena := s2Step70EntryFBefore

private theorem s2Step70EntryBank_incomingDistinct : ([s2Step70EntryFRow,s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70EntryF_Incoming : rowsOwned s2Step70EntryFBefore [s2Step70EntryFRow,s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70EntryFRow,s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow] 0 s2Step70EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70EntryBank_outgoingOwned : rowsOwned s2Step70EntryGvAfter [s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step70EntryGvAfter (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70EntryF_Outgoing : rowsOwned s2Step70EntryGvAfter [s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut] :=
  hmrRows_owned_drop s2Step70EntryGvAfter [s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut] 0 s2Step70EntryBank_outgoingOwned

private theorem s2Step70EntryF_distinct : (s2Step70EntryFRow.sign::s2Step70EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70EntryF_owned : (s2Step70EntryFRow.sign::s2Step70EntryFRow.payload).toFinset⊆s2Step70EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EntryF_reserved : s2Step70EntryFBefore.reserve s2Step70EntryFFresh.toFinset=some s2Step70EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step70EntryFFresh,arenaWires]
  · norm_num [s2Step70EntryFBefore,s2Step70EntryFFresh,arenaWires]
  · simp only [s2Step70EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step70EntryF_checked : planRowResizeLog s2Step70EntryFBefore s2Step70EntryFRow 233 s2Step70EntryFFresh=
    some (s2Step70EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744],768⟩,growRow 768 s2Step70EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step70EntryFBefore s2Step70EntryFAfter s2Step70EntryFRow 233 s2Step70EntryFFresh
    s2Step70EntryF_distinct s2Step70EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70EntryF_reserved
  have rowEq : WindowRow.mk (s2Step70EntryFRow.payload++s2Step70EntryFFresh) s2Step70EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step70EntryFvAfter : Arena := s2Step70EntryFBefore

private def s2Step70EntryFvBefore : Arena := s2Step70EntryFBefore

private theorem s2Step70EntryFv_Incoming : rowsOwned s2Step70EntryFvBefore [s2Step70EntryFvRow,s2Step70EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70EntryFRow,s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow] 2 s2Step70EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70EntryFv_Outgoing : rowsOwned s2Step70EntryGvAfter [s2Step70EntryFvOut,s2Step70EntryGvOut] :=
  hmrRows_owned_drop s2Step70EntryGvAfter [s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut] 2 s2Step70EntryBank_outgoingOwned

private theorem s2Step70EntryFv_distinct : (s2Step70EntryFvRow.sign::s2Step70EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70EntryFv_owned : (s2Step70EntryFvRow.sign::s2Step70EntryFvRow.payload).toFinset⊆s2Step70EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70EntryFvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EntryFv_reserved : s2Step70EntryFvBefore.reserve s2Step70EntryFvFresh.toFinset=some s2Step70EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step70EntryFvFresh,arenaWires]
  · norm_num [s2Step70EntryFvBefore,s2Step70EntryFBefore,s2Step70EntryFvFresh,arenaWires]
  · simp only [s2Step70EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step70EntryFv_checked : planRowResizeLog s2Step70EntryFvBefore s2Step70EntryFvRow 48 s2Step70EntryFvFresh=
    some (s2Step70EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩,growRow 770 s2Step70EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step70EntryFvBefore s2Step70EntryFvAfter s2Step70EntryFvRow 48 s2Step70EntryFvFresh
    s2Step70EntryFv_distinct s2Step70EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step70EntryFvRow.payload++s2Step70EntryFvFresh) s2Step70EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step70EntryGAfter : Arena := s2Step70EntryFBefore

private def s2Step70EntryGBefore : Arena := s2Step70EntryFBefore

private theorem s2Step70EntryG_Incoming : rowsOwned s2Step70EntryGBefore [s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70EntryFRow,s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow] 1 s2Step70EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70EntryG_Outgoing : rowsOwned s2Step70EntryGvAfter [s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut] :=
  hmrRows_owned_drop s2Step70EntryGvAfter [s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut] 1 s2Step70EntryBank_outgoingOwned

private theorem s2Step70EntryG_distinct : (s2Step70EntryGRow.sign::s2Step70EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70EntryG_owned : (s2Step70EntryGRow.sign::s2Step70EntryGRow.payload).toFinset⊆s2Step70EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70EntryGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EntryG_reserved : s2Step70EntryGBefore.reserve s2Step70EntryGFresh.toFinset=some s2Step70EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step70EntryGFresh,arenaWires]
  · norm_num [s2Step70EntryGBefore,s2Step70EntryFBefore,s2Step70EntryGFresh,arenaWires]
  · simp only [s2Step70EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step70EntryG_checked : planRowResizeLog s2Step70EntryGBefore s2Step70EntryGRow 233 s2Step70EntryGFresh=
    some (s2Step70EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],769⟩,growRow 769 s2Step70EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step70EntryGBefore s2Step70EntryGAfter s2Step70EntryGRow 233 s2Step70EntryGFresh
    s2Step70EntryG_distinct s2Step70EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70EntryG_reserved
  have rowEq : WindowRow.mk (s2Step70EntryGRow.payload++s2Step70EntryGFresh) s2Step70EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step70EntryGvBefore : Arena := s2Step70EntryFBefore

private theorem s2Step70EntryGv_Incoming : rowsOwned s2Step70EntryGvBefore [s2Step70EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70EntryFRow,s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow] 3 s2Step70EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70EntryGv_Outgoing : rowsOwned s2Step70EntryGvAfter [s2Step70EntryGvOut] :=
  hmrRows_owned_drop s2Step70EntryGvAfter [s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut] 3 s2Step70EntryBank_outgoingOwned

private theorem s2Step70EntryGv_distinct : (s2Step70EntryGvRow.sign::s2Step70EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70EntryGv_owned : (s2Step70EntryGvRow.sign::s2Step70EntryGvRow.payload).toFinset⊆s2Step70EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70EntryGvBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70EntryGv_reserved : s2Step70EntryGvBefore.reserve s2Step70EntryGvFresh.toFinset=some s2Step70EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step70EntryGvFresh,arenaWires]
  · norm_num [s2Step70EntryGvBefore,s2Step70EntryFBefore,s2Step70EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step70EntryGvAfter,s2Step70EntryGvBefore,s2Step70EntryFBefore,s2Step70EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step70EntryGv_checked : planRowResizeLog s2Step70EntryGvBefore s2Step70EntryGvRow 48 s2Step70EntryGvFresh=
    some (s2Step70EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832],771⟩,growRow 771 s2Step70EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step70EntryGvBefore s2Step70EntryGvAfter s2Step70EntryGvRow 48 s2Step70EntryGvFresh
    s2Step70EntryGv_distinct s2Step70EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step70EntryGvRow.payload++s2Step70EntryGvFresh) s2Step70EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step70EntryBank_rows : planWindowRowsLog s2Step70EntryFBefore [(s2Step70EntryFRow,233),(s2Step70EntryGRow,233),(s2Step70EntryFvRow,48),(s2Step70EntryGvRow,48)] [s2Step70EntryFFresh,s2Step70EntryGFresh,s2Step70EntryFvFresh,s2Step70EntryGvFresh]=
    some (s2Step70EntryGvAfter,[s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut],(growRow 768 s2Step70EntryFFresh ++ (growRow 769 s2Step70EntryGFresh ++ (growRow 770 s2Step70EntryFvFresh ++ (growRow 771 s2Step70EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step70EntryGvAfter [] []=some (s2Step70EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step70EntryGvBefore s2Step70EntryGvAfter s2Step70EntryGvAfter
    s2Step70EntryGvRow s2Step70EntryGvOut 48 s2Step70EntryGvFresh [] [] []
    (growRow 771 s2Step70EntryGvFresh) ([]) s2Step70EntryGv_Incoming s2Step70EntryGv_checked h4 s2Step70EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step70EntryFvBefore s2Step70EntryFvAfter s2Step70EntryGvAfter
    s2Step70EntryFvRow s2Step70EntryFvOut 48 s2Step70EntryFvFresh [(s2Step70EntryGvRow,48)] [s2Step70EntryGvFresh] [s2Step70EntryGvOut]
    (growRow 770 s2Step70EntryFvFresh) ((growRow 771 s2Step70EntryGvFresh ++ [])) s2Step70EntryFv_Incoming s2Step70EntryFv_checked h3 s2Step70EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step70EntryGBefore s2Step70EntryGAfter s2Step70EntryGvAfter
    s2Step70EntryGRow s2Step70EntryGOut 233 s2Step70EntryGFresh [(s2Step70EntryFvRow,48),(s2Step70EntryGvRow,48)] [s2Step70EntryFvFresh,s2Step70EntryGvFresh] [s2Step70EntryFvOut,s2Step70EntryGvOut]
    (growRow 769 s2Step70EntryGFresh) ((growRow 770 s2Step70EntryFvFresh ++ (growRow 771 s2Step70EntryGvFresh ++ []))) s2Step70EntryG_Incoming s2Step70EntryG_checked h2 s2Step70EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step70EntryFBefore s2Step70EntryFAfter s2Step70EntryGvAfter
    s2Step70EntryFRow s2Step70EntryFOut 233 s2Step70EntryFFresh [(s2Step70EntryGRow,233),(s2Step70EntryFvRow,48),(s2Step70EntryGvRow,48)] [s2Step70EntryGFresh,s2Step70EntryFvFresh,s2Step70EntryGvFresh] [s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut]
    (growRow 768 s2Step70EntryFFresh) ((growRow 769 s2Step70EntryGFresh ++ (growRow 770 s2Step70EntryFvFresh ++ (growRow 771 s2Step70EntryGvFresh ++ [])))) s2Step70EntryF_Incoming s2Step70EntryF_checked h1 s2Step70EntryF_Outgoing
  exact h0

private theorem s2Step70EntryBank_checked : compileHmrBankResizeLog .entry s2Step70EntryFBefore ⟨s2Step70EntryFRow,s2Step70EntryGRow,s2Step70EntryFvRow,s2Step70EntryGvRow⟩ ⟨233,233,48,48⟩ [s2Step70EntryFFresh,s2Step70EntryGFresh,s2Step70EntryFvFresh,s2Step70EntryGvFresh]=
    some (s2Step70EntryGvAfter,⟨s2Step70EntryFOut,s2Step70EntryGOut,s2Step70EntryFvOut,s2Step70EntryGvOut⟩,(growRow 768 s2Step70EntryFFresh ++ (growRow 769 s2Step70EntryGFresh ++ (growRow 770 s2Step70EntryFvFresh ++ (growRow 771 s2Step70EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step70EntryBank_rows]
  rfl

private def s2Step70ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<744) ∨ (745≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70ExitFBefore : Arena := s2Step70ExitGAfter

private def s2Step70ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 822],768⟩

private def s2Step70ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩

private def s2Step70ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 814],769⟩

private def s2Step70ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 829],771⟩

private theorem s2Step70ExitBank_incomingDistinct : ([s2Step70ExitGRow,s2Step70ExitFRow,s2Step70ExitFvRow,s2Step70ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70ExitF_Incoming : rowsOwned s2Step70ExitFBefore [s2Step70ExitFRow,s2Step70ExitFvRow,s2Step70ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70ExitGRow,s2Step70ExitFRow,s2Step70ExitFvRow,s2Step70ExitGvRow] 1 s2Step70ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70ExitFBefore (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70ExitBank_outgoingOwned : rowsOwned s2Step70ExitGvAfter [s2Step70ExitGOut,s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step70ExitGvAfter (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<744) ∨ (745≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70ExitF_Outgoing : rowsOwned s2Step70ExitGvAfter [s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut] :=
  hmrRows_owned_drop s2Step70ExitGvAfter [s2Step70ExitGOut,s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut] 1 s2Step70ExitBank_outgoingOwned

private theorem s2Step70ExitF_distinct : (s2Step70ExitFRow.sign::s2Step70ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70ExitF_owned : (s2Step70ExitFRow.sign::s2Step70ExitFRow.payload).toFinset⊆s2Step70ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70ExitFBefore (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70ExitF_retired : s2Step70ExitFBefore.retireSet s2Step70ExitFExtra.toFinset=s2Step70ExitFAfter := by
  unfold Arena.retireSet s2Step70ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step70ExitFBefore,s2Step70ExitGAfter,s2Step70ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step70ExitF_checked : planRowResizeLog s2Step70ExitFBefore s2Step70ExitFRow 232 []=
    some (s2Step70ExitFAfter,s2Step70ExitFOut,shrinkRow 768 s2Step70ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step70ExitFBefore s2Step70ExitFRow 232 s2Step70ExitF_distinct s2Step70ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step70ExitFRow.payload.take 232) s2Step70ExitFRow.sign=s2Step70ExitFOut := by decide +kernel
  have hi : s2Step70ExitFRow.payload.drop 232=s2Step70ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step70ExitF_retired] at result
  exact result

private def s2Step70ExitFvAfter : Arena := s2Step70ExitFAfter

private def s2Step70ExitFvBefore : Arena := s2Step70ExitFAfter

private theorem s2Step70ExitFv_Incoming : rowsOwned s2Step70ExitFvBefore [s2Step70ExitFvRow,s2Step70ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70ExitGRow,s2Step70ExitFRow,s2Step70ExitFvRow,s2Step70ExitGvRow] 2 s2Step70ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70ExitFvBefore (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<744) ∨ (745≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70ExitFv_Outgoing : rowsOwned s2Step70ExitGvAfter [s2Step70ExitFvOut,s2Step70ExitGvOut] :=
  hmrRows_owned_drop s2Step70ExitGvAfter [s2Step70ExitGOut,s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut] 2 s2Step70ExitBank_outgoingOwned

private theorem s2Step70ExitFv_distinct : (s2Step70ExitFvRow.sign::s2Step70ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70ExitFv_owned : (s2Step70ExitFvRow.sign::s2Step70ExitFvRow.payload).toFinset⊆s2Step70ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70ExitFvBefore (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<744) ∨ (745≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70ExitFv_reserved : s2Step70ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step70ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step70ExitFv_checked : planRowResizeLog s2Step70ExitFvBefore s2Step70ExitFvRow 49 []=
    some (s2Step70ExitFvAfter,s2Step70ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step70ExitFvBefore s2Step70ExitFvAfter s2Step70ExitFvRow 49 []
    s2Step70ExitFv_distinct s2Step70ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step70ExitFvRow.payload++[]) s2Step70ExitFvRow.sign=s2Step70ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step70ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private theorem s2Step70ExitG_Incoming : rowsOwned s2Step70ExitGBefore [s2Step70ExitGRow,s2Step70ExitFRow,s2Step70ExitFvRow,s2Step70ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70ExitGRow,s2Step70ExitFRow,s2Step70ExitFvRow,s2Step70ExitGvRow] 0 s2Step70ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70ExitG_Outgoing : rowsOwned s2Step70ExitGvAfter [s2Step70ExitGOut,s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut] :=
  hmrRows_owned_drop s2Step70ExitGvAfter [s2Step70ExitGOut,s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut] 0 s2Step70ExitBank_outgoingOwned

private theorem s2Step70ExitG_distinct : (s2Step70ExitGRow.sign::s2Step70ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70ExitG_owned : (s2Step70ExitGRow.sign::s2Step70ExitGRow.payload).toFinset⊆s2Step70ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70ExitGBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70ExitG_retired : s2Step70ExitGBefore.retireSet s2Step70ExitGExtra.toFinset=s2Step70ExitGAfter := by
  unfold Arena.retireSet s2Step70ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step70ExitGBefore,s2Step70ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step70ExitG_checked : planRowResizeLog s2Step70ExitGBefore s2Step70ExitGRow 232 []=
    some (s2Step70ExitGAfter,s2Step70ExitGOut,shrinkRow 769 s2Step70ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step70ExitGBefore s2Step70ExitGRow 232 s2Step70ExitG_distinct s2Step70ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step70ExitGRow.payload.take 232) s2Step70ExitGRow.sign=s2Step70ExitGOut := by decide +kernel
  have hi : s2Step70ExitGRow.payload.drop 232=s2Step70ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step70ExitG_retired] at result
  exact result

private def s2Step70ExitGvBefore : Arena := s2Step70ExitFAfter

private theorem s2Step70ExitGv_Incoming : rowsOwned s2Step70ExitGvBefore [s2Step70ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70ExitGRow,s2Step70ExitFRow,s2Step70ExitFvRow,s2Step70ExitGvRow] 3 s2Step70ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70ExitGvBefore (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<744) ∨ (745≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70ExitGv_Outgoing : rowsOwned s2Step70ExitGvAfter [s2Step70ExitGvOut] :=
  hmrRows_owned_drop s2Step70ExitGvAfter [s2Step70ExitGOut,s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut] 3 s2Step70ExitBank_outgoingOwned

private theorem s2Step70ExitGv_distinct : (s2Step70ExitGvRow.sign::s2Step70ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70ExitGv_owned : (s2Step70ExitGvRow.sign::s2Step70ExitGvRow.payload).toFinset⊆s2Step70ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70ExitGvBefore (fun q => (0≤q ∧ q<232) ∨ (233≤q ∧ q<744) ∨ (745≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70ExitGv_retired : s2Step70ExitGvBefore.retireSet s2Step70ExitGvExtra.toFinset=s2Step70ExitGvAfter := by
  unfold Arena.retireSet s2Step70ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step70ExitGvBefore,s2Step70ExitFAfter,s2Step70ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step70ExitGv_checked : planRowResizeLog s2Step70ExitGvBefore s2Step70ExitGvRow 48 []=
    some (s2Step70ExitGvAfter,s2Step70ExitGvOut,shrinkRow 771 s2Step70ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step70ExitGvBefore s2Step70ExitGvRow 48 s2Step70ExitGv_distinct s2Step70ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step70ExitGvRow.payload.take 48) s2Step70ExitGvRow.sign=s2Step70ExitGvOut := by decide +kernel
  have hi : s2Step70ExitGvRow.payload.drop 48=s2Step70ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step70ExitGv_retired] at result
  exact result

private theorem s2Step70ExitBank_rows : planWindowRowsLog s2Step70ExitGBefore [(s2Step70ExitGRow,232),(s2Step70ExitFRow,232),(s2Step70ExitFvRow,49),(s2Step70ExitGvRow,48)] [[],[],[],[]]=
    some (s2Step70ExitGvAfter,[s2Step70ExitGOut,s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut],(shrinkRow 769 s2Step70ExitGExtra ++ (shrinkRow 768 s2Step70ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step70ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step70ExitGvAfter [] []=some (s2Step70ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step70ExitGvBefore s2Step70ExitGvAfter s2Step70ExitGvAfter
    s2Step70ExitGvRow s2Step70ExitGvOut 48 [] [] [] []
    (shrinkRow 771 s2Step70ExitGvExtra) ([]) s2Step70ExitGv_Incoming s2Step70ExitGv_checked h4 s2Step70ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step70ExitFvBefore s2Step70ExitFvAfter s2Step70ExitGvAfter
    s2Step70ExitFvRow s2Step70ExitFvOut 49 [] [(s2Step70ExitGvRow,48)] [[]] [s2Step70ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step70ExitGvExtra ++ [])) s2Step70ExitFv_Incoming s2Step70ExitFv_checked h3 s2Step70ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step70ExitFBefore s2Step70ExitFAfter s2Step70ExitGvAfter
    s2Step70ExitFRow s2Step70ExitFOut 232 [] [(s2Step70ExitFvRow,49),(s2Step70ExitGvRow,48)] [[],[]] [s2Step70ExitFvOut,s2Step70ExitGvOut]
    (shrinkRow 768 s2Step70ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step70ExitGvExtra ++ []))) s2Step70ExitF_Incoming s2Step70ExitF_checked h2 s2Step70ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step70ExitGBefore s2Step70ExitGAfter s2Step70ExitGvAfter
    s2Step70ExitGRow s2Step70ExitGOut 232 [] [(s2Step70ExitFRow,232),(s2Step70ExitFvRow,49),(s2Step70ExitGvRow,48)] [[],[],[]] [s2Step70ExitFOut,s2Step70ExitFvOut,s2Step70ExitGvOut]
    (shrinkRow 769 s2Step70ExitGExtra) ((shrinkRow 768 s2Step70ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step70ExitGvExtra ++ [])))) s2Step70ExitG_Incoming s2Step70ExitG_checked h1 s2Step70ExitG_Outgoing
  exact h0

private theorem s2Step70ExitBank_checked : compileHmrBankResizeLog .exit s2Step70ExitGBefore ⟨s2Step70ExitFRow,s2Step70ExitGRow,s2Step70ExitFvRow,s2Step70ExitGvRow⟩ ⟨232,232,49,48⟩ [[],[],[],[]]=
    some (s2Step70ExitGvAfter,⟨s2Step70ExitFOut,s2Step70ExitGOut,s2Step70ExitFvOut,s2Step70ExitGvOut⟩,(shrinkRow 769 s2Step70ExitGExtra ++ (shrinkRow 768 s2Step70ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step70ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step70ExitBank_rows]
  rfl

private theorem s2Step70Add0_apart : Disjoint s2Step70Add0Arena.live s2Step70Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step70Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70Add0_card : s2Step70Add0Arena.live.card=866 := by
  decide +kernel

private theorem s2Step70Add0_borrowed : s2Step70Add0Arena.checkBorrow (hmrHybridCount s2Step70Add0Arena s2Step70Add0B.length) s2Step70Add0Work=some s2Step70Add0During := by
  have len : s2Step70Add0Work.length=hmrHybridCount s2Step70Add0Arena s2Step70Add0B.length := by
    rw [hmrHybridCount,s2Step70Add0_card]
    decide +kernel
  have nd : s2Step70Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step70Add0Arena s2Step70Add0During s2Step70Add0Work.toFinset s2Step70Add0_bounded s2Step70Add0_apart rfl

private theorem s2Step70Add0_distinct : (826::831::827::(s2Step70Add0A++s2Step70Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70Add0_owned : (826::831::827::(s2Step70Add0A++s2Step70Add0B)).toFinset⊆s2Step70Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step70Add0Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70Add0_checked : compileHmrHybridCinLog s2Step70Add0Arena 831 826 827 s2Step70Add0A s2Step70Add0B s2Step70Add0Work=some s2Step70Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step70Add0Arena s2Step70Add0During 831 826 827 s2Step70Add0A s2Step70Add0B s2Step70Add0Work
    (by decide +kernel) (by decide +kernel) s2Step70Add0_distinct
    (fun q hq => s2Step70Add0_owned (List.mem_toFinset.mpr hq)) s2Step70Add0_borrowed

private theorem s2Step70Add1_apart : Disjoint s2Step70Add1Arena.live s2Step70Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step70Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70Add1_card : s2Step70Add1Arena.live.card=866 := by
  decide +kernel

private theorem s2Step70Add1_borrowed : s2Step70Add1Arena.checkBorrow (hmrHybridCount s2Step70Add1Arena s2Step70Add1B.length) s2Step70Add1Work=some s2Step70Add1During := by
  have len : s2Step70Add1Work.length=hmrHybridCount s2Step70Add1Arena s2Step70Add1B.length := by
    rw [hmrHybridCount,s2Step70Add1_card]
    decide +kernel
  have nd : s2Step70Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step70Add1Arena s2Step70Add1During s2Step70Add1Work.toFinset s2Step70Add1_bounded s2Step70Add1_apart rfl

private theorem s2Step70Add1_distinct : (826::831::827::(s2Step70Add1A++s2Step70Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70Add1_owned : (826::831::827::(s2Step70Add1A++s2Step70Add1B)).toFinset⊆s2Step70Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step70Add1Arena (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70Add1_checked : compileHmrHybridCinLog s2Step70Add1Arena 831 826 827 s2Step70Add1A s2Step70Add1B s2Step70Add1Work=some s2Step70Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step70Add1Arena s2Step70Add1During 831 826 827 s2Step70Add1A s2Step70Add1B s2Step70Add1Work
    (by decide +kernel) (by decide +kernel) s2Step70Add1_distinct
    (fun q hq => s2Step70Add1_owned (List.mem_toFinset.mpr hq)) s2Step70Add1_borrowed

private theorem s2Step70F4_apart : Disjoint (s2Step70Add0A++s2Step70Add0B).toFinset (s2Step70Add1A++s2Step70Add1B).toFinset := by
  have nd : ((s2Step70Add0A++s2Step70Add0B)++(s2Step70Add1A++s2Step70Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step70F4_carry : s2Step70F4FlagArena.checkBorrow 1 [827]=some s2Step70Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step70F4FlagArena,s2Step70HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step70F4FlagArena,s2Step70HeadFvAfter,s2Step70Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step70F4_distinct : (844::831::826::827::((s2Step70Add0A++s2Step70Add1A)++(s2Step70Add0B++s2Step70Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70F4_flag : s2Step70HeadFvAfter.checkBorrow 1 [826]=some s2Step70F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step70HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step70F4_owned : (844::831::((s2Step70Add0A++s2Step70Add1A)++(s2Step70Add0B++s2Step70Add1B))).toFinset⊆s2Step70HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step70HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70F4_checked : compileHmrHybridF4Log s2Step70HeadFvAfter 844 831 s2Step70Add0A s2Step70Add0B s2Step70Add1A s2Step70Add1B [826] [827] s2Step70Add0Work s2Step70Add1Work=some s2Step70F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step70HeadFvAfter s2Step70F4FlagArena s2Step70Add0Arena s2Step70Add0During s2Step70Add1During 844 831
    s2Step70Add0A s2Step70Add0B s2Step70Add1A s2Step70Add1B [826] [827] s2Step70Add0Work s2Step70Add1Work
    (fun q hq => s2Step70F4_owned (List.mem_toFinset.mpr hq)) s2Step70F4_flag s2Step70F4_carry
    s2Step70F4_distinct s2Step70F4_apart s2Step70Add0_checked s2Step70Add1_checked

private theorem s2Step70Front_branch : s2Step70FrontSigmaArena.checkBorrow 1 [831]=some s2Step70HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step70FrontSigmaArena,s2Step70EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step70FrontSigmaArena,s2Step70EntryGvAfter,s2Step70HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step70Front_entry : HmrFrontEntryValid s2Step70EntryFBefore s2Step70FrontBank 233 48 ⟨232,232,49,48⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step70FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step70EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step70EntryFBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (833≤q ∧ q<844) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step70FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step70Front_sigma : s2Step70EntryGvAfter.checkBorrow 1 [844]=some s2Step70FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step70EntryGvAfter,arenaWires]
  · rfl

private def s2Step70HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70HeadFBefore : Arena := s2Step70HeadGAfter

private def s2Step70HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744],768⟩

private def s2Step70HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830],770⟩

private def s2Step70HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232],769⟩

private def s2Step70HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832],771⟩

private theorem s2Step70HeadBank_incomingDistinct : ([s2Step70HeadGRow,s2Step70HeadFRow,s2Step70HeadGvRow,s2Step70HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70HeadF_Incoming : rowsOwned s2Step70HeadFBefore [s2Step70HeadFRow,s2Step70HeadGvRow,s2Step70HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70HeadGRow,s2Step70HeadFRow,s2Step70HeadGvRow,s2Step70HeadFvRow] 1 s2Step70HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70HeadBank_outgoingOwned : rowsOwned s2Step70HeadFvAfter [s2Step70HeadGOut,s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step70HeadFvAfter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<826) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70HeadF_Outgoing : rowsOwned s2Step70HeadFvAfter [s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut] :=
  hmrRows_owned_drop s2Step70HeadFvAfter [s2Step70HeadGOut,s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut] 1 s2Step70HeadBank_outgoingOwned

private theorem s2Step70HeadF_distinct : (s2Step70HeadFRow.sign::s2Step70HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70HeadF_owned : (s2Step70HeadFRow.sign::s2Step70HeadFRow.payload).toFinset⊆s2Step70HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70HeadFBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70HeadF_reserved : s2Step70HeadFBefore.reserve s2Step70HeadFFresh.toFinset=some s2Step70HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step70HeadFFresh,arenaWires]
  · norm_num [s2Step70HeadFBefore,s2Step70HeadGAfter,s2Step70HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step70HeadFAfter,s2Step70HeadFBefore,s2Step70HeadGAfter,s2Step70HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step70HeadF_checked : planRowResizeLog s2Step70HeadFBefore s2Step70HeadFRow 234 s2Step70HeadFFresh=
    some (s2Step70HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 822],768⟩,growRow 768 s2Step70HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step70HeadFBefore s2Step70HeadFAfter s2Step70HeadFRow 234 s2Step70HeadFFresh
    s2Step70HeadF_distinct s2Step70HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70HeadF_reserved
  have rowEq : WindowRow.mk (s2Step70HeadFRow.payload++s2Step70HeadFFresh) s2Step70HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 725, 726, 727, 728, 729, 730, 731, 732, 733, 734, 735, 736, 737, 738, 739, 740, 741, 742, 743, 744, 822],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step70HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)),Finset.filter_subset _ _⟩

private def s2Step70HeadFvBefore : Arena := s2Step70HeadGvAfter

private theorem s2Step70HeadFv_Incoming : rowsOwned s2Step70HeadFvBefore [s2Step70HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70HeadGRow,s2Step70HeadFRow,s2Step70HeadGvRow,s2Step70HeadFvRow] 3 s2Step70HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70HeadFv_Outgoing : rowsOwned s2Step70HeadFvAfter [s2Step70HeadFvOut] :=
  hmrRows_owned_drop s2Step70HeadFvAfter [s2Step70HeadGOut,s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut] 3 s2Step70HeadBank_outgoingOwned

private theorem s2Step70HeadFv_distinct : (s2Step70HeadFvRow.sign::s2Step70HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70HeadFv_owned : (s2Step70HeadFvRow.sign::s2Step70HeadFvRow.payload).toFinset⊆s2Step70HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70HeadFvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70HeadFv_reserved : s2Step70HeadFvBefore.reserve s2Step70HeadFvFresh.toFinset=some s2Step70HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step70HeadFvFresh,arenaWires]
  · norm_num [s2Step70HeadFvBefore,s2Step70HeadGvAfter,s2Step70HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step70HeadFvAfter,s2Step70HeadFvBefore,s2Step70HeadGvAfter,s2Step70HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step70HeadFv_checked : planRowResizeLog s2Step70HeadFvBefore s2Step70HeadFvRow 49 s2Step70HeadFvFresh=
    some (s2Step70HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩,growRow 770 s2Step70HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step70HeadFvBefore s2Step70HeadFvAfter s2Step70HeadFvRow 49 s2Step70HeadFvFresh
    s2Step70HeadFv_distinct s2Step70HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step70HeadFvRow.payload++s2Step70HeadFvFresh) s2Step70HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 835, 837, 784, 782, 842, 841, 781, 785, 779, 786, 780, 799, 802, 791, 806, 805, 803, 787, 808, 800, 812, 820, 817, 790, 830, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step70HeadG_Incoming : rowsOwned s2Step70HeadGBefore [s2Step70HeadGRow,s2Step70HeadFRow,s2Step70HeadGvRow,s2Step70HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70HeadGRow,s2Step70HeadFRow,s2Step70HeadGvRow,s2Step70HeadFvRow] 0 s2Step70HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70HeadG_Outgoing : rowsOwned s2Step70HeadFvAfter [s2Step70HeadGOut,s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut] :=
  hmrRows_owned_drop s2Step70HeadFvAfter [s2Step70HeadGOut,s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut] 0 s2Step70HeadBank_outgoingOwned

private theorem s2Step70HeadG_distinct : (s2Step70HeadGRow.sign::s2Step70HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70HeadG_owned : (s2Step70HeadGRow.sign::s2Step70HeadGRow.payload).toFinset⊆s2Step70HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70HeadGBefore (fun q => (0≤q ∧ q<814) ∨ (815≤q ∧ q<816) ∨ (817≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70HeadG_reserved : s2Step70HeadGBefore.reserve s2Step70HeadGFresh.toFinset=some s2Step70HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step70HeadGFresh,arenaWires]
  · norm_num [s2Step70HeadGBefore,s2Step70HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step70HeadGAfter,s2Step70HeadGBefore,s2Step70HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step70HeadG_checked : planRowResizeLog s2Step70HeadGBefore s2Step70HeadGRow 234 s2Step70HeadGFresh=
    some (s2Step70HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 814],769⟩,growRow 769 s2Step70HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step70HeadGBefore s2Step70HeadGAfter s2Step70HeadGRow 234 s2Step70HeadGFresh
    s2Step70HeadG_distinct s2Step70HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70HeadG_reserved
  have rowEq : WindowRow.mk (s2Step70HeadGRow.payload++s2Step70HeadGFresh) s2Step70HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 814],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step70HeadGvBefore : Arena := s2Step70HeadFAfter

private theorem s2Step70HeadGv_Incoming : rowsOwned s2Step70HeadGvBefore [s2Step70HeadGvRow,s2Step70HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step70HeadGRow,s2Step70HeadFRow,s2Step70HeadGvRow,s2Step70HeadFvRow] 2 s2Step70HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step70HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
    decide +kernel

private theorem s2Step70HeadGv_Outgoing : rowsOwned s2Step70HeadFvAfter [s2Step70HeadGvOut,s2Step70HeadFvOut] :=
  hmrRows_owned_drop s2Step70HeadFvAfter [s2Step70HeadGOut,s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut] 2 s2Step70HeadBank_outgoingOwned

private theorem s2Step70HeadGv_distinct : (s2Step70HeadGvRow.sign::s2Step70HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step70HeadGv_owned : (s2Step70HeadGvRow.sign::s2Step70HeadGvRow.payload).toFinset⊆s2Step70HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step70HeadGvBefore (fun q => (0≤q ∧ q<816) ∨ (817≤q ∧ q<825) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<845) ∨ (848≤q ∧ q<849) ∨ (850≤q ∧ q<851) ∨ (852≤q ∧ q<867) ∨ (868≤q ∧ q<873)) rfl
  decide +kernel

private theorem s2Step70HeadGv_reserved : s2Step70HeadGvBefore.reserve s2Step70HeadGvFresh.toFinset=some s2Step70HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step70HeadGvFresh,arenaWires]
  · norm_num [s2Step70HeadGvBefore,s2Step70HeadFAfter,s2Step70HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step70HeadGvAfter,s2Step70HeadGvBefore,s2Step70HeadFAfter,s2Step70HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step70HeadGv_checked : planRowResizeLog s2Step70HeadGvBefore s2Step70HeadGvRow 49 s2Step70HeadGvFresh=
    some (s2Step70HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 829],771⟩,growRow 771 s2Step70HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step70HeadGvBefore s2Step70HeadGvAfter s2Step70HeadGvRow 49 s2Step70HeadGvFresh
    s2Step70HeadGv_distinct s2Step70HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step70HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step70HeadGvRow.payload++s2Step70HeadGvFresh) s2Step70HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 834, 836, 840, 783, 778, 839, 788, 789, 793, 796, 797, 794, 804, 801, 798, 809, 811, 810, 815, 792, 807, 821, 819, 824, 832, 829],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step70HeadBank_rows : planWindowRowsLog s2Step70HeadGBefore [(s2Step70HeadGRow,234),(s2Step70HeadFRow,234),(s2Step70HeadGvRow,49),(s2Step70HeadFvRow,49)] [s2Step70HeadGFresh,s2Step70HeadFFresh,s2Step70HeadGvFresh,s2Step70HeadFvFresh]=
    some (s2Step70HeadFvAfter,[s2Step70HeadGOut,s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut],(growRow 769 s2Step70HeadGFresh ++ (growRow 768 s2Step70HeadFFresh ++ (growRow 771 s2Step70HeadGvFresh ++ (growRow 770 s2Step70HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step70HeadFvAfter [] []=some (s2Step70HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step70HeadFvBefore s2Step70HeadFvAfter s2Step70HeadFvAfter
    s2Step70HeadFvRow s2Step70HeadFvOut 49 s2Step70HeadFvFresh [] [] []
    (growRow 770 s2Step70HeadFvFresh) ([]) s2Step70HeadFv_Incoming s2Step70HeadFv_checked h4 s2Step70HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step70HeadGvBefore s2Step70HeadGvAfter s2Step70HeadFvAfter
    s2Step70HeadGvRow s2Step70HeadGvOut 49 s2Step70HeadGvFresh [(s2Step70HeadFvRow,49)] [s2Step70HeadFvFresh] [s2Step70HeadFvOut]
    (growRow 771 s2Step70HeadGvFresh) ((growRow 770 s2Step70HeadFvFresh ++ [])) s2Step70HeadGv_Incoming s2Step70HeadGv_checked h3 s2Step70HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step70HeadFBefore s2Step70HeadFAfter s2Step70HeadFvAfter
    s2Step70HeadFRow s2Step70HeadFOut 234 s2Step70HeadFFresh [(s2Step70HeadGvRow,49),(s2Step70HeadFvRow,49)] [s2Step70HeadGvFresh,s2Step70HeadFvFresh] [s2Step70HeadGvOut,s2Step70HeadFvOut]
    (growRow 768 s2Step70HeadFFresh) ((growRow 771 s2Step70HeadGvFresh ++ (growRow 770 s2Step70HeadFvFresh ++ []))) s2Step70HeadF_Incoming s2Step70HeadF_checked h2 s2Step70HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step70HeadGBefore s2Step70HeadGAfter s2Step70HeadFvAfter
    s2Step70HeadGRow s2Step70HeadGOut 234 s2Step70HeadGFresh [(s2Step70HeadFRow,234),(s2Step70HeadGvRow,49),(s2Step70HeadFvRow,49)] [s2Step70HeadFFresh,s2Step70HeadGvFresh,s2Step70HeadFvFresh] [s2Step70HeadFOut,s2Step70HeadGvOut,s2Step70HeadFvOut]
    (growRow 769 s2Step70HeadGFresh) ((growRow 768 s2Step70HeadFFresh ++ (growRow 771 s2Step70HeadGvFresh ++ (growRow 770 s2Step70HeadFvFresh ++ [])))) s2Step70HeadG_Incoming s2Step70HeadG_checked h1 s2Step70HeadG_Outgoing
  exact h0

private theorem s2Step70HeadBank_checked : compileHmrBankResizeLog .headroom s2Step70HeadGBefore ⟨s2Step70HeadFRow,s2Step70HeadGRow,s2Step70HeadFvRow,s2Step70HeadGvRow⟩ ⟨234,234,49,49⟩ [s2Step70HeadGFresh,s2Step70HeadFFresh,s2Step70HeadGvFresh,s2Step70HeadFvFresh]=
    some (s2Step70HeadFvAfter,⟨s2Step70HeadFOut,s2Step70HeadGOut,s2Step70HeadFvOut,s2Step70HeadGvOut⟩,(growRow 769 s2Step70HeadGFresh ++ (growRow 768 s2Step70HeadFFresh ++ (growRow 771 s2Step70HeadGvFresh ++ (growRow 770 s2Step70HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step70HeadBank_rows]
  rfl

private theorem s2Step70Front_checked : compileHmrSourceFrontLog s2Step70EntryFBefore s2Step70FrontBank 233 48 ⟨232,232,49,48⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step70FrontLog=some s2Step70FrontPlan := by
  have pairEq : s2Step70FrontPair=⟨s2Step70HeadFRow,s2Step70HeadGRow,s2Step70HeadFvRow,s2Step70HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step70FrontHead=⟨s2Step70ExitFRow,s2Step70ExitGRow,s2Step70ExitFvRow,s2Step70ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step70Add0A=s2Step70FrontHead.f.wires := by decide +kernel
  have gEq : s2Step70Add0B=s2Step70FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step70Add1A=s2Step70FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step70Add1B=s2Step70FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step70EntryFBefore s2Step70FrontBank 233 48 ⟨232,232,49,48⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step70FrontLog s2Step70FrontPlan
  · exact s2Step70Front_entry
  · exact s2Step70EntryBank_checked
  · exact s2Step70Front_sigma
  · rfl
  · exact s2Step70Front_branch
  · rfl
  · simpa only [s2Step70FrontPlan,pairEq] using s2Step70HeadBank_checked
  · simpa only [s2Step70FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step70F4_checked
  · exact s2Step70Counter_checked
  · rfl
  · simpa only [s2Step70FrontPlan,headEq] using s2Step70ExitBank_checked

private theorem s2Step70Complete_explicit_checked : compileHmrEarlyStepLog s2Step70EntryFBefore s2Step70FrontBank 233 48 ⟨232,232,49,48⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step70CompleteLog=some s2Step70CompletePlan := by
  let Q := s2Step70EarlyControlPlan
  have hq := s2Step70EarlyControl_plan_checked
  have fv1 : s2Step70CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step70CompleteOut.fv.payload[2]?.getD s2Step70CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step70CompleteOut.fv.payload[3]?.getD s2Step70CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step70CompleteOut.fv.payload[4]?.getD s2Step70CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step70EntryFBefore s2Step70EarlyControlArena s2Step70FrontBank 233 48 ⟨232,232,49,48⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 30 s2Step70CompleteLog s2Step70FrontPlan Q
    s2Step70Front_checked s2Step70Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step70Complete_owned s2Step70Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step70EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 777 844 s2Step70CompleteOut.fv.second (s2Step70CompleteOut.fv.payload[2]?.getD s2Step70CompleteOut.fv.sign) (s2Step70CompleteOut.fv.payload[3]?.getD s2Step70CompleteOut.fv.sign) (s2Step70CompleteOut.fv.payload[4]?.getD s2Step70CompleteOut.fv.sign) 831 30 s2Step70EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep70Arena : Arena := s2Step70EntryFBefore
def s2PrivateStep70Bank : WindowBank := s2Step70FrontBank
def s2PrivateStep70Spec : HmrSourceWalkStepLog := ⟨233,48,⟨232,232,49,48⟩,30,.early s2Step70CompleteLog⟩
def s2PrivateStep70Plan : HmrSourceStepPlan := .early s2Step70CompletePlan
theorem s2PrivateStep70_source : s2PrivateStep70Spec=s2ObservedLogs64[6] := rfl
theorem s2PrivateStep70_checked : compileHmrSourceStepLog s2PrivateStep70Arena s2PrivateStep70Bank
    s2PrivateStep70Spec.fgWidth s2PrivateStep70Spec.vWidth s2PrivateStep70Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872]
    6 498 70 s2PrivateStep70Spec.need none s2PrivateStep70Spec.log=some s2PrivateStep70Plan := by
  change compileHmrSourceStepLog s2Step70EntryFBefore s2Step70FrontBank 233 48 ⟨232,232,49,48⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872] 6 498 70 30 none (.early s2Step70CompleteLog)=some (.early s2Step70CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 70<498)]
  rw [s2Step70Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
