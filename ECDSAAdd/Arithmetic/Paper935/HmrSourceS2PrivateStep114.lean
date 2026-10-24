import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep112
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

private def s2Step114CompleteMoves : List (Wire × Wire) := []

private def s2Step114EarlyControlLog : HmrEarlyControlLog := ⟨[805, 807, 846, 792, 815],[809],[781],[849, 806, 802, 867, 877, 879],[]⟩

private def s2Step114FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [846], [], []],[[792], [807], [805], [812]],[[], [], [], []]⟩,[820],[794],[815],[809],[781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[815, 809, 781, 849]⟩

private def s2Step114CompleteLog : HmrEarlyStepLog := ⟨s2Step114FrontLog,s2Step114CompleteMoves,s2Step114EarlyControlLog⟩

private def s2Step114ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step114ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩

private def s2Step114ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step114ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩

private def s2Step114FrontOut : WindowBank := ⟨s2Step114ExitFOut,s2Step114ExitGOut,s2Step114ExitFvOut,s2Step114ExitGvOut⟩

private def s2Step114CompleteOut : WindowBank := s2Step114FrontOut.repacked s2Step114CompleteMoves

private def s2Step114EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step114EarlyControlPositiveArena,[809],s2Step114EarlyControlEqualityArena,[781],⟨⟨820,false⟩,[⟨⟨809,false⟩,781⟩]⟩⟩

private def s2Step114EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,805⟩,⟨⟨774,false⟩,807⟩,⟨⟨775,false⟩,846⟩,⟨⟨776,false⟩,792⟩,⟨⟨777,false⟩,815⟩]⟩

private def s2Step114EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step114EarlyControlZeroArena,s2Step114EarlyControlZeroPlan,s2Step114EarlyControlClassPlan,s2Step114EarlyControlFlagArena,s2Step114EarlyControlFittedArena,s2Step114EarlyControlHistoryArena,s2Step114EarlyControlSigmaArena,s2Step114EarlyControlOutputArena,s2Step114EarlyControlLog⟩

private def s2Step114CounterWork : List Wire := [815, 809, 781, 849]

private theorem s2Step114Counter_bounded : s2Step114CounterWork.toFinset⊆arenaWires := by norm_num [s2Step114CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step114HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114CounterDuring : Arena := ⟨s2Step114HeadFvAfter.live∪s2Step114CounterWork.toFinset,Finset.union_subset s2Step114HeadFvAfter.bounded s2Step114Counter_bounded⟩

private def s2Step114EntryFFresh : List Wire := []

private def s2Step114EntryFvFresh : List Wire := []

private def s2Step114EntryGFresh : List Wire := [846]

private def s2Step114EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EntryGvAfter : Arena := s2Step114EntryGAfter

private def s2Step114EntryGvFresh : List Wire := []

private def s2Step114ExitFExtra : List Wire := [807]

private def s2Step114ExitGExtra : List Wire := [846, 792]

private def s2Step114ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114ExitGvExtra : List Wire := [805]

private def s2Step114Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114Add0Work : List Wire := [781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step114Add0_bounded : s2Step114Add0Work.toFinset⊆arenaWires := by
  have h : s2Step114Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step114Add0During : Arena := ⟨s2Step114Add0Arena.live∪s2Step114Add0Work.toFinset,Finset.union_subset s2Step114Add0Arena.bounded s2Step114Add0_bounded⟩

private def s2Step114Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114Add1Work : List Wire := [781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step114Add1_bounded : s2Step114Add1Work.toFinset⊆arenaWires := by
  have h : s2Step114Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step114Add1During : Arena := ⟨s2Step114Add1Arena.live∪s2Step114Add1Work.toFinset,Finset.union_subset s2Step114Add1Arena.bounded s2Step114Add1_bounded⟩

private def s2Step114F4FlagArena : Arena := ⟨s2Step114HeadFvAfter.live∪{815},Finset.union_subset s2Step114HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step114F4Plan : HmrHybridF4Plan := ⟨s2Step114F4FlagArena,[815],s2Step114Add0Arena,[809],s2Step114Add0During,s2Step114Add0Work,s2Step114Add1During,s2Step114Add1Work⟩

private def s2Step114HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807],768⟩

private def s2Step114HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩

private def s2Step114HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846, 792],769⟩

private def s2Step114HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 805],771⟩

private def s2Step114FrontHead : WindowBank := ⟨s2Step114HeadFOut,s2Step114HeadGOut,s2Step114HeadFvOut,s2Step114HeadGvOut⟩

private def s2Step114EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step114EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step114EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846],769⟩

private def s2Step114EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩

private def s2Step114FrontPair : WindowBank := ⟨s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut⟩

private def s2Step114FrontSigmaArena : Arena := ⟨s2Step114EntryGvAfter.live∪{820},Finset.union_subset s2Step114EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step114HeadFFresh : List Wire := [807]

private def s2Step114HeadFvFresh : List Wire := [812]

private def s2Step114HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114HeadGFresh : List Wire := [792]

private def s2Step114HeadGvFresh : List Wire := [805]

private def s2Step114FrontPlan : HmrSourceFront := ⟨s2Step114EntryGvAfter,s2Step114FrontPair,(growRow 768 s2Step114EntryFFresh ++ (growRow 769 s2Step114EntryGFresh ++ (growRow 770 s2Step114EntryFvFresh ++ (growRow 771 s2Step114EntryGvFresh ++ [])))),s2Step114FrontSigmaArena,[820],s2Step114HeadGBefore,[794],
  s2Step114HeadFvAfter,s2Step114FrontHead,(growRow 769 s2Step114HeadGFresh ++ (growRow 768 s2Step114HeadFFresh ++ (growRow 771 s2Step114HeadGvFresh ++ (growRow 770 s2Step114HeadFvFresh ++ [])))),s2Step114F4Plan,s2Step114CounterDuring,s2Step114CounterWork,s2Step114ExitGvAfter,s2Step114FrontOut,(shrinkRow 769 s2Step114ExitGExtra ++ (shrinkRow 768 s2Step114ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step114ExitGvExtra ++ []))))⟩

private def s2Step114CompletePlan : HmrEarlyStepPlan := ⟨s2Step114FrontPlan,s2Step114EarlyControlArena,s2Step114EarlyControlPlan,s2Step114CompleteMoves⟩

