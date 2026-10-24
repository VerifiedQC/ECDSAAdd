import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep111
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

private def s2Step113CompleteMoves : List (Wire × Wire) := []

private def s2Step113EarlyControlLog : HmrEarlyControlLog := ⟨[794, 792, 807, 805, 812],[815],[809],[781, 849, 806, 802, 867, 877],[]⟩

private def s2Step113FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [805], [], [787]],[[812], [807], [794], [792]],[[], [], [], []]⟩,[820],[846],[815],[809],[781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[815, 809, 781, 849]⟩

private def s2Step113CompleteLog : HmrEarlyStepLog := ⟨s2Step113FrontLog,s2Step113CompleteMoves,s2Step113EarlyControlLog⟩

private def s2Step113ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step113ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step113ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step113ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩

private def s2Step113FrontOut : WindowBank := ⟨s2Step113ExitFOut,s2Step113ExitGOut,s2Step113ExitFvOut,s2Step113ExitGvOut⟩

private def s2Step113CompleteOut : WindowBank := s2Step113FrontOut.repacked s2Step113CompleteMoves

private def s2Step113EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step113EarlyControlPositiveArena,[815],s2Step113EarlyControlEqualityArena,[809],⟨⟨820,false⟩,[⟨⟨815,false⟩,809⟩]⟩⟩

private def s2Step113EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,794⟩,⟨⟨774,false⟩,792⟩,⟨⟨775,false⟩,807⟩,⟨⟨776,false⟩,805⟩,⟨⟨777,false⟩,812⟩]⟩

private def s2Step113EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step113EarlyControlZeroArena,s2Step113EarlyControlZeroPlan,s2Step113EarlyControlClassPlan,s2Step113EarlyControlFlagArena,s2Step113EarlyControlFittedArena,s2Step113EarlyControlHistoryArena,s2Step113EarlyControlSigmaArena,s2Step113EarlyControlOutputArena,s2Step113EarlyControlLog⟩

private def s2Step113CounterWork : List Wire := [815, 809, 781, 849]

private theorem s2Step113Counter_bounded : s2Step113CounterWork.toFinset⊆arenaWires := by norm_num [s2Step113CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step113HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113CounterDuring : Arena := ⟨s2Step113HeadFvAfter.live∪s2Step113CounterWork.toFinset,Finset.union_subset s2Step113HeadFvAfter.bounded s2Step113Counter_bounded⟩

private def s2Step113EntryFFresh : List Wire := []

private def s2Step113EntryFvFresh : List Wire := []

private def s2Step113EntryGFresh : List Wire := [805]

private def s2Step113EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EntryGvFresh : List Wire := [787]

private def s2Step113ExitFExtra : List Wire := [807]

private def s2Step113ExitFvExtra : List Wire := [792]

private def s2Step113ExitGExtra : List Wire := [805, 812]

private def s2Step113ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113ExitGvExtra : List Wire := [794]

private def s2Step113Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113Add0Work : List Wire := [781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step113Add0_bounded : s2Step113Add0Work.toFinset⊆arenaWires := by
  have h : s2Step113Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step113Add0During : Arena := ⟨s2Step113Add0Arena.live∪s2Step113Add0Work.toFinset,Finset.union_subset s2Step113Add0Arena.bounded s2Step113Add0_bounded⟩

private def s2Step113Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113Add1Work : List Wire := [781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step113Add1_bounded : s2Step113Add1Work.toFinset⊆arenaWires := by
  have h : s2Step113Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step113Add1During : Arena := ⟨s2Step113Add1Arena.live∪s2Step113Add1Work.toFinset,Finset.union_subset s2Step113Add1Arena.bounded s2Step113Add1_bounded⟩

private def s2Step113F4FlagArena : Arena := ⟨s2Step113HeadFvAfter.live∪{815},Finset.union_subset s2Step113HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step113F4Plan : HmrHybridF4Plan := ⟨s2Step113F4FlagArena,[815],s2Step113Add0Arena,[809],s2Step113Add0During,s2Step113Add0Work,s2Step113Add1During,s2Step113Add1Work⟩

private def s2Step113HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807],768⟩

private def s2Step113HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 792],770⟩

private def s2Step113HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805, 812],769⟩

private def s2Step113HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 794],771⟩

private def s2Step113FrontHead : WindowBank := ⟨s2Step113HeadFOut,s2Step113HeadGOut,s2Step113HeadFvOut,s2Step113HeadGvOut⟩

private def s2Step113EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step113EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step113EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805],769⟩

private def s2Step113EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩

private def s2Step113FrontPair : WindowBank := ⟨s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut⟩

private def s2Step113FrontSigmaArena : Arena := ⟨s2Step113EntryGvAfter.live∪{820},Finset.union_subset s2Step113EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step113HeadFFresh : List Wire := [807]

private def s2Step113HeadFvFresh : List Wire := [792]

private def s2Step113HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113HeadGFresh : List Wire := [812]

private def s2Step113HeadGvFresh : List Wire := [794]

private def s2Step113FrontPlan : HmrSourceFront := ⟨s2Step113EntryGvAfter,s2Step113FrontPair,(growRow 768 s2Step113EntryFFresh ++ (growRow 769 s2Step113EntryGFresh ++ (growRow 770 s2Step113EntryFvFresh ++ (growRow 771 s2Step113EntryGvFresh ++ [])))),s2Step113FrontSigmaArena,[820],s2Step113HeadGBefore,[846],
  s2Step113HeadFvAfter,s2Step113FrontHead,(growRow 769 s2Step113HeadGFresh ++ (growRow 768 s2Step113HeadFFresh ++ (growRow 771 s2Step113HeadGvFresh ++ (growRow 770 s2Step113HeadFvFresh ++ [])))),s2Step113F4Plan,s2Step113CounterDuring,s2Step113CounterWork,s2Step113ExitGvAfter,s2Step113FrontOut,(shrinkRow 769 s2Step113ExitGExtra ++ (shrinkRow 768 s2Step113ExitFExtra ++ (shrinkRow 770 s2Step113ExitFvExtra ++ (shrinkRow 771 s2Step113ExitGvExtra ++ []))))⟩

private def s2Step113CompletePlan : HmrEarlyStepPlan := ⟨s2Step113FrontPlan,s2Step113EarlyControlArena,s2Step113EarlyControlPlan,s2Step113CompleteMoves⟩

