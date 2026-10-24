import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep122
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

private def s2Step124CompleteMoves : List (Wire × Wire) := []

private def s2Step124EarlyControlLog : HmrEarlyControlLog := ⟨[825, 849, 832, 824, 817],[781],[790],[815, 867, 877, 879, 882, 883],[]⟩

private def s2Step124FrontLog : HmrFrontAllocationLog := ⟨⟨[[832], [], [], [819]],[[781], [824], [825], [849]],[[], [], [], []]⟩,[837],[802],[790],[815],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877]⟩

private def s2Step124CompleteLog : HmrEarlyStepLog := ⟨s2Step124FrontLog,s2Step124CompleteMoves,s2Step124EarlyControlLog⟩

private def s2Step124ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step124ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step124ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206],769⟩

private def s2Step124ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩

private def s2Step124FrontOut : WindowBank := ⟨s2Step124ExitFOut,s2Step124ExitGOut,s2Step124ExitFvOut,s2Step124ExitGvOut⟩

private def s2Step124CompleteOut : WindowBank := s2Step124FrontOut.repacked s2Step124CompleteMoves

private def s2Step124EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step124EarlyControlPositiveArena,[781],s2Step124EarlyControlEqualityArena,[790],⟨⟨837,false⟩,[⟨⟨781,false⟩,790⟩]⟩⟩

private def s2Step124EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,825⟩,⟨⟨774,false⟩,849⟩,⟨⟨775,false⟩,832⟩,⟨⟨776,false⟩,824⟩,⟨⟨777,false⟩,817⟩]⟩

private def s2Step124EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step124EarlyControlZeroArena,s2Step124EarlyControlZeroPlan,s2Step124EarlyControlClassPlan,s2Step124EarlyControlFlagArena,s2Step124EarlyControlFittedArena,s2Step124EarlyControlHistoryArena,s2Step124EarlyControlSigmaArena,s2Step124EarlyControlOutputArena,s2Step124EarlyControlLog⟩

private def s2Step124CounterWork : List Wire := [790, 815, 867, 877]

private theorem s2Step124Counter_bounded : s2Step124CounterWork.toFinset⊆arenaWires := by norm_num [s2Step124CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step124HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124CounterDuring : Arena := ⟨s2Step124HeadFvAfter.live∪s2Step124CounterWork.toFinset,Finset.union_subset s2Step124HeadFvAfter.bounded s2Step124Counter_bounded⟩

private def s2Step124EntryFFresh : List Wire := [832]

private def s2Step124EntryFvFresh : List Wire := []

private def s2Step124EntryGFresh : List Wire := []

private def s2Step124EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EntryGvFresh : List Wire := [819]

private def s2Step124ExitFExtra : List Wire := [832, 824]

private def s2Step124ExitFvExtra : List Wire := [849]

private def s2Step124ExitGExtra : List Wire := [817, 781]

private def s2Step124ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124ExitGvExtra : List Wire := [825]

private def s2Step124Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124Add0Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step124Add0_bounded : s2Step124Add0Work.toFinset⊆arenaWires := by
  have h : s2Step124Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step124Add0During : Arena := ⟨s2Step124Add0Arena.live∪s2Step124Add0Work.toFinset,Finset.union_subset s2Step124Add0Arena.bounded s2Step124Add0_bounded⟩

private def s2Step124Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124Add1Work : List Wire := [867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step124Add1_bounded : s2Step124Add1Work.toFinset⊆arenaWires := by
  have h : s2Step124Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step124Add1During : Arena := ⟨s2Step124Add1Arena.live∪s2Step124Add1Work.toFinset,Finset.union_subset s2Step124Add1Arena.bounded s2Step124Add1_bounded⟩

private def s2Step124F4FlagArena : Arena := ⟨s2Step124HeadFvAfter.live∪{790},Finset.union_subset s2Step124HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step124F4Plan : HmrHybridF4Plan := ⟨s2Step124F4FlagArena,[790],s2Step124Add0Arena,[815],s2Step124Add0During,s2Step124Add0Work,s2Step124Add1During,s2Step124Add1Work⟩

private def s2Step124HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832, 824],768⟩

private def s2Step124HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 849],770⟩

private def s2Step124HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 781],769⟩

private def s2Step124HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 825],771⟩

private def s2Step124FrontHead : WindowBank := ⟨s2Step124HeadFOut,s2Step124HeadGOut,s2Step124HeadFvOut,s2Step124HeadGvOut⟩

private def s2Step124EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832],768⟩

private def s2Step124EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step124EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩

private def s2Step124EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩

private def s2Step124FrontPair : WindowBank := ⟨s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut⟩

private def s2Step124FrontSigmaArena : Arena := ⟨s2Step124EntryGvAfter.live∪{837},Finset.union_subset s2Step124EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step124HeadFFresh : List Wire := [824]

private def s2Step124HeadFvFresh : List Wire := [849]

private def s2Step124HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124HeadGFresh : List Wire := [781]

private def s2Step124HeadGvFresh : List Wire := [825]

private def s2Step124FrontPlan : HmrSourceFront := ⟨s2Step124EntryGvAfter,s2Step124FrontPair,(growRow 768 s2Step124EntryFFresh ++ (growRow 769 s2Step124EntryGFresh ++ (growRow 770 s2Step124EntryFvFresh ++ (growRow 771 s2Step124EntryGvFresh ++ [])))),s2Step124FrontSigmaArena,[837],s2Step124HeadGBefore,[802],
  s2Step124HeadFvAfter,s2Step124FrontHead,(growRow 769 s2Step124HeadGFresh ++ (growRow 768 s2Step124HeadFFresh ++ (growRow 771 s2Step124HeadGvFresh ++ (growRow 770 s2Step124HeadFvFresh ++ [])))),s2Step124F4Plan,s2Step124CounterDuring,s2Step124CounterWork,s2Step124ExitGvAfter,s2Step124FrontOut,(shrinkRow 769 s2Step124ExitGExtra ++ (shrinkRow 768 s2Step124ExitFExtra ++ (shrinkRow 770 s2Step124ExitFvExtra ++ (shrinkRow 771 s2Step124ExitGvExtra ++ []))))⟩

private def s2Step124CompletePlan : HmrEarlyStepPlan := ⟨s2Step124FrontPlan,s2Step124EarlyControlArena,s2Step124EarlyControlPlan,s2Step124CompleteMoves⟩

