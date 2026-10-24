import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep124
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

private def s2Step126CompleteMoves : List (Wire × Wire) := [(822,718)]

private def s2Step126EarlyControlLog : HmrEarlyControlLog := ⟨[822, 817, 781, 825, 837],[849],[790],[815, 867, 877, 879, 882, 883],[]⟩

private def s2Step126FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [837], [], []],[[849], [825], [817], [781]],[[], [], [], []]⟩,[802],[829],[790],[815],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step126CompleteLog : HmrEarlyStepLog := ⟨s2Step126FrontLog,s2Step126CompleteMoves,s2Step126EarlyControlLog⟩

private def s2Step126ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717],768⟩

private def s2Step126ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step126ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],769⟩

private def s2Step126ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step126FrontOut : WindowBank := ⟨s2Step126ExitFOut,s2Step126ExitGOut,s2Step126ExitFvOut,s2Step126ExitGvOut⟩

private def s2Step126CompleteOut : WindowBank := s2Step126FrontOut.repacked s2Step126CompleteMoves

private def s2Step126EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step126EarlyControlPositiveArena,[849],s2Step126EarlyControlEqualityArena,[790],⟨⟨802,false⟩,[⟨⟨849,false⟩,790⟩]⟩⟩

private def s2Step126EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,822⟩,⟨⟨774,false⟩,817⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,825⟩,⟨⟨777,false⟩,837⟩]⟩

private def s2Step126EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step126EarlyControlZeroArena,s2Step126EarlyControlZeroPlan,s2Step126EarlyControlClassPlan,s2Step126EarlyControlFlagArena,s2Step126EarlyControlFittedArena,s2Step126EarlyControlHistoryArena,s2Step126EarlyControlSigmaArena,s2Step126EarlyControlOutputArena,s2Step126EarlyControlLog⟩

private def s2Step126CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step126Counter_bounded : s2Step126CounterWork.toFinset⊆arenaWires := by norm_num [s2Step126CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step126HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126CounterDuring : Arena := ⟨s2Step126HeadFvAfter.live∪s2Step126CounterWork.toFinset,Finset.union_subset s2Step126HeadFvAfter.bounded s2Step126Counter_bounded⟩

private def s2Step126EntryFFresh : List Wire := []

private def s2Step126EntryFvFresh : List Wire := []

private def s2Step126EntryGFresh : List Wire := [837]

private def s2Step126EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EntryGvAfter : Arena := s2Step126EntryGAfter

private def s2Step126EntryGvFresh : List Wire := []

private def s2Step126ExitFExtra : List Wire := [718, 825]

private def s2Step126ExitFvExtra : List Wire := [781]

private def s2Step126ExitGExtra : List Wire := [837, 849]

private def s2Step126ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<718) ∨ (719≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126ExitGvExtra : List Wire := [817]

private def s2Step126Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126Add0Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step126Add0_bounded : s2Step126Add0Work.toFinset⊆arenaWires := by
  have h : s2Step126Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step126Add0During : Arena := ⟨s2Step126Add0Arena.live∪s2Step126Add0Work.toFinset,Finset.union_subset s2Step126Add0Arena.bounded s2Step126Add0_bounded⟩

private def s2Step126Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126Add1Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step126Add1_bounded : s2Step126Add1Work.toFinset⊆arenaWires := by
  have h : s2Step126Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step126Add1During : Arena := ⟨s2Step126Add1Arena.live∪s2Step126Add1Work.toFinset,Finset.union_subset s2Step126Add1Arena.bounded s2Step126Add1_bounded⟩

private def s2Step126F4FlagArena : Arena := ⟨s2Step126HeadFvAfter.live∪{790},Finset.union_subset s2Step126HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step126F4Plan : HmrHybridF4Plan := ⟨s2Step126F4FlagArena,[790],s2Step126Add0Arena,[815],s2Step126Add0During,s2Step126Add0Work,s2Step126Add1During,s2Step126Add1Work⟩

private def s2Step126HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 825],768⟩

private def s2Step126HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 781],770⟩

private def s2Step126HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837, 849],769⟩

private def s2Step126HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 817],771⟩

private def s2Step126FrontHead : WindowBank := ⟨s2Step126HeadFOut,s2Step126HeadGOut,s2Step126HeadFvOut,s2Step126HeadGvOut⟩

private def s2Step126EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step126EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step126EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837],769⟩

private def s2Step126EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step126FrontPair : WindowBank := ⟨s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut⟩

private def s2Step126FrontSigmaArena : Arena := ⟨s2Step126EntryGvAfter.live∪{802},Finset.union_subset s2Step126EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step126HeadFFresh : List Wire := [825]

private def s2Step126HeadFvFresh : List Wire := [781]

private def s2Step126HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126HeadGFresh : List Wire := [849]

private def s2Step126HeadGvFresh : List Wire := [817]

private def s2Step126FrontPlan : HmrSourceFront := ⟨s2Step126EntryGvAfter,s2Step126FrontPair,(growRow 768 s2Step126EntryFFresh ++ (growRow 769 s2Step126EntryGFresh ++ (growRow 770 s2Step126EntryFvFresh ++ (growRow 771 s2Step126EntryGvFresh ++ [])))),s2Step126FrontSigmaArena,[802],s2Step126HeadGBefore,[829],
  s2Step126HeadFvAfter,s2Step126FrontHead,(growRow 769 s2Step126HeadGFresh ++ (growRow 768 s2Step126HeadFFresh ++ (growRow 771 s2Step126HeadGvFresh ++ (growRow 770 s2Step126HeadFvFresh ++ [])))),s2Step126F4Plan,s2Step126CounterDuring,s2Step126CounterWork,s2Step126ExitGvAfter,s2Step126FrontOut,(shrinkRow 769 s2Step126ExitGExtra ++ (shrinkRow 768 s2Step126ExitFExtra ++ (shrinkRow 770 s2Step126ExitFvExtra ++ (shrinkRow 771 s2Step126ExitGvExtra ++ []))))⟩

private def s2Step126CompletePlan : HmrEarlyStepPlan := ⟨s2Step126FrontPlan,s2Step126EarlyControlArena,s2Step126EarlyControlPlan,s2Step126CompleteMoves⟩

