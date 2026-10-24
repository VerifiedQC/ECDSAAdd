import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep127
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

private def s2Step129CompleteMoves : List (Wire × Wire) := [(835,204)]

private def s2Step129EarlyControlLog : HmrEarlyControlLog := ⟨[835, 781, 814, 822, 817],[837],[849],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step129FrontLog : HmrFrontAllocationLog := ⟨⟨[[814], [], [], []],[[817], [822], [781], [834]],[[], [], [], []]⟩,[829],[831],[837],[849],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815]⟩

private def s2Step129CompleteLog : HmrEarlyStepLog := ⟨s2Step129FrontLog,s2Step129CompleteMoves,s2Step129EarlyControlLog⟩

private def s2Step129ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715],768⟩

private def s2Step129ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step129ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],769⟩

private def s2Step129ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩

private def s2Step129FrontOut : WindowBank := ⟨s2Step129ExitFOut,s2Step129ExitGOut,s2Step129ExitFvOut,s2Step129ExitGvOut⟩

private def s2Step129CompleteOut : WindowBank := s2Step129FrontOut.repacked s2Step129CompleteMoves

private def s2Step129EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step129EarlyControlPositiveArena,[837],s2Step129EarlyControlEqualityArena,[849],⟨⟨829,false⟩,[⟨⟨837,false⟩,849⟩]⟩⟩

private def s2Step129EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,835⟩,⟨⟨774,false⟩,781⟩,⟨⟨775,false⟩,814⟩,⟨⟨776,false⟩,822⟩,⟨⟨777,false⟩,817⟩]⟩

private def s2Step129EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step129EarlyControlZeroArena,s2Step129EarlyControlZeroPlan,s2Step129EarlyControlClassPlan,s2Step129EarlyControlFlagArena,s2Step129EarlyControlFittedArena,s2Step129EarlyControlHistoryArena,s2Step129EarlyControlSigmaArena,s2Step129EarlyControlOutputArena,s2Step129EarlyControlLog⟩

private def s2Step129CounterWork : List Wire := [837, 849, 790, 815]

private theorem s2Step129Counter_bounded : s2Step129CounterWork.toFinset⊆arenaWires := by norm_num [s2Step129CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step129HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129CounterDuring : Arena := ⟨s2Step129HeadFvAfter.live∪s2Step129CounterWork.toFinset,Finset.union_subset s2Step129HeadFvAfter.bounded s2Step129Counter_bounded⟩

private def s2Step129EntryFFresh : List Wire := [814]

private def s2Step129EntryFvFresh : List Wire := []

private def s2Step129EntryGFresh : List Wire := []

private def s2Step129EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EntryGvAfter : Arena := s2Step129EntryFAfter

private def s2Step129EntryGvFresh : List Wire := []

private def s2Step129ExitFExtra : List Wire := [814, 822]

private def s2Step129ExitGExtra : List Wire := [204, 817]

private def s2Step129ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129ExitGvExtra : List Wire := [781]

private def s2Step129Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step129Add0_bounded : s2Step129Add0Work.toFinset⊆arenaWires := by
  have h : s2Step129Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step129Add0During : Arena := ⟨s2Step129Add0Arena.live∪s2Step129Add0Work.toFinset,Finset.union_subset s2Step129Add0Arena.bounded s2Step129Add0_bounded⟩

private def s2Step129Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step129Add1_bounded : s2Step129Add1Work.toFinset⊆arenaWires := by
  have h : s2Step129Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step129Add1During : Arena := ⟨s2Step129Add1Arena.live∪s2Step129Add1Work.toFinset,Finset.union_subset s2Step129Add1Arena.bounded s2Step129Add1_bounded⟩

private def s2Step129F4FlagArena : Arena := ⟨s2Step129HeadFvAfter.live∪{837},Finset.union_subset s2Step129HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step129F4Plan : HmrHybridF4Plan := ⟨s2Step129F4FlagArena,[837],s2Step129Add0Arena,[849],s2Step129Add0During,s2Step129Add0Work,s2Step129Add1During,s2Step129Add1Work⟩

private def s2Step129HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814, 822],768⟩

private def s2Step129HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step129HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 817],769⟩

private def s2Step129HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 781],771⟩

private def s2Step129FrontHead : WindowBank := ⟨s2Step129HeadFOut,s2Step129HeadGOut,s2Step129HeadFvOut,s2Step129HeadGvOut⟩

private def s2Step129EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814],768⟩

private def s2Step129EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step129EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩

private def s2Step129EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩

private def s2Step129FrontPair : WindowBank := ⟨s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut⟩

private def s2Step129FrontSigmaArena : Arena := ⟨s2Step129EntryGvAfter.live∪{829},Finset.union_subset s2Step129EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step129HeadFFresh : List Wire := [822]

private def s2Step129HeadFvFresh : List Wire := [834]

private def s2Step129HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129HeadGFresh : List Wire := [817]

private def s2Step129HeadGvFresh : List Wire := [781]

private def s2Step129FrontPlan : HmrSourceFront := ⟨s2Step129EntryGvAfter,s2Step129FrontPair,(growRow 768 s2Step129EntryFFresh ++ (growRow 769 s2Step129EntryGFresh ++ (growRow 770 s2Step129EntryFvFresh ++ (growRow 771 s2Step129EntryGvFresh ++ [])))),s2Step129FrontSigmaArena,[829],s2Step129HeadGBefore,[831],
  s2Step129HeadFvAfter,s2Step129FrontHead,(growRow 769 s2Step129HeadGFresh ++ (growRow 768 s2Step129HeadFFresh ++ (growRow 771 s2Step129HeadGvFresh ++ (growRow 770 s2Step129HeadFvFresh ++ [])))),s2Step129F4Plan,s2Step129CounterDuring,s2Step129CounterWork,s2Step129ExitGvAfter,s2Step129FrontOut,(shrinkRow 769 s2Step129ExitGExtra ++ (shrinkRow 768 s2Step129ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step129ExitGvExtra ++ []))))⟩

private def s2Step129CompletePlan : HmrEarlyStepPlan := ⟨s2Step129FrontPlan,s2Step129EarlyControlArena,s2Step129EarlyControlPlan,s2Step129CompleteMoves⟩

