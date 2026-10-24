import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep123
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

private def s2Step125CompleteMoves : List (Wire × Wire) := [(829,206)]

private def s2Step125EarlyControlLog : HmrEarlyControlLog := ⟨[829, 849, 825, 817, 781],[790],[815],[867, 877, 879, 882, 883, 884],[]⟩

private def s2Step125FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[825], [849], [832], [824]],[[], [], [], []]⟩,[802],[837],[817],[781],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[817, 781, 790, 815]⟩

private def s2Step125CompleteLog : HmrEarlyStepLog := ⟨s2Step125FrontLog,s2Step125CompleteMoves,s2Step125EarlyControlLog⟩

private def s2Step125ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step125ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step125ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],769⟩

private def s2Step125ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step125FrontOut : WindowBank := ⟨s2Step125ExitFOut,s2Step125ExitGOut,s2Step125ExitFvOut,s2Step125ExitGvOut⟩

private def s2Step125CompleteOut : WindowBank := s2Step125FrontOut.repacked s2Step125CompleteMoves

private def s2Step125EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step125EarlyControlPositiveArena,[790],s2Step125EarlyControlEqualityArena,[815],⟨⟨802,false⟩,[⟨⟨790,false⟩,815⟩]⟩⟩

private def s2Step125EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<885)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,829⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,825⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step125EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step125EarlyControlZeroArena,s2Step125EarlyControlZeroPlan,s2Step125EarlyControlClassPlan,s2Step125EarlyControlFlagArena,s2Step125EarlyControlFittedArena,s2Step125EarlyControlHistoryArena,s2Step125EarlyControlSigmaArena,s2Step125EarlyControlOutputArena,s2Step125EarlyControlLog⟩

private def s2Step125CounterWork : List Wire := [817, 781, 790, 815]

private theorem s2Step125Counter_bounded : s2Step125CounterWork.toFinset⊆arenaWires := by norm_num [s2Step125CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step125HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125CounterDuring : Arena := ⟨s2Step125HeadFvAfter.live∪s2Step125CounterWork.toFinset,Finset.union_subset s2Step125HeadFvAfter.bounded s2Step125Counter_bounded⟩

private def s2Step125EntryFFresh : List Wire := []

private def s2Step125EntryFvFresh : List Wire := []

private def s2Step125EntryGFresh : List Wire := []

private def s2Step125EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125EntryGvAfter : Arena := s2Step125EntryFBefore

private def s2Step125EntryGvFresh : List Wire := []

private def s2Step125ExitFExtra : List Wire := [849]

private def s2Step125ExitGExtra : List Wire := [206, 825]

private def s2Step125ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125ExitGvAfter : Arena := s2Step125ExitFAfter

private def s2Step125Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step125Add0_bounded : s2Step125Add0Work.toFinset⊆arenaWires := by
  have h : s2Step125Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step125Add0During : Arena := ⟨s2Step125Add0Arena.live∪s2Step125Add0Work.toFinset,Finset.union_subset s2Step125Add0Arena.bounded s2Step125Add0_bounded⟩

private def s2Step125Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step125Add1_bounded : s2Step125Add1Work.toFinset⊆arenaWires := by
  have h : s2Step125Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step125Add1During : Arena := ⟨s2Step125Add1Arena.live∪s2Step125Add1Work.toFinset,Finset.union_subset s2Step125Add1Arena.bounded s2Step125Add1_bounded⟩

private def s2Step125F4FlagArena : Arena := ⟨s2Step125HeadFvAfter.live∪{817},Finset.union_subset s2Step125HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step125F4Plan : HmrHybridF4Plan := ⟨s2Step125F4FlagArena,[817],s2Step125Add0Arena,[781],s2Step125Add0During,s2Step125Add0Work,s2Step125Add1During,s2Step125Add1Work⟩

private def s2Step125HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 849],768⟩

private def s2Step125HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step125HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 825],769⟩

private def s2Step125HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step125FrontHead : WindowBank := ⟨s2Step125HeadFOut,s2Step125HeadGOut,s2Step125HeadFvOut,s2Step125HeadGvOut⟩

private def s2Step125EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step125EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step125EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],769⟩

private def s2Step125EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩

private def s2Step125FrontPair : WindowBank := ⟨s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut⟩

private def s2Step125FrontSigmaArena : Arena := ⟨s2Step125EntryGvAfter.live∪{802},Finset.union_subset s2Step125EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step125HeadFFresh : List Wire := [849]

private def s2Step125HeadFvFresh : List Wire := [824]

private def s2Step125HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125HeadGFresh : List Wire := [825]

private def s2Step125HeadGvFresh : List Wire := [832]

private def s2Step125FrontPlan : HmrSourceFront := ⟨s2Step125EntryGvAfter,s2Step125FrontPair,(growRow 768 s2Step125EntryFFresh ++ (growRow 769 s2Step125EntryGFresh ++ (growRow 770 s2Step125EntryFvFresh ++ (growRow 771 s2Step125EntryGvFresh ++ [])))),s2Step125FrontSigmaArena,[802],s2Step125HeadGBefore,[837],
  s2Step125HeadFvAfter,s2Step125FrontHead,(growRow 769 s2Step125HeadGFresh ++ (growRow 768 s2Step125HeadFFresh ++ (growRow 771 s2Step125HeadGvFresh ++ (growRow 770 s2Step125HeadFvFresh ++ [])))),s2Step125F4Plan,s2Step125CounterDuring,s2Step125CounterWork,s2Step125ExitGvAfter,s2Step125FrontOut,(shrinkRow 769 s2Step125ExitGExtra ++ (shrinkRow 768 s2Step125ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))⟩

private def s2Step125CompletePlan : HmrEarlyStepPlan := ⟨s2Step125FrontPlan,s2Step125EarlyControlArena,s2Step125EarlyControlPlan,s2Step125CompleteMoves⟩