private theorem s2Step126Complete_apart : List.Disjoint (s2Step126CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [802, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step126CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[802, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step126Complete_owned : (s2Step126CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step126EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step126CompleteMoveArena : Arena := ⟨s2Step126ExitGvAfter.live∪{718},Finset.union_subset s2Step126ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step126Complete_repack : s2Step126ExitGvAfter.checkRepack s2Step126CompleteMoves=some s2Step126EarlyControlArena := by
  have owned : 822∈s2Step126ExitGvAfter.live := by norm_num [s2Step126ExitGvAfter,arenaWires]
  have reserve : s2Step126ExitGvAfter.reserve {718}=some s2Step126CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step126ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step126CompleteMoveArena.retireSet {822}=s2Step126EarlyControlArena := by
    unfold Arena.retireSet s2Step126EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step126CompleteMoveArena,s2Step126ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step126CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step126CompleteMoveArena.retireSet {822}).checkRepack []=some s2Step126EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step126EarlyControl_branchOwned : ([829] : List Wire).toFinset⊆s2Step126EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_branch : compileHmrBranchRetirement s2Step126EarlyControlSigmaArena 829=some s2Step126EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step126EarlyControl_branchOwned
  · ext q
    simp [s2Step126EarlyControlOutputArena,s2Step126EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step126EarlyControl_classEqualityBorrow : s2Step126EarlyControlPositiveArena.checkBorrow (([802, 849] : List Wire).length-1) s2Step126EarlyControlLog.classWork=some s2Step126EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step126EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step126EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step126EarlyControlEqualityArena,s2Step126EarlyControlPositiveArena,s2Step126EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step126EarlyControl_classEqualityOwned : ([802, 849] : List Wire).toFinset⊆s2Step126EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_classEquality : compileHmrEqualityLog s2Step126EarlyControlPositiveArena [802, 849] 0 s2Step126EarlyControlLog.classWork=some (s2Step126EarlyControlEqualityArena,s2Step126EarlyControlLog.classWork,s2Step126EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step126EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step126EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step126EarlyControl_classOwned : ([777, 837, 802] : List Wire).toFinset⊆s2Step126EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_positiveBorrow : s2Step126EarlyControlZeroArena.checkBorrow (1) s2Step126EarlyControlLog.positiveWork=some s2Step126EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step126EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step126EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step126EarlyControlPositiveArena,s2Step126EarlyControlZeroArena,s2Step126EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step126EarlyControl_class : compileHmrSourceClassLog s2Step126EarlyControlZeroArena false 777 s2Step126EarlyControlZeroPlan.top 0 802 s2Step126EarlyControlLog.positiveWork s2Step126EarlyControlLog.classWork=some s2Step126EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step126EarlyControlClassPlan s2Step126EarlyControlZeroArena false 777 s2Step126EarlyControlZeroPlan.top 0 802
  constructor
  · decide +kernel
  · exact s2Step126EarlyControl_classOwned
  · exact s2Step126EarlyControl_positiveBorrow
  · exact s2Step126EarlyControl_classEquality

private theorem s2Step126EarlyControl_entryRecordOwned : ([829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step126EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_entrySigmaOwned : ([802, 254] : List Wire).toFinset⊆s2Step126EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_fitBorrow : s2Step126EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step126EarlyControlLog.recordFresh=some s2Step126EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step126EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step126EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step126EarlyControlFittedArena,s2Step126EarlyControlFlagArena,s2Step126EarlyControlLog,arenaWires]

private theorem s2Step126EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step126EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_fit : compileHmrRecordGrowLog s2Step126EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step126EarlyControlLog.recordFresh=some s2Step126EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step126EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step126EarlyControl_fitBorrow

private theorem s2Step126EarlyControl_flagsBorrow : s2Step126EarlyControlEqualityArena.checkBorrow (6) s2Step126EarlyControlLog.flagWork=some s2Step126EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step126EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step126EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step126EarlyControlFlagArena,s2Step126EarlyControlEqualityArena,s2Step126EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step126EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step126EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_flags : compileHmrFlagsLog s2Step126EarlyControlClassPlan.equalityArena s2Step126EarlyControlClassPlan.equality.top 253 252 251 s2Step126EarlyControlLog.flagWork=some s2Step126EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step126EarlyControl_flagsOwned⟩
  · exact s2Step126EarlyControl_flagsBorrow

private theorem s2Step126EarlyControl_historyBorrow : s2Step126EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step126EarlyControlLog.recordFresh=some s2Step126EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step126EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step126EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step126EarlyControlHistoryArena,s2Step126EarlyControlArena,s2Step126EarlyControlLog,arenaWires]

private theorem s2Step126EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step126EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_history : compileHmrRecordGrowLog s2Step126EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step126EarlyControlLog.recordFresh=some s2Step126EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step126EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step126EarlyControl_historyBorrow

private theorem s2Step126EarlyControl_sigmaOwned : ([254, 802] : List Wire).toFinset⊆s2Step126EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_sigmaReleaseOwned : ([802] : List Wire).toFinset⊆s2Step126EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_sigmaRelease : s2Step126EarlyControlHistoryArena.release {802} (fun _ => false)=some s2Step126EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step126EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step126EarlyControlSigmaArena,s2Step126EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step126EarlyControl_sigma : compileHmrSigmaDropLog s2Step126EarlyControlHistoryArena false 0 0 254 802 []=some s2Step126EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step126EarlyControl_sigmaOwned⟩
  · exact s2Step126EarlyControl_sigmaRelease

private theorem s2Step126EarlyControl_zeroBorrow : s2Step126EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step126EarlyControlLog.zeroWork=some s2Step126EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step126EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step126EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step126EarlyControlZeroArena,s2Step126EarlyControlArena,s2Step126EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step126EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step126EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step126EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EarlyControl_zero : compileHmrEqualityLog s2Step126EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step126EarlyControlLog.zeroWork=some (s2Step126EarlyControlZeroArena,s2Step126EarlyControlLog.zeroWork,s2Step126EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step126EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step126EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step126EarlyControl_logged : s2Step126EarlyControlPlan.Logged s2Step126EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 802 254 253 252 251 829 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step126EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step126EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step126EarlyControl_zero
  · exact s2Step126EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step126EarlyControl_flags
  · exact s2Step126EarlyControl_fit
  · exact s2Step126EarlyControl_history
  · exact s2Step126EarlyControl_sigma
  · exact s2Step126EarlyControl_branch

private theorem s2Step126EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step126EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 802 254 253 252 251 829 37 s2Step126EarlyControlLog=some s2Step126EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step126EarlyControlPlan s2Step126EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 802 254 253 252 251 829 37 s2Step126EarlyControl_logged

private def s2Step126EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step126EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step126EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],769⟩

private def s2Step126EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step126FrontBank : WindowBank := ⟨s2Step126EntryFRow,s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow⟩

private def s2Step126Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 825, 768]

private def s2Step126Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837, 849, 769]

private def s2Step126Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 781, 770]

private def s2Step126Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 817, 771]

private theorem s2Step126Counter_apart : Disjoint s2Step126HeadFvAfter.live s2Step126CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step126HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126Counter_borrowed : s2Step126HeadFvAfter.checkBorrow 4 s2Step126CounterWork=some s2Step126CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step126HeadFvAfter s2Step126CounterDuring s2Step126CounterWork.toFinset s2Step126Counter_bounded s2Step126Counter_apart rfl

private theorem s2Step126Counter_owned : (802::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step126HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step126HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126Counter_checked : compileHmrCounterStepLog s2Step126HeadFvAfter true 802 [772, 773, 774, 775, 776, 777] s2Step126CounterWork=some s2Step126CounterDuring := by
  have owned : ∀q∈802::[772, 773, 774, 775, 776, 777],q∈s2Step126HeadFvAfter.live := fun q hq => s2Step126Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step126Counter_borrowed

private def s2Step126EntryFAfter : Arena := s2Step126EntryFBefore

private theorem s2Step126EntryBank_incomingDistinct : ([s2Step126EntryFRow,s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126EntryF_Incoming : rowsOwned s2Step126EntryFBefore [s2Step126EntryFRow,s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126EntryFRow,s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow] 0 s2Step126EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126EntryBank_outgoingOwned : rowsOwned s2Step126EntryGvAfter [s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step126EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126EntryF_Outgoing : rowsOwned s2Step126EntryGvAfter [s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut] :=
  hmrRows_owned_drop s2Step126EntryGvAfter [s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut] 0 s2Step126EntryBank_outgoingOwned

private theorem s2Step126EntryF_distinct : (s2Step126EntryFRow.sign::s2Step126EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126EntryF_owned : (s2Step126EntryFRow.sign::s2Step126EntryFRow.payload).toFinset⊆s2Step126EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EntryF_reserved : s2Step126EntryFBefore.reserve s2Step126EntryFFresh.toFinset=some s2Step126EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step126EntryFFresh,arenaWires]
  · norm_num [s2Step126EntryFBefore,s2Step126EntryFFresh,arenaWires]
  · simp only [s2Step126EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step126EntryF_checked : planRowResizeLog s2Step126EntryFBefore s2Step126EntryFRow 207 s2Step126EntryFFresh=
    some (s2Step126EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩,growRow 768 s2Step126EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step126EntryFBefore s2Step126EntryFAfter s2Step126EntryFRow 207 s2Step126EntryFFresh
    s2Step126EntryF_distinct s2Step126EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step126EntryF_reserved
  have rowEq : WindowRow.mk (s2Step126EntryFRow.payload++s2Step126EntryFFresh) s2Step126EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step126EntryFvAfter : Arena := s2Step126EntryGAfter

private def s2Step126EntryFvBefore : Arena := s2Step126EntryGAfter

private theorem s2Step126EntryFv_Incoming : rowsOwned s2Step126EntryFvBefore [s2Step126EntryFvRow,s2Step126EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126EntryFRow,s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow] 2 s2Step126EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126EntryFv_Outgoing : rowsOwned s2Step126EntryGvAfter [s2Step126EntryFvOut,s2Step126EntryGvOut] :=
  hmrRows_owned_drop s2Step126EntryGvAfter [s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut] 2 s2Step126EntryBank_outgoingOwned

private theorem s2Step126EntryFv_distinct : (s2Step126EntryFvRow.sign::s2Step126EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126EntryFv_owned : (s2Step126EntryFvRow.sign::s2Step126EntryFvRow.payload).toFinset⊆s2Step126EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EntryFv_reserved : s2Step126EntryFvBefore.reserve s2Step126EntryFvFresh.toFinset=some s2Step126EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step126EntryFvFresh,arenaWires]
  · norm_num [s2Step126EntryFvBefore,s2Step126EntryGAfter,s2Step126EntryFvFresh,arenaWires]
  · simp only [s2Step126EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step126EntryFv_checked : planRowResizeLog s2Step126EntryFvBefore s2Step126EntryFvRow 77 s2Step126EntryFvFresh=
    some (s2Step126EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩,growRow 770 s2Step126EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step126EntryFvBefore s2Step126EntryFvAfter s2Step126EntryFvRow 77 s2Step126EntryFvFresh
    s2Step126EntryFv_distinct s2Step126EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step126EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step126EntryFvRow.payload++s2Step126EntryFvFresh) s2Step126EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step126EntryGBefore : Arena := s2Step126EntryFBefore

private theorem s2Step126EntryG_Incoming : rowsOwned s2Step126EntryGBefore [s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126EntryFRow,s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow] 1 s2Step126EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126EntryG_Outgoing : rowsOwned s2Step126EntryGvAfter [s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut] :=
  hmrRows_owned_drop s2Step126EntryGvAfter [s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut] 1 s2Step126EntryBank_outgoingOwned

private theorem s2Step126EntryG_distinct : (s2Step126EntryGRow.sign::s2Step126EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126EntryG_owned : (s2Step126EntryGRow.sign::s2Step126EntryGRow.payload).toFinset⊆s2Step126EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EntryG_reserved : s2Step126EntryGBefore.reserve s2Step126EntryGFresh.toFinset=some s2Step126EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step126EntryGFresh,arenaWires]
  · norm_num [s2Step126EntryGBefore,s2Step126EntryFBefore,s2Step126EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step126EntryGAfter,s2Step126EntryGBefore,s2Step126EntryFBefore,s2Step126EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step126EntryG_checked : planRowResizeLog s2Step126EntryGBefore s2Step126EntryGRow 207 s2Step126EntryGFresh=
    some (s2Step126EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837],769⟩,growRow 769 s2Step126EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step126EntryGBefore s2Step126EntryGAfter s2Step126EntryGRow 207 s2Step126EntryGFresh
    s2Step126EntryG_distinct s2Step126EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step126EntryG_reserved
  have rowEq : WindowRow.mk (s2Step126EntryGRow.payload++s2Step126EntryGFresh) s2Step126EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step126EntryGvBefore : Arena := s2Step126EntryGAfter

private theorem s2Step126EntryGv_Incoming : rowsOwned s2Step126EntryGvBefore [s2Step126EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126EntryFRow,s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow] 3 s2Step126EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126EntryGv_Outgoing : rowsOwned s2Step126EntryGvAfter [s2Step126EntryGvOut] :=
  hmrRows_owned_drop s2Step126EntryGvAfter [s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut] 3 s2Step126EntryBank_outgoingOwned

private theorem s2Step126EntryGv_distinct : (s2Step126EntryGvRow.sign::s2Step126EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126EntryGv_owned : (s2Step126EntryGvRow.sign::s2Step126EntryGvRow.payload).toFinset⊆s2Step126EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126EntryGv_reserved : s2Step126EntryGvBefore.reserve s2Step126EntryGvFresh.toFinset=some s2Step126EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step126EntryGvFresh,arenaWires]
  · norm_num [s2Step126EntryGvBefore,s2Step126EntryGAfter,s2Step126EntryGvFresh,arenaWires]
  · simp only [s2Step126EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step126EntryGv_checked : planRowResizeLog s2Step126EntryGvBefore s2Step126EntryGvRow 77 s2Step126EntryGvFresh=
    some (s2Step126EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩,growRow 771 s2Step126EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step126EntryGvBefore s2Step126EntryGvAfter s2Step126EntryGvRow 77 s2Step126EntryGvFresh
    s2Step126EntryGv_distinct s2Step126EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step126EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step126EntryGvRow.payload++s2Step126EntryGvFresh) s2Step126EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step126EntryBank_rows : planWindowRowsLog s2Step126EntryFBefore [(s2Step126EntryFRow,207),(s2Step126EntryGRow,207),(s2Step126EntryFvRow,77),(s2Step126EntryGvRow,77)] [s2Step126EntryFFresh,s2Step126EntryGFresh,s2Step126EntryFvFresh,s2Step126EntryGvFresh]=
    some (s2Step126EntryGvAfter,[s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut],(growRow 768 s2Step126EntryFFresh ++ (growRow 769 s2Step126EntryGFresh ++ (growRow 770 s2Step126EntryFvFresh ++ (growRow 771 s2Step126EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step126EntryGvAfter [] []=some (s2Step126EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step126EntryGvBefore s2Step126EntryGvAfter s2Step126EntryGvAfter
    s2Step126EntryGvRow s2Step126EntryGvOut 77 s2Step126EntryGvFresh [] [] []
    (growRow 771 s2Step126EntryGvFresh) ([]) s2Step126EntryGv_Incoming s2Step126EntryGv_checked h4 s2Step126EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step126EntryFvBefore s2Step126EntryFvAfter s2Step126EntryGvAfter
    s2Step126EntryFvRow s2Step126EntryFvOut 77 s2Step126EntryFvFresh [(s2Step126EntryGvRow,77)] [s2Step126EntryGvFresh] [s2Step126EntryGvOut]
    (growRow 770 s2Step126EntryFvFresh) ((growRow 771 s2Step126EntryGvFresh ++ [])) s2Step126EntryFv_Incoming s2Step126EntryFv_checked h3 s2Step126EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step126EntryGBefore s2Step126EntryGAfter s2Step126EntryGvAfter
    s2Step126EntryGRow s2Step126EntryGOut 207 s2Step126EntryGFresh [(s2Step126EntryFvRow,77),(s2Step126EntryGvRow,77)] [s2Step126EntryFvFresh,s2Step126EntryGvFresh] [s2Step126EntryFvOut,s2Step126EntryGvOut]
    (growRow 769 s2Step126EntryGFresh) ((growRow 770 s2Step126EntryFvFresh ++ (growRow 771 s2Step126EntryGvFresh ++ []))) s2Step126EntryG_Incoming s2Step126EntryG_checked h2 s2Step126EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step126EntryFBefore s2Step126EntryFAfter s2Step126EntryGvAfter
    s2Step126EntryFRow s2Step126EntryFOut 207 s2Step126EntryFFresh [(s2Step126EntryGRow,207),(s2Step126EntryFvRow,77),(s2Step126EntryGvRow,77)] [s2Step126EntryGFresh,s2Step126EntryFvFresh,s2Step126EntryGvFresh] [s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut]
    (growRow 768 s2Step126EntryFFresh) ((growRow 769 s2Step126EntryGFresh ++ (growRow 770 s2Step126EntryFvFresh ++ (growRow 771 s2Step126EntryGvFresh ++ [])))) s2Step126EntryF_Incoming s2Step126EntryF_checked h1 s2Step126EntryF_Outgoing
  exact h0

private theorem s2Step126EntryBank_checked : compileHmrBankResizeLog .entry s2Step126EntryFBefore ⟨s2Step126EntryFRow,s2Step126EntryGRow,s2Step126EntryFvRow,s2Step126EntryGvRow⟩ ⟨207,207,77,77⟩ [s2Step126EntryFFresh,s2Step126EntryGFresh,s2Step126EntryFvFresh,s2Step126EntryGvFresh]=
    some (s2Step126EntryGvAfter,⟨s2Step126EntryFOut,s2Step126EntryGOut,s2Step126EntryFvOut,s2Step126EntryGvOut⟩,(growRow 768 s2Step126EntryFFresh ++ (growRow 769 s2Step126EntryGFresh ++ (growRow 770 s2Step126EntryFvFresh ++ (growRow 771 s2Step126EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step126EntryBank_rows]
  rfl

private def s2Step126ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<718) ∨ (719≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126ExitFBefore : Arena := s2Step126ExitGAfter

private def s2Step126ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 825],768⟩

private def s2Step126ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 781],770⟩

private def s2Step126ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837, 849],769⟩

private def s2Step126ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 817],771⟩

private theorem s2Step126ExitBank_incomingDistinct : ([s2Step126ExitGRow,s2Step126ExitFRow,s2Step126ExitFvRow,s2Step126ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126ExitF_Incoming : rowsOwned s2Step126ExitFBefore [s2Step126ExitFRow,s2Step126ExitFvRow,s2Step126ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126ExitGRow,s2Step126ExitFRow,s2Step126ExitFvRow,s2Step126ExitGvRow] 1 s2Step126ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126ExitBank_outgoingOwned : rowsOwned s2Step126ExitGvAfter [s2Step126ExitGOut,s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step126ExitGvAfter (fun q => (0≤q ∧ q<718) ∨ (719≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126ExitF_Outgoing : rowsOwned s2Step126ExitGvAfter [s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut] :=
  hmrRows_owned_drop s2Step126ExitGvAfter [s2Step126ExitGOut,s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut] 1 s2Step126ExitBank_outgoingOwned

private theorem s2Step126ExitF_distinct : (s2Step126ExitFRow.sign::s2Step126ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126ExitF_owned : (s2Step126ExitFRow.sign::s2Step126ExitFRow.payload).toFinset⊆s2Step126ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126ExitF_retired : s2Step126ExitFBefore.retireSet s2Step126ExitFExtra.toFinset=s2Step126ExitFAfter := by
  unfold Arena.retireSet s2Step126ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step126ExitFBefore,s2Step126ExitGAfter,s2Step126ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step126ExitF_checked : planRowResizeLog s2Step126ExitFBefore s2Step126ExitFRow 206 []=
    some (s2Step126ExitFAfter,s2Step126ExitFOut,shrinkRow 768 s2Step126ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step126ExitFBefore s2Step126ExitFRow 206 s2Step126ExitF_distinct s2Step126ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step126ExitFRow.payload.take 206) s2Step126ExitFRow.sign=s2Step126ExitFOut := by decide +kernel
  have hi : s2Step126ExitFRow.payload.drop 206=s2Step126ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step126ExitF_retired] at result
  exact result

private def s2Step126ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<718) ∨ (719≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126ExitFvBefore : Arena := s2Step126ExitFAfter

private theorem s2Step126ExitFv_Incoming : rowsOwned s2Step126ExitFvBefore [s2Step126ExitFvRow,s2Step126ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126ExitGRow,s2Step126ExitFRow,s2Step126ExitFvRow,s2Step126ExitGvRow] 2 s2Step126ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126ExitFvBefore (fun q => (0≤q ∧ q<718) ∨ (719≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126ExitFv_Outgoing : rowsOwned s2Step126ExitGvAfter [s2Step126ExitFvOut,s2Step126ExitGvOut] :=
  hmrRows_owned_drop s2Step126ExitGvAfter [s2Step126ExitGOut,s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut] 2 s2Step126ExitBank_outgoingOwned

private theorem s2Step126ExitFv_distinct : (s2Step126ExitFvRow.sign::s2Step126ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126ExitFv_owned : (s2Step126ExitFvRow.sign::s2Step126ExitFvRow.payload).toFinset⊆s2Step126ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126ExitFvBefore (fun q => (0≤q ∧ q<718) ∨ (719≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126ExitFv_retired : s2Step126ExitFvBefore.retireSet s2Step126ExitFvExtra.toFinset=s2Step126ExitFvAfter := by
  unfold Arena.retireSet s2Step126ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step126ExitFvBefore,s2Step126ExitFAfter,s2Step126ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step126ExitFv_checked : planRowResizeLog s2Step126ExitFvBefore s2Step126ExitFvRow 77 []=
    some (s2Step126ExitFvAfter,s2Step126ExitFvOut,shrinkRow 770 s2Step126ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step126ExitFvBefore s2Step126ExitFvRow 77 s2Step126ExitFv_distinct s2Step126ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step126ExitFvRow.payload.take 77) s2Step126ExitFvRow.sign=s2Step126ExitFvOut := by decide +kernel
  have hi : s2Step126ExitFvRow.payload.drop 77=s2Step126ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step126ExitFv_retired] at result
  exact result

private def s2Step126ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step126ExitG_Incoming : rowsOwned s2Step126ExitGBefore [s2Step126ExitGRow,s2Step126ExitFRow,s2Step126ExitFvRow,s2Step126ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126ExitGRow,s2Step126ExitFRow,s2Step126ExitFvRow,s2Step126ExitGvRow] 0 s2Step126ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126ExitG_Outgoing : rowsOwned s2Step126ExitGvAfter [s2Step126ExitGOut,s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut] :=
  hmrRows_owned_drop s2Step126ExitGvAfter [s2Step126ExitGOut,s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut] 0 s2Step126ExitBank_outgoingOwned

private theorem s2Step126ExitG_distinct : (s2Step126ExitGRow.sign::s2Step126ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126ExitG_owned : (s2Step126ExitGRow.sign::s2Step126ExitGRow.payload).toFinset⊆s2Step126ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126ExitG_retired : s2Step126ExitGBefore.retireSet s2Step126ExitGExtra.toFinset=s2Step126ExitGAfter := by
  unfold Arena.retireSet s2Step126ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step126ExitGBefore,s2Step126ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step126ExitG_checked : planRowResizeLog s2Step126ExitGBefore s2Step126ExitGRow 206 []=
    some (s2Step126ExitGAfter,s2Step126ExitGOut,shrinkRow 769 s2Step126ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step126ExitGBefore s2Step126ExitGRow 206 s2Step126ExitG_distinct s2Step126ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step126ExitGRow.payload.take 206) s2Step126ExitGRow.sign=s2Step126ExitGOut := by decide +kernel
  have hi : s2Step126ExitGRow.payload.drop 206=s2Step126ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step126ExitG_retired] at result
  exact result

private def s2Step126ExitGvBefore : Arena := s2Step126ExitFvAfter

private theorem s2Step126ExitGv_Incoming : rowsOwned s2Step126ExitGvBefore [s2Step126ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126ExitGRow,s2Step126ExitFRow,s2Step126ExitFvRow,s2Step126ExitGvRow] 3 s2Step126ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126ExitGvBefore (fun q => (0≤q ∧ q<718) ∨ (719≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126ExitGv_Outgoing : rowsOwned s2Step126ExitGvAfter [s2Step126ExitGvOut] :=
  hmrRows_owned_drop s2Step126ExitGvAfter [s2Step126ExitGOut,s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut] 3 s2Step126ExitBank_outgoingOwned

private theorem s2Step126ExitGv_distinct : (s2Step126ExitGvRow.sign::s2Step126ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126ExitGv_owned : (s2Step126ExitGvRow.sign::s2Step126ExitGvRow.payload).toFinset⊆s2Step126ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126ExitGvBefore (fun q => (0≤q ∧ q<718) ∨ (719≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126ExitGv_retired : s2Step126ExitGvBefore.retireSet s2Step126ExitGvExtra.toFinset=s2Step126ExitGvAfter := by
  unfold Arena.retireSet s2Step126ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step126ExitGvBefore,s2Step126ExitFvAfter,s2Step126ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step126ExitGv_checked : planRowResizeLog s2Step126ExitGvBefore s2Step126ExitGvRow 77 []=
    some (s2Step126ExitGvAfter,s2Step126ExitGvOut,shrinkRow 771 s2Step126ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step126ExitGvBefore s2Step126ExitGvRow 77 s2Step126ExitGv_distinct s2Step126ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step126ExitGvRow.payload.take 77) s2Step126ExitGvRow.sign=s2Step126ExitGvOut := by decide +kernel
  have hi : s2Step126ExitGvRow.payload.drop 77=s2Step126ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step126ExitGv_retired] at result
  exact result

private theorem s2Step126ExitBank_rows : planWindowRowsLog s2Step126ExitGBefore [(s2Step126ExitGRow,206),(s2Step126ExitFRow,206),(s2Step126ExitFvRow,77),(s2Step126ExitGvRow,77)] [[],[],[],[]]=
    some (s2Step126ExitGvAfter,[s2Step126ExitGOut,s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut],(shrinkRow 769 s2Step126ExitGExtra ++ (shrinkRow 768 s2Step126ExitFExtra ++ (shrinkRow 770 s2Step126ExitFvExtra ++ (shrinkRow 771 s2Step126ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step126ExitGvAfter [] []=some (s2Step126ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step126ExitGvBefore s2Step126ExitGvAfter s2Step126ExitGvAfter
    s2Step126ExitGvRow s2Step126ExitGvOut 77 [] [] [] []
    (shrinkRow 771 s2Step126ExitGvExtra) ([]) s2Step126ExitGv_Incoming s2Step126ExitGv_checked h4 s2Step126ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step126ExitFvBefore s2Step126ExitFvAfter s2Step126ExitGvAfter
    s2Step126ExitFvRow s2Step126ExitFvOut 77 [] [(s2Step126ExitGvRow,77)] [[]] [s2Step126ExitGvOut]
    (shrinkRow 770 s2Step126ExitFvExtra) ((shrinkRow 771 s2Step126ExitGvExtra ++ [])) s2Step126ExitFv_Incoming s2Step126ExitFv_checked h3 s2Step126ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step126ExitFBefore s2Step126ExitFAfter s2Step126ExitGvAfter
    s2Step126ExitFRow s2Step126ExitFOut 206 [] [(s2Step126ExitFvRow,77),(s2Step126ExitGvRow,77)] [[],[]] [s2Step126ExitFvOut,s2Step126ExitGvOut]
    (shrinkRow 768 s2Step126ExitFExtra) ((shrinkRow 770 s2Step126ExitFvExtra ++ (shrinkRow 771 s2Step126ExitGvExtra ++ []))) s2Step126ExitF_Incoming s2Step126ExitF_checked h2 s2Step126ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step126ExitGBefore s2Step126ExitGAfter s2Step126ExitGvAfter
    s2Step126ExitGRow s2Step126ExitGOut 206 [] [(s2Step126ExitFRow,206),(s2Step126ExitFvRow,77),(s2Step126ExitGvRow,77)] [[],[],[]] [s2Step126ExitFOut,s2Step126ExitFvOut,s2Step126ExitGvOut]
    (shrinkRow 769 s2Step126ExitGExtra) ((shrinkRow 768 s2Step126ExitFExtra ++ (shrinkRow 770 s2Step126ExitFvExtra ++ (shrinkRow 771 s2Step126ExitGvExtra ++ [])))) s2Step126ExitG_Incoming s2Step126ExitG_checked h1 s2Step126ExitG_Outgoing
  exact h0

private theorem s2Step126ExitBank_checked : compileHmrBankResizeLog .exit s2Step126ExitGBefore ⟨s2Step126ExitFRow,s2Step126ExitGRow,s2Step126ExitFvRow,s2Step126ExitGvRow⟩ ⟨206,206,77,77⟩ [[],[],[],[]]=
    some (s2Step126ExitGvAfter,⟨s2Step126ExitFOut,s2Step126ExitGOut,s2Step126ExitFvOut,s2Step126ExitGvOut⟩,(shrinkRow 769 s2Step126ExitGExtra ++ (shrinkRow 768 s2Step126ExitFExtra ++ (shrinkRow 770 s2Step126ExitFvExtra ++ (shrinkRow 771 s2Step126ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step126ExitBank_rows]
  rfl

private theorem s2Step126Add0_apart : Disjoint s2Step126Add0Arena.live s2Step126Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step126Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126Add0_card : s2Step126Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step126Add0_borrowed : s2Step126Add0Arena.checkBorrow (hmrHybridCount s2Step126Add0Arena s2Step126Add0B.length) s2Step126Add0Work=some s2Step126Add0During := by
  have len : s2Step126Add0Work.length=hmrHybridCount s2Step126Add0Arena s2Step126Add0B.length := by
    rw [hmrHybridCount,s2Step126Add0_card]
    decide +kernel
  have nd : s2Step126Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step126Add0Arena s2Step126Add0During s2Step126Add0Work.toFinset s2Step126Add0_bounded s2Step126Add0_apart rfl

private theorem s2Step126Add0_distinct : (790::829::815::(s2Step126Add0A++s2Step126Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126Add0_owned : (790::829::815::(s2Step126Add0A++s2Step126Add0B)).toFinset⊆s2Step126Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step126Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126Add0_checked : compileHmrHybridCinLog s2Step126Add0Arena 829 790 815 s2Step126Add0A s2Step126Add0B s2Step126Add0Work=some s2Step126Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step126Add0Arena s2Step126Add0During 829 790 815 s2Step126Add0A s2Step126Add0B s2Step126Add0Work
    (by decide +kernel) (by decide +kernel) s2Step126Add0_distinct
    (fun q hq => s2Step126Add0_owned (List.mem_toFinset.mpr hq)) s2Step126Add0_borrowed

private theorem s2Step126Add1_apart : Disjoint s2Step126Add1Arena.live s2Step126Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step126Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126Add1_card : s2Step126Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step126Add1_borrowed : s2Step126Add1Arena.checkBorrow (hmrHybridCount s2Step126Add1Arena s2Step126Add1B.length) s2Step126Add1Work=some s2Step126Add1During := by
  have len : s2Step126Add1Work.length=hmrHybridCount s2Step126Add1Arena s2Step126Add1B.length := by
    rw [hmrHybridCount,s2Step126Add1_card]
    decide +kernel
  have nd : s2Step126Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step126Add1Arena s2Step126Add1During s2Step126Add1Work.toFinset s2Step126Add1_bounded s2Step126Add1_apart rfl

private theorem s2Step126Add1_distinct : (790::829::815::(s2Step126Add1A++s2Step126Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126Add1_owned : (790::829::815::(s2Step126Add1A++s2Step126Add1B)).toFinset⊆s2Step126Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step126Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126Add1_checked : compileHmrHybridCinLog s2Step126Add1Arena 829 790 815 s2Step126Add1A s2Step126Add1B s2Step126Add1Work=some s2Step126Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step126Add1Arena s2Step126Add1During 829 790 815 s2Step126Add1A s2Step126Add1B s2Step126Add1Work
    (by decide +kernel) (by decide +kernel) s2Step126Add1_distinct
    (fun q hq => s2Step126Add1_owned (List.mem_toFinset.mpr hq)) s2Step126Add1_borrowed

private theorem s2Step126F4_apart : Disjoint (s2Step126Add0A++s2Step126Add0B).toFinset (s2Step126Add1A++s2Step126Add1B).toFinset := by
  have nd : ((s2Step126Add0A++s2Step126Add0B)++(s2Step126Add1A++s2Step126Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step126F4_carry : s2Step126F4FlagArena.checkBorrow 1 [815]=some s2Step126Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step126F4FlagArena,s2Step126HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step126F4FlagArena,s2Step126HeadFvAfter,s2Step126Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step126F4_distinct : (802::829::790::815::((s2Step126Add0A++s2Step126Add1A)++(s2Step126Add0B++s2Step126Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126F4_flag : s2Step126HeadFvAfter.checkBorrow 1 [790]=some s2Step126F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step126HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step126F4_owned : (802::829::((s2Step126Add0A++s2Step126Add1A)++(s2Step126Add0B++s2Step126Add1B))).toFinset⊆s2Step126HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step126HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126F4_checked : compileHmrHybridF4Log s2Step126HeadFvAfter 802 829 s2Step126Add0A s2Step126Add0B s2Step126Add1A s2Step126Add1B [790] [815] s2Step126Add0Work s2Step126Add1Work=some s2Step126F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step126HeadFvAfter s2Step126F4FlagArena s2Step126Add0Arena s2Step126Add0During s2Step126Add1During 802 829
    s2Step126Add0A s2Step126Add0B s2Step126Add1A s2Step126Add1B [790] [815] s2Step126Add0Work s2Step126Add1Work
    (fun q hq => s2Step126F4_owned (List.mem_toFinset.mpr hq)) s2Step126F4_flag s2Step126F4_carry
    s2Step126F4_distinct s2Step126F4_apart s2Step126Add0_checked s2Step126Add1_checked

private theorem s2Step126Front_branch : s2Step126FrontSigmaArena.checkBorrow 1 [829]=some s2Step126HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step126FrontSigmaArena,s2Step126EntryGvAfter,s2Step126EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step126FrontSigmaArena,s2Step126EntryGvAfter,s2Step126EntryGAfter,s2Step126HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step126Front_entry : HmrFrontEntryValid s2Step126EntryFBefore s2Step126FrontBank 207 77 ⟨206,206,77,77⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step126FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step126EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step126EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step126FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step126Front_sigma : s2Step126EntryGvAfter.checkBorrow 1 [802]=some s2Step126FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step126EntryGvAfter,s2Step126EntryGAfter,arenaWires]
  · rfl

private def s2Step126HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126HeadFBefore : Arena := s2Step126HeadGAfter

private def s2Step126HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step126HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step126HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837],769⟩

private def s2Step126HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private theorem s2Step126HeadBank_incomingDistinct : ([s2Step126HeadGRow,s2Step126HeadFRow,s2Step126HeadGvRow,s2Step126HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126HeadF_Incoming : rowsOwned s2Step126HeadFBefore [s2Step126HeadFRow,s2Step126HeadGvRow,s2Step126HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126HeadGRow,s2Step126HeadFRow,s2Step126HeadGvRow,s2Step126HeadFvRow] 1 s2Step126HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126HeadBank_outgoingOwned : rowsOwned s2Step126HeadFvAfter [s2Step126HeadGOut,s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step126HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126HeadF_Outgoing : rowsOwned s2Step126HeadFvAfter [s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut] :=
  hmrRows_owned_drop s2Step126HeadFvAfter [s2Step126HeadGOut,s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut] 1 s2Step126HeadBank_outgoingOwned

private theorem s2Step126HeadF_distinct : (s2Step126HeadFRow.sign::s2Step126HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126HeadF_owned : (s2Step126HeadFRow.sign::s2Step126HeadFRow.payload).toFinset⊆s2Step126HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126HeadF_reserved : s2Step126HeadFBefore.reserve s2Step126HeadFFresh.toFinset=some s2Step126HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step126HeadFFresh,arenaWires]
  · norm_num [s2Step126HeadFBefore,s2Step126HeadGAfter,s2Step126HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step126HeadFAfter,s2Step126HeadFBefore,s2Step126HeadGAfter,s2Step126HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step126HeadF_checked : planRowResizeLog s2Step126HeadFBefore s2Step126HeadFRow 208 s2Step126HeadFFresh=
    some (s2Step126HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 825],768⟩,growRow 768 s2Step126HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step126HeadFBefore s2Step126HeadFAfter s2Step126HeadFRow 208 s2Step126HeadFFresh
    s2Step126HeadF_distinct s2Step126HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step126HeadF_reserved
  have rowEq : WindowRow.mk (s2Step126HeadFRow.payload++s2Step126HeadFFresh) s2Step126HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 825],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step126HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step126HeadFvBefore : Arena := s2Step126HeadGvAfter

private theorem s2Step126HeadFv_Incoming : rowsOwned s2Step126HeadFvBefore [s2Step126HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126HeadGRow,s2Step126HeadFRow,s2Step126HeadGvRow,s2Step126HeadFvRow] 3 s2Step126HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126HeadFv_Outgoing : rowsOwned s2Step126HeadFvAfter [s2Step126HeadFvOut] :=
  hmrRows_owned_drop s2Step126HeadFvAfter [s2Step126HeadGOut,s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut] 3 s2Step126HeadBank_outgoingOwned

private theorem s2Step126HeadFv_distinct : (s2Step126HeadFvRow.sign::s2Step126HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126HeadFv_owned : (s2Step126HeadFvRow.sign::s2Step126HeadFvRow.payload).toFinset⊆s2Step126HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126HeadFv_reserved : s2Step126HeadFvBefore.reserve s2Step126HeadFvFresh.toFinset=some s2Step126HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step126HeadFvFresh,arenaWires]
  · norm_num [s2Step126HeadFvBefore,s2Step126HeadGvAfter,s2Step126HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step126HeadFvAfter,s2Step126HeadFvBefore,s2Step126HeadGvAfter,s2Step126HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step126HeadFv_checked : planRowResizeLog s2Step126HeadFvBefore s2Step126HeadFvRow 78 s2Step126HeadFvFresh=
    some (s2Step126HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 781],770⟩,growRow 770 s2Step126HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step126HeadFvBefore s2Step126HeadFvAfter s2Step126HeadFvRow 78 s2Step126HeadFvFresh
    s2Step126HeadFv_distinct s2Step126HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step126HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step126HeadFvRow.payload++s2Step126HeadFvFresh) s2Step126HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step126HeadG_Incoming : rowsOwned s2Step126HeadGBefore [s2Step126HeadGRow,s2Step126HeadFRow,s2Step126HeadGvRow,s2Step126HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126HeadGRow,s2Step126HeadFRow,s2Step126HeadGvRow,s2Step126HeadFvRow] 0 s2Step126HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126HeadG_Outgoing : rowsOwned s2Step126HeadFvAfter [s2Step126HeadGOut,s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut] :=
  hmrRows_owned_drop s2Step126HeadFvAfter [s2Step126HeadGOut,s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut] 0 s2Step126HeadBank_outgoingOwned

private theorem s2Step126HeadG_distinct : (s2Step126HeadGRow.sign::s2Step126HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126HeadG_owned : (s2Step126HeadGRow.sign::s2Step126HeadGRow.payload).toFinset⊆s2Step126HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126HeadG_reserved : s2Step126HeadGBefore.reserve s2Step126HeadGFresh.toFinset=some s2Step126HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step126HeadGFresh,arenaWires]
  · norm_num [s2Step126HeadGBefore,s2Step126HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step126HeadGAfter,s2Step126HeadGBefore,s2Step126HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step126HeadG_checked : planRowResizeLog s2Step126HeadGBefore s2Step126HeadGRow 208 s2Step126HeadGFresh=
    some (s2Step126HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837, 849],769⟩,growRow 769 s2Step126HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step126HeadGBefore s2Step126HeadGAfter s2Step126HeadGRow 208 s2Step126HeadGFresh
    s2Step126HeadG_distinct s2Step126HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step126HeadG_reserved
  have rowEq : WindowRow.mk (s2Step126HeadGRow.payload++s2Step126HeadGFresh) s2Step126HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 837, 849],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step126HeadGvBefore : Arena := s2Step126HeadFAfter

private theorem s2Step126HeadGv_Incoming : rowsOwned s2Step126HeadGvBefore [s2Step126HeadGvRow,s2Step126HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step126HeadGRow,s2Step126HeadFRow,s2Step126HeadGvRow,s2Step126HeadFvRow] 2 s2Step126HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step126HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step126HeadGv_Outgoing : rowsOwned s2Step126HeadFvAfter [s2Step126HeadGvOut,s2Step126HeadFvOut] :=
  hmrRows_owned_drop s2Step126HeadFvAfter [s2Step126HeadGOut,s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut] 2 s2Step126HeadBank_outgoingOwned

private theorem s2Step126HeadGv_distinct : (s2Step126HeadGvRow.sign::s2Step126HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step126HeadGv_owned : (s2Step126HeadGvRow.sign::s2Step126HeadGvRow.payload).toFinset⊆s2Step126HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step126HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step126HeadGv_reserved : s2Step126HeadGvBefore.reserve s2Step126HeadGvFresh.toFinset=some s2Step126HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step126HeadGvFresh,arenaWires]
  · norm_num [s2Step126HeadGvBefore,s2Step126HeadFAfter,s2Step126HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step126HeadGvAfter,s2Step126HeadGvBefore,s2Step126HeadFAfter,s2Step126HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step126HeadGv_checked : planRowResizeLog s2Step126HeadGvBefore s2Step126HeadGvRow 78 s2Step126HeadGvFresh=
    some (s2Step126HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 817],771⟩,growRow 771 s2Step126HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step126HeadGvBefore s2Step126HeadGvAfter s2Step126HeadGvRow 78 s2Step126HeadGvFresh
    s2Step126HeadGv_distinct s2Step126HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step126HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step126HeadGvRow.payload++s2Step126HeadGvFresh) s2Step126HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step126HeadBank_rows : planWindowRowsLog s2Step126HeadGBefore [(s2Step126HeadGRow,208),(s2Step126HeadFRow,208),(s2Step126HeadGvRow,78),(s2Step126HeadFvRow,78)] [s2Step126HeadGFresh,s2Step126HeadFFresh,s2Step126HeadGvFresh,s2Step126HeadFvFresh]=
    some (s2Step126HeadFvAfter,[s2Step126HeadGOut,s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut],(growRow 769 s2Step126HeadGFresh ++ (growRow 768 s2Step126HeadFFresh ++ (growRow 771 s2Step126HeadGvFresh ++ (growRow 770 s2Step126HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step126HeadFvAfter [] []=some (s2Step126HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step126HeadFvBefore s2Step126HeadFvAfter s2Step126HeadFvAfter
    s2Step126HeadFvRow s2Step126HeadFvOut 78 s2Step126HeadFvFresh [] [] []
    (growRow 770 s2Step126HeadFvFresh) ([]) s2Step126HeadFv_Incoming s2Step126HeadFv_checked h4 s2Step126HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step126HeadGvBefore s2Step126HeadGvAfter s2Step126HeadFvAfter
    s2Step126HeadGvRow s2Step126HeadGvOut 78 s2Step126HeadGvFresh [(s2Step126HeadFvRow,78)] [s2Step126HeadFvFresh] [s2Step126HeadFvOut]
    (growRow 771 s2Step126HeadGvFresh) ((growRow 770 s2Step126HeadFvFresh ++ [])) s2Step126HeadGv_Incoming s2Step126HeadGv_checked h3 s2Step126HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step126HeadFBefore s2Step126HeadFAfter s2Step126HeadFvAfter
    s2Step126HeadFRow s2Step126HeadFOut 208 s2Step126HeadFFresh [(s2Step126HeadGvRow,78),(s2Step126HeadFvRow,78)] [s2Step126HeadGvFresh,s2Step126HeadFvFresh] [s2Step126HeadGvOut,s2Step126HeadFvOut]
    (growRow 768 s2Step126HeadFFresh) ((growRow 771 s2Step126HeadGvFresh ++ (growRow 770 s2Step126HeadFvFresh ++ []))) s2Step126HeadF_Incoming s2Step126HeadF_checked h2 s2Step126HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step126HeadGBefore s2Step126HeadGAfter s2Step126HeadFvAfter
    s2Step126HeadGRow s2Step126HeadGOut 208 s2Step126HeadGFresh [(s2Step126HeadFRow,208),(s2Step126HeadGvRow,78),(s2Step126HeadFvRow,78)] [s2Step126HeadFFresh,s2Step126HeadGvFresh,s2Step126HeadFvFresh] [s2Step126HeadFOut,s2Step126HeadGvOut,s2Step126HeadFvOut]
    (growRow 769 s2Step126HeadGFresh) ((growRow 768 s2Step126HeadFFresh ++ (growRow 771 s2Step126HeadGvFresh ++ (growRow 770 s2Step126HeadFvFresh ++ [])))) s2Step126HeadG_Incoming s2Step126HeadG_checked h1 s2Step126HeadG_Outgoing
  exact h0

private theorem s2Step126HeadBank_checked : compileHmrBankResizeLog .headroom s2Step126HeadGBefore ⟨s2Step126HeadFRow,s2Step126HeadGRow,s2Step126HeadFvRow,s2Step126HeadGvRow⟩ ⟨208,208,78,78⟩ [s2Step126HeadGFresh,s2Step126HeadFFresh,s2Step126HeadGvFresh,s2Step126HeadFvFresh]=
    some (s2Step126HeadFvAfter,⟨s2Step126HeadFOut,s2Step126HeadGOut,s2Step126HeadFvOut,s2Step126HeadGvOut⟩,(growRow 769 s2Step126HeadGFresh ++ (growRow 768 s2Step126HeadFFresh ++ (growRow 771 s2Step126HeadGvFresh ++ (growRow 770 s2Step126HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step126HeadBank_rows]
  rfl

private theorem s2Step126Front_checked : compileHmrSourceFrontLog s2Step126EntryFBefore s2Step126FrontBank 207 77 ⟨206,206,77,77⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step126FrontLog=some s2Step126FrontPlan := by
  have pairEq : s2Step126FrontPair=⟨s2Step126HeadFRow,s2Step126HeadGRow,s2Step126HeadFvRow,s2Step126HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step126FrontHead=⟨s2Step126ExitFRow,s2Step126ExitGRow,s2Step126ExitFvRow,s2Step126ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step126Add0A=s2Step126FrontHead.f.wires := by decide +kernel
  have gEq : s2Step126Add0B=s2Step126FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step126Add1A=s2Step126FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step126Add1B=s2Step126FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step126EntryFBefore s2Step126FrontBank 207 77 ⟨206,206,77,77⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step126FrontLog s2Step126FrontPlan
  · exact s2Step126Front_entry
  · exact s2Step126EntryBank_checked
  · exact s2Step126Front_sigma
  · rfl
  · exact s2Step126Front_branch
  · rfl
  · simpa only [s2Step126FrontPlan,pairEq] using s2Step126HeadBank_checked
  · simpa only [s2Step126FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step126F4_checked
  · exact s2Step126Counter_checked
  · rfl
  · simpa only [s2Step126FrontPlan,headEq] using s2Step126ExitBank_checked

private theorem s2Step126Complete_explicit_checked : compileHmrEarlyStepLog s2Step126EntryFBefore s2Step126FrontBank 207 77 ⟨206,206,77,77⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step126CompleteLog=some s2Step126CompletePlan := by
  let Q := s2Step126EarlyControlPlan
  have hq := s2Step126EarlyControl_plan_checked
  have fv1 : s2Step126CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step126CompleteOut.fv.payload[2]?.getD s2Step126CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step126CompleteOut.fv.payload[3]?.getD s2Step126CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step126CompleteOut.fv.payload[4]?.getD s2Step126CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step126EntryFBefore s2Step126EarlyControlArena s2Step126FrontBank 207 77 ⟨206,206,77,77⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step126CompleteLog s2Step126FrontPlan Q
    s2Step126Front_checked s2Step126Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step126Complete_owned s2Step126Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step126EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 802 s2Step126CompleteOut.fv.second (s2Step126CompleteOut.fv.payload[2]?.getD s2Step126CompleteOut.fv.sign) (s2Step126CompleteOut.fv.payload[3]?.getD s2Step126CompleteOut.fv.sign) (s2Step126CompleteOut.fv.payload[4]?.getD s2Step126CompleteOut.fv.sign) 829 37 s2Step126EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep126Arena : Arena := s2Step126EntryFBefore
def s2PrivateStep126Bank : WindowBank := s2Step126FrontBank
def s2PrivateStep126Spec : HmrSourceWalkStepLog := ⟨207,77,⟨206,206,77,77⟩,37,.early s2Step126CompleteLog⟩
def s2PrivateStep126Plan : HmrSourceStepPlan := .early s2Step126CompletePlan
theorem s2PrivateStep126_source : s2PrivateStep126Spec=s2ObservedLogs112[14] := rfl
theorem s2PrivateStep126_checked : compileHmrSourceStepLog s2PrivateStep126Arena s2PrivateStep126Bank
    s2PrivateStep126Spec.fgWidth s2PrivateStep126Spec.vWidth s2PrivateStep126Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 126 s2PrivateStep126Spec.need none s2PrivateStep126Spec.log=some s2PrivateStep126Plan := by
  change compileHmrSourceStepLog s2Step126EntryFBefore s2Step126FrontBank 207 77 ⟨206,206,77,77⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 126 37 none (.early s2Step126CompleteLog)=some (.early s2Step126CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 126<498)]
  rw [s2Step126Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