private theorem s2Step129Complete_apart : List.Disjoint (s2Step129CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step129CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step129Complete_owned : (s2Step129CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step129CompleteMoveArena : Arena := ⟨s2Step129ExitGvAfter.live∪{204},Finset.union_subset s2Step129ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step129Complete_repack : s2Step129ExitGvAfter.checkRepack s2Step129CompleteMoves=some s2Step129EarlyControlArena := by
  have owned : 835∈s2Step129ExitGvAfter.live := by norm_num [s2Step129ExitGvAfter,arenaWires]
  have reserve : s2Step129ExitGvAfter.reserve {204}=some s2Step129CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step129ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step129CompleteMoveArena.retireSet {835}=s2Step129EarlyControlArena := by
    unfold Arena.retireSet s2Step129EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step129CompleteMoveArena,s2Step129ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step129CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step129CompleteMoveArena.retireSet {835}).checkRepack []=some s2Step129EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step129EarlyControl_branchOwned : ([831] : List Wire).toFinset⊆s2Step129EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_branch : compileHmrBranchRetirement s2Step129EarlyControlSigmaArena 831=some s2Step129EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step129EarlyControl_branchOwned
  · ext q
    simp [s2Step129EarlyControlOutputArena,s2Step129EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step129EarlyControl_classEqualityBorrow : s2Step129EarlyControlPositiveArena.checkBorrow (([829, 837] : List Wire).length-1) s2Step129EarlyControlLog.classWork=some s2Step129EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step129EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step129EarlyControlEqualityArena,s2Step129EarlyControlPositiveArena,s2Step129EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step129EarlyControl_classEqualityOwned : ([829, 837] : List Wire).toFinset⊆s2Step129EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_classEquality : compileHmrEqualityLog s2Step129EarlyControlPositiveArena [829, 837] 0 s2Step129EarlyControlLog.classWork=some (s2Step129EarlyControlEqualityArena,s2Step129EarlyControlLog.classWork,s2Step129EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step129EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step129EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step129EarlyControl_classOwned : ([777, 817, 829] : List Wire).toFinset⊆s2Step129EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_positiveBorrow : s2Step129EarlyControlZeroArena.checkBorrow (1) s2Step129EarlyControlLog.positiveWork=some s2Step129EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step129EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step129EarlyControlPositiveArena,s2Step129EarlyControlZeroArena,s2Step129EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step129EarlyControl_class : compileHmrSourceClassLog s2Step129EarlyControlZeroArena false 777 s2Step129EarlyControlZeroPlan.top 0 829 s2Step129EarlyControlLog.positiveWork s2Step129EarlyControlLog.classWork=some s2Step129EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step129EarlyControlClassPlan s2Step129EarlyControlZeroArena false 777 s2Step129EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step129EarlyControl_classOwned
  · exact s2Step129EarlyControl_positiveBorrow
  · exact s2Step129EarlyControl_classEquality

private theorem s2Step129EarlyControl_entryRecordOwned : ([831, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_entrySigmaOwned : ([829, 254] : List Wire).toFinset⊆s2Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_fitBorrow : s2Step129EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step129EarlyControlLog.recordFresh=some s2Step129EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step129EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
      decide +kernel
    · ext q
      simp [s2Step129EarlyControlFittedArena,s2Step129EarlyControlFlagArena,s2Step129EarlyControlLog,arenaWires]

private theorem s2Step129EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step129EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_fit : compileHmrRecordGrowLog s2Step129EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step129EarlyControlLog.recordFresh=some s2Step129EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step129EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step129EarlyControl_fitBorrow

private theorem s2Step129EarlyControl_flagsBorrow : s2Step129EarlyControlEqualityArena.checkBorrow (6) s2Step129EarlyControlLog.flagWork=some s2Step129EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step129EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step129EarlyControlFlagArena,s2Step129EarlyControlEqualityArena,s2Step129EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step129EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step129EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_flags : compileHmrFlagsLog s2Step129EarlyControlClassPlan.equalityArena s2Step129EarlyControlClassPlan.equality.top 253 252 251 s2Step129EarlyControlLog.flagWork=some s2Step129EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step129EarlyControl_flagsOwned⟩
  · exact s2Step129EarlyControl_flagsBorrow

private theorem s2Step129EarlyControl_historyBorrow : s2Step129EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step129EarlyControlLog.recordFresh=some s2Step129EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step129EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step129EarlyControlHistoryArena,s2Step129EarlyControlArena,s2Step129EarlyControlLog,arenaWires]

private theorem s2Step129EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_history : compileHmrRecordGrowLog s2Step129EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step129EarlyControlLog.recordFresh=some s2Step129EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step129EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step129EarlyControl_historyBorrow

private theorem s2Step129EarlyControl_sigmaOwned : ([254, 829] : List Wire).toFinset⊆s2Step129EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step129EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_sigmaRelease : s2Step129EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step129EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step129EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step129EarlyControlSigmaArena,s2Step129EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step129EarlyControl_sigma : compileHmrSigmaDropLog s2Step129EarlyControlHistoryArena false 0 0 254 829 []=some s2Step129EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step129EarlyControl_sigmaOwned⟩
  · exact s2Step129EarlyControl_sigmaRelease

private theorem s2Step129EarlyControl_zeroBorrow : s2Step129EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step129EarlyControlLog.zeroWork=some s2Step129EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step129EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step129EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step129EarlyControlZeroArena,s2Step129EarlyControlArena,s2Step129EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step129EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step129EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step129EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EarlyControl_zero : compileHmrEqualityLog s2Step129EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step129EarlyControlLog.zeroWork=some (s2Step129EarlyControlZeroArena,s2Step129EarlyControlLog.zeroWork,s2Step129EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step129EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step129EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step129EarlyControl_logged : s2Step129EarlyControlPlan.Logged s2Step129EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 831 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step129EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step129EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step129EarlyControl_zero
  · exact s2Step129EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step129EarlyControl_flags
  · exact s2Step129EarlyControl_fit
  · exact s2Step129EarlyControl_history
  · exact s2Step129EarlyControl_sigma
  · exact s2Step129EarlyControl_branch

private theorem s2Step129EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step129EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 831 37 s2Step129EarlyControlLog=some s2Step129EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step129EarlyControlPlan s2Step129EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 831 37 s2Step129EarlyControl_logged

private def s2Step129EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715],768⟩

private def s2Step129EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step129EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩

private def s2Step129EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩

private def s2Step129FrontBank : WindowBank := ⟨s2Step129EntryFRow,s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow⟩

private def s2Step129Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814, 822, 768]

private def s2Step129Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 817, 769]

private def s2Step129Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 770]

private def s2Step129Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 781, 771]

private theorem s2Step129Counter_apart : Disjoint s2Step129HeadFvAfter.live s2Step129CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step129HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129Counter_borrowed : s2Step129HeadFvAfter.checkBorrow 4 s2Step129CounterWork=some s2Step129CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step129HeadFvAfter s2Step129CounterDuring s2Step129CounterWork.toFinset s2Step129Counter_bounded s2Step129Counter_apart rfl

private theorem s2Step129Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step129HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step129HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129Counter_checked : compileHmrCounterStepLog s2Step129HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step129CounterWork=some s2Step129CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step129HeadFvAfter.live := fun q hq => s2Step129Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step129Counter_borrowed