private theorem s2Step113Complete_apart : List.Disjoint (s2Step113CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [820, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step113CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[820, 846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step113Complete_owned : (s2Step113CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113Complete_repack : s2Step113ExitGvAfter.checkRepack s2Step113CompleteMoves=some s2Step113EarlyControlArena := by rfl

private theorem s2Step113EarlyControl_branchOwned : ([846] : List Wire).toFinset⊆s2Step113EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_branch : compileHmrBranchRetirement s2Step113EarlyControlSigmaArena 846=some s2Step113EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step113EarlyControl_branchOwned
  · ext q
    simp [s2Step113EarlyControlOutputArena,s2Step113EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step113EarlyControl_classEqualityBorrow : s2Step113EarlyControlPositiveArena.checkBorrow (([820, 815] : List Wire).length-1) s2Step113EarlyControlLog.classWork=some s2Step113EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step113EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step113EarlyControlEqualityArena,s2Step113EarlyControlPositiveArena,s2Step113EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step113EarlyControl_classEqualityOwned : ([820, 815] : List Wire).toFinset⊆s2Step113EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_classEquality : compileHmrEqualityLog s2Step113EarlyControlPositiveArena [820, 815] 0 s2Step113EarlyControlLog.classWork=some (s2Step113EarlyControlEqualityArena,s2Step113EarlyControlLog.classWork,s2Step113EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step113EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step113EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step113EarlyControl_classOwned : ([777, 812, 820] : List Wire).toFinset⊆s2Step113EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_positiveBorrow : s2Step113EarlyControlZeroArena.checkBorrow (1) s2Step113EarlyControlLog.positiveWork=some s2Step113EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step113EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step113EarlyControlPositiveArena,s2Step113EarlyControlZeroArena,s2Step113EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step113EarlyControl_class : compileHmrSourceClassLog s2Step113EarlyControlZeroArena false 777 s2Step113EarlyControlZeroPlan.top 0 820 s2Step113EarlyControlLog.positiveWork s2Step113EarlyControlLog.classWork=some s2Step113EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step113EarlyControlClassPlan s2Step113EarlyControlZeroArena false 777 s2Step113EarlyControlZeroPlan.top 0 820
  constructor
  · decide +kernel
  · exact s2Step113EarlyControl_classOwned
  · exact s2Step113EarlyControl_positiveBorrow
  · exact s2Step113EarlyControl_classEquality

private theorem s2Step113EarlyControl_entryRecordOwned : ([846, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_entrySigmaOwned : ([820, 254] : List Wire).toFinset⊆s2Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_fitBorrow : s2Step113EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step113EarlyControlLog.recordFresh=some s2Step113EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step113EarlyControlFlagArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step113EarlyControlFittedArena,s2Step113EarlyControlFlagArena,s2Step113EarlyControlLog,arenaWires]

private theorem s2Step113EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step113EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlFlagArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_fit : compileHmrRecordGrowLog s2Step113EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step113EarlyControlLog.recordFresh=some s2Step113EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step113EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step113EarlyControl_fitBorrow

private theorem s2Step113EarlyControl_flagsBorrow : s2Step113EarlyControlEqualityArena.checkBorrow (6) s2Step113EarlyControlLog.flagWork=some s2Step113EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step113EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step113EarlyControlFlagArena,s2Step113EarlyControlEqualityArena,s2Step113EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step113EarlyControl_flagsOwned : ([809, 253, 252, 251] : List Wire).toFinset⊆s2Step113EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_flags : compileHmrFlagsLog s2Step113EarlyControlClassPlan.equalityArena s2Step113EarlyControlClassPlan.equality.top 253 252 251 s2Step113EarlyControlLog.flagWork=some s2Step113EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step113EarlyControl_flagsOwned⟩
  · exact s2Step113EarlyControl_flagsBorrow

private theorem s2Step113EarlyControl_historyBorrow : s2Step113EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step113EarlyControlLog.recordFresh=some s2Step113EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step113EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step113EarlyControlHistoryArena,s2Step113EarlyControlArena,s2Step113EarlyControlLog,arenaWires]

private theorem s2Step113EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_history : compileHmrRecordGrowLog s2Step113EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step113EarlyControlLog.recordFresh=some s2Step113EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step113EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step113EarlyControl_historyBorrow

private theorem s2Step113EarlyControl_sigmaOwned : ([254, 820] : List Wire).toFinset⊆s2Step113EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_sigmaReleaseOwned : ([820] : List Wire).toFinset⊆s2Step113EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_sigmaRelease : s2Step113EarlyControlHistoryArena.release {820} (fun _ => false)=some s2Step113EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step113EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step113EarlyControlSigmaArena,s2Step113EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step113EarlyControl_sigma : compileHmrSigmaDropLog s2Step113EarlyControlHistoryArena false 0 0 254 820 []=some s2Step113EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step113EarlyControl_sigmaOwned⟩
  · exact s2Step113EarlyControl_sigmaRelease

private theorem s2Step113EarlyControl_zeroBorrow : s2Step113EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step113EarlyControlLog.zeroWork=some s2Step113EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step113EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step113EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step113EarlyControlZeroArena,s2Step113EarlyControlArena,s2Step113EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step113EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step113EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step113EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EarlyControl_zero : compileHmrEqualityLog s2Step113EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step113EarlyControlLog.zeroWork=some (s2Step113EarlyControlZeroArena,s2Step113EarlyControlLog.zeroWork,s2Step113EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step113EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step113EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step113EarlyControl_logged : s2Step113EarlyControlPlan.Logged s2Step113EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 820 254 253 252 251 846 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step113EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step113EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step113EarlyControl_zero
  · exact s2Step113EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step113EarlyControl_flags
  · exact s2Step113EarlyControl_fit
  · exact s2Step113EarlyControl_history
  · exact s2Step113EarlyControl_sigma
  · exact s2Step113EarlyControl_branch

private theorem s2Step113EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step113EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 820 254 253 252 251 846 37 s2Step113EarlyControlLog=some s2Step113EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step113EarlyControlPlan s2Step113EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 820 254 253 252 251 846 37 s2Step113EarlyControl_logged

private def s2Step113EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step113EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step113EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step113EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step113FrontBank : WindowBank := ⟨s2Step113EntryFRow,s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow⟩

private def s2Step113Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807, 768]

private def s2Step113Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805, 812, 769]

private def s2Step113Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 792, 770]

private def s2Step113Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 794, 771]

private theorem s2Step113Counter_apart : Disjoint s2Step113HeadFvAfter.live s2Step113CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step113HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113Counter_borrowed : s2Step113HeadFvAfter.checkBorrow 4 s2Step113CounterWork=some s2Step113CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step113HeadFvAfter s2Step113CounterDuring s2Step113CounterWork.toFinset s2Step113Counter_bounded s2Step113Counter_apart rfl

private theorem s2Step113Counter_owned : (820::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step113HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step113HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113Counter_checked : compileHmrCounterStepLog s2Step113HeadFvAfter true 820 [772, 773, 774, 775, 776, 777] s2Step113CounterWork=some s2Step113CounterDuring := by
  have owned : ∀q∈820::[772, 773, 774, 775, 776, 777],q∈s2Step113HeadFvAfter.live := fun q hq => s2Step113Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step113Counter_borrowed

private def s2Step113EntryFAfter : Arena := s2Step113EntryFBefore

private theorem s2Step113EntryBank_incomingDistinct : ([s2Step113EntryFRow,s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113EntryF_Incoming : rowsOwned s2Step113EntryFBefore [s2Step113EntryFRow,s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113EntryFRow,s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow] 0 s2Step113EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113EntryBank_outgoingOwned : rowsOwned s2Step113EntryGvAfter [s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step113EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113EntryF_Outgoing : rowsOwned s2Step113EntryGvAfter [s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut] :=
  hmrRows_owned_drop s2Step113EntryGvAfter [s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut] 0 s2Step113EntryBank_outgoingOwned

private theorem s2Step113EntryF_distinct : (s2Step113EntryFRow.sign::s2Step113EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113EntryF_owned : (s2Step113EntryFRow.sign::s2Step113EntryFRow.payload).toFinset⊆s2Step113EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EntryF_reserved : s2Step113EntryFBefore.reserve s2Step113EntryFFresh.toFinset=some s2Step113EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step113EntryFFresh,arenaWires]
  · norm_num [s2Step113EntryFBefore,s2Step113EntryFFresh,arenaWires]
  · simp only [s2Step113EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step113EntryF_checked : planRowResizeLog s2Step113EntryFBefore s2Step113EntryFRow 212 s2Step113EntryFFresh=
    some (s2Step113EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩,growRow 768 s2Step113EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step113EntryFBefore s2Step113EntryFAfter s2Step113EntryFRow 212 s2Step113EntryFFresh
    s2Step113EntryF_distinct s2Step113EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step113EntryF_reserved
  have rowEq : WindowRow.mk (s2Step113EntryFRow.payload++s2Step113EntryFFresh) s2Step113EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step113EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113EntryFvAfter : Arena := s2Step113EntryGAfter

private def s2Step113EntryFvBefore : Arena := s2Step113EntryGAfter

private theorem s2Step113EntryFv_Incoming : rowsOwned s2Step113EntryFvBefore [s2Step113EntryFvRow,s2Step113EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113EntryFRow,s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow] 2 s2Step113EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113EntryFv_Outgoing : rowsOwned s2Step113EntryGvAfter [s2Step113EntryFvOut,s2Step113EntryGvOut] :=
  hmrRows_owned_drop s2Step113EntryGvAfter [s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut] 2 s2Step113EntryBank_outgoingOwned

private theorem s2Step113EntryFv_distinct : (s2Step113EntryFvRow.sign::s2Step113EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113EntryFv_owned : (s2Step113EntryFvRow.sign::s2Step113EntryFvRow.payload).toFinset⊆s2Step113EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EntryFv_reserved : s2Step113EntryFvBefore.reserve s2Step113EntryFvFresh.toFinset=some s2Step113EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step113EntryFvFresh,arenaWires]
  · norm_num [s2Step113EntryFvBefore,s2Step113EntryGAfter,s2Step113EntryFvFresh,arenaWires]
  · simp only [s2Step113EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step113EntryFv_checked : planRowResizeLog s2Step113EntryFvBefore s2Step113EntryFvRow 70 s2Step113EntryFvFresh=
    some (s2Step113EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩,growRow 770 s2Step113EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step113EntryFvBefore s2Step113EntryFvAfter s2Step113EntryFvRow 70 s2Step113EntryFvFresh
    s2Step113EntryFv_distinct s2Step113EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step113EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step113EntryFvRow.payload++s2Step113EntryFvFresh) s2Step113EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step113EntryGBefore : Arena := s2Step113EntryFBefore

private theorem s2Step113EntryG_Incoming : rowsOwned s2Step113EntryGBefore [s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113EntryFRow,s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow] 1 s2Step113EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113EntryG_Outgoing : rowsOwned s2Step113EntryGvAfter [s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut] :=
  hmrRows_owned_drop s2Step113EntryGvAfter [s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut] 1 s2Step113EntryBank_outgoingOwned

private theorem s2Step113EntryG_distinct : (s2Step113EntryGRow.sign::s2Step113EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113EntryG_owned : (s2Step113EntryGRow.sign::s2Step113EntryGRow.payload).toFinset⊆s2Step113EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EntryG_reserved : s2Step113EntryGBefore.reserve s2Step113EntryGFresh.toFinset=some s2Step113EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step113EntryGFresh,arenaWires]
  · norm_num [s2Step113EntryGBefore,s2Step113EntryFBefore,s2Step113EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step113EntryGAfter,s2Step113EntryGBefore,s2Step113EntryFBefore,s2Step113EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step113EntryG_checked : planRowResizeLog s2Step113EntryGBefore s2Step113EntryGRow 212 s2Step113EntryGFresh=
    some (s2Step113EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805],769⟩,growRow 769 s2Step113EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step113EntryGBefore s2Step113EntryGAfter s2Step113EntryGRow 212 s2Step113EntryGFresh
    s2Step113EntryG_distinct s2Step113EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step113EntryG_reserved
  have rowEq : WindowRow.mk (s2Step113EntryGRow.payload++s2Step113EntryGFresh) s2Step113EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step113EntryGvBefore : Arena := s2Step113EntryGAfter

private theorem s2Step113EntryGv_Incoming : rowsOwned s2Step113EntryGvBefore [s2Step113EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113EntryFRow,s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow] 3 s2Step113EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113EntryGv_Outgoing : rowsOwned s2Step113EntryGvAfter [s2Step113EntryGvOut] :=
  hmrRows_owned_drop s2Step113EntryGvAfter [s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut] 3 s2Step113EntryBank_outgoingOwned

private theorem s2Step113EntryGv_distinct : (s2Step113EntryGvRow.sign::s2Step113EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113EntryGv_owned : (s2Step113EntryGvRow.sign::s2Step113EntryGvRow.payload).toFinset⊆s2Step113EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113EntryGv_reserved : s2Step113EntryGvBefore.reserve s2Step113EntryGvFresh.toFinset=some s2Step113EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step113EntryGvFresh,arenaWires]
  · norm_num [s2Step113EntryGvBefore,s2Step113EntryGAfter,s2Step113EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step113EntryGvAfter,s2Step113EntryGvBefore,s2Step113EntryGAfter,s2Step113EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step113EntryGv_checked : planRowResizeLog s2Step113EntryGvBefore s2Step113EntryGvRow 70 s2Step113EntryGvFresh=
    some (s2Step113EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩,growRow 771 s2Step113EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step113EntryGvBefore s2Step113EntryGvAfter s2Step113EntryGvRow 70 s2Step113EntryGvFresh
    s2Step113EntryGv_distinct s2Step113EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step113EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step113EntryGvRow.payload++s2Step113EntryGvFresh) s2Step113EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step113EntryBank_rows : planWindowRowsLog s2Step113EntryFBefore [(s2Step113EntryFRow,212),(s2Step113EntryGRow,212),(s2Step113EntryFvRow,70),(s2Step113EntryGvRow,70)] [s2Step113EntryFFresh,s2Step113EntryGFresh,s2Step113EntryFvFresh,s2Step113EntryGvFresh]=
    some (s2Step113EntryGvAfter,[s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut],(growRow 768 s2Step113EntryFFresh ++ (growRow 769 s2Step113EntryGFresh ++ (growRow 770 s2Step113EntryFvFresh ++ (growRow 771 s2Step113EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step113EntryGvAfter [] []=some (s2Step113EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step113EntryGvBefore s2Step113EntryGvAfter s2Step113EntryGvAfter
    s2Step113EntryGvRow s2Step113EntryGvOut 70 s2Step113EntryGvFresh [] [] []
    (growRow 771 s2Step113EntryGvFresh) ([]) s2Step113EntryGv_Incoming s2Step113EntryGv_checked h4 s2Step113EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step113EntryFvBefore s2Step113EntryFvAfter s2Step113EntryGvAfter
    s2Step113EntryFvRow s2Step113EntryFvOut 70 s2Step113EntryFvFresh [(s2Step113EntryGvRow,70)] [s2Step113EntryGvFresh] [s2Step113EntryGvOut]
    (growRow 770 s2Step113EntryFvFresh) ((growRow 771 s2Step113EntryGvFresh ++ [])) s2Step113EntryFv_Incoming s2Step113EntryFv_checked h3 s2Step113EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step113EntryGBefore s2Step113EntryGAfter s2Step113EntryGvAfter
    s2Step113EntryGRow s2Step113EntryGOut 212 s2Step113EntryGFresh [(s2Step113EntryFvRow,70),(s2Step113EntryGvRow,70)] [s2Step113EntryFvFresh,s2Step113EntryGvFresh] [s2Step113EntryFvOut,s2Step113EntryGvOut]
    (growRow 769 s2Step113EntryGFresh) ((growRow 770 s2Step113EntryFvFresh ++ (growRow 771 s2Step113EntryGvFresh ++ []))) s2Step113EntryG_Incoming s2Step113EntryG_checked h2 s2Step113EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step113EntryFBefore s2Step113EntryFAfter s2Step113EntryGvAfter
    s2Step113EntryFRow s2Step113EntryFOut 212 s2Step113EntryFFresh [(s2Step113EntryGRow,212),(s2Step113EntryFvRow,70),(s2Step113EntryGvRow,70)] [s2Step113EntryGFresh,s2Step113EntryFvFresh,s2Step113EntryGvFresh] [s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut]
    (growRow 768 s2Step113EntryFFresh) ((growRow 769 s2Step113EntryGFresh ++ (growRow 770 s2Step113EntryFvFresh ++ (growRow 771 s2Step113EntryGvFresh ++ [])))) s2Step113EntryF_Incoming s2Step113EntryF_checked h1 s2Step113EntryF_Outgoing
  exact h0

private theorem s2Step113EntryBank_checked : compileHmrBankResizeLog .entry s2Step113EntryFBefore ⟨s2Step113EntryFRow,s2Step113EntryGRow,s2Step113EntryFvRow,s2Step113EntryGvRow⟩ ⟨212,212,70,70⟩ [s2Step113EntryFFresh,s2Step113EntryGFresh,s2Step113EntryFvFresh,s2Step113EntryGvFresh]=
    some (s2Step113EntryGvAfter,⟨s2Step113EntryFOut,s2Step113EntryGOut,s2Step113EntryFvOut,s2Step113EntryGvOut⟩,(growRow 768 s2Step113EntryFFresh ++ (growRow 769 s2Step113EntryGFresh ++ (growRow 770 s2Step113EntryFvFresh ++ (growRow 771 s2Step113EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step113EntryBank_rows]
  rfl

private def s2Step113ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113ExitFBefore : Arena := s2Step113ExitGAfter

private def s2Step113ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807],768⟩

private def s2Step113ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 792],770⟩

private def s2Step113ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805, 812],769⟩

private def s2Step113ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 794],771⟩

private theorem s2Step113ExitBank_incomingDistinct : ([s2Step113ExitGRow,s2Step113ExitFRow,s2Step113ExitFvRow,s2Step113ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113ExitF_Incoming : rowsOwned s2Step113ExitFBefore [s2Step113ExitFRow,s2Step113ExitFvRow,s2Step113ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113ExitGRow,s2Step113ExitFRow,s2Step113ExitFvRow,s2Step113ExitGvRow] 1 s2Step113ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113ExitBank_outgoingOwned : rowsOwned s2Step113ExitGvAfter [s2Step113ExitGOut,s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step113ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113ExitF_Outgoing : rowsOwned s2Step113ExitGvAfter [s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut] :=
  hmrRows_owned_drop s2Step113ExitGvAfter [s2Step113ExitGOut,s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut] 1 s2Step113ExitBank_outgoingOwned

private theorem s2Step113ExitF_distinct : (s2Step113ExitFRow.sign::s2Step113ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113ExitF_owned : (s2Step113ExitFRow.sign::s2Step113ExitFRow.payload).toFinset⊆s2Step113ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113ExitF_retired : s2Step113ExitFBefore.retireSet s2Step113ExitFExtra.toFinset=s2Step113ExitFAfter := by
  unfold Arena.retireSet s2Step113ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step113ExitFBefore,s2Step113ExitGAfter,s2Step113ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step113ExitF_checked : planRowResizeLog s2Step113ExitFBefore s2Step113ExitFRow 212 []=
    some (s2Step113ExitFAfter,s2Step113ExitFOut,shrinkRow 768 s2Step113ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step113ExitFBefore s2Step113ExitFRow 212 s2Step113ExitF_distinct s2Step113ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step113ExitFRow.payload.take 212) s2Step113ExitFRow.sign=s2Step113ExitFOut := by decide +kernel
  have hi : s2Step113ExitFRow.payload.drop 212=s2Step113ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step113ExitF_retired] at result
  exact result

private def s2Step113ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113ExitFvBefore : Arena := s2Step113ExitFAfter

private theorem s2Step113ExitFv_Incoming : rowsOwned s2Step113ExitFvBefore [s2Step113ExitFvRow,s2Step113ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113ExitGRow,s2Step113ExitFRow,s2Step113ExitFvRow,s2Step113ExitGvRow] 2 s2Step113ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113ExitFv_Outgoing : rowsOwned s2Step113ExitGvAfter [s2Step113ExitFvOut,s2Step113ExitGvOut] :=
  hmrRows_owned_drop s2Step113ExitGvAfter [s2Step113ExitGOut,s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut] 2 s2Step113ExitBank_outgoingOwned

private theorem s2Step113ExitFv_distinct : (s2Step113ExitFvRow.sign::s2Step113ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113ExitFv_owned : (s2Step113ExitFvRow.sign::s2Step113ExitFvRow.payload).toFinset⊆s2Step113ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113ExitFv_retired : s2Step113ExitFvBefore.retireSet s2Step113ExitFvExtra.toFinset=s2Step113ExitFvAfter := by
  unfold Arena.retireSet s2Step113ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step113ExitFvBefore,s2Step113ExitFAfter,s2Step113ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step113ExitFv_checked : planRowResizeLog s2Step113ExitFvBefore s2Step113ExitFvRow 70 []=
    some (s2Step113ExitFvAfter,s2Step113ExitFvOut,shrinkRow 770 s2Step113ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step113ExitFvBefore s2Step113ExitFvRow 70 s2Step113ExitFv_distinct s2Step113ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step113ExitFvRow.payload.take 70) s2Step113ExitFvRow.sign=s2Step113ExitFvOut := by decide +kernel
  have hi : s2Step113ExitFvRow.payload.drop 70=s2Step113ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step113ExitFv_retired] at result
  exact result

private def s2Step113ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step113ExitG_Incoming : rowsOwned s2Step113ExitGBefore [s2Step113ExitGRow,s2Step113ExitFRow,s2Step113ExitFvRow,s2Step113ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113ExitGRow,s2Step113ExitFRow,s2Step113ExitFvRow,s2Step113ExitGvRow] 0 s2Step113ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113ExitG_Outgoing : rowsOwned s2Step113ExitGvAfter [s2Step113ExitGOut,s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut] :=
  hmrRows_owned_drop s2Step113ExitGvAfter [s2Step113ExitGOut,s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut] 0 s2Step113ExitBank_outgoingOwned

private theorem s2Step113ExitG_distinct : (s2Step113ExitGRow.sign::s2Step113ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113ExitG_owned : (s2Step113ExitGRow.sign::s2Step113ExitGRow.payload).toFinset⊆s2Step113ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113ExitG_retired : s2Step113ExitGBefore.retireSet s2Step113ExitGExtra.toFinset=s2Step113ExitGAfter := by
  unfold Arena.retireSet s2Step113ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step113ExitGBefore,s2Step113ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step113ExitG_checked : planRowResizeLog s2Step113ExitGBefore s2Step113ExitGRow 211 []=
    some (s2Step113ExitGAfter,s2Step113ExitGOut,shrinkRow 769 s2Step113ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step113ExitGBefore s2Step113ExitGRow 211 s2Step113ExitG_distinct s2Step113ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step113ExitGRow.payload.take 211) s2Step113ExitGRow.sign=s2Step113ExitGOut := by decide +kernel
  have hi : s2Step113ExitGRow.payload.drop 211=s2Step113ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step113ExitG_retired] at result
  exact result

private def s2Step113ExitGvBefore : Arena := s2Step113ExitFvAfter

private theorem s2Step113ExitGv_Incoming : rowsOwned s2Step113ExitGvBefore [s2Step113ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113ExitGRow,s2Step113ExitFRow,s2Step113ExitFvRow,s2Step113ExitGvRow] 3 s2Step113ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113ExitGv_Outgoing : rowsOwned s2Step113ExitGvAfter [s2Step113ExitGvOut] :=
  hmrRows_owned_drop s2Step113ExitGvAfter [s2Step113ExitGOut,s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut] 3 s2Step113ExitBank_outgoingOwned

private theorem s2Step113ExitGv_distinct : (s2Step113ExitGvRow.sign::s2Step113ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113ExitGv_owned : (s2Step113ExitGvRow.sign::s2Step113ExitGvRow.payload).toFinset⊆s2Step113ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113ExitGv_retired : s2Step113ExitGvBefore.retireSet s2Step113ExitGvExtra.toFinset=s2Step113ExitGvAfter := by
  unfold Arena.retireSet s2Step113ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step113ExitGvBefore,s2Step113ExitFvAfter,s2Step113ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step113ExitGv_checked : planRowResizeLog s2Step113ExitGvBefore s2Step113ExitGvRow 70 []=
    some (s2Step113ExitGvAfter,s2Step113ExitGvOut,shrinkRow 771 s2Step113ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step113ExitGvBefore s2Step113ExitGvRow 70 s2Step113ExitGv_distinct s2Step113ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step113ExitGvRow.payload.take 70) s2Step113ExitGvRow.sign=s2Step113ExitGvOut := by decide +kernel
  have hi : s2Step113ExitGvRow.payload.drop 70=s2Step113ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step113ExitGv_retired] at result
  exact result

private theorem s2Step113ExitBank_rows : planWindowRowsLog s2Step113ExitGBefore [(s2Step113ExitGRow,211),(s2Step113ExitFRow,212),(s2Step113ExitFvRow,70),(s2Step113ExitGvRow,70)] [[],[],[],[]]=
    some (s2Step113ExitGvAfter,[s2Step113ExitGOut,s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut],(shrinkRow 769 s2Step113ExitGExtra ++ (shrinkRow 768 s2Step113ExitFExtra ++ (shrinkRow 770 s2Step113ExitFvExtra ++ (shrinkRow 771 s2Step113ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step113ExitGvAfter [] []=some (s2Step113ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step113ExitGvBefore s2Step113ExitGvAfter s2Step113ExitGvAfter
    s2Step113ExitGvRow s2Step113ExitGvOut 70 [] [] [] []
    (shrinkRow 771 s2Step113ExitGvExtra) ([]) s2Step113ExitGv_Incoming s2Step113ExitGv_checked h4 s2Step113ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step113ExitFvBefore s2Step113ExitFvAfter s2Step113ExitGvAfter
    s2Step113ExitFvRow s2Step113ExitFvOut 70 [] [(s2Step113ExitGvRow,70)] [[]] [s2Step113ExitGvOut]
    (shrinkRow 770 s2Step113ExitFvExtra) ((shrinkRow 771 s2Step113ExitGvExtra ++ [])) s2Step113ExitFv_Incoming s2Step113ExitFv_checked h3 s2Step113ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step113ExitFBefore s2Step113ExitFAfter s2Step113ExitGvAfter
    s2Step113ExitFRow s2Step113ExitFOut 212 [] [(s2Step113ExitFvRow,70),(s2Step113ExitGvRow,70)] [[],[]] [s2Step113ExitFvOut,s2Step113ExitGvOut]
    (shrinkRow 768 s2Step113ExitFExtra) ((shrinkRow 770 s2Step113ExitFvExtra ++ (shrinkRow 771 s2Step113ExitGvExtra ++ []))) s2Step113ExitF_Incoming s2Step113ExitF_checked h2 s2Step113ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step113ExitGBefore s2Step113ExitGAfter s2Step113ExitGvAfter
    s2Step113ExitGRow s2Step113ExitGOut 211 [] [(s2Step113ExitFRow,212),(s2Step113ExitFvRow,70),(s2Step113ExitGvRow,70)] [[],[],[]] [s2Step113ExitFOut,s2Step113ExitFvOut,s2Step113ExitGvOut]
    (shrinkRow 769 s2Step113ExitGExtra) ((shrinkRow 768 s2Step113ExitFExtra ++ (shrinkRow 770 s2Step113ExitFvExtra ++ (shrinkRow 771 s2Step113ExitGvExtra ++ [])))) s2Step113ExitG_Incoming s2Step113ExitG_checked h1 s2Step113ExitG_Outgoing
  exact h0

private theorem s2Step113ExitBank_checked : compileHmrBankResizeLog .exit s2Step113ExitGBefore ⟨s2Step113ExitFRow,s2Step113ExitGRow,s2Step113ExitFvRow,s2Step113ExitGvRow⟩ ⟨212,211,70,70⟩ [[],[],[],[]]=
    some (s2Step113ExitGvAfter,⟨s2Step113ExitFOut,s2Step113ExitGOut,s2Step113ExitFvOut,s2Step113ExitGvOut⟩,(shrinkRow 769 s2Step113ExitGExtra ++ (shrinkRow 768 s2Step113ExitFExtra ++ (shrinkRow 770 s2Step113ExitFvExtra ++ (shrinkRow 771 s2Step113ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step113ExitBank_rows]
  rfl

private theorem s2Step113Add0_apart : Disjoint s2Step113Add0Arena.live s2Step113Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step113Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113Add0_card : s2Step113Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step113Add0_borrowed : s2Step113Add0Arena.checkBorrow (hmrHybridCount s2Step113Add0Arena s2Step113Add0B.length) s2Step113Add0Work=some s2Step113Add0During := by
  have len : s2Step113Add0Work.length=hmrHybridCount s2Step113Add0Arena s2Step113Add0B.length := by
    rw [hmrHybridCount,s2Step113Add0_card]
    decide +kernel
  have nd : s2Step113Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step113Add0Arena s2Step113Add0During s2Step113Add0Work.toFinset s2Step113Add0_bounded s2Step113Add0_apart rfl

private theorem s2Step113Add0_distinct : (815::846::809::(s2Step113Add0A++s2Step113Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113Add0_owned : (815::846::809::(s2Step113Add0A++s2Step113Add0B)).toFinset⊆s2Step113Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step113Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113Add0_checked : compileHmrHybridCinLog s2Step113Add0Arena 846 815 809 s2Step113Add0A s2Step113Add0B s2Step113Add0Work=some s2Step113Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step113Add0Arena s2Step113Add0During 846 815 809 s2Step113Add0A s2Step113Add0B s2Step113Add0Work
    (by decide +kernel) (by decide +kernel) s2Step113Add0_distinct
    (fun q hq => s2Step113Add0_owned (List.mem_toFinset.mpr hq)) s2Step113Add0_borrowed

private theorem s2Step113Add1_apart : Disjoint s2Step113Add1Arena.live s2Step113Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step113Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113Add1_card : s2Step113Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step113Add1_borrowed : s2Step113Add1Arena.checkBorrow (hmrHybridCount s2Step113Add1Arena s2Step113Add1B.length) s2Step113Add1Work=some s2Step113Add1During := by
  have len : s2Step113Add1Work.length=hmrHybridCount s2Step113Add1Arena s2Step113Add1B.length := by
    rw [hmrHybridCount,s2Step113Add1_card]
    decide +kernel
  have nd : s2Step113Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step113Add1Arena s2Step113Add1During s2Step113Add1Work.toFinset s2Step113Add1_bounded s2Step113Add1_apart rfl

private theorem s2Step113Add1_distinct : (815::846::809::(s2Step113Add1A++s2Step113Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113Add1_owned : (815::846::809::(s2Step113Add1A++s2Step113Add1B)).toFinset⊆s2Step113Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step113Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113Add1_checked : compileHmrHybridCinLog s2Step113Add1Arena 846 815 809 s2Step113Add1A s2Step113Add1B s2Step113Add1Work=some s2Step113Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step113Add1Arena s2Step113Add1During 846 815 809 s2Step113Add1A s2Step113Add1B s2Step113Add1Work
    (by decide +kernel) (by decide +kernel) s2Step113Add1_distinct
    (fun q hq => s2Step113Add1_owned (List.mem_toFinset.mpr hq)) s2Step113Add1_borrowed

private theorem s2Step113F4_apart : Disjoint (s2Step113Add0A++s2Step113Add0B).toFinset (s2Step113Add1A++s2Step113Add1B).toFinset := by
  have nd : ((s2Step113Add0A++s2Step113Add0B)++(s2Step113Add1A++s2Step113Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step113F4_carry : s2Step113F4FlagArena.checkBorrow 1 [809]=some s2Step113Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step113F4FlagArena,s2Step113HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step113F4FlagArena,s2Step113HeadFvAfter,s2Step113Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step113F4_distinct : (820::846::815::809::((s2Step113Add0A++s2Step113Add1A)++(s2Step113Add0B++s2Step113Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113F4_flag : s2Step113HeadFvAfter.checkBorrow 1 [815]=some s2Step113F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step113HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step113F4_owned : (820::846::((s2Step113Add0A++s2Step113Add1A)++(s2Step113Add0B++s2Step113Add1B))).toFinset⊆s2Step113HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step113HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113F4_checked : compileHmrHybridF4Log s2Step113HeadFvAfter 820 846 s2Step113Add0A s2Step113Add0B s2Step113Add1A s2Step113Add1B [815] [809] s2Step113Add0Work s2Step113Add1Work=some s2Step113F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step113HeadFvAfter s2Step113F4FlagArena s2Step113Add0Arena s2Step113Add0During s2Step113Add1During 820 846
    s2Step113Add0A s2Step113Add0B s2Step113Add1A s2Step113Add1B [815] [809] s2Step113Add0Work s2Step113Add1Work
    (fun q hq => s2Step113F4_owned (List.mem_toFinset.mpr hq)) s2Step113F4_flag s2Step113F4_carry
    s2Step113F4_distinct s2Step113F4_apart s2Step113Add0_checked s2Step113Add1_checked

private theorem s2Step113Front_branch : s2Step113FrontSigmaArena.checkBorrow 1 [846]=some s2Step113HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step113FrontSigmaArena,s2Step113EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step113FrontSigmaArena,s2Step113EntryGvAfter,s2Step113HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step113Front_entry : HmrFrontEntryValid s2Step113EntryFBefore s2Step113FrontBank 212 70 ⟨212,211,70,70⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step113FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step113EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step113EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step113FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step113Front_sigma : s2Step113EntryGvAfter.checkBorrow 1 [820]=some s2Step113FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step113EntryGvAfter,arenaWires]
  · rfl

private def s2Step113HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113HeadFBefore : Arena := s2Step113HeadGAfter

private def s2Step113HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step113HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step113HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805],769⟩

private def s2Step113HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩

private theorem s2Step113HeadBank_incomingDistinct : ([s2Step113HeadGRow,s2Step113HeadFRow,s2Step113HeadGvRow,s2Step113HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113HeadF_Incoming : rowsOwned s2Step113HeadFBefore [s2Step113HeadFRow,s2Step113HeadGvRow,s2Step113HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113HeadGRow,s2Step113HeadFRow,s2Step113HeadGvRow,s2Step113HeadFvRow] 1 s2Step113HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113HeadBank_outgoingOwned : rowsOwned s2Step113HeadFvAfter [s2Step113HeadGOut,s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step113HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113HeadF_Outgoing : rowsOwned s2Step113HeadFvAfter [s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut] :=
  hmrRows_owned_drop s2Step113HeadFvAfter [s2Step113HeadGOut,s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut] 1 s2Step113HeadBank_outgoingOwned

private theorem s2Step113HeadF_distinct : (s2Step113HeadFRow.sign::s2Step113HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113HeadF_owned : (s2Step113HeadFRow.sign::s2Step113HeadFRow.payload).toFinset⊆s2Step113HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113HeadF_reserved : s2Step113HeadFBefore.reserve s2Step113HeadFFresh.toFinset=some s2Step113HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step113HeadFFresh,arenaWires]
  · norm_num [s2Step113HeadFBefore,s2Step113HeadGAfter,s2Step113HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step113HeadFAfter,s2Step113HeadFBefore,s2Step113HeadGAfter,s2Step113HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step113HeadF_checked : planRowResizeLog s2Step113HeadFBefore s2Step113HeadFRow 213 s2Step113HeadFFresh=
    some (s2Step113HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807],768⟩,growRow 768 s2Step113HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step113HeadFBefore s2Step113HeadFAfter s2Step113HeadFRow 213 s2Step113HeadFFresh
    s2Step113HeadF_distinct s2Step113HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step113HeadF_reserved
  have rowEq : WindowRow.mk (s2Step113HeadFRow.payload++s2Step113HeadFFresh) s2Step113HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 807],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step113HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step113HeadFvBefore : Arena := s2Step113HeadGvAfter

private theorem s2Step113HeadFv_Incoming : rowsOwned s2Step113HeadFvBefore [s2Step113HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113HeadGRow,s2Step113HeadFRow,s2Step113HeadGvRow,s2Step113HeadFvRow] 3 s2Step113HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113HeadFv_Outgoing : rowsOwned s2Step113HeadFvAfter [s2Step113HeadFvOut] :=
  hmrRows_owned_drop s2Step113HeadFvAfter [s2Step113HeadGOut,s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut] 3 s2Step113HeadBank_outgoingOwned

private theorem s2Step113HeadFv_distinct : (s2Step113HeadFvRow.sign::s2Step113HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113HeadFv_owned : (s2Step113HeadFvRow.sign::s2Step113HeadFvRow.payload).toFinset⊆s2Step113HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113HeadFv_reserved : s2Step113HeadFvBefore.reserve s2Step113HeadFvFresh.toFinset=some s2Step113HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step113HeadFvFresh,arenaWires]
  · norm_num [s2Step113HeadFvBefore,s2Step113HeadGvAfter,s2Step113HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step113HeadFvAfter,s2Step113HeadFvBefore,s2Step113HeadGvAfter,s2Step113HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step113HeadFv_checked : planRowResizeLog s2Step113HeadFvBefore s2Step113HeadFvRow 71 s2Step113HeadFvFresh=
    some (s2Step113HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 792],770⟩,growRow 770 s2Step113HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step113HeadFvBefore s2Step113HeadFvAfter s2Step113HeadFvRow 71 s2Step113HeadFvFresh
    s2Step113HeadFv_distinct s2Step113HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step113HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step113HeadFvRow.payload++s2Step113HeadFvFresh) s2Step113HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 792],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step113HeadG_Incoming : rowsOwned s2Step113HeadGBefore [s2Step113HeadGRow,s2Step113HeadFRow,s2Step113HeadGvRow,s2Step113HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113HeadGRow,s2Step113HeadFRow,s2Step113HeadGvRow,s2Step113HeadFvRow] 0 s2Step113HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113HeadG_Outgoing : rowsOwned s2Step113HeadFvAfter [s2Step113HeadGOut,s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut] :=
  hmrRows_owned_drop s2Step113HeadFvAfter [s2Step113HeadGOut,s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut] 0 s2Step113HeadBank_outgoingOwned

private theorem s2Step113HeadG_distinct : (s2Step113HeadGRow.sign::s2Step113HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113HeadG_owned : (s2Step113HeadGRow.sign::s2Step113HeadGRow.payload).toFinset⊆s2Step113HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113HeadG_reserved : s2Step113HeadGBefore.reserve s2Step113HeadGFresh.toFinset=some s2Step113HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step113HeadGFresh,arenaWires]
  · norm_num [s2Step113HeadGBefore,s2Step113HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step113HeadGAfter,s2Step113HeadGBefore,s2Step113HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step113HeadG_checked : planRowResizeLog s2Step113HeadGBefore s2Step113HeadGRow 213 s2Step113HeadGFresh=
    some (s2Step113HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805, 812],769⟩,growRow 769 s2Step113HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step113HeadGBefore s2Step113HeadGAfter s2Step113HeadGRow 213 s2Step113HeadGFresh
    s2Step113HeadG_distinct s2Step113HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step113HeadG_reserved
  have rowEq : WindowRow.mk (s2Step113HeadGRow.payload++s2Step113HeadGFresh) s2Step113HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 805, 812],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step113HeadGvBefore : Arena := s2Step113HeadFAfter

private theorem s2Step113HeadGv_Incoming : rowsOwned s2Step113HeadGvBefore [s2Step113HeadGvRow,s2Step113HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step113HeadGRow,s2Step113HeadFRow,s2Step113HeadGvRow,s2Step113HeadFvRow] 2 s2Step113HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step113HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step113HeadGv_Outgoing : rowsOwned s2Step113HeadFvAfter [s2Step113HeadGvOut,s2Step113HeadFvOut] :=
  hmrRows_owned_drop s2Step113HeadFvAfter [s2Step113HeadGOut,s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut] 2 s2Step113HeadBank_outgoingOwned

private theorem s2Step113HeadGv_distinct : (s2Step113HeadGvRow.sign::s2Step113HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step113HeadGv_owned : (s2Step113HeadGvRow.sign::s2Step113HeadGvRow.payload).toFinset⊆s2Step113HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step113HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step113HeadGv_reserved : s2Step113HeadGvBefore.reserve s2Step113HeadGvFresh.toFinset=some s2Step113HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step113HeadGvFresh,arenaWires]
  · norm_num [s2Step113HeadGvBefore,s2Step113HeadFAfter,s2Step113HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step113HeadGvAfter,s2Step113HeadGvBefore,s2Step113HeadFAfter,s2Step113HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step113HeadGv_checked : planRowResizeLog s2Step113HeadGvBefore s2Step113HeadGvRow 71 s2Step113HeadGvFresh=
    some (s2Step113HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 794],771⟩,growRow 771 s2Step113HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step113HeadGvBefore s2Step113HeadGvAfter s2Step113HeadGvRow 71 s2Step113HeadGvFresh
    s2Step113HeadGv_distinct s2Step113HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step113HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step113HeadGvRow.payload++s2Step113HeadGvFresh) s2Step113HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 794],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step113HeadBank_rows : planWindowRowsLog s2Step113HeadGBefore [(s2Step113HeadGRow,213),(s2Step113HeadFRow,213),(s2Step113HeadGvRow,71),(s2Step113HeadFvRow,71)] [s2Step113HeadGFresh,s2Step113HeadFFresh,s2Step113HeadGvFresh,s2Step113HeadFvFresh]=
    some (s2Step113HeadFvAfter,[s2Step113HeadGOut,s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut],(growRow 769 s2Step113HeadGFresh ++ (growRow 768 s2Step113HeadFFresh ++ (growRow 771 s2Step113HeadGvFresh ++ (growRow 770 s2Step113HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step113HeadFvAfter [] []=some (s2Step113HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step113HeadFvBefore s2Step113HeadFvAfter s2Step113HeadFvAfter
    s2Step113HeadFvRow s2Step113HeadFvOut 71 s2Step113HeadFvFresh [] [] []
    (growRow 770 s2Step113HeadFvFresh) ([]) s2Step113HeadFv_Incoming s2Step113HeadFv_checked h4 s2Step113HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step113HeadGvBefore s2Step113HeadGvAfter s2Step113HeadFvAfter
    s2Step113HeadGvRow s2Step113HeadGvOut 71 s2Step113HeadGvFresh [(s2Step113HeadFvRow,71)] [s2Step113HeadFvFresh] [s2Step113HeadFvOut]
    (growRow 771 s2Step113HeadGvFresh) ((growRow 770 s2Step113HeadFvFresh ++ [])) s2Step113HeadGv_Incoming s2Step113HeadGv_checked h3 s2Step113HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step113HeadFBefore s2Step113HeadFAfter s2Step113HeadFvAfter
    s2Step113HeadFRow s2Step113HeadFOut 213 s2Step113HeadFFresh [(s2Step113HeadGvRow,71),(s2Step113HeadFvRow,71)] [s2Step113HeadGvFresh,s2Step113HeadFvFresh] [s2Step113HeadGvOut,s2Step113HeadFvOut]
    (growRow 768 s2Step113HeadFFresh) ((growRow 771 s2Step113HeadGvFresh ++ (growRow 770 s2Step113HeadFvFresh ++ []))) s2Step113HeadF_Incoming s2Step113HeadF_checked h2 s2Step113HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step113HeadGBefore s2Step113HeadGAfter s2Step113HeadFvAfter
    s2Step113HeadGRow s2Step113HeadGOut 213 s2Step113HeadGFresh [(s2Step113HeadFRow,213),(s2Step113HeadGvRow,71),(s2Step113HeadFvRow,71)] [s2Step113HeadFFresh,s2Step113HeadGvFresh,s2Step113HeadFvFresh] [s2Step113HeadFOut,s2Step113HeadGvOut,s2Step113HeadFvOut]
    (growRow 769 s2Step113HeadGFresh) ((growRow 768 s2Step113HeadFFresh ++ (growRow 771 s2Step113HeadGvFresh ++ (growRow 770 s2Step113HeadFvFresh ++ [])))) s2Step113HeadG_Incoming s2Step113HeadG_checked h1 s2Step113HeadG_Outgoing
  exact h0

private theorem s2Step113HeadBank_checked : compileHmrBankResizeLog .headroom s2Step113HeadGBefore ⟨s2Step113HeadFRow,s2Step113HeadGRow,s2Step113HeadFvRow,s2Step113HeadGvRow⟩ ⟨213,213,71,71⟩ [s2Step113HeadGFresh,s2Step113HeadFFresh,s2Step113HeadGvFresh,s2Step113HeadFvFresh]=
    some (s2Step113HeadFvAfter,⟨s2Step113HeadFOut,s2Step113HeadGOut,s2Step113HeadFvOut,s2Step113HeadGvOut⟩,(growRow 769 s2Step113HeadGFresh ++ (growRow 768 s2Step113HeadFFresh ++ (growRow 771 s2Step113HeadGvFresh ++ (growRow 770 s2Step113HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step113HeadBank_rows]
  rfl

private theorem s2Step113Front_checked : compileHmrSourceFrontLog s2Step113EntryFBefore s2Step113FrontBank 212 70 ⟨212,211,70,70⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step113FrontLog=some s2Step113FrontPlan := by
  have pairEq : s2Step113FrontPair=⟨s2Step113HeadFRow,s2Step113HeadGRow,s2Step113HeadFvRow,s2Step113HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step113FrontHead=⟨s2Step113ExitFRow,s2Step113ExitGRow,s2Step113ExitFvRow,s2Step113ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step113Add0A=s2Step113FrontHead.f.wires := by decide +kernel
  have gEq : s2Step113Add0B=s2Step113FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step113Add1A=s2Step113FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step113Add1B=s2Step113FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step113EntryFBefore s2Step113FrontBank 212 70 ⟨212,211,70,70⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step113FrontLog s2Step113FrontPlan
  · exact s2Step113Front_entry
  · exact s2Step113EntryBank_checked
  · exact s2Step113Front_sigma
  · rfl
  · exact s2Step113Front_branch
  · rfl
  · simpa only [s2Step113FrontPlan,pairEq] using s2Step113HeadBank_checked
  · simpa only [s2Step113FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step113F4_checked
  · exact s2Step113Counter_checked
  · rfl
  · simpa only [s2Step113FrontPlan,headEq] using s2Step113ExitBank_checked

private theorem s2Step113Complete_explicit_checked : compileHmrEarlyStepLog s2Step113EntryFBefore s2Step113FrontBank 212 70 ⟨212,211,70,70⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step113CompleteLog=some s2Step113CompletePlan := by
  let Q := s2Step113EarlyControlPlan
  have hq := s2Step113EarlyControl_plan_checked
  have fv1 : s2Step113CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step113CompleteOut.fv.payload[2]?.getD s2Step113CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step113CompleteOut.fv.payload[3]?.getD s2Step113CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step113CompleteOut.fv.payload[4]?.getD s2Step113CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step113EntryFBefore s2Step113EarlyControlArena s2Step113FrontBank 212 70 ⟨212,211,70,70⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step113CompleteLog s2Step113FrontPlan Q
    s2Step113Front_checked s2Step113Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step113Complete_owned s2Step113Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step113EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 820 s2Step113CompleteOut.fv.second (s2Step113CompleteOut.fv.payload[2]?.getD s2Step113CompleteOut.fv.sign) (s2Step113CompleteOut.fv.payload[3]?.getD s2Step113CompleteOut.fv.sign) (s2Step113CompleteOut.fv.payload[4]?.getD s2Step113CompleteOut.fv.sign) 846 37 s2Step113EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep113Arena : Arena := s2Step113EntryFBefore
def s2PrivateStep113Bank : WindowBank := s2Step113FrontBank
def s2PrivateStep113Spec : HmrSourceWalkStepLog := ⟨212,70,⟨212,211,70,70⟩,37,.early s2Step113CompleteLog⟩
def s2PrivateStep113Plan : HmrSourceStepPlan := .early s2Step113CompletePlan
theorem s2PrivateStep113_source : s2PrivateStep113Spec=s2ObservedLogs112[1] := rfl
theorem s2PrivateStep113_checked : compileHmrSourceStepLog s2PrivateStep113Arena s2PrivateStep113Bank
    s2PrivateStep113Spec.fgWidth s2PrivateStep113Spec.vWidth s2PrivateStep113Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 113 s2PrivateStep113Spec.need none s2PrivateStep113Spec.log=some s2PrivateStep113Plan := by
  change compileHmrSourceStepLog s2Step113EntryFBefore s2Step113FrontBank 212 70 ⟨212,211,70,70⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 113 37 none (.early s2Step113CompleteLog)=some (.early s2Step113CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 113<498)]
  rw [s2Step113Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