private theorem s2Step124Complete_apart : List.Disjoint (s2Step124CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [837, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step124CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[837, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step124Complete_owned : (s2Step124CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step124EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124Complete_repack : s2Step124ExitGvAfter.checkRepack s2Step124CompleteMoves=some s2Step124EarlyControlArena := by rfl

private theorem s2Step124EarlyControl_branchOwned : ([802] : List Wire).toFinset⊆s2Step124EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_branch : compileHmrBranchRetirement s2Step124EarlyControlSigmaArena 802=some s2Step124EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step124EarlyControl_branchOwned
  · ext q
    simp [s2Step124EarlyControlOutputArena,s2Step124EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step124EarlyControl_classEqualityBorrow : s2Step124EarlyControlPositiveArena.checkBorrow (([837, 781] : List Wire).length-1) s2Step124EarlyControlLog.classWork=some s2Step124EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step124EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step124EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step124EarlyControlEqualityArena,s2Step124EarlyControlPositiveArena,s2Step124EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step124EarlyControl_classEqualityOwned : ([837, 781] : List Wire).toFinset⊆s2Step124EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_classEquality : compileHmrEqualityLog s2Step124EarlyControlPositiveArena [837, 781] 0 s2Step124EarlyControlLog.classWork=some (s2Step124EarlyControlEqualityArena,s2Step124EarlyControlLog.classWork,s2Step124EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step124EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step124EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step124EarlyControl_classOwned : ([777, 817, 837] : List Wire).toFinset⊆s2Step124EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_positiveBorrow : s2Step124EarlyControlZeroArena.checkBorrow (1) s2Step124EarlyControlLog.positiveWork=some s2Step124EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step124EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step124EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step124EarlyControlPositiveArena,s2Step124EarlyControlZeroArena,s2Step124EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step124EarlyControl_class : compileHmrSourceClassLog s2Step124EarlyControlZeroArena false 777 s2Step124EarlyControlZeroPlan.top 0 837 s2Step124EarlyControlLog.positiveWork s2Step124EarlyControlLog.classWork=some s2Step124EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step124EarlyControlClassPlan s2Step124EarlyControlZeroArena false 777 s2Step124EarlyControlZeroPlan.top 0 837
  constructor
  · decide +kernel
  · exact s2Step124EarlyControl_classOwned
  · exact s2Step124EarlyControl_positiveBorrow
  · exact s2Step124EarlyControl_classEquality

private theorem s2Step124EarlyControl_entryRecordOwned : ([802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step124EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_entrySigmaOwned : ([837, 254] : List Wire).toFinset⊆s2Step124EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_fitBorrow : s2Step124EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step124EarlyControlLog.recordFresh=some s2Step124EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step124EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step124EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step124EarlyControlFittedArena,s2Step124EarlyControlFlagArena,s2Step124EarlyControlLog,arenaWires]

private theorem s2Step124EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step124EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_fit : compileHmrRecordGrowLog s2Step124EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step124EarlyControlLog.recordFresh=some s2Step124EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step124EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step124EarlyControl_fitBorrow

private theorem s2Step124EarlyControl_flagsBorrow : s2Step124EarlyControlEqualityArena.checkBorrow (6) s2Step124EarlyControlLog.flagWork=some s2Step124EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step124EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step124EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step124EarlyControlFlagArena,s2Step124EarlyControlEqualityArena,s2Step124EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step124EarlyControl_flagsOwned : ([790, 253, 252, 251] : List Wire).toFinset⊆s2Step124EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlEqualityArena (fun q => (0≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_flags : compileHmrFlagsLog s2Step124EarlyControlClassPlan.equalityArena s2Step124EarlyControlClassPlan.equality.top 253 252 251 s2Step124EarlyControlLog.flagWork=some s2Step124EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step124EarlyControl_flagsOwned⟩
  · exact s2Step124EarlyControl_flagsBorrow

private theorem s2Step124EarlyControl_historyBorrow : s2Step124EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step124EarlyControlLog.recordFresh=some s2Step124EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step124EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step124EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step124EarlyControlHistoryArena,s2Step124EarlyControlArena,s2Step124EarlyControlLog,arenaWires]

private theorem s2Step124EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step124EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_history : compileHmrRecordGrowLog s2Step124EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step124EarlyControlLog.recordFresh=some s2Step124EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step124EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step124EarlyControl_historyBorrow

private theorem s2Step124EarlyControl_sigmaOwned : ([254, 837] : List Wire).toFinset⊆s2Step124EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_sigmaReleaseOwned : ([837] : List Wire).toFinset⊆s2Step124EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_sigmaRelease : s2Step124EarlyControlHistoryArena.release {837} (fun _ => false)=some s2Step124EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step124EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step124EarlyControlSigmaArena,s2Step124EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step124EarlyControl_sigma : compileHmrSigmaDropLog s2Step124EarlyControlHistoryArena false 0 0 254 837 []=some s2Step124EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step124EarlyControl_sigmaOwned⟩
  · exact s2Step124EarlyControl_sigmaRelease

private theorem s2Step124EarlyControl_zeroBorrow : s2Step124EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step124EarlyControlLog.zeroWork=some s2Step124EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step124EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step124EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step124EarlyControlZeroArena,s2Step124EarlyControlArena,s2Step124EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step124EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step124EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step124EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EarlyControl_zero : compileHmrEqualityLog s2Step124EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step124EarlyControlLog.zeroWork=some (s2Step124EarlyControlZeroArena,s2Step124EarlyControlLog.zeroWork,s2Step124EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step124EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step124EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step124EarlyControl_logged : s2Step124EarlyControlPlan.Logged s2Step124EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 837 254 253 252 251 802 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step124EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step124EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step124EarlyControl_zero
  · exact s2Step124EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step124EarlyControl_flags
  · exact s2Step124EarlyControl_fit
  · exact s2Step124EarlyControl_history
  · exact s2Step124EarlyControl_sigma
  · exact s2Step124EarlyControl_branch

private theorem s2Step124EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step124EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 837 254 253 252 251 802 37 s2Step124EarlyControlLog=some s2Step124EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step124EarlyControlPlan s2Step124EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 837 254 253 252 251 802 37 s2Step124EarlyControl_logged

private def s2Step124EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718],768⟩

private def s2Step124EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step124EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩

private def s2Step124EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806],771⟩

private def s2Step124FrontBank : WindowBank := ⟨s2Step124EntryFRow,s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow⟩

private def s2Step124Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832, 824, 768]

private def s2Step124Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 781, 769]

private def s2Step124Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 849, 770]

private def s2Step124Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 825, 771]

private theorem s2Step124Counter_apart : Disjoint s2Step124HeadFvAfter.live s2Step124CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step124HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124Counter_borrowed : s2Step124HeadFvAfter.checkBorrow 4 s2Step124CounterWork=some s2Step124CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step124HeadFvAfter s2Step124CounterDuring s2Step124CounterWork.toFinset s2Step124Counter_bounded s2Step124Counter_apart rfl

private theorem s2Step124Counter_owned : (837::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step124HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step124HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124Counter_checked : compileHmrCounterStepLog s2Step124HeadFvAfter true 837 [772, 773, 774, 775, 776, 777] s2Step124CounterWork=some s2Step124CounterDuring := by
  have owned : ∀q∈837::[772, 773, 774, 775, 776, 777],q∈s2Step124HeadFvAfter.live := fun q hq => s2Step124Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step124Counter_borrowed

private def s2Step124EntryFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step124EntryBank_incomingDistinct : ([s2Step124EntryFRow,s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124EntryF_Incoming : rowsOwned s2Step124EntryFBefore [s2Step124EntryFRow,s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124EntryFRow,s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow] 0 s2Step124EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124EntryBank_outgoingOwned : rowsOwned s2Step124EntryGvAfter [s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step124EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124EntryF_Outgoing : rowsOwned s2Step124EntryGvAfter [s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut] :=
  hmrRows_owned_drop s2Step124EntryGvAfter [s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut] 0 s2Step124EntryBank_outgoingOwned

private theorem s2Step124EntryF_distinct : (s2Step124EntryFRow.sign::s2Step124EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124EntryF_owned : (s2Step124EntryFRow.sign::s2Step124EntryFRow.payload).toFinset⊆s2Step124EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EntryF_reserved : s2Step124EntryFBefore.reserve s2Step124EntryFFresh.toFinset=some s2Step124EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step124EntryFFresh,arenaWires]
  · norm_num [s2Step124EntryFBefore,s2Step124EntryFFresh,arenaWires]
  · ext q
    simp only [s2Step124EntryFAfter,s2Step124EntryFBefore,s2Step124EntryFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step124EntryF_checked : planRowResizeLog s2Step124EntryFBefore s2Step124EntryFRow 208 s2Step124EntryFFresh=
    some (s2Step124EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832],768⟩,growRow 768 s2Step124EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step124EntryFBefore s2Step124EntryFAfter s2Step124EntryFRow 208 s2Step124EntryFFresh
    s2Step124EntryF_distinct s2Step124EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step124EntryF_reserved
  have rowEq : WindowRow.mk (s2Step124EntryFRow.payload++s2Step124EntryFFresh) s2Step124EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step124EntryFvAfter : Arena := s2Step124EntryFAfter

private def s2Step124EntryFvBefore : Arena := s2Step124EntryFAfter

private theorem s2Step124EntryFv_Incoming : rowsOwned s2Step124EntryFvBefore [s2Step124EntryFvRow,s2Step124EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124EntryFRow,s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow] 2 s2Step124EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124EntryFv_Outgoing : rowsOwned s2Step124EntryGvAfter [s2Step124EntryFvOut,s2Step124EntryGvOut] :=
  hmrRows_owned_drop s2Step124EntryGvAfter [s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut] 2 s2Step124EntryBank_outgoingOwned

private theorem s2Step124EntryFv_distinct : (s2Step124EntryFvRow.sign::s2Step124EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124EntryFv_owned : (s2Step124EntryFvRow.sign::s2Step124EntryFvRow.payload).toFinset⊆s2Step124EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EntryFv_reserved : s2Step124EntryFvBefore.reserve s2Step124EntryFvFresh.toFinset=some s2Step124EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step124EntryFvFresh,arenaWires]
  · norm_num [s2Step124EntryFvBefore,s2Step124EntryFAfter,s2Step124EntryFvFresh,arenaWires]
  · simp only [s2Step124EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step124EntryFv_checked : planRowResizeLog s2Step124EntryFvBefore s2Step124EntryFvRow 76 s2Step124EntryFvFresh=
    some (s2Step124EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩,growRow 770 s2Step124EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step124EntryFvBefore s2Step124EntryFvAfter s2Step124EntryFvRow 76 s2Step124EntryFvFresh
    s2Step124EntryFv_distinct s2Step124EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step124EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step124EntryFvRow.payload++s2Step124EntryFvFresh) s2Step124EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step124EntryGAfter : Arena := s2Step124EntryFAfter

private def s2Step124EntryGBefore : Arena := s2Step124EntryFAfter

private theorem s2Step124EntryG_Incoming : rowsOwned s2Step124EntryGBefore [s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124EntryFRow,s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow] 1 s2Step124EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124EntryG_Outgoing : rowsOwned s2Step124EntryGvAfter [s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut] :=
  hmrRows_owned_drop s2Step124EntryGvAfter [s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut] 1 s2Step124EntryBank_outgoingOwned

private theorem s2Step124EntryG_distinct : (s2Step124EntryGRow.sign::s2Step124EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124EntryG_owned : (s2Step124EntryGRow.sign::s2Step124EntryGRow.payload).toFinset⊆s2Step124EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EntryG_reserved : s2Step124EntryGBefore.reserve s2Step124EntryGFresh.toFinset=some s2Step124EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step124EntryGFresh,arenaWires]
  · norm_num [s2Step124EntryGBefore,s2Step124EntryFAfter,s2Step124EntryGFresh,arenaWires]
  · simp only [s2Step124EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step124EntryG_checked : planRowResizeLog s2Step124EntryGBefore s2Step124EntryGRow 208 s2Step124EntryGFresh=
    some (s2Step124EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩,growRow 769 s2Step124EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step124EntryGBefore s2Step124EntryGAfter s2Step124EntryGRow 208 s2Step124EntryGFresh
    s2Step124EntryG_distinct s2Step124EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step124EntryG_reserved
  have rowEq : WindowRow.mk (s2Step124EntryGRow.payload++s2Step124EntryGFresh) s2Step124EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step124EntryGvBefore : Arena := s2Step124EntryFAfter

private theorem s2Step124EntryGv_Incoming : rowsOwned s2Step124EntryGvBefore [s2Step124EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124EntryFRow,s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow] 3 s2Step124EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124EntryGv_Outgoing : rowsOwned s2Step124EntryGvAfter [s2Step124EntryGvOut] :=
  hmrRows_owned_drop s2Step124EntryGvAfter [s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut] 3 s2Step124EntryBank_outgoingOwned

private theorem s2Step124EntryGv_distinct : (s2Step124EntryGvRow.sign::s2Step124EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124EntryGv_owned : (s2Step124EntryGvRow.sign::s2Step124EntryGvRow.payload).toFinset⊆s2Step124EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124EntryGv_reserved : s2Step124EntryGvBefore.reserve s2Step124EntryGvFresh.toFinset=some s2Step124EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step124EntryGvFresh,arenaWires]
  · norm_num [s2Step124EntryGvBefore,s2Step124EntryFAfter,s2Step124EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step124EntryGvAfter,s2Step124EntryGvBefore,s2Step124EntryFAfter,s2Step124EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step124EntryGv_checked : planRowResizeLog s2Step124EntryGvBefore s2Step124EntryGvRow 76 s2Step124EntryGvFresh=
    some (s2Step124EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩,growRow 771 s2Step124EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step124EntryGvBefore s2Step124EntryGvAfter s2Step124EntryGvRow 76 s2Step124EntryGvFresh
    s2Step124EntryGv_distinct s2Step124EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step124EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step124EntryGvRow.payload++s2Step124EntryGvFresh) s2Step124EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step124EntryBank_rows : planWindowRowsLog s2Step124EntryFBefore [(s2Step124EntryFRow,208),(s2Step124EntryGRow,208),(s2Step124EntryFvRow,76),(s2Step124EntryGvRow,76)] [s2Step124EntryFFresh,s2Step124EntryGFresh,s2Step124EntryFvFresh,s2Step124EntryGvFresh]=
    some (s2Step124EntryGvAfter,[s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut],(growRow 768 s2Step124EntryFFresh ++ (growRow 769 s2Step124EntryGFresh ++ (growRow 770 s2Step124EntryFvFresh ++ (growRow 771 s2Step124EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step124EntryGvAfter [] []=some (s2Step124EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step124EntryGvBefore s2Step124EntryGvAfter s2Step124EntryGvAfter
    s2Step124EntryGvRow s2Step124EntryGvOut 76 s2Step124EntryGvFresh [] [] []
    (growRow 771 s2Step124EntryGvFresh) ([]) s2Step124EntryGv_Incoming s2Step124EntryGv_checked h4 s2Step124EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step124EntryFvBefore s2Step124EntryFvAfter s2Step124EntryGvAfter
    s2Step124EntryFvRow s2Step124EntryFvOut 76 s2Step124EntryFvFresh [(s2Step124EntryGvRow,76)] [s2Step124EntryGvFresh] [s2Step124EntryGvOut]
    (growRow 770 s2Step124EntryFvFresh) ((growRow 771 s2Step124EntryGvFresh ++ [])) s2Step124EntryFv_Incoming s2Step124EntryFv_checked h3 s2Step124EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step124EntryGBefore s2Step124EntryGAfter s2Step124EntryGvAfter
    s2Step124EntryGRow s2Step124EntryGOut 208 s2Step124EntryGFresh [(s2Step124EntryFvRow,76),(s2Step124EntryGvRow,76)] [s2Step124EntryFvFresh,s2Step124EntryGvFresh] [s2Step124EntryFvOut,s2Step124EntryGvOut]
    (growRow 769 s2Step124EntryGFresh) ((growRow 770 s2Step124EntryFvFresh ++ (growRow 771 s2Step124EntryGvFresh ++ []))) s2Step124EntryG_Incoming s2Step124EntryG_checked h2 s2Step124EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step124EntryFBefore s2Step124EntryFAfter s2Step124EntryGvAfter
    s2Step124EntryFRow s2Step124EntryFOut 208 s2Step124EntryFFresh [(s2Step124EntryGRow,208),(s2Step124EntryFvRow,76),(s2Step124EntryGvRow,76)] [s2Step124EntryGFresh,s2Step124EntryFvFresh,s2Step124EntryGvFresh] [s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut]
    (growRow 768 s2Step124EntryFFresh) ((growRow 769 s2Step124EntryGFresh ++ (growRow 770 s2Step124EntryFvFresh ++ (growRow 771 s2Step124EntryGvFresh ++ [])))) s2Step124EntryF_Incoming s2Step124EntryF_checked h1 s2Step124EntryF_Outgoing
  exact h0

private theorem s2Step124EntryBank_checked : compileHmrBankResizeLog .entry s2Step124EntryFBefore ⟨s2Step124EntryFRow,s2Step124EntryGRow,s2Step124EntryFvRow,s2Step124EntryGvRow⟩ ⟨208,208,76,76⟩ [s2Step124EntryFFresh,s2Step124EntryGFresh,s2Step124EntryFvFresh,s2Step124EntryGvFresh]=
    some (s2Step124EntryGvAfter,⟨s2Step124EntryFOut,s2Step124EntryGOut,s2Step124EntryFvOut,s2Step124EntryGvOut⟩,(growRow 768 s2Step124EntryFFresh ++ (growRow 769 s2Step124EntryGFresh ++ (growRow 770 s2Step124EntryFvFresh ++ (growRow 771 s2Step124EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step124EntryBank_rows]
  rfl

private def s2Step124ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124ExitFBefore : Arena := s2Step124ExitGAfter

private def s2Step124ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832, 824],768⟩

private def s2Step124ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 849],770⟩

private def s2Step124ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 781],769⟩

private def s2Step124ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 825],771⟩

private theorem s2Step124ExitBank_incomingDistinct : ([s2Step124ExitGRow,s2Step124ExitFRow,s2Step124ExitFvRow,s2Step124ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124ExitF_Incoming : rowsOwned s2Step124ExitFBefore [s2Step124ExitFRow,s2Step124ExitFvRow,s2Step124ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124ExitGRow,s2Step124ExitFRow,s2Step124ExitFvRow,s2Step124ExitGvRow] 1 s2Step124ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124ExitBank_outgoingOwned : rowsOwned s2Step124ExitGvAfter [s2Step124ExitGOut,s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step124ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124ExitF_Outgoing : rowsOwned s2Step124ExitGvAfter [s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut] :=
  hmrRows_owned_drop s2Step124ExitGvAfter [s2Step124ExitGOut,s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut] 1 s2Step124ExitBank_outgoingOwned

private theorem s2Step124ExitF_distinct : (s2Step124ExitFRow.sign::s2Step124ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124ExitF_owned : (s2Step124ExitFRow.sign::s2Step124ExitFRow.payload).toFinset⊆s2Step124ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124ExitF_retired : s2Step124ExitFBefore.retireSet s2Step124ExitFExtra.toFinset=s2Step124ExitFAfter := by
  unfold Arena.retireSet s2Step124ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step124ExitFBefore,s2Step124ExitGAfter,s2Step124ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step124ExitF_checked : planRowResizeLog s2Step124ExitFBefore s2Step124ExitFRow 207 []=
    some (s2Step124ExitFAfter,s2Step124ExitFOut,shrinkRow 768 s2Step124ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step124ExitFBefore s2Step124ExitFRow 207 s2Step124ExitF_distinct s2Step124ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step124ExitFRow.payload.take 207) s2Step124ExitFRow.sign=s2Step124ExitFOut := by decide +kernel
  have hi : s2Step124ExitFRow.payload.drop 207=s2Step124ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step124ExitF_retired] at result
  exact result

private def s2Step124ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124ExitFvBefore : Arena := s2Step124ExitFAfter

private theorem s2Step124ExitFv_Incoming : rowsOwned s2Step124ExitFvBefore [s2Step124ExitFvRow,s2Step124ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124ExitGRow,s2Step124ExitFRow,s2Step124ExitFvRow,s2Step124ExitGvRow] 2 s2Step124ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124ExitFv_Outgoing : rowsOwned s2Step124ExitGvAfter [s2Step124ExitFvOut,s2Step124ExitGvOut] :=
  hmrRows_owned_drop s2Step124ExitGvAfter [s2Step124ExitGOut,s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut] 2 s2Step124ExitBank_outgoingOwned

private theorem s2Step124ExitFv_distinct : (s2Step124ExitFvRow.sign::s2Step124ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124ExitFv_owned : (s2Step124ExitFvRow.sign::s2Step124ExitFvRow.payload).toFinset⊆s2Step124ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124ExitFv_retired : s2Step124ExitFvBefore.retireSet s2Step124ExitFvExtra.toFinset=s2Step124ExitFvAfter := by
  unfold Arena.retireSet s2Step124ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step124ExitFvBefore,s2Step124ExitFAfter,s2Step124ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step124ExitFv_checked : planRowResizeLog s2Step124ExitFvBefore s2Step124ExitFvRow 76 []=
    some (s2Step124ExitFvAfter,s2Step124ExitFvOut,shrinkRow 770 s2Step124ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step124ExitFvBefore s2Step124ExitFvRow 76 s2Step124ExitFv_distinct s2Step124ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step124ExitFvRow.payload.take 76) s2Step124ExitFvRow.sign=s2Step124ExitFvOut := by decide +kernel
  have hi : s2Step124ExitFvRow.payload.drop 76=s2Step124ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step124ExitFv_retired] at result
  exact result

private def s2Step124ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step124ExitG_Incoming : rowsOwned s2Step124ExitGBefore [s2Step124ExitGRow,s2Step124ExitFRow,s2Step124ExitFvRow,s2Step124ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124ExitGRow,s2Step124ExitFRow,s2Step124ExitFvRow,s2Step124ExitGvRow] 0 s2Step124ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124ExitG_Outgoing : rowsOwned s2Step124ExitGvAfter [s2Step124ExitGOut,s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut] :=
  hmrRows_owned_drop s2Step124ExitGvAfter [s2Step124ExitGOut,s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut] 0 s2Step124ExitBank_outgoingOwned

private theorem s2Step124ExitG_distinct : (s2Step124ExitGRow.sign::s2Step124ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124ExitG_owned : (s2Step124ExitGRow.sign::s2Step124ExitGRow.payload).toFinset⊆s2Step124ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124ExitG_retired : s2Step124ExitGBefore.retireSet s2Step124ExitGExtra.toFinset=s2Step124ExitGAfter := by
  unfold Arena.retireSet s2Step124ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step124ExitGBefore,s2Step124ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step124ExitG_checked : planRowResizeLog s2Step124ExitGBefore s2Step124ExitGRow 207 []=
    some (s2Step124ExitGAfter,s2Step124ExitGOut,shrinkRow 769 s2Step124ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step124ExitGBefore s2Step124ExitGRow 207 s2Step124ExitG_distinct s2Step124ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step124ExitGRow.payload.take 207) s2Step124ExitGRow.sign=s2Step124ExitGOut := by decide +kernel
  have hi : s2Step124ExitGRow.payload.drop 207=s2Step124ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step124ExitG_retired] at result
  exact result

private def s2Step124ExitGvBefore : Arena := s2Step124ExitFvAfter

private theorem s2Step124ExitGv_Incoming : rowsOwned s2Step124ExitGvBefore [s2Step124ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124ExitGRow,s2Step124ExitFRow,s2Step124ExitFvRow,s2Step124ExitGvRow] 3 s2Step124ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124ExitGv_Outgoing : rowsOwned s2Step124ExitGvAfter [s2Step124ExitGvOut] :=
  hmrRows_owned_drop s2Step124ExitGvAfter [s2Step124ExitGOut,s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut] 3 s2Step124ExitBank_outgoingOwned

private theorem s2Step124ExitGv_distinct : (s2Step124ExitGvRow.sign::s2Step124ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124ExitGv_owned : (s2Step124ExitGvRow.sign::s2Step124ExitGvRow.payload).toFinset⊆s2Step124ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<824) ∨ (825≤q ∧ q<832) ∨ (833≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124ExitGv_retired : s2Step124ExitGvBefore.retireSet s2Step124ExitGvExtra.toFinset=s2Step124ExitGvAfter := by
  unfold Arena.retireSet s2Step124ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step124ExitGvBefore,s2Step124ExitFvAfter,s2Step124ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step124ExitGv_checked : planRowResizeLog s2Step124ExitGvBefore s2Step124ExitGvRow 76 []=
    some (s2Step124ExitGvAfter,s2Step124ExitGvOut,shrinkRow 771 s2Step124ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step124ExitGvBefore s2Step124ExitGvRow 76 s2Step124ExitGv_distinct s2Step124ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step124ExitGvRow.payload.take 76) s2Step124ExitGvRow.sign=s2Step124ExitGvOut := by decide +kernel
  have hi : s2Step124ExitGvRow.payload.drop 76=s2Step124ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step124ExitGv_retired] at result
  exact result

private theorem s2Step124ExitBank_rows : planWindowRowsLog s2Step124ExitGBefore [(s2Step124ExitGRow,207),(s2Step124ExitFRow,207),(s2Step124ExitFvRow,76),(s2Step124ExitGvRow,76)] [[],[],[],[]]=
    some (s2Step124ExitGvAfter,[s2Step124ExitGOut,s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut],(shrinkRow 769 s2Step124ExitGExtra ++ (shrinkRow 768 s2Step124ExitFExtra ++ (shrinkRow 770 s2Step124ExitFvExtra ++ (shrinkRow 771 s2Step124ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step124ExitGvAfter [] []=some (s2Step124ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step124ExitGvBefore s2Step124ExitGvAfter s2Step124ExitGvAfter
    s2Step124ExitGvRow s2Step124ExitGvOut 76 [] [] [] []
    (shrinkRow 771 s2Step124ExitGvExtra) ([]) s2Step124ExitGv_Incoming s2Step124ExitGv_checked h4 s2Step124ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step124ExitFvBefore s2Step124ExitFvAfter s2Step124ExitGvAfter
    s2Step124ExitFvRow s2Step124ExitFvOut 76 [] [(s2Step124ExitGvRow,76)] [[]] [s2Step124ExitGvOut]
    (shrinkRow 770 s2Step124ExitFvExtra) ((shrinkRow 771 s2Step124ExitGvExtra ++ [])) s2Step124ExitFv_Incoming s2Step124ExitFv_checked h3 s2Step124ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step124ExitFBefore s2Step124ExitFAfter s2Step124ExitGvAfter
    s2Step124ExitFRow s2Step124ExitFOut 207 [] [(s2Step124ExitFvRow,76),(s2Step124ExitGvRow,76)] [[],[]] [s2Step124ExitFvOut,s2Step124ExitGvOut]
    (shrinkRow 768 s2Step124ExitFExtra) ((shrinkRow 770 s2Step124ExitFvExtra ++ (shrinkRow 771 s2Step124ExitGvExtra ++ []))) s2Step124ExitF_Incoming s2Step124ExitF_checked h2 s2Step124ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step124ExitGBefore s2Step124ExitGAfter s2Step124ExitGvAfter
    s2Step124ExitGRow s2Step124ExitGOut 207 [] [(s2Step124ExitFRow,207),(s2Step124ExitFvRow,76),(s2Step124ExitGvRow,76)] [[],[],[]] [s2Step124ExitFOut,s2Step124ExitFvOut,s2Step124ExitGvOut]
    (shrinkRow 769 s2Step124ExitGExtra) ((shrinkRow 768 s2Step124ExitFExtra ++ (shrinkRow 770 s2Step124ExitFvExtra ++ (shrinkRow 771 s2Step124ExitGvExtra ++ [])))) s2Step124ExitG_Incoming s2Step124ExitG_checked h1 s2Step124ExitG_Outgoing
  exact h0

private theorem s2Step124ExitBank_checked : compileHmrBankResizeLog .exit s2Step124ExitGBefore ⟨s2Step124ExitFRow,s2Step124ExitGRow,s2Step124ExitFvRow,s2Step124ExitGvRow⟩ ⟨207,207,76,76⟩ [[],[],[],[]]=
    some (s2Step124ExitGvAfter,⟨s2Step124ExitFOut,s2Step124ExitGOut,s2Step124ExitFvOut,s2Step124ExitGvOut⟩,(shrinkRow 769 s2Step124ExitGExtra ++ (shrinkRow 768 s2Step124ExitFExtra ++ (shrinkRow 770 s2Step124ExitFvExtra ++ (shrinkRow 771 s2Step124ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step124ExitBank_rows]
  rfl

private theorem s2Step124Add0_apart : Disjoint s2Step124Add0Arena.live s2Step124Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step124Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124Add0_card : s2Step124Add0Arena.live.card=879 := by
  decide +kernel

private theorem s2Step124Add0_borrowed : s2Step124Add0Arena.checkBorrow (hmrHybridCount s2Step124Add0Arena s2Step124Add0B.length) s2Step124Add0Work=some s2Step124Add0During := by
  have len : s2Step124Add0Work.length=hmrHybridCount s2Step124Add0Arena s2Step124Add0B.length := by
    rw [hmrHybridCount,s2Step124Add0_card]
    decide +kernel
  have nd : s2Step124Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step124Add0Arena s2Step124Add0During s2Step124Add0Work.toFinset s2Step124Add0_bounded s2Step124Add0_apart rfl

private theorem s2Step124Add0_distinct : (790::802::815::(s2Step124Add0A++s2Step124Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124Add0_owned : (790::802::815::(s2Step124Add0A++s2Step124Add0B)).toFinset⊆s2Step124Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step124Add0Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124Add0_checked : compileHmrHybridCinLog s2Step124Add0Arena 802 790 815 s2Step124Add0A s2Step124Add0B s2Step124Add0Work=some s2Step124Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step124Add0Arena s2Step124Add0During 802 790 815 s2Step124Add0A s2Step124Add0B s2Step124Add0Work
    (by decide +kernel) (by decide +kernel) s2Step124Add0_distinct
    (fun q hq => s2Step124Add0_owned (List.mem_toFinset.mpr hq)) s2Step124Add0_borrowed

private theorem s2Step124Add1_apart : Disjoint s2Step124Add1Arena.live s2Step124Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step124Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124Add1_card : s2Step124Add1Arena.live.card=879 := by
  decide +kernel

private theorem s2Step124Add1_borrowed : s2Step124Add1Arena.checkBorrow (hmrHybridCount s2Step124Add1Arena s2Step124Add1B.length) s2Step124Add1Work=some s2Step124Add1During := by
  have len : s2Step124Add1Work.length=hmrHybridCount s2Step124Add1Arena s2Step124Add1B.length := by
    rw [hmrHybridCount,s2Step124Add1_card]
    decide +kernel
  have nd : s2Step124Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step124Add1Arena s2Step124Add1During s2Step124Add1Work.toFinset s2Step124Add1_bounded s2Step124Add1_apart rfl

private theorem s2Step124Add1_distinct : (790::802::815::(s2Step124Add1A++s2Step124Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124Add1_owned : (790::802::815::(s2Step124Add1A++s2Step124Add1B)).toFinset⊆s2Step124Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step124Add1Arena (fun q => (0≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124Add1_checked : compileHmrHybridCinLog s2Step124Add1Arena 802 790 815 s2Step124Add1A s2Step124Add1B s2Step124Add1Work=some s2Step124Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step124Add1Arena s2Step124Add1During 802 790 815 s2Step124Add1A s2Step124Add1B s2Step124Add1Work
    (by decide +kernel) (by decide +kernel) s2Step124Add1_distinct
    (fun q hq => s2Step124Add1_owned (List.mem_toFinset.mpr hq)) s2Step124Add1_borrowed

private theorem s2Step124F4_apart : Disjoint (s2Step124Add0A++s2Step124Add0B).toFinset (s2Step124Add1A++s2Step124Add1B).toFinset := by
  have nd : ((s2Step124Add0A++s2Step124Add0B)++(s2Step124Add1A++s2Step124Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step124F4_carry : s2Step124F4FlagArena.checkBorrow 1 [815]=some s2Step124Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step124F4FlagArena,s2Step124HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step124F4FlagArena,s2Step124HeadFvAfter,s2Step124Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step124F4_distinct : (837::802::790::815::((s2Step124Add0A++s2Step124Add1A)++(s2Step124Add0B++s2Step124Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124F4_flag : s2Step124HeadFvAfter.checkBorrow 1 [790]=some s2Step124F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step124HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step124F4_owned : (837::802::((s2Step124Add0A++s2Step124Add1A)++(s2Step124Add0B++s2Step124Add1B))).toFinset⊆s2Step124HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step124HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124F4_checked : compileHmrHybridF4Log s2Step124HeadFvAfter 837 802 s2Step124Add0A s2Step124Add0B s2Step124Add1A s2Step124Add1B [790] [815] s2Step124Add0Work s2Step124Add1Work=some s2Step124F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step124HeadFvAfter s2Step124F4FlagArena s2Step124Add0Arena s2Step124Add0During s2Step124Add1During 837 802
    s2Step124Add0A s2Step124Add0B s2Step124Add1A s2Step124Add1B [790] [815] s2Step124Add0Work s2Step124Add1Work
    (fun q hq => s2Step124F4_owned (List.mem_toFinset.mpr hq)) s2Step124F4_flag s2Step124F4_carry
    s2Step124F4_distinct s2Step124F4_apart s2Step124Add0_checked s2Step124Add1_checked

private theorem s2Step124Front_branch : s2Step124FrontSigmaArena.checkBorrow 1 [802]=some s2Step124HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step124FrontSigmaArena,s2Step124EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step124FrontSigmaArena,s2Step124EntryGvAfter,s2Step124HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step124Front_entry : HmrFrontEntryValid s2Step124EntryFBefore s2Step124FrontBank 208 76 ⟨207,207,76,76⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step124FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step124EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step124EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<819) ∨ (820≤q ∧ q<824) ∨ (826≤q ∧ q<832) ∨ (833≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step124FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step124Front_sigma : s2Step124EntryGvAfter.checkBorrow 1 [837]=some s2Step124FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step124EntryGvAfter,arenaWires]
  · rfl

private def s2Step124HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124HeadFBefore : Arena := s2Step124HeadGAfter

private def s2Step124HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832],768⟩

private def s2Step124HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792],770⟩

private def s2Step124HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817],769⟩

private def s2Step124HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819],771⟩

private theorem s2Step124HeadBank_incomingDistinct : ([s2Step124HeadGRow,s2Step124HeadFRow,s2Step124HeadGvRow,s2Step124HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124HeadF_Incoming : rowsOwned s2Step124HeadFBefore [s2Step124HeadFRow,s2Step124HeadGvRow,s2Step124HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124HeadGRow,s2Step124HeadFRow,s2Step124HeadGvRow,s2Step124HeadFvRow] 1 s2Step124HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124HeadBank_outgoingOwned : rowsOwned s2Step124HeadFvAfter [s2Step124HeadGOut,s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step124HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124HeadF_Outgoing : rowsOwned s2Step124HeadFvAfter [s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut] :=
  hmrRows_owned_drop s2Step124HeadFvAfter [s2Step124HeadGOut,s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut] 1 s2Step124HeadBank_outgoingOwned

private theorem s2Step124HeadF_distinct : (s2Step124HeadFRow.sign::s2Step124HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124HeadF_owned : (s2Step124HeadFRow.sign::s2Step124HeadFRow.payload).toFinset⊆s2Step124HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124HeadF_reserved : s2Step124HeadFBefore.reserve s2Step124HeadFFresh.toFinset=some s2Step124HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step124HeadFFresh,arenaWires]
  · norm_num [s2Step124HeadFBefore,s2Step124HeadGAfter,s2Step124HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step124HeadFAfter,s2Step124HeadFBefore,s2Step124HeadGAfter,s2Step124HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step124HeadF_checked : planRowResizeLog s2Step124HeadFBefore s2Step124HeadFRow 209 s2Step124HeadFFresh=
    some (s2Step124HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832, 824],768⟩,growRow 768 s2Step124HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step124HeadFBefore s2Step124HeadFAfter s2Step124HeadFRow 209 s2Step124HeadFFresh
    s2Step124HeadF_distinct s2Step124HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step124HeadF_reserved
  have rowEq : WindowRow.mk (s2Step124HeadFRow.payload++s2Step124HeadFFresh) s2Step124HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 832, 824],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step124HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step124HeadFvBefore : Arena := s2Step124HeadGvAfter

private theorem s2Step124HeadFv_Incoming : rowsOwned s2Step124HeadFvBefore [s2Step124HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124HeadGRow,s2Step124HeadFRow,s2Step124HeadGvRow,s2Step124HeadFvRow] 3 s2Step124HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124HeadFv_Outgoing : rowsOwned s2Step124HeadFvAfter [s2Step124HeadFvOut] :=
  hmrRows_owned_drop s2Step124HeadFvAfter [s2Step124HeadGOut,s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut] 3 s2Step124HeadBank_outgoingOwned

private theorem s2Step124HeadFv_distinct : (s2Step124HeadFvRow.sign::s2Step124HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124HeadFv_owned : (s2Step124HeadFvRow.sign::s2Step124HeadFvRow.payload).toFinset⊆s2Step124HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124HeadFv_reserved : s2Step124HeadFvBefore.reserve s2Step124HeadFvFresh.toFinset=some s2Step124HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step124HeadFvFresh,arenaWires]
  · norm_num [s2Step124HeadFvBefore,s2Step124HeadGvAfter,s2Step124HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step124HeadFvAfter,s2Step124HeadFvBefore,s2Step124HeadGvAfter,s2Step124HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step124HeadFv_checked : planRowResizeLog s2Step124HeadFvBefore s2Step124HeadFvRow 77 s2Step124HeadFvFresh=
    some (s2Step124HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 849],770⟩,growRow 770 s2Step124HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step124HeadFvBefore s2Step124HeadFvAfter s2Step124HeadFvRow 77 s2Step124HeadFvFresh
    s2Step124HeadFv_distinct s2Step124HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step124HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step124HeadFvRow.payload++s2Step124HeadFvFresh) s2Step124HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 849],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step124HeadG_Incoming : rowsOwned s2Step124HeadGBefore [s2Step124HeadGRow,s2Step124HeadFRow,s2Step124HeadGvRow,s2Step124HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124HeadGRow,s2Step124HeadFRow,s2Step124HeadGvRow,s2Step124HeadFvRow] 0 s2Step124HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124HeadG_Outgoing : rowsOwned s2Step124HeadFvAfter [s2Step124HeadGOut,s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut] :=
  hmrRows_owned_drop s2Step124HeadFvAfter [s2Step124HeadGOut,s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut] 0 s2Step124HeadBank_outgoingOwned

private theorem s2Step124HeadG_distinct : (s2Step124HeadGRow.sign::s2Step124HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124HeadG_owned : (s2Step124HeadGRow.sign::s2Step124HeadGRow.payload).toFinset⊆s2Step124HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<824) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124HeadG_reserved : s2Step124HeadGBefore.reserve s2Step124HeadGFresh.toFinset=some s2Step124HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step124HeadGFresh,arenaWires]
  · norm_num [s2Step124HeadGBefore,s2Step124HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step124HeadGAfter,s2Step124HeadGBefore,s2Step124HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step124HeadG_checked : planRowResizeLog s2Step124HeadGBefore s2Step124HeadGRow 209 s2Step124HeadGFresh=
    some (s2Step124HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 781],769⟩,growRow 769 s2Step124HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step124HeadGBefore s2Step124HeadGAfter s2Step124HeadGRow 209 s2Step124HeadGFresh
    s2Step124HeadG_distinct s2Step124HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step124HeadG_reserved
  have rowEq : WindowRow.mk (s2Step124HeadGRow.payload++s2Step124HeadGFresh) s2Step124HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 817, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step124HeadGvBefore : Arena := s2Step124HeadFAfter

private theorem s2Step124HeadGv_Incoming : rowsOwned s2Step124HeadGvBefore [s2Step124HeadGvRow,s2Step124HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step124HeadGRow,s2Step124HeadFRow,s2Step124HeadGvRow,s2Step124HeadFvRow] 2 s2Step124HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step124HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step124HeadGv_Outgoing : rowsOwned s2Step124HeadFvAfter [s2Step124HeadGvOut,s2Step124HeadFvOut] :=
  hmrRows_owned_drop s2Step124HeadFvAfter [s2Step124HeadGOut,s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut] 2 s2Step124HeadBank_outgoingOwned

private theorem s2Step124HeadGv_distinct : (s2Step124HeadGvRow.sign::s2Step124HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step124HeadGv_owned : (s2Step124HeadGvRow.sign::s2Step124HeadGvRow.payload).toFinset⊆s2Step124HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step124HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step124HeadGv_reserved : s2Step124HeadGvBefore.reserve s2Step124HeadGvFresh.toFinset=some s2Step124HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step124HeadGvFresh,arenaWires]
  · norm_num [s2Step124HeadGvBefore,s2Step124HeadFAfter,s2Step124HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step124HeadGvAfter,s2Step124HeadGvBefore,s2Step124HeadFAfter,s2Step124HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step124HeadGv_checked : planRowResizeLog s2Step124HeadGvBefore s2Step124HeadGvRow 77 s2Step124HeadGvFresh=
    some (s2Step124HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 825],771⟩,growRow 771 s2Step124HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step124HeadGvBefore s2Step124HeadGvAfter s2Step124HeadGvRow 77 s2Step124HeadGvFresh
    s2Step124HeadGv_distinct s2Step124HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step124HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step124HeadGvRow.payload++s2Step124HeadGvFresh) s2Step124HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 825],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step124HeadBank_rows : planWindowRowsLog s2Step124HeadGBefore [(s2Step124HeadGRow,209),(s2Step124HeadFRow,209),(s2Step124HeadGvRow,77),(s2Step124HeadFvRow,77)] [s2Step124HeadGFresh,s2Step124HeadFFresh,s2Step124HeadGvFresh,s2Step124HeadFvFresh]=
    some (s2Step124HeadFvAfter,[s2Step124HeadGOut,s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut],(growRow 769 s2Step124HeadGFresh ++ (growRow 768 s2Step124HeadFFresh ++ (growRow 771 s2Step124HeadGvFresh ++ (growRow 770 s2Step124HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step124HeadFvAfter [] []=some (s2Step124HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step124HeadFvBefore s2Step124HeadFvAfter s2Step124HeadFvAfter
    s2Step124HeadFvRow s2Step124HeadFvOut 77 s2Step124HeadFvFresh [] [] []
    (growRow 770 s2Step124HeadFvFresh) ([]) s2Step124HeadFv_Incoming s2Step124HeadFv_checked h4 s2Step124HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step124HeadGvBefore s2Step124HeadGvAfter s2Step124HeadFvAfter
    s2Step124HeadGvRow s2Step124HeadGvOut 77 s2Step124HeadGvFresh [(s2Step124HeadFvRow,77)] [s2Step124HeadFvFresh] [s2Step124HeadFvOut]
    (growRow 771 s2Step124HeadGvFresh) ((growRow 770 s2Step124HeadFvFresh ++ [])) s2Step124HeadGv_Incoming s2Step124HeadGv_checked h3 s2Step124HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step124HeadFBefore s2Step124HeadFAfter s2Step124HeadFvAfter
    s2Step124HeadFRow s2Step124HeadFOut 209 s2Step124HeadFFresh [(s2Step124HeadGvRow,77),(s2Step124HeadFvRow,77)] [s2Step124HeadGvFresh,s2Step124HeadFvFresh] [s2Step124HeadGvOut,s2Step124HeadFvOut]
    (growRow 768 s2Step124HeadFFresh) ((growRow 771 s2Step124HeadGvFresh ++ (growRow 770 s2Step124HeadFvFresh ++ []))) s2Step124HeadF_Incoming s2Step124HeadF_checked h2 s2Step124HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step124HeadGBefore s2Step124HeadGAfter s2Step124HeadFvAfter
    s2Step124HeadGRow s2Step124HeadGOut 209 s2Step124HeadGFresh [(s2Step124HeadFRow,209),(s2Step124HeadGvRow,77),(s2Step124HeadFvRow,77)] [s2Step124HeadFFresh,s2Step124HeadGvFresh,s2Step124HeadFvFresh] [s2Step124HeadFOut,s2Step124HeadGvOut,s2Step124HeadFvOut]
    (growRow 769 s2Step124HeadGFresh) ((growRow 768 s2Step124HeadFFresh ++ (growRow 771 s2Step124HeadGvFresh ++ (growRow 770 s2Step124HeadFvFresh ++ [])))) s2Step124HeadG_Incoming s2Step124HeadG_checked h1 s2Step124HeadG_Outgoing
  exact h0

private theorem s2Step124HeadBank_checked : compileHmrBankResizeLog .headroom s2Step124HeadGBefore ⟨s2Step124HeadFRow,s2Step124HeadGRow,s2Step124HeadFvRow,s2Step124HeadGvRow⟩ ⟨209,209,77,77⟩ [s2Step124HeadGFresh,s2Step124HeadFFresh,s2Step124HeadGvFresh,s2Step124HeadFvFresh]=
    some (s2Step124HeadFvAfter,⟨s2Step124HeadFOut,s2Step124HeadGOut,s2Step124HeadFvOut,s2Step124HeadGvOut⟩,(growRow 769 s2Step124HeadGFresh ++ (growRow 768 s2Step124HeadFFresh ++ (growRow 771 s2Step124HeadGvFresh ++ (growRow 770 s2Step124HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step124HeadBank_rows]
  rfl

private theorem s2Step124Front_checked : compileHmrSourceFrontLog s2Step124EntryFBefore s2Step124FrontBank 208 76 ⟨207,207,76,76⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step124FrontLog=some s2Step124FrontPlan := by
  have pairEq : s2Step124FrontPair=⟨s2Step124HeadFRow,s2Step124HeadGRow,s2Step124HeadFvRow,s2Step124HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step124FrontHead=⟨s2Step124ExitFRow,s2Step124ExitGRow,s2Step124ExitFvRow,s2Step124ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step124Add0A=s2Step124FrontHead.f.wires := by decide +kernel
  have gEq : s2Step124Add0B=s2Step124FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step124Add1A=s2Step124FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step124Add1B=s2Step124FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step124EntryFBefore s2Step124FrontBank 208 76 ⟨207,207,76,76⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step124FrontLog s2Step124FrontPlan
  · exact s2Step124Front_entry
  · exact s2Step124EntryBank_checked
  · exact s2Step124Front_sigma
  · rfl
  · exact s2Step124Front_branch
  · rfl
  · simpa only [s2Step124FrontPlan,pairEq] using s2Step124HeadBank_checked
  · simpa only [s2Step124FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step124F4_checked
  · exact s2Step124Counter_checked
  · rfl
  · simpa only [s2Step124FrontPlan,headEq] using s2Step124ExitBank_checked

private theorem s2Step124Complete_explicit_checked : compileHmrEarlyStepLog s2Step124EntryFBefore s2Step124FrontBank 208 76 ⟨207,207,76,76⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step124CompleteLog=some s2Step124CompletePlan := by
  let Q := s2Step124EarlyControlPlan
  have hq := s2Step124EarlyControl_plan_checked
  have fv1 : s2Step124CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step124CompleteOut.fv.payload[2]?.getD s2Step124CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step124CompleteOut.fv.payload[3]?.getD s2Step124CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step124CompleteOut.fv.payload[4]?.getD s2Step124CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step124EntryFBefore s2Step124EarlyControlArena s2Step124FrontBank 208 76 ⟨207,207,76,76⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step124CompleteLog s2Step124FrontPlan Q
    s2Step124Front_checked s2Step124Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step124Complete_owned s2Step124Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step124EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 837 s2Step124CompleteOut.fv.second (s2Step124CompleteOut.fv.payload[2]?.getD s2Step124CompleteOut.fv.sign) (s2Step124CompleteOut.fv.payload[3]?.getD s2Step124CompleteOut.fv.sign) (s2Step124CompleteOut.fv.payload[4]?.getD s2Step124CompleteOut.fv.sign) 802 37 s2Step124EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep124Arena : Arena := s2Step124EntryFBefore
def s2PrivateStep124Bank : WindowBank := s2Step124FrontBank
def s2PrivateStep124Spec : HmrSourceWalkStepLog := ⟨208,76,⟨207,207,76,76⟩,37,.early s2Step124CompleteLog⟩
def s2PrivateStep124Plan : HmrSourceStepPlan := .early s2Step124CompletePlan
theorem s2PrivateStep124_source : s2PrivateStep124Spec=s2ObservedLogs112[12] := rfl
theorem s2PrivateStep124_checked : compileHmrSourceStepLog s2PrivateStep124Arena s2PrivateStep124Bank
    s2PrivateStep124Spec.fgWidth s2PrivateStep124Spec.vWidth s2PrivateStep124Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 124 s2PrivateStep124Spec.need none s2PrivateStep124Spec.log=some s2PrivateStep124Plan := by
  change compileHmrSourceStepLog s2Step124EntryFBefore s2Step124FrontBank 208 76 ⟨207,207,76,76⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 124 37 none (.early s2Step124CompleteLog)=some (.early s2Step124CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 124<498)]
  rw [s2Step124Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