private theorem s2Step125Complete_apart : List.Disjoint (s2Step125CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step125CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step125Complete_owned : (s2Step125CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step125CompleteMoveArena : Arena := ⟨s2Step125ExitGvAfter.live∪{206},Finset.union_subset s2Step125ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step125Complete_repack : s2Step125ExitGvAfter.checkRepack s2Step125CompleteMoves=some s2Step125EarlyControlArena := by
  have owned : 829∈s2Step125ExitGvAfter.live := by norm_num [s2Step125ExitGvAfter,s2Step125ExitFAfter,arenaWires]
  have reserve : s2Step125ExitGvAfter.reserve {206}=some s2Step125CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step125ExitGvAfter,s2Step125ExitFAfter,arenaWires]
    · rfl
  have retired : s2Step125CompleteMoveArena.retireSet {829}=s2Step125EarlyControlArena := by
    unfold Arena.retireSet s2Step125EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step125CompleteMoveArena,s2Step125ExitGvAfter,s2Step125ExitFAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step125CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step125CompleteMoveArena.retireSet {829}).checkRepack []=some s2Step125EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step125EarlyControl_branchOwned : ([837] : List Wire).toFinset⊆s2Step125EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_branch : compileHmrBranchRetirement s2Step125EarlyControlSigmaArena 837=some s2Step125EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step125EarlyControl_branchOwned
  · ext q
    simp [s2Step125EarlyControlOutputArena,s2Step125EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step125EarlyControl_classEqualityBorrow : s2Step125EarlyControlPositiveArena.checkBorrow (([802, 790] : List Wire).length-1) s2Step125EarlyControlLog.classWork=some s2Step125EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step125EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step125EarlyControlEqualityArena,s2Step125EarlyControlPositiveArena,s2Step125EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step125EarlyControl_classEqualityOwned : ([802, 790] : List Wire).toFinset⊆s2Step125EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlPositiveArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_classEquality : compileHmrEqualityLog s2Step125EarlyControlPositiveArena [802, 790] 0 s2Step125EarlyControlLog.classWork=some (s2Step125EarlyControlEqualityArena,s2Step125EarlyControlLog.classWork,s2Step125EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step125EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step125EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step125EarlyControl_classOwned : ([777, 781, 802] : List Wire).toFinset⊆s2Step125EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_positiveBorrow : s2Step125EarlyControlZeroArena.checkBorrow (1) s2Step125EarlyControlLog.positiveWork=some s2Step125EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step125EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step125EarlyControlPositiveArena,s2Step125EarlyControlZeroArena,s2Step125EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step125EarlyControl_class : compileHmrSourceClassLog s2Step125EarlyControlZeroArena false 777 s2Step125EarlyControlZeroPlan.top 0 802 s2Step125EarlyControlLog.positiveWork s2Step125EarlyControlLog.classWork=some s2Step125EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step125EarlyControlClassPlan s2Step125EarlyControlZeroArena false 777 s2Step125EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step125EarlyControl_classOwned
  · exact s2Step125EarlyControl_positiveBorrow
  · exact s2Step125EarlyControl_classEquality

private theorem s2Step125EarlyControl_entryRecordOwned : ([837, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_fitBorrow : s2Step125EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step125EarlyControlLog.recordFresh=some s2Step125EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step125EarlyControlFlagArena (fun q => (0≤q ∧ q<885)) rfl
      decide +kernel
    · ext q
      simp [s2Step125EarlyControlFittedArena,s2Step125EarlyControlFlagArena,s2Step125EarlyControlLog,arenaWires]

private theorem s2Step125EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step125EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlFlagArena (fun q => (0≤q ∧ q<885)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_fit : compileHmrRecordGrowLog s2Step125EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step125EarlyControlLog.recordFresh=some s2Step125EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step125EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step125EarlyControl_fitBorrow

private theorem s2Step125EarlyControl_flagsBorrow : s2Step125EarlyControlEqualityArena.checkBorrow (6) s2Step125EarlyControlLog.flagWork=some s2Step125EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step125EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step125EarlyControlFlagArena,s2Step125EarlyControlEqualityArena,s2Step125EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step125EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step125EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlEqualityArena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_flags : compileHmrFlagsLog s2Step125EarlyControlClassPlan.equalityArena s2Step125EarlyControlClassPlan.equality.top 253 252 251 s2Step125EarlyControlLog.flagWork=some s2Step125EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step125EarlyControl_flagsOwned⟩
  · exact s2Step125EarlyControl_flagsBorrow

private theorem s2Step125EarlyControl_historyBorrow : s2Step125EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step125EarlyControlLog.recordFresh=some s2Step125EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step125EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step125EarlyControlHistoryArena,s2Step125EarlyControlArena,s2Step125EarlyControlLog,arenaWires]

private theorem s2Step125EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_history : compileHmrRecordGrowLog s2Step125EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step125EarlyControlLog.recordFresh=some s2Step125EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step125EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step125EarlyControl_historyBorrow

private theorem s2Step125EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step125EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step125EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_sigmaRelease : s2Step125EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step125EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step125EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step125EarlyControlSigmaArena,s2Step125EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step125EarlyControl_sigma : compileHmrSigmaDropLog s2Step125EarlyControlHistoryArena false 0 0 254 802 []=some s2Step125EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step125EarlyControl_sigmaOwned⟩
  · exact s2Step125EarlyControl_sigmaRelease

private theorem s2Step125EarlyControl_zeroBorrow : s2Step125EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step125EarlyControlLog.zeroWork=some s2Step125EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step125EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step125EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step125EarlyControlZeroArena,s2Step125EarlyControlArena,s2Step125EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step125EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step125EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step125EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EarlyControl_zero : compileHmrEqualityLog s2Step125EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step125EarlyControlLog.zeroWork=some (s2Step125EarlyControlZeroArena,s2Step125EarlyControlLog.zeroWork,s2Step125EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step125EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step125EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step125EarlyControl_logged : s2Step125EarlyControlPlan.Logged s2Step125EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 802 254 253 252 251 837 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step125EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step125EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step125EarlyControl_zero
  · exact s2Step125EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step125EarlyControl_flags
  · exact s2Step125EarlyControl_fit
  · exact s2Step125EarlyControl_history
  · exact s2Step125EarlyControl_sigma
  · exact s2Step125EarlyControl_branch

private theorem s2Step125EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step125EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 802 254 253 252 251 837 37 s2Step125EarlyControlLog=some s2Step125EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step125EarlyControlPlan s2Step125EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 802 254 253 252 251 837 37 s2Step125EarlyControl_logged

private def s2Step125EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step125EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step125EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],769⟩

private def s2Step125EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩

private def s2Step125FrontBank : WindowBank := ⟨s2Step125EntryFRow,s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow⟩

private def s2Step125Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 849, 768]

private def s2Step125Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 825, 769]

private def s2Step125Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 770]

private def s2Step125Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 771]

private theorem s2Step125Counter_apart : Disjoint s2Step125HeadFvAfter.live s2Step125CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step125HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125Counter_borrowed : s2Step125HeadFvAfter.checkBorrow 4 s2Step125CounterWork=some s2Step125CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step125HeadFvAfter s2Step125CounterDuring s2Step125CounterWork.toFinset s2Step125Counter_bounded s2Step125Counter_apart rfl

private theorem s2Step125Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step125HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step125HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125Counter_checked : compileHmrCounterStepLog s2Step125HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step125CounterWork=some s2Step125CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step125HeadFvAfter.live := fun q hq => s2Step125Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step125Counter_borrowed

private def s2Step125EntryFAfter : Arena := s2Step125EntryFBefore