private theorem s2Step114Complete_apart : List.Disjoint (s2Step114CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step114CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step114Complete_owned : (s2Step114CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114Complete_repack : s2Step114ExitGvAfter.checkRepack s2Step114CompleteMoves=some s2Step114EarlyControlArena := by rfl

private theorem s2Step114EarlyControl_branchOwned : ([794] : List Wire).toFinset⊆s2Step114EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_branch : compileHmrBranchRetirement s2Step114EarlyControlSigmaArena 794=some s2Step114EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step114EarlyControl_branchOwned
  · ext q
    simp [s2Step114EarlyControlOutputArena,s2Step114EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step114EarlyControl_classEqualityBorrow : s2Step114EarlyControlPositiveArena.checkBorrow (([820, 809] : List Wire).length-1) s2Step114EarlyControlLog.classWork=some s2Step114EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step114EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step114EarlyControlEqualityArena,s2Step114EarlyControlPositiveArena,s2Step114EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step114EarlyControl_classEqualityOwned : ([820, 809] : List Wire).toFinset⊆s2Step114EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_classEquality : compileHmrEqualityLog s2Step114EarlyControlPositiveArena [820, 809] 0 s2Step114EarlyControlLog.classWork=some (s2Step114EarlyControlEqualityArena,s2Step114EarlyControlLog.classWork,s2Step114EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step114EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step114EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step114EarlyControl_classOwned : ([777, 815, 820] : List Wire).toFinset⊆s2Step114EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_positiveBorrow : s2Step114EarlyControlZeroArena.checkBorrow (1) s2Step114EarlyControlLog.positiveWork=some s2Step114EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step114EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step114EarlyControlPositiveArena,s2Step114EarlyControlZeroArena,s2Step114EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step114EarlyControl_class : compileHmrSourceClassLog s2Step114EarlyControlZeroArena false 777 s2Step114EarlyControlZeroPlan.top 0 820 s2Step114EarlyControlLog.positiveWork s2Step114EarlyControlLog.classWork=some s2Step114EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step114EarlyControlClassPlan s2Step114EarlyControlZeroArena false 777 s2Step114EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step114EarlyControl_classOwned
  · exact s2Step114EarlyControl_positiveBorrow
  · exact s2Step114EarlyControl_classEquality

private theorem s2Step114EarlyControl_entryRecordOwned : ([794, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_fitBorrow : s2Step114EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step114EarlyControlLog.recordFresh=some s2Step114EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step114EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step114EarlyControlFittedArena,s2Step114EarlyControlFlagArena,s2Step114EarlyControlLog,arenaWires]

private theorem s2Step114EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step114EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_fit : compileHmrRecordGrowLog s2Step114EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step114EarlyControlLog.recordFresh=some s2Step114EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step114EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step114EarlyControl_fitBorrow

private theorem s2Step114EarlyControl_flagsBorrow : s2Step114EarlyControlEqualityArena.checkBorrow (6) s2Step114EarlyControlLog.flagWork=some s2Step114EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step114EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step114EarlyControlFlagArena,s2Step114EarlyControlEqualityArena,s2Step114EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step114EarlyControl_flagsOwned : ([781, 253, 252, 251] : List Wire).toFinset⊆s2Step114EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_flags : compileHmrFlagsLog s2Step114EarlyControlClassPlan.equalityArena s2Step114EarlyControlClassPlan.equality.top 253 252 251 s2Step114EarlyControlLog.flagWork=some s2Step114EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step114EarlyControl_flagsOwned⟩
  · exact s2Step114EarlyControl_flagsBorrow

private theorem s2Step114EarlyControl_historyBorrow : s2Step114EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step114EarlyControlLog.recordFresh=some s2Step114EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step114EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step114EarlyControlHistoryArena,s2Step114EarlyControlArena,s2Step114EarlyControlLog,arenaWires]

private theorem s2Step114EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_history : compileHmrRecordGrowLog s2Step114EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step114EarlyControlLog.recordFresh=some s2Step114EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step114EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step114EarlyControl_historyBorrow

private theorem s2Step114EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step114EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step114EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_sigmaRelease : s2Step114EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step114EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step114EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step114EarlyControlSigmaArena,s2Step114EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step114EarlyControl_sigma : compileHmrSigmaDropLog s2Step114EarlyControlHistoryArena false 0 0 254 820 []=some s2Step114EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step114EarlyControl_sigmaOwned⟩
  · exact s2Step114EarlyControl_sigmaRelease

private theorem s2Step114EarlyControl_zeroBorrow : s2Step114EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step114EarlyControlLog.zeroWork=some s2Step114EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step114EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step114EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step114EarlyControlZeroArena,s2Step114EarlyControlArena,s2Step114EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step114EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step114EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step114EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EarlyControl_zero : compileHmrEqualityLog s2Step114EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step114EarlyControlLog.zeroWork=some (s2Step114EarlyControlZeroArena,s2Step114EarlyControlLog.zeroWork,s2Step114EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step114EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step114EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step114EarlyControl_logged : s2Step114EarlyControlPlan.Logged s2Step114EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 820 254 253 252 251 794 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step114EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step114EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step114EarlyControl_zero
  · exact s2Step114EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step114EarlyControl_flags
  · exact s2Step114EarlyControl_fit
  · exact s2Step114EarlyControl_history
  · exact s2Step114EarlyControl_sigma
  · exact s2Step114EarlyControl_branch

private theorem s2Step114EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step114EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 820 254 253 252 251 794 37 s2Step114EarlyControlLog=some s2Step114EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step114EarlyControlPlan s2Step114EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 820 254 253 252 251 794 37 s2Step114EarlyControl_logged

private def s2Step114EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step114EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step114EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step114EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩

private def s2Step114FrontBank : WindowBank := ⟨s2Step114EntryFRow,s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow⟩

private def s2Step114Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807, 768]

private def s2Step114Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846, 792, 769]

private def s2Step114Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 770]

private def s2Step114Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 805, 771]

private theorem s2Step114Counter_apart : Disjoint s2Step114HeadFvAfter.live s2Step114CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step114HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114Counter_borrowed : s2Step114HeadFvAfter.checkBorrow 4 s2Step114CounterWork=some s2Step114CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step114HeadFvAfter s2Step114CounterDuring s2Step114CounterWork.toFinset s2Step114Counter_bounded s2Step114Counter_apart rfl

private theorem s2Step114Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step114HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step114HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114Counter_checked : compileHmrCounterStepLog s2Step114HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step114CounterWork=some s2Step114CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step114HeadFvAfter.live := fun q hq => s2Step114Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step114Counter_borrowed

private def s2Step114EntryFAfter : Arena := s2Step114EntryFBefore

private theorem s2Step114EntryBank_incomingDistinct : ([s2Step114EntryFRow,s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114EntryF_Incoming : rowsOwned s2Step114EntryFBefore [s2Step114EntryFRow,s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114EntryFRow,s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow] 0 s2Step114EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114EntryBank_outgoingOwned : rowsOwned s2Step114EntryGvAfter [s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step114EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114EntryF_Outgoing : rowsOwned s2Step114EntryGvAfter [s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut] :=
  hmrRows_owned_drop s2Step114EntryGvAfter [s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut] 0 s2Step114EntryBank_outgoingOwned

private theorem s2Step114EntryF_distinct : (s2Step114EntryFRow.sign::s2Step114EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114EntryF_owned : (s2Step114EntryFRow.sign::s2Step114EntryFRow.payload).toFinset⊆s2Step114EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EntryF_reserved : s2Step114EntryFBefore.reserve s2Step114EntryFFresh.toFinset=some s2Step114EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step114EntryFFresh,arenaWires]
  · norm_num [s2Step114EntryFBefore,s2Step114EntryFFresh,arenaWires]
  · simp only [s2Step114EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step114EntryF_checked : planRowResizeLog s2Step114EntryFBefore s2Step114EntryFRow 212 s2Step114EntryFFresh=
    some (s2Step114EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩,growRow 768 s2Step114EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step114EntryFBefore s2Step114EntryFAfter s2Step114EntryFRow 212 s2Step114EntryFFresh
    s2Step114EntryF_distinct s2Step114EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114EntryF_reserved
  have rowEq : WindowRow.mk (s2Step114EntryFRow.payload++s2Step114EntryFFresh) s2Step114EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step114EntryFvAfter : Arena := s2Step114EntryGAfter

private def s2Step114EntryFvBefore : Arena := s2Step114EntryGAfter

private theorem s2Step114EntryFv_Incoming : rowsOwned s2Step114EntryFvBefore [s2Step114EntryFvRow,s2Step114EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114EntryFRow,s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow] 2 s2Step114EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114EntryFv_Outgoing : rowsOwned s2Step114EntryGvAfter [s2Step114EntryFvOut,s2Step114EntryGvOut] :=
  hmrRows_owned_drop s2Step114EntryGvAfter [s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut] 2 s2Step114EntryBank_outgoingOwned

private theorem s2Step114EntryFv_distinct : (s2Step114EntryFvRow.sign::s2Step114EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114EntryFv_owned : (s2Step114EntryFvRow.sign::s2Step114EntryFvRow.payload).toFinset⊆s2Step114EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EntryFv_reserved : s2Step114EntryFvBefore.reserve s2Step114EntryFvFresh.toFinset=some s2Step114EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step114EntryFvFresh,arenaWires]
  · norm_num [s2Step114EntryFvBefore,s2Step114EntryGAfter,s2Step114EntryFvFresh,arenaWires]
  · simp only [s2Step114EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step114EntryFv_checked : planRowResizeLog s2Step114EntryFvBefore s2Step114EntryFvRow 70 s2Step114EntryFvFresh=
    some (s2Step114EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩,growRow 770 s2Step114EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step114EntryFvBefore s2Step114EntryFvAfter s2Step114EntryFvRow 70 s2Step114EntryFvFresh
    s2Step114EntryFv_distinct s2Step114EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step114EntryFvRow.payload++s2Step114EntryFvFresh) s2Step114EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step114EntryGBefore : Arena := s2Step114EntryFBefore

private theorem s2Step114EntryG_Incoming : rowsOwned s2Step114EntryGBefore [s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114EntryFRow,s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow] 1 s2Step114EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114EntryG_Outgoing : rowsOwned s2Step114EntryGvAfter [s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut] :=
  hmrRows_owned_drop s2Step114EntryGvAfter [s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut] 1 s2Step114EntryBank_outgoingOwned

private theorem s2Step114EntryG_distinct : (s2Step114EntryGRow.sign::s2Step114EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114EntryG_owned : (s2Step114EntryGRow.sign::s2Step114EntryGRow.payload).toFinset⊆s2Step114EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EntryG_reserved : s2Step114EntryGBefore.reserve s2Step114EntryGFresh.toFinset=some s2Step114EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step114EntryGFresh,arenaWires]
  · norm_num [s2Step114EntryGBefore,s2Step114EntryFBefore,s2Step114EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step114EntryGAfter,s2Step114EntryGBefore,s2Step114EntryFBefore,s2Step114EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step114EntryG_checked : planRowResizeLog s2Step114EntryGBefore s2Step114EntryGRow 212 s2Step114EntryGFresh=
    some (s2Step114EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846],769⟩,growRow 769 s2Step114EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step114EntryGBefore s2Step114EntryGAfter s2Step114EntryGRow 212 s2Step114EntryGFresh
    s2Step114EntryG_distinct s2Step114EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114EntryG_reserved
  have rowEq : WindowRow.mk (s2Step114EntryGRow.payload++s2Step114EntryGFresh) s2Step114EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step114EntryGvBefore : Arena := s2Step114EntryGAfter

private theorem s2Step114EntryGv_Incoming : rowsOwned s2Step114EntryGvBefore [s2Step114EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114EntryFRow,s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow] 3 s2Step114EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114EntryGv_Outgoing : rowsOwned s2Step114EntryGvAfter [s2Step114EntryGvOut] :=
  hmrRows_owned_drop s2Step114EntryGvAfter [s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut] 3 s2Step114EntryBank_outgoingOwned

private theorem s2Step114EntryGv_distinct : (s2Step114EntryGvRow.sign::s2Step114EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114EntryGv_owned : (s2Step114EntryGvRow.sign::s2Step114EntryGvRow.payload).toFinset⊆s2Step114EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114EntryGv_reserved : s2Step114EntryGvBefore.reserve s2Step114EntryGvFresh.toFinset=some s2Step114EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step114EntryGvFresh,arenaWires]
  · norm_num [s2Step114EntryGvBefore,s2Step114EntryGAfter,s2Step114EntryGvFresh,arenaWires]
  · simp only [s2Step114EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step114EntryGv_checked : planRowResizeLog s2Step114EntryGvBefore s2Step114EntryGvRow 70 s2Step114EntryGvFresh=
    some (s2Step114EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩,growRow 771 s2Step114EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step114EntryGvBefore s2Step114EntryGvAfter s2Step114EntryGvRow 70 s2Step114EntryGvFresh
    s2Step114EntryGv_distinct s2Step114EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step114EntryGvRow.payload++s2Step114EntryGvFresh) s2Step114EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step114EntryBank_rows : planWindowRowsLog s2Step114EntryFBefore [(s2Step114EntryFRow,212),(s2Step114EntryGRow,212),(s2Step114EntryFvRow,70),(s2Step114EntryGvRow,70)] [s2Step114EntryFFresh,s2Step114EntryGFresh,s2Step114EntryFvFresh,s2Step114EntryGvFresh]=
    some (s2Step114EntryGvAfter,[s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut],(growRow 768 s2Step114EntryFFresh ++ (growRow 769 s2Step114EntryGFresh ++ (growRow 770 s2Step114EntryFvFresh ++ (growRow 771 s2Step114EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step114EntryGvAfter [] []=some (s2Step114EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step114EntryGvBefore s2Step114EntryGvAfter s2Step114EntryGvAfter
    s2Step114EntryGvRow s2Step114EntryGvOut 70 s2Step114EntryGvFresh [] [] []
    (growRow 771 s2Step114EntryGvFresh) ([]) s2Step114EntryGv_Incoming s2Step114EntryGv_checked h4 s2Step114EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step114EntryFvBefore s2Step114EntryFvAfter s2Step114EntryGvAfter
    s2Step114EntryFvRow s2Step114EntryFvOut 70 s2Step114EntryFvFresh [(s2Step114EntryGvRow,70)] [s2Step114EntryGvFresh] [s2Step114EntryGvOut]
    (growRow 770 s2Step114EntryFvFresh) ((growRow 771 s2Step114EntryGvFresh ++ [])) s2Step114EntryFv_Incoming s2Step114EntryFv_checked h3 s2Step114EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step114EntryGBefore s2Step114EntryGAfter s2Step114EntryGvAfter
    s2Step114EntryGRow s2Step114EntryGOut 212 s2Step114EntryGFresh [(s2Step114EntryFvRow,70),(s2Step114EntryGvRow,70)] [s2Step114EntryFvFresh,s2Step114EntryGvFresh] [s2Step114EntryFvOut,s2Step114EntryGvOut]
    (growRow 769 s2Step114EntryGFresh) ((growRow 770 s2Step114EntryFvFresh ++ (growRow 771 s2Step114EntryGvFresh ++ []))) s2Step114EntryG_Incoming s2Step114EntryG_checked h2 s2Step114EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step114EntryFBefore s2Step114EntryFAfter s2Step114EntryGvAfter
    s2Step114EntryFRow s2Step114EntryFOut 212 s2Step114EntryFFresh [(s2Step114EntryGRow,212),(s2Step114EntryFvRow,70),(s2Step114EntryGvRow,70)] [s2Step114EntryGFresh,s2Step114EntryFvFresh,s2Step114EntryGvFresh] [s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut]
    (growRow 768 s2Step114EntryFFresh) ((growRow 769 s2Step114EntryGFresh ++ (growRow 770 s2Step114EntryFvFresh ++ (growRow 771 s2Step114EntryGvFresh ++ [])))) s2Step114EntryF_Incoming s2Step114EntryF_checked h1 s2Step114EntryF_Outgoing
  exact h0

private theorem s2Step114EntryBank_checked : compileHmrBankResizeLog .entry s2Step114EntryFBefore ⟨s2Step114EntryFRow,s2Step114EntryGRow,s2Step114EntryFvRow,s2Step114EntryGvRow⟩ ⟨212,212,70,70⟩ [s2Step114EntryFFresh,s2Step114EntryGFresh,s2Step114EntryFvFresh,s2Step114EntryGvFresh]=
    some (s2Step114EntryGvAfter,⟨s2Step114EntryFOut,s2Step114EntryGOut,s2Step114EntryFvOut,s2Step114EntryGvOut⟩,(growRow 768 s2Step114EntryFFresh ++ (growRow 769 s2Step114EntryGFresh ++ (growRow 770 s2Step114EntryFvFresh ++ (growRow 771 s2Step114EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step114EntryBank_rows]
  rfl

private def s2Step114ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114ExitFBefore : Arena := s2Step114ExitGAfter

private def s2Step114ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807],768⟩

private def s2Step114ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩

private def s2Step114ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846, 792],769⟩

private def s2Step114ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 805],771⟩

private theorem s2Step114ExitBank_incomingDistinct : ([s2Step114ExitGRow,s2Step114ExitFRow,s2Step114ExitFvRow,s2Step114ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114ExitF_Incoming : rowsOwned s2Step114ExitFBefore [s2Step114ExitFRow,s2Step114ExitFvRow,s2Step114ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114ExitGRow,s2Step114ExitFRow,s2Step114ExitFvRow,s2Step114ExitGvRow] 1 s2Step114ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114ExitBank_outgoingOwned : rowsOwned s2Step114ExitGvAfter [s2Step114ExitGOut,s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step114ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114ExitF_Outgoing : rowsOwned s2Step114ExitGvAfter [s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut] :=
  hmrRows_owned_drop s2Step114ExitGvAfter [s2Step114ExitGOut,s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut] 1 s2Step114ExitBank_outgoingOwned

private theorem s2Step114ExitF_distinct : (s2Step114ExitFRow.sign::s2Step114ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114ExitF_owned : (s2Step114ExitFRow.sign::s2Step114ExitFRow.payload).toFinset⊆s2Step114ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114ExitF_retired : s2Step114ExitFBefore.retireSet s2Step114ExitFExtra.toFinset=s2Step114ExitFAfter := by
  unfold Arena.retireSet s2Step114ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step114ExitFBefore,s2Step114ExitGAfter,s2Step114ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step114ExitF_checked : planRowResizeLog s2Step114ExitFBefore s2Step114ExitFRow 212 []=
    some (s2Step114ExitFAfter,s2Step114ExitFOut,shrinkRow 768 s2Step114ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step114ExitFBefore s2Step114ExitFRow 212 s2Step114ExitF_distinct s2Step114ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step114ExitFRow.payload.take 212) s2Step114ExitFRow.sign=s2Step114ExitFOut := by decide +kernel
  have hi : s2Step114ExitFRow.payload.drop 212=s2Step114ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step114ExitF_retired] at result
  exact result

private def s2Step114ExitFvAfter : Arena := s2Step114ExitFAfter

private def s2Step114ExitFvBefore : Arena := s2Step114ExitFAfter

private theorem s2Step114ExitFv_Incoming : rowsOwned s2Step114ExitFvBefore [s2Step114ExitFvRow,s2Step114ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114ExitGRow,s2Step114ExitFRow,s2Step114ExitFvRow,s2Step114ExitGvRow] 2 s2Step114ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114ExitFv_Outgoing : rowsOwned s2Step114ExitGvAfter [s2Step114ExitFvOut,s2Step114ExitGvOut] :=
  hmrRows_owned_drop s2Step114ExitGvAfter [s2Step114ExitGOut,s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut] 2 s2Step114ExitBank_outgoingOwned

private theorem s2Step114ExitFv_distinct : (s2Step114ExitFvRow.sign::s2Step114ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114ExitFv_owned : (s2Step114ExitFvRow.sign::s2Step114ExitFvRow.payload).toFinset⊆s2Step114ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114ExitFv_reserved : s2Step114ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step114ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step114ExitFv_checked : planRowResizeLog s2Step114ExitFvBefore s2Step114ExitFvRow 71 []=
    some (s2Step114ExitFvAfter,s2Step114ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step114ExitFvBefore s2Step114ExitFvAfter s2Step114ExitFvRow 71 []
    s2Step114ExitFv_distinct s2Step114ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step114ExitFvRow.payload++[]) s2Step114ExitFvRow.sign=s2Step114ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step114ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step114ExitG_Incoming : rowsOwned s2Step114ExitGBefore [s2Step114ExitGRow,s2Step114ExitFRow,s2Step114ExitFvRow,s2Step114ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114ExitGRow,s2Step114ExitFRow,s2Step114ExitFvRow,s2Step114ExitGvRow] 0 s2Step114ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114ExitG_Outgoing : rowsOwned s2Step114ExitGvAfter [s2Step114ExitGOut,s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut] :=
  hmrRows_owned_drop s2Step114ExitGvAfter [s2Step114ExitGOut,s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut] 0 s2Step114ExitBank_outgoingOwned

private theorem s2Step114ExitG_distinct : (s2Step114ExitGRow.sign::s2Step114ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114ExitG_owned : (s2Step114ExitGRow.sign::s2Step114ExitGRow.payload).toFinset⊆s2Step114ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114ExitG_retired : s2Step114ExitGBefore.retireSet s2Step114ExitGExtra.toFinset=s2Step114ExitGAfter := by
  unfold Arena.retireSet s2Step114ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step114ExitGBefore,s2Step114ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step114ExitG_checked : planRowResizeLog s2Step114ExitGBefore s2Step114ExitGRow 211 []=
    some (s2Step114ExitGAfter,s2Step114ExitGOut,shrinkRow 769 s2Step114ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step114ExitGBefore s2Step114ExitGRow 211 s2Step114ExitG_distinct s2Step114ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step114ExitGRow.payload.take 211) s2Step114ExitGRow.sign=s2Step114ExitGOut := by decide +kernel
  have hi : s2Step114ExitGRow.payload.drop 211=s2Step114ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step114ExitG_retired] at result
  exact result

private def s2Step114ExitGvBefore : Arena := s2Step114ExitFAfter

private theorem s2Step114ExitGv_Incoming : rowsOwned s2Step114ExitGvBefore [s2Step114ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114ExitGRow,s2Step114ExitFRow,s2Step114ExitFvRow,s2Step114ExitGvRow] 3 s2Step114ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114ExitGv_Outgoing : rowsOwned s2Step114ExitGvAfter [s2Step114ExitGvOut] :=
  hmrRows_owned_drop s2Step114ExitGvAfter [s2Step114ExitGOut,s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut] 3 s2Step114ExitBank_outgoingOwned

private theorem s2Step114ExitGv_distinct : (s2Step114ExitGvRow.sign::s2Step114ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114ExitGv_owned : (s2Step114ExitGvRow.sign::s2Step114ExitGvRow.payload).toFinset⊆s2Step114ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114ExitGv_retired : s2Step114ExitGvBefore.retireSet s2Step114ExitGvExtra.toFinset=s2Step114ExitGvAfter := by
  unfold Arena.retireSet s2Step114ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step114ExitGvBefore,s2Step114ExitFAfter,s2Step114ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step114ExitGv_checked : planRowResizeLog s2Step114ExitGvBefore s2Step114ExitGvRow 70 []=
    some (s2Step114ExitGvAfter,s2Step114ExitGvOut,shrinkRow 771 s2Step114ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step114ExitGvBefore s2Step114ExitGvRow 70 s2Step114ExitGv_distinct s2Step114ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step114ExitGvRow.payload.take 70) s2Step114ExitGvRow.sign=s2Step114ExitGvOut := by decide +kernel
  have hi : s2Step114ExitGvRow.payload.drop 70=s2Step114ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step114ExitGv_retired] at result
  exact result

private theorem s2Step114ExitBank_rows : planWindowRowsLog s2Step114ExitGBefore [(s2Step114ExitGRow,211),(s2Step114ExitFRow,212),(s2Step114ExitFvRow,71),(s2Step114ExitGvRow,70)] [[],[],[],[]]=
    some (s2Step114ExitGvAfter,[s2Step114ExitGOut,s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut],(shrinkRow 769 s2Step114ExitGExtra ++ (shrinkRow 768 s2Step114ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step114ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step114ExitGvAfter [] []=some (s2Step114ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step114ExitGvBefore s2Step114ExitGvAfter s2Step114ExitGvAfter
    s2Step114ExitGvRow s2Step114ExitGvOut 70 [] [] [] []
    (shrinkRow 771 s2Step114ExitGvExtra) ([]) s2Step114ExitGv_Incoming s2Step114ExitGv_checked h4 s2Step114ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step114ExitFvBefore s2Step114ExitFvAfter s2Step114ExitGvAfter
    s2Step114ExitFvRow s2Step114ExitFvOut 71 [] [(s2Step114ExitGvRow,70)] [[]] [s2Step114ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step114ExitGvExtra ++ [])) s2Step114ExitFv_Incoming s2Step114ExitFv_checked h3 s2Step114ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step114ExitFBefore s2Step114ExitFAfter s2Step114ExitGvAfter
    s2Step114ExitFRow s2Step114ExitFOut 212 [] [(s2Step114ExitFvRow,71),(s2Step114ExitGvRow,70)] [[],[]] [s2Step114ExitFvOut,s2Step114ExitGvOut]
    (shrinkRow 768 s2Step114ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step114ExitGvExtra ++ []))) s2Step114ExitF_Incoming s2Step114ExitF_checked h2 s2Step114ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step114ExitGBefore s2Step114ExitGAfter s2Step114ExitGvAfter
    s2Step114ExitGRow s2Step114ExitGOut 211 [] [(s2Step114ExitFRow,212),(s2Step114ExitFvRow,71),(s2Step114ExitGvRow,70)] [[],[],[]] [s2Step114ExitFOut,s2Step114ExitFvOut,s2Step114ExitGvOut]
    (shrinkRow 769 s2Step114ExitGExtra) ((shrinkRow 768 s2Step114ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step114ExitGvExtra ++ [])))) s2Step114ExitG_Incoming s2Step114ExitG_checked h1 s2Step114ExitG_Outgoing
  exact h0

private theorem s2Step114ExitBank_checked : compileHmrBankResizeLog .exit s2Step114ExitGBefore ⟨s2Step114ExitFRow,s2Step114ExitGRow,s2Step114ExitFvRow,s2Step114ExitGvRow⟩ ⟨212,211,71,70⟩ [[],[],[],[]]=
    some (s2Step114ExitGvAfter,⟨s2Step114ExitFOut,s2Step114ExitGOut,s2Step114ExitFvOut,s2Step114ExitGvOut⟩,(shrinkRow 769 s2Step114ExitGExtra ++ (shrinkRow 768 s2Step114ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step114ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step114ExitBank_rows]
  rfl

private theorem s2Step114Add0_apart : Disjoint s2Step114Add0Arena.live s2Step114Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step114Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114Add0_card : s2Step114Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step114Add0_borrowed : s2Step114Add0Arena.checkBorrow (hmrHybridCount s2Step114Add0Arena s2Step114Add0B.length) s2Step114Add0Work=some s2Step114Add0During := by
  have len : s2Step114Add0Work.length=hmrHybridCount s2Step114Add0Arena s2Step114Add0B.length := by
    rw [hmrHybridCount,s2Step114Add0_card]
    decide +kernel
  have nd : s2Step114Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step114Add0Arena s2Step114Add0During s2Step114Add0Work.toFinset s2Step114Add0_bounded s2Step114Add0_apart rfl

private theorem s2Step114Add0_distinct : (815::794::809::(s2Step114Add0A++s2Step114Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114Add0_owned : (815::794::809::(s2Step114Add0A++s2Step114Add0B)).toFinset⊆s2Step114Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step114Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114Add0_checked : compileHmrHybridCinLog s2Step114Add0Arena 794 815 809 s2Step114Add0A s2Step114Add0B s2Step114Add0Work=some s2Step114Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step114Add0Arena s2Step114Add0During 794 815 809 s2Step114Add0A s2Step114Add0B s2Step114Add0Work
    (by decide +kernel) (by decide +kernel) s2Step114Add0_distinct
    (fun q hq => s2Step114Add0_owned (List.mem_toFinset.mpr hq)) s2Step114Add0_borrowed

private theorem s2Step114Add1_apart : Disjoint s2Step114Add1Arena.live s2Step114Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step114Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114Add1_card : s2Step114Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step114Add1_borrowed : s2Step114Add1Arena.checkBorrow (hmrHybridCount s2Step114Add1Arena s2Step114Add1B.length) s2Step114Add1Work=some s2Step114Add1During := by
  have len : s2Step114Add1Work.length=hmrHybridCount s2Step114Add1Arena s2Step114Add1B.length := by
    rw [hmrHybridCount,s2Step114Add1_card]
    decide +kernel
  have nd : s2Step114Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step114Add1Arena s2Step114Add1During s2Step114Add1Work.toFinset s2Step114Add1_bounded s2Step114Add1_apart rfl

private theorem s2Step114Add1_distinct : (815::794::809::(s2Step114Add1A++s2Step114Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114Add1_owned : (815::794::809::(s2Step114Add1A++s2Step114Add1B)).toFinset⊆s2Step114Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step114Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114Add1_checked : compileHmrHybridCinLog s2Step114Add1Arena 794 815 809 s2Step114Add1A s2Step114Add1B s2Step114Add1Work=some s2Step114Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step114Add1Arena s2Step114Add1During 794 815 809 s2Step114Add1A s2Step114Add1B s2Step114Add1Work
    (by decide +kernel) (by decide +kernel) s2Step114Add1_distinct
    (fun q hq => s2Step114Add1_owned (List.mem_toFinset.mpr hq)) s2Step114Add1_borrowed

private theorem s2Step114F4_apart : Disjoint (s2Step114Add0A++s2Step114Add0B).toFinset (s2Step114Add1A++s2Step114Add1B).toFinset := by
  have nd : ((s2Step114Add0A++s2Step114Add0B)++(s2Step114Add1A++s2Step114Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step114F4_carry : s2Step114F4FlagArena.checkBorrow 1 [809]=some s2Step114Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step114F4FlagArena,s2Step114HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step114F4FlagArena,s2Step114HeadFvAfter,s2Step114Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step114F4_distinct : (820::794::815::809::((s2Step114Add0A++s2Step114Add1A)++(s2Step114Add0B++s2Step114Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114F4_flag : s2Step114HeadFvAfter.checkBorrow 1 [815]=some s2Step114F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step114HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step114F4_owned : (820::794::((s2Step114Add0A++s2Step114Add1A)++(s2Step114Add0B++s2Step114Add1B))).toFinset⊆s2Step114HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step114HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114F4_checked : compileHmrHybridF4Log s2Step114HeadFvAfter 820 794 s2Step114Add0A s2Step114Add0B s2Step114Add1A s2Step114Add1B [815] [809] s2Step114Add0Work s2Step114Add1Work=some s2Step114F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step114HeadFvAfter s2Step114F4FlagArena s2Step114Add0Arena s2Step114Add0During s2Step114Add1During 820 794
    s2Step114Add0A s2Step114Add0B s2Step114Add1A s2Step114Add1B [815] [809] s2Step114Add0Work s2Step114Add1Work
    (fun q hq => s2Step114F4_owned (List.mem_toFinset.mpr hq)) s2Step114F4_flag s2Step114F4_carry
    s2Step114F4_distinct s2Step114F4_apart s2Step114Add0_checked s2Step114Add1_checked

private theorem s2Step114Front_branch : s2Step114FrontSigmaArena.checkBorrow 1 [794]=some s2Step114HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step114FrontSigmaArena,s2Step114EntryGvAfter,s2Step114EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step114FrontSigmaArena,s2Step114EntryGvAfter,s2Step114EntryGAfter,s2Step114HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step114Front_entry : HmrFrontEntryValid s2Step114EntryFBefore s2Step114FrontBank 212 70 ⟨212,211,71,70⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step114FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step114EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step114EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step114FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step114Front_sigma : s2Step114EntryGvAfter.checkBorrow 1 [820]=some s2Step114FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step114EntryGvAfter,s2Step114EntryGAfter,arenaWires]
  · rfl

private def s2Step114HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114HeadFBefore : Arena := s2Step114HeadGAfter

private def s2Step114HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step114HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step114HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846],769⟩

private def s2Step114HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩

private theorem s2Step114HeadBank_incomingDistinct : ([s2Step114HeadGRow,s2Step114HeadFRow,s2Step114HeadGvRow,s2Step114HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114HeadF_Incoming : rowsOwned s2Step114HeadFBefore [s2Step114HeadFRow,s2Step114HeadGvRow,s2Step114HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114HeadGRow,s2Step114HeadFRow,s2Step114HeadGvRow,s2Step114HeadFvRow] 1 s2Step114HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114HeadBank_outgoingOwned : rowsOwned s2Step114HeadFvAfter [s2Step114HeadGOut,s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step114HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114HeadF_Outgoing : rowsOwned s2Step114HeadFvAfter [s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut] :=
  hmrRows_owned_drop s2Step114HeadFvAfter [s2Step114HeadGOut,s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut] 1 s2Step114HeadBank_outgoingOwned

private theorem s2Step114HeadF_distinct : (s2Step114HeadFRow.sign::s2Step114HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114HeadF_owned : (s2Step114HeadFRow.sign::s2Step114HeadFRow.payload).toFinset⊆s2Step114HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114HeadF_reserved : s2Step114HeadFBefore.reserve s2Step114HeadFFresh.toFinset=some s2Step114HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step114HeadFFresh,arenaWires]
  · norm_num [s2Step114HeadFBefore,s2Step114HeadGAfter,s2Step114HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step114HeadFAfter,s2Step114HeadFBefore,s2Step114HeadGAfter,s2Step114HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step114HeadF_checked : planRowResizeLog s2Step114HeadFBefore s2Step114HeadFRow 213 s2Step114HeadFFresh=
    some (s2Step114HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807],768⟩,growRow 768 s2Step114HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step114HeadFBefore s2Step114HeadFAfter s2Step114HeadFRow 213 s2Step114HeadFFresh
    s2Step114HeadF_distinct s2Step114HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114HeadF_reserved
  have rowEq : WindowRow.mk (s2Step114HeadFRow.payload++s2Step114HeadFFresh) s2Step114HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step114HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step114HeadFvBefore : Arena := s2Step114HeadGvAfter

private theorem s2Step114HeadFv_Incoming : rowsOwned s2Step114HeadFvBefore [s2Step114HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114HeadGRow,s2Step114HeadFRow,s2Step114HeadGvRow,s2Step114HeadFvRow] 3 s2Step114HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114HeadFv_Outgoing : rowsOwned s2Step114HeadFvAfter [s2Step114HeadFvOut] :=
  hmrRows_owned_drop s2Step114HeadFvAfter [s2Step114HeadGOut,s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut] 3 s2Step114HeadBank_outgoingOwned

private theorem s2Step114HeadFv_distinct : (s2Step114HeadFvRow.sign::s2Step114HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114HeadFv_owned : (s2Step114HeadFvRow.sign::s2Step114HeadFvRow.payload).toFinset⊆s2Step114HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114HeadFv_reserved : s2Step114HeadFvBefore.reserve s2Step114HeadFvFresh.toFinset=some s2Step114HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step114HeadFvFresh,arenaWires]
  · norm_num [s2Step114HeadFvBefore,s2Step114HeadGvAfter,s2Step114HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step114HeadFvAfter,s2Step114HeadFvBefore,s2Step114HeadGvAfter,s2Step114HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step114HeadFv_checked : planRowResizeLog s2Step114HeadFvBefore s2Step114HeadFvRow 71 s2Step114HeadFvFresh=
    some (s2Step114HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩,growRow 770 s2Step114HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step114HeadFvBefore s2Step114HeadFvAfter s2Step114HeadFvRow 71 s2Step114HeadFvFresh
    s2Step114HeadFv_distinct s2Step114HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step114HeadFvRow.payload++s2Step114HeadFvFresh) s2Step114HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step114HeadG_Incoming : rowsOwned s2Step114HeadGBefore [s2Step114HeadGRow,s2Step114HeadFRow,s2Step114HeadGvRow,s2Step114HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114HeadGRow,s2Step114HeadFRow,s2Step114HeadGvRow,s2Step114HeadFvRow] 0 s2Step114HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114HeadG_Outgoing : rowsOwned s2Step114HeadFvAfter [s2Step114HeadGOut,s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut] :=
  hmrRows_owned_drop s2Step114HeadFvAfter [s2Step114HeadGOut,s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut] 0 s2Step114HeadBank_outgoingOwned

private theorem s2Step114HeadG_distinct : (s2Step114HeadGRow.sign::s2Step114HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114HeadG_owned : (s2Step114HeadGRow.sign::s2Step114HeadGRow.payload).toFinset⊆s2Step114HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114HeadG_reserved : s2Step114HeadGBefore.reserve s2Step114HeadGFresh.toFinset=some s2Step114HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step114HeadGFresh,arenaWires]
  · norm_num [s2Step114HeadGBefore,s2Step114HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step114HeadGAfter,s2Step114HeadGBefore,s2Step114HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step114HeadG_checked : planRowResizeLog s2Step114HeadGBefore s2Step114HeadGRow 213 s2Step114HeadGFresh=
    some (s2Step114HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846, 792],769⟩,growRow 769 s2Step114HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step114HeadGBefore s2Step114HeadGAfter s2Step114HeadGRow 213 s2Step114HeadGFresh
    s2Step114HeadG_distinct s2Step114HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114HeadG_reserved
  have rowEq : WindowRow.mk (s2Step114HeadGRow.payload++s2Step114HeadGFresh) s2Step114HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 846, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step114HeadGvBefore : Arena := s2Step114HeadFAfter

private theorem s2Step114HeadGv_Incoming : rowsOwned s2Step114HeadGvBefore [s2Step114HeadGvRow,s2Step114HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step114HeadGRow,s2Step114HeadFRow,s2Step114HeadGvRow,s2Step114HeadFvRow] 2 s2Step114HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step114HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step114HeadGv_Outgoing : rowsOwned s2Step114HeadFvAfter [s2Step114HeadGvOut,s2Step114HeadFvOut] :=
  hmrRows_owned_drop s2Step114HeadFvAfter [s2Step114HeadGOut,s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut] 2 s2Step114HeadBank_outgoingOwned

private theorem s2Step114HeadGv_distinct : (s2Step114HeadGvRow.sign::s2Step114HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step114HeadGv_owned : (s2Step114HeadGvRow.sign::s2Step114HeadGvRow.payload).toFinset⊆s2Step114HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step114HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step114HeadGv_reserved : s2Step114HeadGvBefore.reserve s2Step114HeadGvFresh.toFinset=some s2Step114HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step114HeadGvFresh,arenaWires]
  · norm_num [s2Step114HeadGvBefore,s2Step114HeadFAfter,s2Step114HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step114HeadGvAfter,s2Step114HeadGvBefore,s2Step114HeadFAfter,s2Step114HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step114HeadGv_checked : planRowResizeLog s2Step114HeadGvBefore s2Step114HeadGvRow 71 s2Step114HeadGvFresh=
    some (s2Step114HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 805],771⟩,growRow 771 s2Step114HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step114HeadGvBefore s2Step114HeadGvAfter s2Step114HeadGvRow 71 s2Step114HeadGvFresh
    s2Step114HeadGv_distinct s2Step114HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step114HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step114HeadGvRow.payload++s2Step114HeadGvFresh) s2Step114HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 805],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step114HeadBank_rows : planWindowRowsLog s2Step114HeadGBefore [(s2Step114HeadGRow,213),(s2Step114HeadFRow,213),(s2Step114HeadGvRow,71),(s2Step114HeadFvRow,71)] [s2Step114HeadGFresh,s2Step114HeadFFresh,s2Step114HeadGvFresh,s2Step114HeadFvFresh]=
    some (s2Step114HeadFvAfter,[s2Step114HeadGOut,s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut],(growRow 769 s2Step114HeadGFresh ++ (growRow 768 s2Step114HeadFFresh ++ (growRow 771 s2Step114HeadGvFresh ++ (growRow 770 s2Step114HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step114HeadFvAfter [] []=some (s2Step114HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step114HeadFvBefore s2Step114HeadFvAfter s2Step114HeadFvAfter
    s2Step114HeadFvRow s2Step114HeadFvOut 71 s2Step114HeadFvFresh [] [] []
    (growRow 770 s2Step114HeadFvFresh) ([]) s2Step114HeadFv_Incoming s2Step114HeadFv_checked h4 s2Step114HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step114HeadGvBefore s2Step114HeadGvAfter s2Step114HeadFvAfter
    s2Step114HeadGvRow s2Step114HeadGvOut 71 s2Step114HeadGvFresh [(s2Step114HeadFvRow,71)] [s2Step114HeadFvFresh] [s2Step114HeadFvOut]
    (growRow 771 s2Step114HeadGvFresh) ((growRow 770 s2Step114HeadFvFresh ++ [])) s2Step114HeadGv_Incoming s2Step114HeadGv_checked h3 s2Step114HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step114HeadFBefore s2Step114HeadFAfter s2Step114HeadFvAfter
    s2Step114HeadFRow s2Step114HeadFOut 213 s2Step114HeadFFresh [(s2Step114HeadGvRow,71),(s2Step114HeadFvRow,71)] [s2Step114HeadGvFresh,s2Step114HeadFvFresh] [s2Step114HeadGvOut,s2Step114HeadFvOut]
    (growRow 768 s2Step114HeadFFresh) ((growRow 771 s2Step114HeadGvFresh ++ (growRow 770 s2Step114HeadFvFresh ++ []))) s2Step114HeadF_Incoming s2Step114HeadF_checked h2 s2Step114HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step114HeadGBefore s2Step114HeadGAfter s2Step114HeadFvAfter
    s2Step114HeadGRow s2Step114HeadGOut 213 s2Step114HeadGFresh [(s2Step114HeadFRow,213),(s2Step114HeadGvRow,71),(s2Step114HeadFvRow,71)] [s2Step114HeadFFresh,s2Step114HeadGvFresh,s2Step114HeadFvFresh] [s2Step114HeadFOut,s2Step114HeadGvOut,s2Step114HeadFvOut]
    (growRow 769 s2Step114HeadGFresh) ((growRow 768 s2Step114HeadFFresh ++ (growRow 771 s2Step114HeadGvFresh ++ (growRow 770 s2Step114HeadFvFresh ++ [])))) s2Step114HeadG_Incoming s2Step114HeadG_checked h1 s2Step114HeadG_Outgoing
  exact h0

private theorem s2Step114HeadBank_checked : compileHmrBankResizeLog .headroom s2Step114HeadGBefore ⟨s2Step114HeadFRow,s2Step114HeadGRow,s2Step114HeadFvRow,s2Step114HeadGvRow⟩ ⟨213,213,71,71⟩ [s2Step114HeadGFresh,s2Step114HeadFFresh,s2Step114HeadGvFresh,s2Step114HeadFvFresh]=
    some (s2Step114HeadFvAfter,⟨s2Step114HeadFOut,s2Step114HeadGOut,s2Step114HeadFvOut,s2Step114HeadGvOut⟩,(growRow 769 s2Step114HeadGFresh ++ (growRow 768 s2Step114HeadFFresh ++ (growRow 771 s2Step114HeadGvFresh ++ (growRow 770 s2Step114HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step114HeadBank_rows]
  rfl

private theorem s2Step114Front_checked : compileHmrSourceFrontLog s2Step114EntryFBefore s2Step114FrontBank 212 70 ⟨212,211,71,70⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step114FrontLog=some s2Step114FrontPlan := by
  have pairEq : s2Step114FrontPair=⟨s2Step114HeadFRow,s2Step114HeadGRow,s2Step114HeadFvRow,s2Step114HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step114FrontHead=⟨s2Step114ExitFRow,s2Step114ExitGRow,s2Step114ExitFvRow,s2Step114ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step114Add0A=s2Step114FrontHead.f.wires := by decide +kernel
  have gEq : s2Step114Add0B=s2Step114FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step114Add1A=s2Step114FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step114Add1B=s2Step114FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step114EntryFBefore s2Step114FrontBank 212 70 ⟨212,211,71,70⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step114FrontLog s2Step114FrontPlan
  · exact s2Step114Front_entry
  · exact s2Step114EntryBank_checked
  · exact s2Step114Front_sigma
  · rfl
  · exact s2Step114Front_branch
  · rfl
  · simpa only [s2Step114FrontPlan,pairEq] using s2Step114HeadBank_checked
  · simpa only [s2Step114FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step114F4_checked
  · exact s2Step114Counter_checked
  · rfl
  · simpa only [s2Step114FrontPlan,headEq] using s2Step114ExitBank_checked

private theorem s2Step114Complete_explicit_checked : compileHmrEarlyStepLog s2Step114EntryFBefore s2Step114FrontBank 212 70 ⟨212,211,71,70⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step114CompleteLog=some s2Step114CompletePlan := by
  let Q := s2Step114EarlyControlPlan
  have hq := s2Step114EarlyControl_plan_checked
  have fv1 : s2Step114CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step114CompleteOut.fv.payload[2]?.getD s2Step114CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step114CompleteOut.fv.payload[3]?.getD s2Step114CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step114CompleteOut.fv.payload[4]?.getD s2Step114CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step114EntryFBefore s2Step114EarlyControlArena s2Step114FrontBank 212 70 ⟨212,211,71,70⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step114CompleteLog s2Step114FrontPlan Q
    s2Step114Front_checked s2Step114Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step114Complete_owned s2Step114Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step114EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 820 s2Step114CompleteOut.fv.second (s2Step114CompleteOut.fv.payload[2]?.getD s2Step114CompleteOut.fv.sign) (s2Step114CompleteOut.fv.payload[3]?.getD s2Step114CompleteOut.fv.sign) (s2Step114CompleteOut.fv.payload[4]?.getD s2Step114CompleteOut.fv.sign) 794 37 s2Step114EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep114Arena : Arena := s2Step114EntryFBefore
def s2PrivateStep114Bank : WindowBank := s2Step114FrontBank
def s2PrivateStep114Spec : HmrSourceWalkStepLog := ⟨212,70,⟨212,211,71,70⟩,37,.early s2Step114CompleteLog⟩
def s2PrivateStep114Plan : HmrSourceStepPlan := .early s2Step114CompletePlan
theorem s2PrivateStep114_source : s2PrivateStep114Spec=s2ObservedLogs112[2] := rfl
theorem s2PrivateStep114_checked : compileHmrSourceStepLog s2PrivateStep114Arena s2PrivateStep114Bank
    s2PrivateStep114Spec.fgWidth s2PrivateStep114Spec.vWidth s2PrivateStep114Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 114 s2PrivateStep114Spec.need none s2PrivateStep114Spec.log=some s2PrivateStep114Plan := by
  change compileHmrSourceStepLog s2Step114EntryFBefore s2Step114FrontBank 212 70 ⟨212,211,71,70⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 114 37 none (.early s2Step114CompleteLog)=some (.early s2Step114CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 114<498)]
  rw [s2Step114Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