private theorem s2Step129EntryBank_incomingDistinct : ([s2Step129EntryFRow,s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129EntryF_Incoming : rowsOwned s2Step129EntryFBefore [s2Step129EntryFRow,s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129EntryFRow,s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow] 0 s2Step129EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129EntryBank_outgoingOwned : rowsOwned s2Step129EntryGvAfter [s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step129EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129EntryF_Outgoing : rowsOwned s2Step129EntryGvAfter [s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut] :=
  hmrRows_owned_drop s2Step129EntryGvAfter [s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut] 0 s2Step129EntryBank_outgoingOwned

private theorem s2Step129EntryF_distinct : (s2Step129EntryFRow.sign::s2Step129EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129EntryF_owned : (s2Step129EntryFRow.sign::s2Step129EntryFRow.payload).toFinset⊆s2Step129EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EntryF_reserved : s2Step129EntryFBefore.reserve s2Step129EntryFFresh.toFinset=some s2Step129EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step129EntryFFresh,arenaWires]
  · norm_num [s2Step129EntryFBefore,s2Step129EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step129EntryFAfter,s2Step129EntryFBefore,s2Step129EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step129EntryF_checked : planRowResizeLog s2Step129EntryFBefore s2Step129EntryFRow 205 s2Step129EntryFFresh=
    some (s2Step129EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814],768⟩,growRow 768 s2Step129EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step129EntryFBefore s2Step129EntryFAfter s2Step129EntryFRow 205 s2Step129EntryFFresh
    s2Step129EntryF_distinct s2Step129EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129EntryF_reserved
  have rowEq : WindowRow.mk (s2Step129EntryFRow.payload++s2Step129EntryFFresh) s2Step129EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step129EntryFvAfter : Arena := s2Step129EntryFAfter

private def s2Step129EntryFvBefore : Arena := s2Step129EntryFAfter

private theorem s2Step129EntryFv_Incoming : rowsOwned s2Step129EntryFvBefore [s2Step129EntryFvRow,s2Step129EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129EntryFRow,s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow] 2 s2Step129EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129EntryFv_Outgoing : rowsOwned s2Step129EntryGvAfter [s2Step129EntryFvOut,s2Step129EntryGvOut] :=
  hmrRows_owned_drop s2Step129EntryGvAfter [s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut] 2 s2Step129EntryBank_outgoingOwned

private theorem s2Step129EntryFv_distinct : (s2Step129EntryFvRow.sign::s2Step129EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129EntryFv_owned : (s2Step129EntryFvRow.sign::s2Step129EntryFvRow.payload).toFinset⊆s2Step129EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EntryFv_reserved : s2Step129EntryFvBefore.reserve s2Step129EntryFvFresh.toFinset=some s2Step129EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step129EntryFvFresh,arenaWires]
  · norm_num [s2Step129EntryFvBefore,s2Step129EntryFAfter,s2Step129EntryFvFresh,arenaWires]
  · simp only [s2Step129EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step129EntryFv_checked : planRowResizeLog s2Step129EntryFvBefore s2Step129EntryFvRow 78 s2Step129EntryFvFresh=
    some (s2Step129EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩,growRow 770 s2Step129EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step129EntryFvBefore s2Step129EntryFvAfter s2Step129EntryFvRow 78 s2Step129EntryFvFresh
    s2Step129EntryFv_distinct s2Step129EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step129EntryFvRow.payload++s2Step129EntryFvFresh) s2Step129EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step129EntryGAfter : Arena := s2Step129EntryFAfter

private def s2Step129EntryGBefore : Arena := s2Step129EntryFAfter

private theorem s2Step129EntryG_Incoming : rowsOwned s2Step129EntryGBefore [s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129EntryFRow,s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow] 1 s2Step129EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129EntryG_Outgoing : rowsOwned s2Step129EntryGvAfter [s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut] :=
  hmrRows_owned_drop s2Step129EntryGvAfter [s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut] 1 s2Step129EntryBank_outgoingOwned

private theorem s2Step129EntryG_distinct : (s2Step129EntryGRow.sign::s2Step129EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129EntryG_owned : (s2Step129EntryGRow.sign::s2Step129EntryGRow.payload).toFinset⊆s2Step129EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EntryG_reserved : s2Step129EntryGBefore.reserve s2Step129EntryGFresh.toFinset=some s2Step129EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step129EntryGFresh,arenaWires]
  · norm_num [s2Step129EntryGBefore,s2Step129EntryFAfter,s2Step129EntryGFresh,arenaWires]
  · simp only [s2Step129EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step129EntryG_checked : planRowResizeLog s2Step129EntryGBefore s2Step129EntryGRow 205 s2Step129EntryGFresh=
    some (s2Step129EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩,growRow 769 s2Step129EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step129EntryGBefore s2Step129EntryGAfter s2Step129EntryGRow 205 s2Step129EntryGFresh
    s2Step129EntryG_distinct s2Step129EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129EntryG_reserved
  have rowEq : WindowRow.mk (s2Step129EntryGRow.payload++s2Step129EntryGFresh) s2Step129EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step129EntryGvBefore : Arena := s2Step129EntryFAfter

private theorem s2Step129EntryGv_Incoming : rowsOwned s2Step129EntryGvBefore [s2Step129EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129EntryFRow,s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow] 3 s2Step129EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129EntryGv_Outgoing : rowsOwned s2Step129EntryGvAfter [s2Step129EntryGvOut] :=
  hmrRows_owned_drop s2Step129EntryGvAfter [s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut] 3 s2Step129EntryBank_outgoingOwned

private theorem s2Step129EntryGv_distinct : (s2Step129EntryGvRow.sign::s2Step129EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129EntryGv_owned : (s2Step129EntryGvRow.sign::s2Step129EntryGvRow.payload).toFinset⊆s2Step129EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129EntryGv_reserved : s2Step129EntryGvBefore.reserve s2Step129EntryGvFresh.toFinset=some s2Step129EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step129EntryGvFresh,arenaWires]
  · norm_num [s2Step129EntryGvBefore,s2Step129EntryFAfter,s2Step129EntryGvFresh,arenaWires]
  · simp only [s2Step129EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step129EntryGv_checked : planRowResizeLog s2Step129EntryGvBefore s2Step129EntryGvRow 78 s2Step129EntryGvFresh=
    some (s2Step129EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩,growRow 771 s2Step129EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step129EntryGvBefore s2Step129EntryGvAfter s2Step129EntryGvRow 78 s2Step129EntryGvFresh
    s2Step129EntryGv_distinct s2Step129EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step129EntryGvRow.payload++s2Step129EntryGvFresh) s2Step129EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step129EntryBank_rows : planWindowRowsLog s2Step129EntryFBefore [(s2Step129EntryFRow,205),(s2Step129EntryGRow,205),(s2Step129EntryFvRow,78),(s2Step129EntryGvRow,78)] [s2Step129EntryFFresh,s2Step129EntryGFresh,s2Step129EntryFvFresh,s2Step129EntryGvFresh]=
    some (s2Step129EntryGvAfter,[s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut],(growRow 768 s2Step129EntryFFresh ++ (growRow 769 s2Step129EntryGFresh ++ (growRow 770 s2Step129EntryFvFresh ++ (growRow 771 s2Step129EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step129EntryGvAfter [] []=some (s2Step129EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step129EntryGvBefore s2Step129EntryGvAfter s2Step129EntryGvAfter
    s2Step129EntryGvRow s2Step129EntryGvOut 78 s2Step129EntryGvFresh [] [] []
    (growRow 771 s2Step129EntryGvFresh) ([]) s2Step129EntryGv_Incoming s2Step129EntryGv_checked h4 s2Step129EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step129EntryFvBefore s2Step129EntryFvAfter s2Step129EntryGvAfter
    s2Step129EntryFvRow s2Step129EntryFvOut 78 s2Step129EntryFvFresh [(s2Step129EntryGvRow,78)] [s2Step129EntryGvFresh] [s2Step129EntryGvOut]
    (growRow 770 s2Step129EntryFvFresh) ((growRow 771 s2Step129EntryGvFresh ++ [])) s2Step129EntryFv_Incoming s2Step129EntryFv_checked h3 s2Step129EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step129EntryGBefore s2Step129EntryGAfter s2Step129EntryGvAfter
    s2Step129EntryGRow s2Step129EntryGOut 205 s2Step129EntryGFresh [(s2Step129EntryFvRow,78),(s2Step129EntryGvRow,78)] [s2Step129EntryFvFresh,s2Step129EntryGvFresh] [s2Step129EntryFvOut,s2Step129EntryGvOut]
    (growRow 769 s2Step129EntryGFresh) ((growRow 770 s2Step129EntryFvFresh ++ (growRow 771 s2Step129EntryGvFresh ++ []))) s2Step129EntryG_Incoming s2Step129EntryG_checked h2 s2Step129EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step129EntryFBefore s2Step129EntryFAfter s2Step129EntryGvAfter
    s2Step129EntryFRow s2Step129EntryFOut 205 s2Step129EntryFFresh [(s2Step129EntryGRow,205),(s2Step129EntryFvRow,78),(s2Step129EntryGvRow,78)] [s2Step129EntryGFresh,s2Step129EntryFvFresh,s2Step129EntryGvFresh] [s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut]
    (growRow 768 s2Step129EntryFFresh) ((growRow 769 s2Step129EntryGFresh ++ (growRow 770 s2Step129EntryFvFresh ++ (growRow 771 s2Step129EntryGvFresh ++ [])))) s2Step129EntryF_Incoming s2Step129EntryF_checked h1 s2Step129EntryF_Outgoing
  exact h0

private theorem s2Step129EntryBank_checked : compileHmrBankResizeLog .entry s2Step129EntryFBefore ⟨s2Step129EntryFRow,s2Step129EntryGRow,s2Step129EntryFvRow,s2Step129EntryGvRow⟩ ⟨205,205,78,78⟩ [s2Step129EntryFFresh,s2Step129EntryGFresh,s2Step129EntryFvFresh,s2Step129EntryGvFresh]=
    some (s2Step129EntryGvAfter,⟨s2Step129EntryFOut,s2Step129EntryGOut,s2Step129EntryFvOut,s2Step129EntryGvOut⟩,(growRow 768 s2Step129EntryFFresh ++ (growRow 769 s2Step129EntryGFresh ++ (growRow 770 s2Step129EntryFvFresh ++ (growRow 771 s2Step129EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step129EntryBank_rows]
  rfl

private def s2Step129ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129ExitFBefore : Arena := s2Step129ExitGAfter

private def s2Step129ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814, 822],768⟩

private def s2Step129ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step129ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 817],769⟩

private def s2Step129ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 781],771⟩

private theorem s2Step129ExitBank_incomingDistinct : ([s2Step129ExitGRow,s2Step129ExitFRow,s2Step129ExitFvRow,s2Step129ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129ExitF_Incoming : rowsOwned s2Step129ExitFBefore [s2Step129ExitFRow,s2Step129ExitFvRow,s2Step129ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129ExitGRow,s2Step129ExitFRow,s2Step129ExitFvRow,s2Step129ExitGvRow] 1 s2Step129ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129ExitFBefore (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129ExitBank_outgoingOwned : rowsOwned s2Step129ExitGvAfter [s2Step129ExitGOut,s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step129ExitGvAfter (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129ExitF_Outgoing : rowsOwned s2Step129ExitGvAfter [s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut] :=
  hmrRows_owned_drop s2Step129ExitGvAfter [s2Step129ExitGOut,s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut] 1 s2Step129ExitBank_outgoingOwned

private theorem s2Step129ExitF_distinct : (s2Step129ExitFRow.sign::s2Step129ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129ExitF_owned : (s2Step129ExitFRow.sign::s2Step129ExitFRow.payload).toFinset⊆s2Step129ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129ExitFBefore (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129ExitF_retired : s2Step129ExitFBefore.retireSet s2Step129ExitFExtra.toFinset=s2Step129ExitFAfter := by
  unfold Arena.retireSet s2Step129ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step129ExitFBefore,s2Step129ExitGAfter,s2Step129ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step129ExitF_checked : planRowResizeLog s2Step129ExitFBefore s2Step129ExitFRow 204 []=
    some (s2Step129ExitFAfter,s2Step129ExitFOut,shrinkRow 768 s2Step129ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step129ExitFBefore s2Step129ExitFRow 204 s2Step129ExitF_distinct s2Step129ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step129ExitFRow.payload.take 204) s2Step129ExitFRow.sign=s2Step129ExitFOut := by decide +kernel
  have hi : s2Step129ExitFRow.payload.drop 204=s2Step129ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step129ExitF_retired] at result
  exact result

private def s2Step129ExitFvAfter : Arena := s2Step129ExitFAfter

private def s2Step129ExitFvBefore : Arena := s2Step129ExitFAfter

private theorem s2Step129ExitFv_Incoming : rowsOwned s2Step129ExitFvBefore [s2Step129ExitFvRow,s2Step129ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129ExitGRow,s2Step129ExitFRow,s2Step129ExitFvRow,s2Step129ExitGvRow] 2 s2Step129ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129ExitFvBefore (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129ExitFv_Outgoing : rowsOwned s2Step129ExitGvAfter [s2Step129ExitFvOut,s2Step129ExitGvOut] :=
  hmrRows_owned_drop s2Step129ExitGvAfter [s2Step129ExitGOut,s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut] 2 s2Step129ExitBank_outgoingOwned

private theorem s2Step129ExitFv_distinct : (s2Step129ExitFvRow.sign::s2Step129ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129ExitFv_owned : (s2Step129ExitFvRow.sign::s2Step129ExitFvRow.payload).toFinset⊆s2Step129ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129ExitFvBefore (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129ExitFv_reserved : s2Step129ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step129ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step129ExitFv_checked : planRowResizeLog s2Step129ExitFvBefore s2Step129ExitFvRow 79 []=
    some (s2Step129ExitFvAfter,s2Step129ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step129ExitFvBefore s2Step129ExitFvAfter s2Step129ExitFvRow 79 []
    s2Step129ExitFv_distinct s2Step129ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step129ExitFvRow.payload++[]) s2Step129ExitFvRow.sign=s2Step129ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step129ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step129ExitG_Incoming : rowsOwned s2Step129ExitGBefore [s2Step129ExitGRow,s2Step129ExitFRow,s2Step129ExitFvRow,s2Step129ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129ExitGRow,s2Step129ExitFRow,s2Step129ExitFvRow,s2Step129ExitGvRow] 0 s2Step129ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129ExitG_Outgoing : rowsOwned s2Step129ExitGvAfter [s2Step129ExitGOut,s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut] :=
  hmrRows_owned_drop s2Step129ExitGvAfter [s2Step129ExitGOut,s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut] 0 s2Step129ExitBank_outgoingOwned

private theorem s2Step129ExitG_distinct : (s2Step129ExitGRow.sign::s2Step129ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129ExitG_owned : (s2Step129ExitGRow.sign::s2Step129ExitGRow.payload).toFinset⊆s2Step129ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129ExitG_retired : s2Step129ExitGBefore.retireSet s2Step129ExitGExtra.toFinset=s2Step129ExitGAfter := by
  unfold Arena.retireSet s2Step129ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step129ExitGBefore,s2Step129ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step129ExitG_checked : planRowResizeLog s2Step129ExitGBefore s2Step129ExitGRow 204 []=
    some (s2Step129ExitGAfter,s2Step129ExitGOut,shrinkRow 769 s2Step129ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step129ExitGBefore s2Step129ExitGRow 204 s2Step129ExitG_distinct s2Step129ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step129ExitGRow.payload.take 204) s2Step129ExitGRow.sign=s2Step129ExitGOut := by decide +kernel
  have hi : s2Step129ExitGRow.payload.drop 204=s2Step129ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step129ExitG_retired] at result
  exact result

private def s2Step129ExitGvBefore : Arena := s2Step129ExitFAfter

private theorem s2Step129ExitGv_Incoming : rowsOwned s2Step129ExitGvBefore [s2Step129ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129ExitGRow,s2Step129ExitFRow,s2Step129ExitFvRow,s2Step129ExitGvRow] 3 s2Step129ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129ExitGvBefore (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129ExitGv_Outgoing : rowsOwned s2Step129ExitGvAfter [s2Step129ExitGvOut] :=
  hmrRows_owned_drop s2Step129ExitGvAfter [s2Step129ExitGOut,s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut] 3 s2Step129ExitBank_outgoingOwned

private theorem s2Step129ExitGv_distinct : (s2Step129ExitGvRow.sign::s2Step129ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129ExitGv_owned : (s2Step129ExitGvRow.sign::s2Step129ExitGvRow.payload).toFinset⊆s2Step129ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129ExitGvBefore (fun q => (0≤q ∧ q<204) ∨ (205≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129ExitGv_retired : s2Step129ExitGvBefore.retireSet s2Step129ExitGvExtra.toFinset=s2Step129ExitGvAfter := by
  unfold Arena.retireSet s2Step129ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step129ExitGvBefore,s2Step129ExitFAfter,s2Step129ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step129ExitGv_checked : planRowResizeLog s2Step129ExitGvBefore s2Step129ExitGvRow 78 []=
    some (s2Step129ExitGvAfter,s2Step129ExitGvOut,shrinkRow 771 s2Step129ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step129ExitGvBefore s2Step129ExitGvRow 78 s2Step129ExitGv_distinct s2Step129ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step129ExitGvRow.payload.take 78) s2Step129ExitGvRow.sign=s2Step129ExitGvOut := by decide +kernel
  have hi : s2Step129ExitGvRow.payload.drop 78=s2Step129ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step129ExitGv_retired] at result
  exact result

private theorem s2Step129ExitBank_rows : planWindowRowsLog s2Step129ExitGBefore [(s2Step129ExitGRow,204),(s2Step129ExitFRow,204),(s2Step129ExitFvRow,79),(s2Step129ExitGvRow,78)] [[],[],[],[]]=
    some (s2Step129ExitGvAfter,[s2Step129ExitGOut,s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut],(shrinkRow 769 s2Step129ExitGExtra ++ (shrinkRow 768 s2Step129ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step129ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step129ExitGvAfter [] []=some (s2Step129ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step129ExitGvBefore s2Step129ExitGvAfter s2Step129ExitGvAfter
    s2Step129ExitGvRow s2Step129ExitGvOut 78 [] [] [] []
    (shrinkRow 771 s2Step129ExitGvExtra) ([]) s2Step129ExitGv_Incoming s2Step129ExitGv_checked h4 s2Step129ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step129ExitFvBefore s2Step129ExitFvAfter s2Step129ExitGvAfter
    s2Step129ExitFvRow s2Step129ExitFvOut 79 [] [(s2Step129ExitGvRow,78)] [[]] [s2Step129ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step129ExitGvExtra ++ [])) s2Step129ExitFv_Incoming s2Step129ExitFv_checked h3 s2Step129ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step129ExitFBefore s2Step129ExitFAfter s2Step129ExitGvAfter
    s2Step129ExitFRow s2Step129ExitFOut 204 [] [(s2Step129ExitFvRow,79),(s2Step129ExitGvRow,78)] [[],[]] [s2Step129ExitFvOut,s2Step129ExitGvOut]
    (shrinkRow 768 s2Step129ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step129ExitGvExtra ++ []))) s2Step129ExitF_Incoming s2Step129ExitF_checked h2 s2Step129ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step129ExitGBefore s2Step129ExitGAfter s2Step129ExitGvAfter
    s2Step129ExitGRow s2Step129ExitGOut 204 [] [(s2Step129ExitFRow,204),(s2Step129ExitFvRow,79),(s2Step129ExitGvRow,78)] [[],[],[]] [s2Step129ExitFOut,s2Step129ExitFvOut,s2Step129ExitGvOut]
    (shrinkRow 769 s2Step129ExitGExtra) ((shrinkRow 768 s2Step129ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step129ExitGvExtra ++ [])))) s2Step129ExitG_Incoming s2Step129ExitG_checked h1 s2Step129ExitG_Outgoing
  exact h0

private theorem s2Step129ExitBank_checked : compileHmrBankResizeLog .exit s2Step129ExitGBefore ⟨s2Step129ExitFRow,s2Step129ExitGRow,s2Step129ExitFvRow,s2Step129ExitGvRow⟩ ⟨204,204,79,78⟩ [[],[],[],[]]=
    some (s2Step129ExitGvAfter,⟨s2Step129ExitFOut,s2Step129ExitGOut,s2Step129ExitFvOut,s2Step129ExitGvOut⟩,(shrinkRow 769 s2Step129ExitGExtra ++ (shrinkRow 768 s2Step129ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step129ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step129ExitBank_rows]
  rfl

private theorem s2Step129Add0_apart : Disjoint s2Step129Add0Arena.live s2Step129Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step129Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129Add0_card : s2Step129Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step129Add0_borrowed : s2Step129Add0Arena.checkBorrow (hmrHybridCount s2Step129Add0Arena s2Step129Add0B.length) s2Step129Add0Work=some s2Step129Add0During := by
  have len : s2Step129Add0Work.length=hmrHybridCount s2Step129Add0Arena s2Step129Add0B.length := by
    rw [hmrHybridCount,s2Step129Add0_card]
    decide +kernel
  have nd : s2Step129Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step129Add0Arena s2Step129Add0During s2Step129Add0Work.toFinset s2Step129Add0_bounded s2Step129Add0_apart rfl

private theorem s2Step129Add0_distinct : (837::831::849::(s2Step129Add0A++s2Step129Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129Add0_owned : (837::831::849::(s2Step129Add0A++s2Step129Add0B)).toFinset⊆s2Step129Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step129Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129Add0_checked : compileHmrHybridCinLog s2Step129Add0Arena 831 837 849 s2Step129Add0A s2Step129Add0B s2Step129Add0Work=some s2Step129Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step129Add0Arena s2Step129Add0During 831 837 849 s2Step129Add0A s2Step129Add0B s2Step129Add0Work
    (by decide +kernel) (by decide +kernel) s2Step129Add0_distinct
    (fun q hq => s2Step129Add0_owned (List.mem_toFinset.mpr hq)) s2Step129Add0_borrowed

private theorem s2Step129Add1_apart : Disjoint s2Step129Add1Arena.live s2Step129Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step129Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129Add1_card : s2Step129Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step129Add1_borrowed : s2Step129Add1Arena.checkBorrow (hmrHybridCount s2Step129Add1Arena s2Step129Add1B.length) s2Step129Add1Work=some s2Step129Add1During := by
  have len : s2Step129Add1Work.length=hmrHybridCount s2Step129Add1Arena s2Step129Add1B.length := by
    rw [hmrHybridCount,s2Step129Add1_card]
    decide +kernel
  have nd : s2Step129Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step129Add1Arena s2Step129Add1During s2Step129Add1Work.toFinset s2Step129Add1_bounded s2Step129Add1_apart rfl

private theorem s2Step129Add1_distinct : (837::831::849::(s2Step129Add1A++s2Step129Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129Add1_owned : (837::831::849::(s2Step129Add1A++s2Step129Add1B)).toFinset⊆s2Step129Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step129Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129Add1_checked : compileHmrHybridCinLog s2Step129Add1Arena 831 837 849 s2Step129Add1A s2Step129Add1B s2Step129Add1Work=some s2Step129Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step129Add1Arena s2Step129Add1During 831 837 849 s2Step129Add1A s2Step129Add1B s2Step129Add1Work
    (by decide +kernel) (by decide +kernel) s2Step129Add1_distinct
    (fun q hq => s2Step129Add1_owned (List.mem_toFinset.mpr hq)) s2Step129Add1_borrowed

private theorem s2Step129F4_apart : Disjoint (s2Step129Add0A++s2Step129Add0B).toFinset (s2Step129Add1A++s2Step129Add1B).toFinset := by
  have nd : ((s2Step129Add0A++s2Step129Add0B)++(s2Step129Add1A++s2Step129Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step129F4_carry : s2Step129F4FlagArena.checkBorrow 1 [849]=some s2Step129Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step129F4FlagArena,s2Step129HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step129F4FlagArena,s2Step129HeadFvAfter,s2Step129Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step129F4_distinct : (829::831::837::849::((s2Step129Add0A++s2Step129Add1A)++(s2Step129Add0B++s2Step129Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129F4_flag : s2Step129HeadFvAfter.checkBorrow 1 [837]=some s2Step129F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step129HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step129F4_owned : (829::831::((s2Step129Add0A++s2Step129Add1A)++(s2Step129Add0B++s2Step129Add1B))).toFinset⊆s2Step129HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step129HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129F4_checked : compileHmrHybridF4Log s2Step129HeadFvAfter 829 831 s2Step129Add0A s2Step129Add0B s2Step129Add1A s2Step129Add1B [837] [849] s2Step129Add0Work s2Step129Add1Work=some s2Step129F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step129HeadFvAfter s2Step129F4FlagArena s2Step129Add0Arena s2Step129Add0During s2Step129Add1During 829 831
    s2Step129Add0A s2Step129Add0B s2Step129Add1A s2Step129Add1B [837] [849] s2Step129Add0Work s2Step129Add1Work
    (fun q hq => s2Step129F4_owned (List.mem_toFinset.mpr hq)) s2Step129F4_flag s2Step129F4_carry
    s2Step129F4_distinct s2Step129F4_apart s2Step129Add0_checked s2Step129Add1_checked

private theorem s2Step129Front_branch : s2Step129FrontSigmaArena.checkBorrow 1 [831]=some s2Step129HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step129FrontSigmaArena,s2Step129EntryGvAfter,s2Step129EntryFAfter,arenaWires]
  · ext q
    simp only [s2Step129FrontSigmaArena,s2Step129EntryGvAfter,s2Step129EntryFAfter,s2Step129HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step129Front_entry : HmrFrontEntryValid s2Step129EntryFBefore s2Step129FrontBank 205 78 ⟨204,204,79,78⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step129FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step129EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step129EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step129FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step129Front_sigma : s2Step129EntryGvAfter.checkBorrow 1 [829]=some s2Step129FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step129EntryGvAfter,s2Step129EntryFAfter,arenaWires]
  · rfl

private def s2Step129HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129HeadFBefore : Arena := s2Step129HeadGAfter

private def s2Step129HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814],768⟩

private def s2Step129HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step129HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩

private def s2Step129HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩

private theorem s2Step129HeadBank_incomingDistinct : ([s2Step129HeadGRow,s2Step129HeadFRow,s2Step129HeadGvRow,s2Step129HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129HeadF_Incoming : rowsOwned s2Step129HeadFBefore [s2Step129HeadFRow,s2Step129HeadGvRow,s2Step129HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129HeadGRow,s2Step129HeadFRow,s2Step129HeadGvRow,s2Step129HeadFvRow] 1 s2Step129HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129HeadBank_outgoingOwned : rowsOwned s2Step129HeadFvAfter [s2Step129HeadGOut,s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step129HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129HeadF_Outgoing : rowsOwned s2Step129HeadFvAfter [s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut] :=
  hmrRows_owned_drop s2Step129HeadFvAfter [s2Step129HeadGOut,s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut] 1 s2Step129HeadBank_outgoingOwned

private theorem s2Step129HeadF_distinct : (s2Step129HeadFRow.sign::s2Step129HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129HeadF_owned : (s2Step129HeadFRow.sign::s2Step129HeadFRow.payload).toFinset⊆s2Step129HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129HeadF_reserved : s2Step129HeadFBefore.reserve s2Step129HeadFFresh.toFinset=some s2Step129HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step129HeadFFresh,arenaWires]
  · norm_num [s2Step129HeadFBefore,s2Step129HeadGAfter,s2Step129HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step129HeadFAfter,s2Step129HeadFBefore,s2Step129HeadGAfter,s2Step129HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step129HeadF_checked : planRowResizeLog s2Step129HeadFBefore s2Step129HeadFRow 206 s2Step129HeadFFresh=
    some (s2Step129HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814, 822],768⟩,growRow 768 s2Step129HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step129HeadFBefore s2Step129HeadFAfter s2Step129HeadFRow 206 s2Step129HeadFFresh
    s2Step129HeadF_distinct s2Step129HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129HeadF_reserved
  have rowEq : WindowRow.mk (s2Step129HeadFRow.payload++s2Step129HeadFFresh) s2Step129HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814, 822],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step129HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step129HeadFvBefore : Arena := s2Step129HeadGvAfter

private theorem s2Step129HeadFv_Incoming : rowsOwned s2Step129HeadFvBefore [s2Step129HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129HeadGRow,s2Step129HeadFRow,s2Step129HeadGvRow,s2Step129HeadFvRow] 3 s2Step129HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129HeadFv_Outgoing : rowsOwned s2Step129HeadFvAfter [s2Step129HeadFvOut] :=
  hmrRows_owned_drop s2Step129HeadFvAfter [s2Step129HeadGOut,s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut] 3 s2Step129HeadBank_outgoingOwned

private theorem s2Step129HeadFv_distinct : (s2Step129HeadFvRow.sign::s2Step129HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129HeadFv_owned : (s2Step129HeadFvRow.sign::s2Step129HeadFvRow.payload).toFinset⊆s2Step129HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129HeadFv_reserved : s2Step129HeadFvBefore.reserve s2Step129HeadFvFresh.toFinset=some s2Step129HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step129HeadFvFresh,arenaWires]
  · norm_num [s2Step129HeadFvBefore,s2Step129HeadGvAfter,s2Step129HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step129HeadFvAfter,s2Step129HeadFvBefore,s2Step129HeadGvAfter,s2Step129HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step129HeadFv_checked : planRowResizeLog s2Step129HeadFvBefore s2Step129HeadFvRow 79 s2Step129HeadFvFresh=
    some (s2Step129HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩,growRow 770 s2Step129HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step129HeadFvBefore s2Step129HeadFvAfter s2Step129HeadFvRow 79 s2Step129HeadFvFresh
    s2Step129HeadFv_distinct s2Step129HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step129HeadFvRow.payload++s2Step129HeadFvFresh) s2Step129HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step129HeadG_Incoming : rowsOwned s2Step129HeadGBefore [s2Step129HeadGRow,s2Step129HeadFRow,s2Step129HeadGvRow,s2Step129HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129HeadGRow,s2Step129HeadFRow,s2Step129HeadGvRow,s2Step129HeadFvRow] 0 s2Step129HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129HeadG_Outgoing : rowsOwned s2Step129HeadFvAfter [s2Step129HeadGOut,s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut] :=
  hmrRows_owned_drop s2Step129HeadFvAfter [s2Step129HeadGOut,s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut] 0 s2Step129HeadBank_outgoingOwned

private theorem s2Step129HeadG_distinct : (s2Step129HeadGRow.sign::s2Step129HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129HeadG_owned : (s2Step129HeadGRow.sign::s2Step129HeadGRow.payload).toFinset⊆s2Step129HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129HeadG_reserved : s2Step129HeadGBefore.reserve s2Step129HeadGFresh.toFinset=some s2Step129HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step129HeadGFresh,arenaWires]
  · norm_num [s2Step129HeadGBefore,s2Step129HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step129HeadGAfter,s2Step129HeadGBefore,s2Step129HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step129HeadG_checked : planRowResizeLog s2Step129HeadGBefore s2Step129HeadGRow 206 s2Step129HeadGFresh=
    some (s2Step129HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 817],769⟩,growRow 769 s2Step129HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step129HeadGBefore s2Step129HeadGAfter s2Step129HeadGRow 206 s2Step129HeadGFresh
    s2Step129HeadG_distinct s2Step129HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129HeadG_reserved
  have rowEq : WindowRow.mk (s2Step129HeadGRow.payload++s2Step129HeadGFresh) s2Step129HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step129HeadGvBefore : Arena := s2Step129HeadFAfter

private theorem s2Step129HeadGv_Incoming : rowsOwned s2Step129HeadGvBefore [s2Step129HeadGvRow,s2Step129HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step129HeadGRow,s2Step129HeadFRow,s2Step129HeadGvRow,s2Step129HeadFvRow] 2 s2Step129HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step129HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step129HeadGv_Outgoing : rowsOwned s2Step129HeadFvAfter [s2Step129HeadGvOut,s2Step129HeadFvOut] :=
  hmrRows_owned_drop s2Step129HeadFvAfter [s2Step129HeadGOut,s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut] 2 s2Step129HeadBank_outgoingOwned

private theorem s2Step129HeadGv_distinct : (s2Step129HeadGvRow.sign::s2Step129HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step129HeadGv_owned : (s2Step129HeadGvRow.sign::s2Step129HeadGvRow.payload).toFinset⊆s2Step129HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step129HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step129HeadGv_reserved : s2Step129HeadGvBefore.reserve s2Step129HeadGvFresh.toFinset=some s2Step129HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step129HeadGvFresh,arenaWires]
  · norm_num [s2Step129HeadGvBefore,s2Step129HeadFAfter,s2Step129HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step129HeadGvAfter,s2Step129HeadGvBefore,s2Step129HeadFAfter,s2Step129HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step129HeadGv_checked : planRowResizeLog s2Step129HeadGvBefore s2Step129HeadGvRow 79 s2Step129HeadGvFresh=
    some (s2Step129HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 781],771⟩,growRow 771 s2Step129HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step129HeadGvBefore s2Step129HeadGvAfter s2Step129HeadGvRow 79 s2Step129HeadGvFresh
    s2Step129HeadGv_distinct s2Step129HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step129HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step129HeadGvRow.payload++s2Step129HeadGvFresh) s2Step129HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step129HeadBank_rows : planWindowRowsLog s2Step129HeadGBefore [(s2Step129HeadGRow,206),(s2Step129HeadFRow,206),(s2Step129HeadGvRow,79),(s2Step129HeadFvRow,79)] [s2Step129HeadGFresh,s2Step129HeadFFresh,s2Step129HeadGvFresh,s2Step129HeadFvFresh]=
    some (s2Step129HeadFvAfter,[s2Step129HeadGOut,s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut],(growRow 769 s2Step129HeadGFresh ++ (growRow 768 s2Step129HeadFFresh ++ (growRow 771 s2Step129HeadGvFresh ++ (growRow 770 s2Step129HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step129HeadFvAfter [] []=some (s2Step129HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step129HeadFvBefore s2Step129HeadFvAfter s2Step129HeadFvAfter
    s2Step129HeadFvRow s2Step129HeadFvOut 79 s2Step129HeadFvFresh [] [] []
    (growRow 770 s2Step129HeadFvFresh) ([]) s2Step129HeadFv_Incoming s2Step129HeadFv_checked h4 s2Step129HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step129HeadGvBefore s2Step129HeadGvAfter s2Step129HeadFvAfter
    s2Step129HeadGvRow s2Step129HeadGvOut 79 s2Step129HeadGvFresh [(s2Step129HeadFvRow,79)] [s2Step129HeadFvFresh] [s2Step129HeadFvOut]
    (growRow 771 s2Step129HeadGvFresh) ((growRow 770 s2Step129HeadFvFresh ++ [])) s2Step129HeadGv_Incoming s2Step129HeadGv_checked h3 s2Step129HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step129HeadFBefore s2Step129HeadFAfter s2Step129HeadFvAfter
    s2Step129HeadFRow s2Step129HeadFOut 206 s2Step129HeadFFresh [(s2Step129HeadGvRow,79),(s2Step129HeadFvRow,79)] [s2Step129HeadGvFresh,s2Step129HeadFvFresh] [s2Step129HeadGvOut,s2Step129HeadFvOut]
    (growRow 768 s2Step129HeadFFresh) ((growRow 771 s2Step129HeadGvFresh ++ (growRow 770 s2Step129HeadFvFresh ++ []))) s2Step129HeadF_Incoming s2Step129HeadF_checked h2 s2Step129HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step129HeadGBefore s2Step129HeadGAfter s2Step129HeadFvAfter
    s2Step129HeadGRow s2Step129HeadGOut 206 s2Step129HeadGFresh [(s2Step129HeadFRow,206),(s2Step129HeadGvRow,79),(s2Step129HeadFvRow,79)] [s2Step129HeadFFresh,s2Step129HeadGvFresh,s2Step129HeadFvFresh] [s2Step129HeadFOut,s2Step129HeadGvOut,s2Step129HeadFvOut]
    (growRow 769 s2Step129HeadGFresh) ((growRow 768 s2Step129HeadFFresh ++ (growRow 771 s2Step129HeadGvFresh ++ (growRow 770 s2Step129HeadFvFresh ++ [])))) s2Step129HeadG_Incoming s2Step129HeadG_checked h1 s2Step129HeadG_Outgoing
  exact h0

private theorem s2Step129HeadBank_checked : compileHmrBankResizeLog .headroom s2Step129HeadGBefore ⟨s2Step129HeadFRow,s2Step129HeadGRow,s2Step129HeadFvRow,s2Step129HeadGvRow⟩ ⟨206,206,79,79⟩ [s2Step129HeadGFresh,s2Step129HeadFFresh,s2Step129HeadGvFresh,s2Step129HeadFvFresh]=
    some (s2Step129HeadFvAfter,⟨s2Step129HeadFOut,s2Step129HeadGOut,s2Step129HeadFvOut,s2Step129HeadGvOut⟩,(growRow 769 s2Step129HeadGFresh ++ (growRow 768 s2Step129HeadFFresh ++ (growRow 771 s2Step129HeadGvFresh ++ (growRow 770 s2Step129HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step129HeadBank_rows]
  rfl

private theorem s2Step129Front_checked : compileHmrSourceFrontLog s2Step129EntryFBefore s2Step129FrontBank 205 78 ⟨204,204,79,78⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step129FrontLog=some s2Step129FrontPlan := by
  have pairEq : s2Step129FrontPair=⟨s2Step129HeadFRow,s2Step129HeadGRow,s2Step129HeadFvRow,s2Step129HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step129FrontHead=⟨s2Step129ExitFRow,s2Step129ExitGRow,s2Step129ExitFvRow,s2Step129ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step129Add0A=s2Step129FrontHead.f.wires := by decide +kernel
  have gEq : s2Step129Add0B=s2Step129FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step129Add1A=s2Step129FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step129Add1B=s2Step129FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step129EntryFBefore s2Step129FrontBank 205 78 ⟨204,204,79,78⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step129FrontLog s2Step129FrontPlan
  · exact s2Step129Front_entry
  · exact s2Step129EntryBank_checked
  · exact s2Step129Front_sigma
  · rfl
  · exact s2Step129Front_branch
  · rfl
  · simpa only [s2Step129FrontPlan,pairEq] using s2Step129HeadBank_checked
  · simpa only [s2Step129FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step129F4_checked
  · exact s2Step129Counter_checked
  · rfl
  · simpa only [s2Step129FrontPlan,headEq] using s2Step129ExitBank_checked

private theorem s2Step129Complete_explicit_checked : compileHmrEarlyStepLog s2Step129EntryFBefore s2Step129FrontBank 205 78 ⟨204,204,79,78⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step129CompleteLog=some s2Step129CompletePlan := by
  let Q := s2Step129EarlyControlPlan
  have hq := s2Step129EarlyControl_plan_checked
  have fv1 : s2Step129CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step129CompleteOut.fv.payload[2]?.getD s2Step129CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step129CompleteOut.fv.payload[3]?.getD s2Step129CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step129CompleteOut.fv.payload[4]?.getD s2Step129CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step129EntryFBefore s2Step129EarlyControlArena s2Step129FrontBank 205 78 ⟨204,204,79,78⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step129CompleteLog s2Step129FrontPlan Q
    s2Step129Front_checked s2Step129Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step129Complete_owned s2Step129Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step129EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 s2Step129CompleteOut.fv.second (s2Step129CompleteOut.fv.payload[2]?.getD s2Step129CompleteOut.fv.sign) (s2Step129CompleteOut.fv.payload[3]?.getD s2Step129CompleteOut.fv.sign) (s2Step129CompleteOut.fv.payload[4]?.getD s2Step129CompleteOut.fv.sign) 831 37 s2Step129EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep129Arena : Arena := s2Step129EntryFBefore
def s2PrivateStep129Bank : WindowBank := s2Step129FrontBank
def s2PrivateStep129Spec : HmrSourceWalkStepLog := ⟨205,78,⟨204,204,79,78⟩,37,.early s2Step129CompleteLog⟩
def s2PrivateStep129Plan : HmrSourceStepPlan := .early s2Step129CompletePlan
theorem s2PrivateStep129_source : s2PrivateStep129Spec=s2ObservedLogs128[1] := rfl
theorem s2PrivateStep129_checked : compileHmrSourceStepLog s2PrivateStep129Arena s2PrivateStep129Bank
    s2PrivateStep129Spec.fgWidth s2PrivateStep129Spec.vWidth s2PrivateStep129Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 129 s2PrivateStep129Spec.need none s2PrivateStep129Spec.log=some s2PrivateStep129Plan := by
  change compileHmrSourceStepLog s2Step129EntryFBefore s2Step129FrontBank 205 78 ⟨204,204,79,78⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 129 37 none (.early s2Step129CompleteLog)=some (.early s2Step129CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 129<498)]
  rw [s2Step129Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