private theorem s2Step125EntryBank_incomingDistinct : ([s2Step125EntryFRow,s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125EntryF_Incoming : rowsOwned s2Step125EntryFBefore [s2Step125EntryFRow,s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125EntryFRow,s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow] 0 s2Step125EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125EntryBank_outgoingOwned : rowsOwned s2Step125EntryGvAfter [s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step125EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125EntryF_Outgoing : rowsOwned s2Step125EntryGvAfter [s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut] :=
  hmrRows_owned_drop s2Step125EntryGvAfter [s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut] 0 s2Step125EntryBank_outgoingOwned

private theorem s2Step125EntryF_distinct : (s2Step125EntryFRow.sign::s2Step125EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125EntryF_owned : (s2Step125EntryFRow.sign::s2Step125EntryFRow.payload).toFinset⊆s2Step125EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EntryF_reserved : s2Step125EntryFBefore.reserve s2Step125EntryFFresh.toFinset=some s2Step125EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step125EntryFFresh,arenaWires]
  · norm_num [s2Step125EntryFBefore,s2Step125EntryFFresh,arenaWires]
  · simp only [s2Step125EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step125EntryF_checked : planRowResizeLog s2Step125EntryFBefore s2Step125EntryFRow 207 s2Step125EntryFFresh=
    some (s2Step125EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩,growRow 768 s2Step125EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step125EntryFBefore s2Step125EntryFAfter s2Step125EntryFRow 207 s2Step125EntryFFresh
    s2Step125EntryF_distinct s2Step125EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125EntryF_reserved
  have rowEq : WindowRow.mk (s2Step125EntryFRow.payload++s2Step125EntryFFresh) s2Step125EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step125EntryFvAfter : Arena := s2Step125EntryFBefore

private def s2Step125EntryFvBefore : Arena := s2Step125EntryFBefore

private theorem s2Step125EntryFv_Incoming : rowsOwned s2Step125EntryFvBefore [s2Step125EntryFvRow,s2Step125EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125EntryFRow,s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow] 2 s2Step125EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125EntryFv_Outgoing : rowsOwned s2Step125EntryGvAfter [s2Step125EntryFvOut,s2Step125EntryGvOut] :=
  hmrRows_owned_drop s2Step125EntryGvAfter [s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut] 2 s2Step125EntryBank_outgoingOwned

private theorem s2Step125EntryFv_distinct : (s2Step125EntryFvRow.sign::s2Step125EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125EntryFv_owned : (s2Step125EntryFvRow.sign::s2Step125EntryFvRow.payload).toFinset⊆s2Step125EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EntryFv_reserved : s2Step125EntryFvBefore.reserve s2Step125EntryFvFresh.toFinset=some s2Step125EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step125EntryFvFresh,arenaWires]
  · norm_num [s2Step125EntryFvBefore,s2Step125EntryFBefore,s2Step125EntryFvFresh,arenaWires]
  · simp only [s2Step125EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step125EntryFv_checked : planRowResizeLog s2Step125EntryFvBefore s2Step125EntryFvRow 76 s2Step125EntryFvFresh=
    some (s2Step125EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩,growRow 770 s2Step125EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step125EntryFvBefore s2Step125EntryFvAfter s2Step125EntryFvRow 76 s2Step125EntryFvFresh
    s2Step125EntryFv_distinct s2Step125EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step125EntryFvRow.payload++s2Step125EntryFvFresh) s2Step125EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step125EntryGAfter : Arena := s2Step125EntryFBefore

private def s2Step125EntryGBefore : Arena := s2Step125EntryFBefore

private theorem s2Step125EntryG_Incoming : rowsOwned s2Step125EntryGBefore [s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125EntryFRow,s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow] 1 s2Step125EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125EntryG_Outgoing : rowsOwned s2Step125EntryGvAfter [s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut] :=
  hmrRows_owned_drop s2Step125EntryGvAfter [s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut] 1 s2Step125EntryBank_outgoingOwned

private theorem s2Step125EntryG_distinct : (s2Step125EntryGRow.sign::s2Step125EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125EntryG_owned : (s2Step125EntryGRow.sign::s2Step125EntryGRow.payload).toFinset⊆s2Step125EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EntryG_reserved : s2Step125EntryGBefore.reserve s2Step125EntryGFresh.toFinset=some s2Step125EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step125EntryGFresh,arenaWires]
  · norm_num [s2Step125EntryGBefore,s2Step125EntryFBefore,s2Step125EntryGFresh,arenaWires]
  · simp only [s2Step125EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step125EntryG_checked : planRowResizeLog s2Step125EntryGBefore s2Step125EntryGRow 207 s2Step125EntryGFresh=
    some (s2Step125EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],769⟩,growRow 769 s2Step125EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step125EntryGBefore s2Step125EntryGAfter s2Step125EntryGRow 207 s2Step125EntryGFresh
    s2Step125EntryG_distinct s2Step125EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125EntryG_reserved
  have rowEq : WindowRow.mk (s2Step125EntryGRow.payload++s2Step125EntryGFresh) s2Step125EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step125EntryGvBefore : Arena := s2Step125EntryFBefore

private theorem s2Step125EntryGv_Incoming : rowsOwned s2Step125EntryGvBefore [s2Step125EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125EntryFRow,s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow] 3 s2Step125EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125EntryGv_Outgoing : rowsOwned s2Step125EntryGvAfter [s2Step125EntryGvOut] :=
  hmrRows_owned_drop s2Step125EntryGvAfter [s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut] 3 s2Step125EntryBank_outgoingOwned

private theorem s2Step125EntryGv_distinct : (s2Step125EntryGvRow.sign::s2Step125EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125EntryGv_owned : (s2Step125EntryGvRow.sign::s2Step125EntryGvRow.payload).toFinset⊆s2Step125EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125EntryGv_reserved : s2Step125EntryGvBefore.reserve s2Step125EntryGvFresh.toFinset=some s2Step125EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step125EntryGvFresh,arenaWires]
  · norm_num [s2Step125EntryGvBefore,s2Step125EntryFBefore,s2Step125EntryGvFresh,arenaWires]
  · simp only [s2Step125EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step125EntryGv_checked : planRowResizeLog s2Step125EntryGvBefore s2Step125EntryGvRow 76 s2Step125EntryGvFresh=
    some (s2Step125EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩,growRow 771 s2Step125EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step125EntryGvBefore s2Step125EntryGvAfter s2Step125EntryGvRow 76 s2Step125EntryGvFresh
    s2Step125EntryGv_distinct s2Step125EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step125EntryGvRow.payload++s2Step125EntryGvFresh) s2Step125EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step125EntryBank_rows : planWindowRowsLog s2Step125EntryFBefore [(s2Step125EntryFRow,207),(s2Step125EntryGRow,207),(s2Step125EntryFvRow,76),(s2Step125EntryGvRow,76)] [s2Step125EntryFFresh,s2Step125EntryGFresh,s2Step125EntryFvFresh,s2Step125EntryGvFresh]=
    some (s2Step125EntryGvAfter,[s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut],(growRow 768 s2Step125EntryFFresh ++ (growRow 769 s2Step125EntryGFresh ++ (growRow 770 s2Step125EntryFvFresh ++ (growRow 771 s2Step125EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step125EntryGvAfter [] []=some (s2Step125EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step125EntryGvBefore s2Step125EntryGvAfter s2Step125EntryGvAfter
    s2Step125EntryGvRow s2Step125EntryGvOut 76 s2Step125EntryGvFresh [] [] []
    (growRow 771 s2Step125EntryGvFresh) ([]) s2Step125EntryGv_Incoming s2Step125EntryGv_checked h4 s2Step125EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step125EntryFvBefore s2Step125EntryFvAfter s2Step125EntryGvAfter
    s2Step125EntryFvRow s2Step125EntryFvOut 76 s2Step125EntryFvFresh [(s2Step125EntryGvRow,76)] [s2Step125EntryGvFresh] [s2Step125EntryGvOut]
    (growRow 770 s2Step125EntryFvFresh) ((growRow 771 s2Step125EntryGvFresh ++ [])) s2Step125EntryFv_Incoming s2Step125EntryFv_checked h3 s2Step125EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step125EntryGBefore s2Step125EntryGAfter s2Step125EntryGvAfter
    s2Step125EntryGRow s2Step125EntryGOut 207 s2Step125EntryGFresh [(s2Step125EntryFvRow,76),(s2Step125EntryGvRow,76)] [s2Step125EntryFvFresh,s2Step125EntryGvFresh] [s2Step125EntryFvOut,s2Step125EntryGvOut]
    (growRow 769 s2Step125EntryGFresh) ((growRow 770 s2Step125EntryFvFresh ++ (growRow 771 s2Step125EntryGvFresh ++ []))) s2Step125EntryG_Incoming s2Step125EntryG_checked h2 s2Step125EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step125EntryFBefore s2Step125EntryFAfter s2Step125EntryGvAfter
    s2Step125EntryFRow s2Step125EntryFOut 207 s2Step125EntryFFresh [(s2Step125EntryGRow,207),(s2Step125EntryFvRow,76),(s2Step125EntryGvRow,76)] [s2Step125EntryGFresh,s2Step125EntryFvFresh,s2Step125EntryGvFresh] [s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut]
    (growRow 768 s2Step125EntryFFresh) ((growRow 769 s2Step125EntryGFresh ++ (growRow 770 s2Step125EntryFvFresh ++ (growRow 771 s2Step125EntryGvFresh ++ [])))) s2Step125EntryF_Incoming s2Step125EntryF_checked h1 s2Step125EntryF_Outgoing
  exact h0

private theorem s2Step125EntryBank_checked : compileHmrBankResizeLog .entry s2Step125EntryFBefore ⟨s2Step125EntryFRow,s2Step125EntryGRow,s2Step125EntryFvRow,s2Step125EntryGvRow⟩ ⟨207,207,76,76⟩ [s2Step125EntryFFresh,s2Step125EntryGFresh,s2Step125EntryFvFresh,s2Step125EntryGvFresh]=
    some (s2Step125EntryGvAfter,⟨s2Step125EntryFOut,s2Step125EntryGOut,s2Step125EntryFvOut,s2Step125EntryGvOut⟩,(growRow 768 s2Step125EntryFFresh ++ (growRow 769 s2Step125EntryGFresh ++ (growRow 770 s2Step125EntryFvFresh ++ (growRow 771 s2Step125EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step125EntryBank_rows]
  rfl

private def s2Step125ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125ExitFBefore : Arena := s2Step125ExitGAfter

private def s2Step125ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 849],768⟩

private def s2Step125ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step125ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 825],769⟩

private def s2Step125ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private theorem s2Step125ExitBank_incomingDistinct : ([s2Step125ExitGRow,s2Step125ExitFRow,s2Step125ExitFvRow,s2Step125ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125ExitF_Incoming : rowsOwned s2Step125ExitFBefore [s2Step125ExitFRow,s2Step125ExitFvRow,s2Step125ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125ExitGRow,s2Step125ExitFRow,s2Step125ExitFvRow,s2Step125ExitGvRow] 1 s2Step125ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125ExitFBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125ExitBank_outgoingOwned : rowsOwned s2Step125ExitGvAfter [s2Step125ExitGOut,s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step125ExitGvAfter (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125ExitF_Outgoing : rowsOwned s2Step125ExitGvAfter [s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut] :=
  hmrRows_owned_drop s2Step125ExitGvAfter [s2Step125ExitGOut,s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut] 1 s2Step125ExitBank_outgoingOwned

private theorem s2Step125ExitF_distinct : (s2Step125ExitFRow.sign::s2Step125ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125ExitF_owned : (s2Step125ExitFRow.sign::s2Step125ExitFRow.payload).toFinset⊆s2Step125ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125ExitFBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125ExitF_retired : s2Step125ExitFBefore.retireSet s2Step125ExitFExtra.toFinset=s2Step125ExitFAfter := by
  unfold Arena.retireSet s2Step125ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step125ExitFBefore,s2Step125ExitGAfter,s2Step125ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step125ExitF_checked : planRowResizeLog s2Step125ExitFBefore s2Step125ExitFRow 207 []=
    some (s2Step125ExitFAfter,s2Step125ExitFOut,shrinkRow 768 s2Step125ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step125ExitFBefore s2Step125ExitFRow 207 s2Step125ExitF_distinct s2Step125ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step125ExitFRow.payload.take 207) s2Step125ExitFRow.sign=s2Step125ExitFOut := by decide +kernel
  have hi : s2Step125ExitFRow.payload.drop 207=s2Step125ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step125ExitF_retired] at result
  exact result

private def s2Step125ExitFvAfter : Arena := s2Step125ExitFAfter

private def s2Step125ExitFvBefore : Arena := s2Step125ExitFAfter

private theorem s2Step125ExitFv_Incoming : rowsOwned s2Step125ExitFvBefore [s2Step125ExitFvRow,s2Step125ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125ExitGRow,s2Step125ExitFRow,s2Step125ExitFvRow,s2Step125ExitGvRow] 2 s2Step125ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125ExitFvBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125ExitFv_Outgoing : rowsOwned s2Step125ExitGvAfter [s2Step125ExitFvOut,s2Step125ExitGvOut] :=
  hmrRows_owned_drop s2Step125ExitGvAfter [s2Step125ExitGOut,s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut] 2 s2Step125ExitBank_outgoingOwned

private theorem s2Step125ExitFv_distinct : (s2Step125ExitFvRow.sign::s2Step125ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125ExitFv_owned : (s2Step125ExitFvRow.sign::s2Step125ExitFvRow.payload).toFinset⊆s2Step125ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125ExitFvBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125ExitFv_reserved : s2Step125ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step125ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step125ExitFv_checked : planRowResizeLog s2Step125ExitFvBefore s2Step125ExitFvRow 77 []=
    some (s2Step125ExitFvAfter,s2Step125ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step125ExitFvBefore s2Step125ExitFvAfter s2Step125ExitFvRow 77 []
    s2Step125ExitFv_distinct s2Step125ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step125ExitFvRow.payload++[]) s2Step125ExitFvRow.sign=s2Step125ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step125ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step125ExitG_Incoming : rowsOwned s2Step125ExitGBefore [s2Step125ExitGRow,s2Step125ExitFRow,s2Step125ExitFvRow,s2Step125ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125ExitGRow,s2Step125ExitFRow,s2Step125ExitFvRow,s2Step125ExitGvRow] 0 s2Step125ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125ExitG_Outgoing : rowsOwned s2Step125ExitGvAfter [s2Step125ExitGOut,s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut] :=
  hmrRows_owned_drop s2Step125ExitGvAfter [s2Step125ExitGOut,s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut] 0 s2Step125ExitBank_outgoingOwned

private theorem s2Step125ExitG_distinct : (s2Step125ExitGRow.sign::s2Step125ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125ExitG_owned : (s2Step125ExitGRow.sign::s2Step125ExitGRow.payload).toFinset⊆s2Step125ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125ExitG_retired : s2Step125ExitGBefore.retireSet s2Step125ExitGExtra.toFinset=s2Step125ExitGAfter := by
  unfold Arena.retireSet s2Step125ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step125ExitGBefore,s2Step125ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step125ExitG_checked : planRowResizeLog s2Step125ExitGBefore s2Step125ExitGRow 206 []=
    some (s2Step125ExitGAfter,s2Step125ExitGOut,shrinkRow 769 s2Step125ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step125ExitGBefore s2Step125ExitGRow 206 s2Step125ExitG_distinct s2Step125ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step125ExitGRow.payload.take 206) s2Step125ExitGRow.sign=s2Step125ExitGOut := by decide +kernel
  have hi : s2Step125ExitGRow.payload.drop 206=s2Step125ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step125ExitG_retired] at result
  exact result

private def s2Step125ExitGvBefore : Arena := s2Step125ExitFAfter

private theorem s2Step125ExitGv_Incoming : rowsOwned s2Step125ExitGvBefore [s2Step125ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125ExitGRow,s2Step125ExitFRow,s2Step125ExitFvRow,s2Step125ExitGvRow] 3 s2Step125ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125ExitGvBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125ExitGv_Outgoing : rowsOwned s2Step125ExitGvAfter [s2Step125ExitGvOut] :=
  hmrRows_owned_drop s2Step125ExitGvAfter [s2Step125ExitGOut,s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut] 3 s2Step125ExitBank_outgoingOwned

private theorem s2Step125ExitGv_distinct : (s2Step125ExitGvRow.sign::s2Step125ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125ExitGv_owned : (s2Step125ExitGvRow.sign::s2Step125ExitGvRow.payload).toFinset⊆s2Step125ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125ExitGvBefore (fun q => (0≤q ∧ q<206) ∨ (207≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125ExitGv_reserved : s2Step125ExitGvBefore.reserve (∅ : Finset Wire)=some s2Step125ExitGvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step125ExitGv_checked : planRowResizeLog s2Step125ExitGvBefore s2Step125ExitGvRow 77 []=
    some (s2Step125ExitGvAfter,s2Step125ExitGvOut,growRow 771 []) := by
  have result := planRowResizeLog_of_growth s2Step125ExitGvBefore s2Step125ExitGvAfter s2Step125ExitGvRow 77 []
    s2Step125ExitGv_distinct s2Step125ExitGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125ExitGv_reserved
  have rowEq : WindowRow.mk (s2Step125ExitGvRow.payload++[]) s2Step125ExitGvRow.sign=s2Step125ExitGvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step125ExitBank_rows : planWindowRowsLog s2Step125ExitGBefore [(s2Step125ExitGRow,206),(s2Step125ExitFRow,207),(s2Step125ExitFvRow,77),(s2Step125ExitGvRow,77)] [[],[],[],[]]=
    some (s2Step125ExitGvAfter,[s2Step125ExitGOut,s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut],(shrinkRow 769 s2Step125ExitGExtra ++ (shrinkRow 768 s2Step125ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  have h4 : planWindowRowsLog s2Step125ExitGvAfter [] []=some (s2Step125ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step125ExitGvBefore s2Step125ExitGvAfter s2Step125ExitGvAfter
    s2Step125ExitGvRow s2Step125ExitGvOut 77 [] [] [] []
    (growRow 771 []) ([]) s2Step125ExitGv_Incoming s2Step125ExitGv_checked h4 s2Step125ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step125ExitFvBefore s2Step125ExitFvAfter s2Step125ExitGvAfter
    s2Step125ExitFvRow s2Step125ExitFvOut 77 [] [(s2Step125ExitGvRow,77)] [[]] [s2Step125ExitGvOut]
    (growRow 770 []) ((growRow 771 [] ++ [])) s2Step125ExitFv_Incoming s2Step125ExitFv_checked h3 s2Step125ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step125ExitFBefore s2Step125ExitFAfter s2Step125ExitGvAfter
    s2Step125ExitFRow s2Step125ExitFOut 207 [] [(s2Step125ExitFvRow,77),(s2Step125ExitGvRow,77)] [[],[]] [s2Step125ExitFvOut,s2Step125ExitGvOut]
    (shrinkRow 768 s2Step125ExitFExtra) ((growRow 770 [] ++ (growRow 771 [] ++ []))) s2Step125ExitF_Incoming s2Step125ExitF_checked h2 s2Step125ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step125ExitGBefore s2Step125ExitGAfter s2Step125ExitGvAfter
    s2Step125ExitGRow s2Step125ExitGOut 206 [] [(s2Step125ExitFRow,207),(s2Step125ExitFvRow,77),(s2Step125ExitGvRow,77)] [[],[],[]] [s2Step125ExitFOut,s2Step125ExitFvOut,s2Step125ExitGvOut]
    (shrinkRow 769 s2Step125ExitGExtra) ((shrinkRow 768 s2Step125ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ [])))) s2Step125ExitG_Incoming s2Step125ExitG_checked h1 s2Step125ExitG_Outgoing
  exact h0

private theorem s2Step125ExitBank_checked : compileHmrBankResizeLog .exit s2Step125ExitGBefore ⟨s2Step125ExitFRow,s2Step125ExitGRow,s2Step125ExitFvRow,s2Step125ExitGvRow⟩ ⟨207,206,77,77⟩ [[],[],[],[]]=
    some (s2Step125ExitGvAfter,⟨s2Step125ExitFOut,s2Step125ExitGOut,s2Step125ExitFvOut,s2Step125ExitGvOut⟩,(shrinkRow 769 s2Step125ExitGExtra ++ (shrinkRow 768 s2Step125ExitFExtra ++ (growRow 770 [] ++ (growRow 771 [] ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step125ExitBank_rows]
  rfl

private theorem s2Step125Add0_apart : Disjoint s2Step125Add0Arena.live s2Step125Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step125Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125Add0_card : s2Step125Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step125Add0_borrowed : s2Step125Add0Arena.checkBorrow (hmrHybridCount s2Step125Add0Arena s2Step125Add0B.length) s2Step125Add0Work=some s2Step125Add0During := by
  have len : s2Step125Add0Work.length=hmrHybridCount s2Step125Add0Arena s2Step125Add0B.length := by
    rw [hmrHybridCount,s2Step125Add0_card]
    decide +kernel
  have nd : s2Step125Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step125Add0Arena s2Step125Add0During s2Step125Add0Work.toFinset s2Step125Add0_bounded s2Step125Add0_apart rfl

private theorem s2Step125Add0_distinct : (817::837::781::(s2Step125Add0A++s2Step125Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125Add0_owned : (817::837::781::(s2Step125Add0A++s2Step125Add0B)).toFinset⊆s2Step125Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step125Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125Add0_checked : compileHmrHybridCinLog s2Step125Add0Arena 837 817 781 s2Step125Add0A s2Step125Add0B s2Step125Add0Work=some s2Step125Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step125Add0Arena s2Step125Add0During 837 817 781 s2Step125Add0A s2Step125Add0B s2Step125Add0Work
    (by decide +kernel) (by decide +kernel) s2Step125Add0_distinct
    (fun q hq => s2Step125Add0_owned (List.mem_toFinset.mpr hq)) s2Step125Add0_borrowed

private theorem s2Step125Add1_apart : Disjoint s2Step125Add1Arena.live s2Step125Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step125Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125Add1_card : s2Step125Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step125Add1_borrowed : s2Step125Add1Arena.checkBorrow (hmrHybridCount s2Step125Add1Arena s2Step125Add1B.length) s2Step125Add1Work=some s2Step125Add1During := by
  have len : s2Step125Add1Work.length=hmrHybridCount s2Step125Add1Arena s2Step125Add1B.length := by
    rw [hmrHybridCount,s2Step125Add1_card]
    decide +kernel
  have nd : s2Step125Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step125Add1Arena s2Step125Add1During s2Step125Add1Work.toFinset s2Step125Add1_bounded s2Step125Add1_apart rfl

private theorem s2Step125Add1_distinct : (817::837::781::(s2Step125Add1A++s2Step125Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125Add1_owned : (817::837::781::(s2Step125Add1A++s2Step125Add1B)).toFinset⊆s2Step125Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step125Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125Add1_checked : compileHmrHybridCinLog s2Step125Add1Arena 837 817 781 s2Step125Add1A s2Step125Add1B s2Step125Add1Work=some s2Step125Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step125Add1Arena s2Step125Add1During 837 817 781 s2Step125Add1A s2Step125Add1B s2Step125Add1Work
    (by decide +kernel) (by decide +kernel) s2Step125Add1_distinct
    (fun q hq => s2Step125Add1_owned (List.mem_toFinset.mpr hq)) s2Step125Add1_borrowed

private theorem s2Step125F4_apart : Disjoint (s2Step125Add0A++s2Step125Add0B).toFinset (s2Step125Add1A++s2Step125Add1B).toFinset := by
  have nd : ((s2Step125Add0A++s2Step125Add0B)++(s2Step125Add1A++s2Step125Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step125F4_carry : s2Step125F4FlagArena.checkBorrow 1 [781]=some s2Step125Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step125F4FlagArena,s2Step125HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step125F4FlagArena,s2Step125HeadFvAfter,s2Step125Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step125F4_distinct : (802::837::817::781::((s2Step125Add0A++s2Step125Add1A)++(s2Step125Add0B++s2Step125Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125F4_flag : s2Step125HeadFvAfter.checkBorrow 1 [817]=some s2Step125F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step125HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step125F4_owned : (802::837::((s2Step125Add0A++s2Step125Add1A)++(s2Step125Add0B++s2Step125Add1B))).toFinset⊆s2Step125HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step125HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125F4_checked : compileHmrHybridF4Log s2Step125HeadFvAfter 802 837 s2Step125Add0A s2Step125Add0B s2Step125Add1A s2Step125Add1B [817] [781] s2Step125Add0Work s2Step125Add1Work=some s2Step125F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step125HeadFvAfter s2Step125F4FlagArena s2Step125Add0Arena s2Step125Add0During s2Step125Add1During 802 837
    s2Step125Add0A s2Step125Add0B s2Step125Add1A s2Step125Add1B [817] [781] s2Step125Add0Work s2Step125Add1Work
    (fun q hq => s2Step125F4_owned (List.mem_toFinset.mpr hq)) s2Step125F4_flag s2Step125F4_carry
    s2Step125F4_distinct s2Step125F4_apart s2Step125Add0_checked s2Step125Add1_checked

private theorem s2Step125Front_branch : s2Step125FrontSigmaArena.checkBorrow 1 [837]=some s2Step125HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step125FrontSigmaArena,s2Step125EntryGvAfter,s2Step125EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step125FrontSigmaArena,s2Step125EntryGvAfter,s2Step125EntryFBefore,s2Step125HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step125Front_entry : HmrFrontEntryValid s2Step125EntryFBefore s2Step125FrontBank 207 76 ⟨207,206,77,77⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step125FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step125EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step125EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step125FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step125Front_sigma : s2Step125EntryGvAfter.checkBorrow 1 [802]=some s2Step125FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step125EntryGvAfter,s2Step125EntryFBefore,arenaWires]
  · rfl

private def s2Step125HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125HeadFBefore : Arena := s2Step125HeadGAfter

private def s2Step125HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step125HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step125HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],769⟩

private def s2Step125HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩

private theorem s2Step125HeadBank_incomingDistinct : ([s2Step125HeadGRow,s2Step125HeadFRow,s2Step125HeadGvRow,s2Step125HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125HeadF_Incoming : rowsOwned s2Step125HeadFBefore [s2Step125HeadFRow,s2Step125HeadGvRow,s2Step125HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125HeadGRow,s2Step125HeadFRow,s2Step125HeadGvRow,s2Step125HeadFvRow] 1 s2Step125HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125HeadBank_outgoingOwned : rowsOwned s2Step125HeadFvAfter [s2Step125HeadGOut,s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step125HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125HeadF_Outgoing : rowsOwned s2Step125HeadFvAfter [s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut] :=
  hmrRows_owned_drop s2Step125HeadFvAfter [s2Step125HeadGOut,s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut] 1 s2Step125HeadBank_outgoingOwned

private theorem s2Step125HeadF_distinct : (s2Step125HeadFRow.sign::s2Step125HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125HeadF_owned : (s2Step125HeadFRow.sign::s2Step125HeadFRow.payload).toFinset⊆s2Step125HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125HeadF_reserved : s2Step125HeadFBefore.reserve s2Step125HeadFFresh.toFinset=some s2Step125HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step125HeadFFresh,arenaWires]
  · norm_num [s2Step125HeadFBefore,s2Step125HeadGAfter,s2Step125HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step125HeadFAfter,s2Step125HeadFBefore,s2Step125HeadGAfter,s2Step125HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step125HeadF_checked : planRowResizeLog s2Step125HeadFBefore s2Step125HeadFRow 208 s2Step125HeadFFresh=
    some (s2Step125HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 849],768⟩,growRow 768 s2Step125HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step125HeadFBefore s2Step125HeadFAfter s2Step125HeadFRow 208 s2Step125HeadFFresh
    s2Step125HeadF_distinct s2Step125HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125HeadF_reserved
  have rowEq : WindowRow.mk (s2Step125HeadFRow.payload++s2Step125HeadFFresh) s2Step125HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 849],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step125HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step125HeadFvBefore : Arena := s2Step125HeadGvAfter

private theorem s2Step125HeadFv_Incoming : rowsOwned s2Step125HeadFvBefore [s2Step125HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125HeadGRow,s2Step125HeadFRow,s2Step125HeadGvRow,s2Step125HeadFvRow] 3 s2Step125HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125HeadFv_Outgoing : rowsOwned s2Step125HeadFvAfter [s2Step125HeadFvOut] :=
  hmrRows_owned_drop s2Step125HeadFvAfter [s2Step125HeadGOut,s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut] 3 s2Step125HeadBank_outgoingOwned

private theorem s2Step125HeadFv_distinct : (s2Step125HeadFvRow.sign::s2Step125HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125HeadFv_owned : (s2Step125HeadFvRow.sign::s2Step125HeadFvRow.payload).toFinset⊆s2Step125HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125HeadFv_reserved : s2Step125HeadFvBefore.reserve s2Step125HeadFvFresh.toFinset=some s2Step125HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step125HeadFvFresh,arenaWires]
  · norm_num [s2Step125HeadFvBefore,s2Step125HeadGvAfter,s2Step125HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step125HeadFvAfter,s2Step125HeadFvBefore,s2Step125HeadGvAfter,s2Step125HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step125HeadFv_checked : planRowResizeLog s2Step125HeadFvBefore s2Step125HeadFvRow 77 s2Step125HeadFvFresh=
    some (s2Step125HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩,growRow 770 s2Step125HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step125HeadFvBefore s2Step125HeadFvAfter s2Step125HeadFvRow 77 s2Step125HeadFvFresh
    s2Step125HeadFv_distinct s2Step125HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step125HeadFvRow.payload++s2Step125HeadFvFresh) s2Step125HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step125HeadG_Incoming : rowsOwned s2Step125HeadGBefore [s2Step125HeadGRow,s2Step125HeadFRow,s2Step125HeadGvRow,s2Step125HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125HeadGRow,s2Step125HeadFRow,s2Step125HeadGvRow,s2Step125HeadFvRow] 0 s2Step125HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125HeadG_Outgoing : rowsOwned s2Step125HeadFvAfter [s2Step125HeadGOut,s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut] :=
  hmrRows_owned_drop s2Step125HeadFvAfter [s2Step125HeadGOut,s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut] 0 s2Step125HeadBank_outgoingOwned

private theorem s2Step125HeadG_distinct : (s2Step125HeadGRow.sign::s2Step125HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125HeadG_owned : (s2Step125HeadGRow.sign::s2Step125HeadGRow.payload).toFinset⊆s2Step125HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125HeadG_reserved : s2Step125HeadGBefore.reserve s2Step125HeadGFresh.toFinset=some s2Step125HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step125HeadGFresh,arenaWires]
  · norm_num [s2Step125HeadGBefore,s2Step125HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step125HeadGAfter,s2Step125HeadGBefore,s2Step125HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step125HeadG_checked : planRowResizeLog s2Step125HeadGBefore s2Step125HeadGRow 208 s2Step125HeadGFresh=
    some (s2Step125HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 825],769⟩,growRow 769 s2Step125HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step125HeadGBefore s2Step125HeadGAfter s2Step125HeadGRow 208 s2Step125HeadGFresh
    s2Step125HeadG_distinct s2Step125HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125HeadG_reserved
  have rowEq : WindowRow.mk (s2Step125HeadGRow.payload++s2Step125HeadGFresh) s2Step125HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 825],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step125HeadGvBefore : Arena := s2Step125HeadFAfter

private theorem s2Step125HeadGv_Incoming : rowsOwned s2Step125HeadGvBefore [s2Step125HeadGvRow,s2Step125HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step125HeadGRow,s2Step125HeadFRow,s2Step125HeadGvRow,s2Step125HeadFvRow] 2 s2Step125HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step125HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step125HeadGv_Outgoing : rowsOwned s2Step125HeadFvAfter [s2Step125HeadGvOut,s2Step125HeadFvOut] :=
  hmrRows_owned_drop s2Step125HeadFvAfter [s2Step125HeadGOut,s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut] 2 s2Step125HeadBank_outgoingOwned

private theorem s2Step125HeadGv_distinct : (s2Step125HeadGvRow.sign::s2Step125HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step125HeadGv_owned : (s2Step125HeadGvRow.sign::s2Step125HeadGvRow.payload).toFinset⊆s2Step125HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step125HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step125HeadGv_reserved : s2Step125HeadGvBefore.reserve s2Step125HeadGvFresh.toFinset=some s2Step125HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step125HeadGvFresh,arenaWires]
  · norm_num [s2Step125HeadGvBefore,s2Step125HeadFAfter,s2Step125HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step125HeadGvAfter,s2Step125HeadGvBefore,s2Step125HeadFAfter,s2Step125HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step125HeadGv_checked : planRowResizeLog s2Step125HeadGvBefore s2Step125HeadGvRow 77 s2Step125HeadGvFresh=
    some (s2Step125HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩,growRow 771 s2Step125HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step125HeadGvBefore s2Step125HeadGvAfter s2Step125HeadGvRow 77 s2Step125HeadGvFresh
    s2Step125HeadGv_distinct s2Step125HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step125HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step125HeadGvRow.payload++s2Step125HeadGvFresh) s2Step125HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step125HeadBank_rows : planWindowRowsLog s2Step125HeadGBefore [(s2Step125HeadGRow,208),(s2Step125HeadFRow,208),(s2Step125HeadGvRow,77),(s2Step125HeadFvRow,77)] [s2Step125HeadGFresh,s2Step125HeadFFresh,s2Step125HeadGvFresh,s2Step125HeadFvFresh]=
    some (s2Step125HeadFvAfter,[s2Step125HeadGOut,s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut],(growRow 769 s2Step125HeadGFresh ++ (growRow 768 s2Step125HeadFFresh ++ (growRow 771 s2Step125HeadGvFresh ++ (growRow 770 s2Step125HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step125HeadFvAfter [] []=some (s2Step125HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step125HeadFvBefore s2Step125HeadFvAfter s2Step125HeadFvAfter
    s2Step125HeadFvRow s2Step125HeadFvOut 77 s2Step125HeadFvFresh [] [] []
    (growRow 770 s2Step125HeadFvFresh) ([]) s2Step125HeadFv_Incoming s2Step125HeadFv_checked h4 s2Step125HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step125HeadGvBefore s2Step125HeadGvAfter s2Step125HeadFvAfter
    s2Step125HeadGvRow s2Step125HeadGvOut 77 s2Step125HeadGvFresh [(s2Step125HeadFvRow,77)] [s2Step125HeadFvFresh] [s2Step125HeadFvOut]
    (growRow 771 s2Step125HeadGvFresh) ((growRow 770 s2Step125HeadFvFresh ++ [])) s2Step125HeadGv_Incoming s2Step125HeadGv_checked h3 s2Step125HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step125HeadFBefore s2Step125HeadFAfter s2Step125HeadFvAfter
    s2Step125HeadFRow s2Step125HeadFOut 208 s2Step125HeadFFresh [(s2Step125HeadGvRow,77),(s2Step125HeadFvRow,77)] [s2Step125HeadGvFresh,s2Step125HeadFvFresh] [s2Step125HeadGvOut,s2Step125HeadFvOut]
    (growRow 768 s2Step125HeadFFresh) ((growRow 771 s2Step125HeadGvFresh ++ (growRow 770 s2Step125HeadFvFresh ++ []))) s2Step125HeadF_Incoming s2Step125HeadF_checked h2 s2Step125HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step125HeadGBefore s2Step125HeadGAfter s2Step125HeadFvAfter
    s2Step125HeadGRow s2Step125HeadGOut 208 s2Step125HeadGFresh [(s2Step125HeadFRow,208),(s2Step125HeadGvRow,77),(s2Step125HeadFvRow,77)] [s2Step125HeadFFresh,s2Step125HeadGvFresh,s2Step125HeadFvFresh] [s2Step125HeadFOut,s2Step125HeadGvOut,s2Step125HeadFvOut]
    (growRow 769 s2Step125HeadGFresh) ((growRow 768 s2Step125HeadFFresh ++ (growRow 771 s2Step125HeadGvFresh ++ (growRow 770 s2Step125HeadFvFresh ++ [])))) s2Step125HeadG_Incoming s2Step125HeadG_checked h1 s2Step125HeadG_Outgoing
  exact h0

private theorem s2Step125HeadBank_checked : compileHmrBankResizeLog .headroom s2Step125HeadGBefore ⟨s2Step125HeadFRow,s2Step125HeadGRow,s2Step125HeadFvRow,s2Step125HeadGvRow⟩ ⟨208,208,77,77⟩ [s2Step125HeadGFresh,s2Step125HeadFFresh,s2Step125HeadGvFresh,s2Step125HeadFvFresh]=
    some (s2Step125HeadFvAfter,⟨s2Step125HeadFOut,s2Step125HeadGOut,s2Step125HeadFvOut,s2Step125HeadGvOut⟩,(growRow 769 s2Step125HeadGFresh ++ (growRow 768 s2Step125HeadFFresh ++ (growRow 771 s2Step125HeadGvFresh ++ (growRow 770 s2Step125HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step125HeadBank_rows]
  rfl

private theorem s2Step125Front_checked : compileHmrSourceFrontLog s2Step125EntryFBefore s2Step125FrontBank 207 76 ⟨207,206,77,77⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step125FrontLog=some s2Step125FrontPlan := by
  have pairEq : s2Step125FrontPair=⟨s2Step125HeadFRow,s2Step125HeadGRow,s2Step125HeadFvRow,s2Step125HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step125FrontHead=⟨s2Step125ExitFRow,s2Step125ExitGRow,s2Step125ExitFvRow,s2Step125ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step125Add0A=s2Step125FrontHead.f.wires := by decide +kernel
  have gEq : s2Step125Add0B=s2Step125FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step125Add1A=s2Step125FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step125Add1B=s2Step125FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step125EntryFBefore s2Step125FrontBank 207 76 ⟨207,206,77,77⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step125FrontLog s2Step125FrontPlan
  · exact s2Step125Front_entry
  · exact s2Step125EntryBank_checked
  · exact s2Step125Front_sigma
  · rfl
  · exact s2Step125Front_branch
  · rfl
  · simpa only [s2Step125FrontPlan,pairEq] using s2Step125HeadBank_checked
  · simpa only [s2Step125FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step125F4_checked
  · exact s2Step125Counter_checked
  · rfl
  · simpa only [s2Step125FrontPlan,headEq] using s2Step125ExitBank_checked

private theorem s2Step125Complete_explicit_checked : compileHmrEarlyStepLog s2Step125EntryFBefore s2Step125FrontBank 207 76 ⟨207,206,77,77⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step125CompleteLog=some s2Step125CompletePlan := by
  let Q := s2Step125EarlyControlPlan
  have hq := s2Step125EarlyControl_plan_checked
  have fv1 : s2Step125CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step125CompleteOut.fv.payload[2]?.getD s2Step125CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step125CompleteOut.fv.payload[3]?.getD s2Step125CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step125CompleteOut.fv.payload[4]?.getD s2Step125CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step125EntryFBefore s2Step125EarlyControlArena s2Step125FrontBank 207 76 ⟨207,206,77,77⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step125CompleteLog s2Step125FrontPlan Q
    s2Step125Front_checked s2Step125Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step125Complete_owned s2Step125Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step125EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 802 s2Step125CompleteOut.fv.second (s2Step125CompleteOut.fv.payload[2]?.getD s2Step125CompleteOut.fv.sign) (s2Step125CompleteOut.fv.payload[3]?.getD s2Step125CompleteOut.fv.sign) (s2Step125CompleteOut.fv.payload[4]?.getD s2Step125CompleteOut.fv.sign) 837 37 s2Step125EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep125Arena : Arena := s2Step125EntryFBefore
def s2PrivateStep125Bank : WindowBank := s2Step125FrontBank
def s2PrivateStep125Spec : HmrSourceWalkStepLog := ⟨207,76,⟨207,206,77,77⟩,37,.early s2Step125CompleteLog⟩
def s2PrivateStep125Plan : HmrSourceStepPlan := .early s2Step125CompletePlan
theorem s2PrivateStep125_source : s2PrivateStep125Spec=s2ObservedLogs112[13] := rfl
theorem s2PrivateStep125_checked : compileHmrSourceStepLog s2PrivateStep125Arena s2PrivateStep125Bank
    s2PrivateStep125Spec.fgWidth s2PrivateStep125Spec.vWidth s2PrivateStep125Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 125 s2PrivateStep125Spec.need none s2PrivateStep125Spec.log=some s2PrivateStep125Plan := by
  change compileHmrSourceStepLog s2Step125EntryFBefore s2Step125FrontBank 207 76 ⟨207,206,77,77⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 125 37 none (.early s2Step125CompleteLog)=some (.early s2Step125CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 125<498)]
  rw [s2Step125Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
