import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep109
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

private def s2Step111CompleteMoves : List (Wire × Wire) := [(812,212),(807,724)]

private def s2Step111EarlyControlLog : HmrEarlyControlLog := ⟨[807, 812, 846, 808, 794],[792],[815],[809, 781, 849, 806, 802, 867],[]⟩

private def s2Step111FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[792], [794], [846], [808]],[[], [], [], []]⟩,[805],[787],[815],[809],[781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[815, 809, 781, 849]⟩

private def s2Step111CompleteLog : HmrEarlyStepLog := ⟨s2Step111FrontLog,s2Step111CompleteMoves,s2Step111EarlyControlLog⟩

private def s2Step111ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step111ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step111ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211],769⟩

private def s2Step111ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step111FrontOut : WindowBank := ⟨s2Step111ExitFOut,s2Step111ExitGOut,s2Step111ExitFvOut,s2Step111ExitGvOut⟩

private def s2Step111CompleteOut : WindowBank := s2Step111FrontOut.repacked s2Step111CompleteMoves

private def s2Step111EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step111EarlyControlPositiveArena,[792],s2Step111EarlyControlEqualityArena,[815],⟨⟨805,false⟩,[⟨⟨792,false⟩,815⟩]⟩⟩

private def s2Step111EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,807⟩,⟨⟨774,false⟩,812⟩,⟨⟨775,false⟩,846⟩,⟨⟨776,false⟩,808⟩,⟨⟨777,false⟩,794⟩]⟩

private def s2Step111EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step111EarlyControlZeroArena,s2Step111EarlyControlZeroPlan,s2Step111EarlyControlClassPlan,s2Step111EarlyControlFlagArena,s2Step111EarlyControlFittedArena,s2Step111EarlyControlHistoryArena,s2Step111EarlyControlSigmaArena,s2Step111EarlyControlOutputArena,s2Step111EarlyControlLog⟩

private def s2Step111CounterWork : List Wire := [815, 809, 781, 849]

private theorem s2Step111Counter_bounded : s2Step111CounterWork.toFinset⊆arenaWires := by norm_num [s2Step111CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step111HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111CounterDuring : Arena := ⟨s2Step111HeadFvAfter.live∪s2Step111CounterWork.toFinset,Finset.union_subset s2Step111HeadFvAfter.bounded s2Step111Counter_bounded⟩

private def s2Step111EntryFFresh : List Wire := []

private def s2Step111EntryFvFresh : List Wire := []

private def s2Step111EntryGFresh : List Wire := []

private def s2Step111EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111EntryGvAfter : Arena := s2Step111EntryFBefore

private def s2Step111EntryGvFresh : List Wire := []

private def s2Step111ExitFExtra : List Wire := [724, 794]

private def s2Step111ExitFvExtra : List Wire := [808]

private def s2Step111ExitGExtra : List Wire := [212, 792]

private def s2Step111ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<724) ∨ (725≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111ExitGvExtra : List Wire := [846]

private def s2Step111Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111Add0Work : List Wire := [781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step111Add0_bounded : s2Step111Add0Work.toFinset⊆arenaWires := by
  have h : s2Step111Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step111Add0During : Arena := ⟨s2Step111Add0Arena.live∪s2Step111Add0Work.toFinset,Finset.union_subset s2Step111Add0Arena.bounded s2Step111Add0_bounded⟩

private def s2Step111Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111Add1Work : List Wire := [781, 849, 806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step111Add1_bounded : s2Step111Add1Work.toFinset⊆arenaWires := by
  have h : s2Step111Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step111Add1During : Arena := ⟨s2Step111Add1Arena.live∪s2Step111Add1Work.toFinset,Finset.union_subset s2Step111Add1Arena.bounded s2Step111Add1_bounded⟩

private def s2Step111F4FlagArena : Arena := ⟨s2Step111HeadFvAfter.live∪{815},Finset.union_subset s2Step111HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step111F4Plan : HmrHybridF4Plan := ⟨s2Step111F4FlagArena,[815],s2Step111Add0Arena,[809],s2Step111Add0During,s2Step111Add0Work,s2Step111Add1During,s2Step111Add1Work⟩

private def s2Step111HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 794],768⟩

private def s2Step111HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step111HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 792],769⟩

private def s2Step111HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846],771⟩

private def s2Step111FrontHead : WindowBank := ⟨s2Step111HeadFOut,s2Step111HeadGOut,s2Step111HeadFvOut,s2Step111HeadGvOut⟩

private def s2Step111EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724],768⟩

private def s2Step111EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step111EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],769⟩

private def s2Step111EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step111FrontPair : WindowBank := ⟨s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut⟩

private def s2Step111FrontSigmaArena : Arena := ⟨s2Step111EntryGvAfter.live∪{805},Finset.union_subset s2Step111EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step111HeadFFresh : List Wire := [794]

private def s2Step111HeadFvFresh : List Wire := [808]

private def s2Step111HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111HeadGFresh : List Wire := [792]

private def s2Step111HeadGvFresh : List Wire := [846]

private def s2Step111FrontPlan : HmrSourceFront := ⟨s2Step111EntryGvAfter,s2Step111FrontPair,(growRow 768 s2Step111EntryFFresh ++ (growRow 769 s2Step111EntryGFresh ++ (growRow 770 s2Step111EntryFvFresh ++ (growRow 771 s2Step111EntryGvFresh ++ [])))),s2Step111FrontSigmaArena,[805],s2Step111HeadGBefore,[787],
  s2Step111HeadFvAfter,s2Step111FrontHead,(growRow 769 s2Step111HeadGFresh ++ (growRow 768 s2Step111HeadFFresh ++ (growRow 771 s2Step111HeadGvFresh ++ (growRow 770 s2Step111HeadFvFresh ++ [])))),s2Step111F4Plan,s2Step111CounterDuring,s2Step111CounterWork,s2Step111ExitGvAfter,s2Step111FrontOut,(shrinkRow 769 s2Step111ExitGExtra ++ (shrinkRow 768 s2Step111ExitFExtra ++ (shrinkRow 770 s2Step111ExitFvExtra ++ (shrinkRow 771 s2Step111ExitGvExtra ++ []))))⟩

private def s2Step111CompletePlan : HmrEarlyStepPlan := ⟨s2Step111FrontPlan,s2Step111EarlyControlArena,s2Step111EarlyControlPlan,s2Step111CompleteMoves⟩

private theorem s2Step111Complete_apart : List.Disjoint (s2Step111CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [805, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step111CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[805, 787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step111Complete_owned : (s2Step111CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step111CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,724),(725,781),(782,792),(793,794),(795,802),(803,806),(807,808),(810,812),(813,815),(816,846),(847,849),(850,867),(868,877),(878,879),(880,882)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step111CompleteRelocationMove0Borrowed : Arena := ⟨s2Step111ExitGvAfter.live∪{212},Finset.union_subset s2Step111ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step111CompleteRelocationMove1Borrowed : Arena := ⟨s2Step111CompleteRelocationMove0After.live∪{724},Finset.union_subset s2Step111CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step111CompleteRelocation_move0_owned : 812∈s2Step111ExitGvAfter.live := by norm_num [s2Step111ExitGvAfter,arenaWires]

private theorem s2Step111CompleteRelocation_move0_reserve : s2Step111ExitGvAfter.reserve {212}=some s2Step111CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step111ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step111CompleteRelocation_move0_retire : s2Step111CompleteRelocationMove0Borrowed.retireSet {812}=s2Step111CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step111CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step111CompleteRelocationMove0Borrowed,s2Step111ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step111CompleteRelocation_move1_owned : 807∈s2Step111CompleteRelocationMove0After.live := by norm_num [s2Step111CompleteRelocationMove0After,arenaWires]

private theorem s2Step111CompleteRelocation_move1_reserve : s2Step111CompleteRelocationMove0After.reserve {724}=some s2Step111CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step111CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step111CompleteRelocation_move1_retire : s2Step111CompleteRelocationMove1Borrowed.retireSet {807}=s2Step111EarlyControlArena := by
  unfold Arena.retireSet s2Step111EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step111CompleteRelocationMove1Borrowed,s2Step111CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step111CompleteRelocation_checked : s2Step111ExitGvAfter.checkRepack [(812,212),(807,724)]=some s2Step111EarlyControlArena := by
  have tail2 : s2Step111EarlyControlArena.checkRepack []=some s2Step111EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step111CompleteRelocationMove0After s2Step111CompleteRelocationMove1Borrowed s2Step111EarlyControlArena s2Step111EarlyControlArena 807 724 []
    s2Step111CompleteRelocation_move1_owned s2Step111CompleteRelocation_move1_reserve s2Step111CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step111ExitGvAfter s2Step111CompleteRelocationMove0Borrowed s2Step111CompleteRelocationMove0After s2Step111EarlyControlArena 812 212 [(807,724)]
    s2Step111CompleteRelocation_move0_owned s2Step111CompleteRelocation_move0_reserve s2Step111CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step111Complete_repack : s2Step111ExitGvAfter.checkRepack s2Step111CompleteMoves=some s2Step111EarlyControlArena := by
  simpa only [s2Step111CompleteMoves] using s2Step111CompleteRelocation_checked

private theorem s2Step111EarlyControl_branchOwned : ([787] : List Wire).toFinset⊆s2Step111EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_branch : compileHmrBranchRetirement s2Step111EarlyControlSigmaArena 787=some s2Step111EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step111EarlyControl_branchOwned
  · ext q
    simp [s2Step111EarlyControlOutputArena,s2Step111EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step111EarlyControl_classEqualityBorrow : s2Step111EarlyControlPositiveArena.checkBorrow (([805, 792] : List Wire).length-1) s2Step111EarlyControlLog.classWork=some s2Step111EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step111EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step111EarlyControlEqualityArena,s2Step111EarlyControlPositiveArena,s2Step111EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step111EarlyControl_classEqualityOwned : ([805, 792] : List Wire).toFinset⊆s2Step111EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_classEquality : compileHmrEqualityLog s2Step111EarlyControlPositiveArena [805, 792] 0 s2Step111EarlyControlLog.classWork=some (s2Step111EarlyControlEqualityArena,s2Step111EarlyControlLog.classWork,s2Step111EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step111EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step111EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step111EarlyControl_classOwned : ([777, 794, 805] : List Wire).toFinset⊆s2Step111EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_positiveBorrow : s2Step111EarlyControlZeroArena.checkBorrow (1) s2Step111EarlyControlLog.positiveWork=some s2Step111EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step111EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step111EarlyControlPositiveArena,s2Step111EarlyControlZeroArena,s2Step111EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step111EarlyControl_class : compileHmrSourceClassLog s2Step111EarlyControlZeroArena false 777 s2Step111EarlyControlZeroPlan.top 0 805 s2Step111EarlyControlLog.positiveWork s2Step111EarlyControlLog.classWork=some s2Step111EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step111EarlyControlClassPlan s2Step111EarlyControlZeroArena false 777 s2Step111EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s2Step111EarlyControl_classOwned
  · exact s2Step111EarlyControl_positiveBorrow
  · exact s2Step111EarlyControl_classEquality

private theorem s2Step111EarlyControl_entryRecordOwned : ([787, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_entrySigmaOwned : ([805, 254] : List Wire).toFinset⊆s2Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_fitBorrow : s2Step111EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step111EarlyControlLog.recordFresh=some s2Step111EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step111EarlyControlFlagArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step111EarlyControlFittedArena,s2Step111EarlyControlFlagArena,s2Step111EarlyControlLog,arenaWires]

private theorem s2Step111EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step111EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlFlagArena (fun q => (0≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_fit : compileHmrRecordGrowLog s2Step111EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step111EarlyControlLog.recordFresh=some s2Step111EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step111EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step111EarlyControl_fitBorrow

private theorem s2Step111EarlyControl_flagsBorrow : s2Step111EarlyControlEqualityArena.checkBorrow (6) s2Step111EarlyControlLog.flagWork=some s2Step111EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step111EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step111EarlyControlFlagArena,s2Step111EarlyControlEqualityArena,s2Step111EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step111EarlyControl_flagsOwned : ([815, 253, 252, 251] : List Wire).toFinset⊆s2Step111EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlEqualityArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_flags : compileHmrFlagsLog s2Step111EarlyControlClassPlan.equalityArena s2Step111EarlyControlClassPlan.equality.top 253 252 251 s2Step111EarlyControlLog.flagWork=some s2Step111EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step111EarlyControl_flagsOwned⟩
  · exact s2Step111EarlyControl_flagsBorrow

private theorem s2Step111EarlyControl_historyBorrow : s2Step111EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step111EarlyControlLog.recordFresh=some s2Step111EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step111EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step111EarlyControlHistoryArena,s2Step111EarlyControlArena,s2Step111EarlyControlLog,arenaWires]

private theorem s2Step111EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_history : compileHmrRecordGrowLog s2Step111EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step111EarlyControlLog.recordFresh=some s2Step111EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step111EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step111EarlyControl_historyBorrow

private theorem s2Step111EarlyControl_sigmaOwned : ([254, 805] : List Wire).toFinset⊆s2Step111EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s2Step111EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_sigmaRelease : s2Step111EarlyControlHistoryArena.release {805} (fun _ => false)=some s2Step111EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step111EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step111EarlyControlSigmaArena,s2Step111EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step111EarlyControl_sigma : compileHmrSigmaDropLog s2Step111EarlyControlHistoryArena false 0 0 254 805 []=some s2Step111EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step111EarlyControl_sigmaOwned⟩
  · exact s2Step111EarlyControl_sigmaRelease

private theorem s2Step111EarlyControl_zeroBorrow : s2Step111EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step111EarlyControlLog.zeroWork=some s2Step111EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step111EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step111EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step111EarlyControlZeroArena,s2Step111EarlyControlArena,s2Step111EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step111EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step111EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step111EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (810≤q ∧ q<812) ∨ (813≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EarlyControl_zero : compileHmrEqualityLog s2Step111EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step111EarlyControlLog.zeroWork=some (s2Step111EarlyControlZeroArena,s2Step111EarlyControlLog.zeroWork,s2Step111EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step111EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step111EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step111EarlyControl_logged : s2Step111EarlyControlPlan.Logged s2Step111EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 805 254 253 252 251 787 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step111EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step111EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step111EarlyControl_zero
  · exact s2Step111EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step111EarlyControl_flags
  · exact s2Step111EarlyControl_fit
  · exact s2Step111EarlyControl_history
  · exact s2Step111EarlyControl_sigma
  · exact s2Step111EarlyControl_branch

private theorem s2Step111EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step111EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 805 254 253 252 251 787 37 s2Step111EarlyControlLog=some s2Step111EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step111EarlyControlPlan s2Step111EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 805 254 253 252 251 787 37 s2Step111EarlyControl_logged

private def s2Step111EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724],768⟩

private def s2Step111EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step111EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],769⟩

private def s2Step111EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private def s2Step111FrontBank : WindowBank := ⟨s2Step111EntryFRow,s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow⟩

private def s2Step111Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 794, 768]

private def s2Step111Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 792, 769]

private def s2Step111Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 770]

private def s2Step111Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846, 771]

private theorem s2Step111Counter_apart : Disjoint s2Step111HeadFvAfter.live s2Step111CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step111HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111Counter_borrowed : s2Step111HeadFvAfter.checkBorrow 4 s2Step111CounterWork=some s2Step111CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step111HeadFvAfter s2Step111CounterDuring s2Step111CounterWork.toFinset s2Step111Counter_bounded s2Step111Counter_apart rfl

private theorem s2Step111Counter_owned : (805::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step111HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step111HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111Counter_checked : compileHmrCounterStepLog s2Step111HeadFvAfter true 805 [772, 773, 774, 775, 776, 777] s2Step111CounterWork=some s2Step111CounterDuring := by
  have owned : ∀q∈805::[772, 773, 774, 775, 776, 777],q∈s2Step111HeadFvAfter.live := fun q hq => s2Step111Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step111Counter_borrowed

private def s2Step111EntryFAfter : Arena := s2Step111EntryFBefore

private theorem s2Step111EntryBank_incomingDistinct : ([s2Step111EntryFRow,s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111EntryF_Incoming : rowsOwned s2Step111EntryFBefore [s2Step111EntryFRow,s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111EntryFRow,s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow] 0 s2Step111EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111EntryBank_outgoingOwned : rowsOwned s2Step111EntryGvAfter [s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step111EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111EntryF_Outgoing : rowsOwned s2Step111EntryGvAfter [s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut] :=
  hmrRows_owned_drop s2Step111EntryGvAfter [s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut] 0 s2Step111EntryBank_outgoingOwned

private theorem s2Step111EntryF_distinct : (s2Step111EntryFRow.sign::s2Step111EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111EntryF_owned : (s2Step111EntryFRow.sign::s2Step111EntryFRow.payload).toFinset⊆s2Step111EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EntryF_reserved : s2Step111EntryFBefore.reserve s2Step111EntryFFresh.toFinset=some s2Step111EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step111EntryFFresh,arenaWires]
  · norm_num [s2Step111EntryFBefore,s2Step111EntryFFresh,arenaWires]
  · simp only [s2Step111EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step111EntryF_checked : planRowResizeLog s2Step111EntryFBefore s2Step111EntryFRow 213 s2Step111EntryFFresh=
    some (s2Step111EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724],768⟩,growRow 768 s2Step111EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step111EntryFBefore s2Step111EntryFAfter s2Step111EntryFRow 213 s2Step111EntryFFresh
    s2Step111EntryF_distinct s2Step111EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step111EntryF_reserved
  have rowEq : WindowRow.mk (s2Step111EntryFRow.payload++s2Step111EntryFFresh) s2Step111EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step111EntryFvAfter : Arena := s2Step111EntryFBefore

private def s2Step111EntryFvBefore : Arena := s2Step111EntryFBefore

private theorem s2Step111EntryFv_Incoming : rowsOwned s2Step111EntryFvBefore [s2Step111EntryFvRow,s2Step111EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111EntryFRow,s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow] 2 s2Step111EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111EntryFv_Outgoing : rowsOwned s2Step111EntryGvAfter [s2Step111EntryFvOut,s2Step111EntryGvOut] :=
  hmrRows_owned_drop s2Step111EntryGvAfter [s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut] 2 s2Step111EntryBank_outgoingOwned

private theorem s2Step111EntryFv_distinct : (s2Step111EntryFvRow.sign::s2Step111EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111EntryFv_owned : (s2Step111EntryFvRow.sign::s2Step111EntryFvRow.payload).toFinset⊆s2Step111EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EntryFv_reserved : s2Step111EntryFvBefore.reserve s2Step111EntryFvFresh.toFinset=some s2Step111EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step111EntryFvFresh,arenaWires]
  · norm_num [s2Step111EntryFvBefore,s2Step111EntryFBefore,s2Step111EntryFvFresh,arenaWires]
  · simp only [s2Step111EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step111EntryFv_checked : planRowResizeLog s2Step111EntryFvBefore s2Step111EntryFvRow 69 s2Step111EntryFvFresh=
    some (s2Step111EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩,growRow 770 s2Step111EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step111EntryFvBefore s2Step111EntryFvAfter s2Step111EntryFvRow 69 s2Step111EntryFvFresh
    s2Step111EntryFv_distinct s2Step111EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step111EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step111EntryFvRow.payload++s2Step111EntryFvFresh) s2Step111EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step111EntryGAfter : Arena := s2Step111EntryFBefore

private def s2Step111EntryGBefore : Arena := s2Step111EntryFBefore

private theorem s2Step111EntryG_Incoming : rowsOwned s2Step111EntryGBefore [s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111EntryFRow,s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow] 1 s2Step111EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111EntryG_Outgoing : rowsOwned s2Step111EntryGvAfter [s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut] :=
  hmrRows_owned_drop s2Step111EntryGvAfter [s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut] 1 s2Step111EntryBank_outgoingOwned

private theorem s2Step111EntryG_distinct : (s2Step111EntryGRow.sign::s2Step111EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111EntryG_owned : (s2Step111EntryGRow.sign::s2Step111EntryGRow.payload).toFinset⊆s2Step111EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EntryG_reserved : s2Step111EntryGBefore.reserve s2Step111EntryGFresh.toFinset=some s2Step111EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step111EntryGFresh,arenaWires]
  · norm_num [s2Step111EntryGBefore,s2Step111EntryFBefore,s2Step111EntryGFresh,arenaWires]
  · simp only [s2Step111EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step111EntryG_checked : planRowResizeLog s2Step111EntryGBefore s2Step111EntryGRow 213 s2Step111EntryGFresh=
    some (s2Step111EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],769⟩,growRow 769 s2Step111EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step111EntryGBefore s2Step111EntryGAfter s2Step111EntryGRow 213 s2Step111EntryGFresh
    s2Step111EntryG_distinct s2Step111EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step111EntryG_reserved
  have rowEq : WindowRow.mk (s2Step111EntryGRow.payload++s2Step111EntryGFresh) s2Step111EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step111EntryGvBefore : Arena := s2Step111EntryFBefore

private theorem s2Step111EntryGv_Incoming : rowsOwned s2Step111EntryGvBefore [s2Step111EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111EntryFRow,s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow] 3 s2Step111EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111EntryGv_Outgoing : rowsOwned s2Step111EntryGvAfter [s2Step111EntryGvOut] :=
  hmrRows_owned_drop s2Step111EntryGvAfter [s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut] 3 s2Step111EntryBank_outgoingOwned

private theorem s2Step111EntryGv_distinct : (s2Step111EntryGvRow.sign::s2Step111EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111EntryGv_owned : (s2Step111EntryGvRow.sign::s2Step111EntryGvRow.payload).toFinset⊆s2Step111EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111EntryGv_reserved : s2Step111EntryGvBefore.reserve s2Step111EntryGvFresh.toFinset=some s2Step111EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step111EntryGvFresh,arenaWires]
  · norm_num [s2Step111EntryGvBefore,s2Step111EntryFBefore,s2Step111EntryGvFresh,arenaWires]
  · simp only [s2Step111EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step111EntryGv_checked : planRowResizeLog s2Step111EntryGvBefore s2Step111EntryGvRow 69 s2Step111EntryGvFresh=
    some (s2Step111EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩,growRow 771 s2Step111EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step111EntryGvBefore s2Step111EntryGvAfter s2Step111EntryGvRow 69 s2Step111EntryGvFresh
    s2Step111EntryGv_distinct s2Step111EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step111EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step111EntryGvRow.payload++s2Step111EntryGvFresh) s2Step111EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step111EntryBank_rows : planWindowRowsLog s2Step111EntryFBefore [(s2Step111EntryFRow,213),(s2Step111EntryGRow,213),(s2Step111EntryFvRow,69),(s2Step111EntryGvRow,69)] [s2Step111EntryFFresh,s2Step111EntryGFresh,s2Step111EntryFvFresh,s2Step111EntryGvFresh]=
    some (s2Step111EntryGvAfter,[s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut],(growRow 768 s2Step111EntryFFresh ++ (growRow 769 s2Step111EntryGFresh ++ (growRow 770 s2Step111EntryFvFresh ++ (growRow 771 s2Step111EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step111EntryGvAfter [] []=some (s2Step111EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step111EntryGvBefore s2Step111EntryGvAfter s2Step111EntryGvAfter
    s2Step111EntryGvRow s2Step111EntryGvOut 69 s2Step111EntryGvFresh [] [] []
    (growRow 771 s2Step111EntryGvFresh) ([]) s2Step111EntryGv_Incoming s2Step111EntryGv_checked h4 s2Step111EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step111EntryFvBefore s2Step111EntryFvAfter s2Step111EntryGvAfter
    s2Step111EntryFvRow s2Step111EntryFvOut 69 s2Step111EntryFvFresh [(s2Step111EntryGvRow,69)] [s2Step111EntryGvFresh] [s2Step111EntryGvOut]
    (growRow 770 s2Step111EntryFvFresh) ((growRow 771 s2Step111EntryGvFresh ++ [])) s2Step111EntryFv_Incoming s2Step111EntryFv_checked h3 s2Step111EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step111EntryGBefore s2Step111EntryGAfter s2Step111EntryGvAfter
    s2Step111EntryGRow s2Step111EntryGOut 213 s2Step111EntryGFresh [(s2Step111EntryFvRow,69),(s2Step111EntryGvRow,69)] [s2Step111EntryFvFresh,s2Step111EntryGvFresh] [s2Step111EntryFvOut,s2Step111EntryGvOut]
    (growRow 769 s2Step111EntryGFresh) ((growRow 770 s2Step111EntryFvFresh ++ (growRow 771 s2Step111EntryGvFresh ++ []))) s2Step111EntryG_Incoming s2Step111EntryG_checked h2 s2Step111EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step111EntryFBefore s2Step111EntryFAfter s2Step111EntryGvAfter
    s2Step111EntryFRow s2Step111EntryFOut 213 s2Step111EntryFFresh [(s2Step111EntryGRow,213),(s2Step111EntryFvRow,69),(s2Step111EntryGvRow,69)] [s2Step111EntryGFresh,s2Step111EntryFvFresh,s2Step111EntryGvFresh] [s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut]
    (growRow 768 s2Step111EntryFFresh) ((growRow 769 s2Step111EntryGFresh ++ (growRow 770 s2Step111EntryFvFresh ++ (growRow 771 s2Step111EntryGvFresh ++ [])))) s2Step111EntryF_Incoming s2Step111EntryF_checked h1 s2Step111EntryF_Outgoing
  exact h0

private theorem s2Step111EntryBank_checked : compileHmrBankResizeLog .entry s2Step111EntryFBefore ⟨s2Step111EntryFRow,s2Step111EntryGRow,s2Step111EntryFvRow,s2Step111EntryGvRow⟩ ⟨213,213,69,69⟩ [s2Step111EntryFFresh,s2Step111EntryGFresh,s2Step111EntryFvFresh,s2Step111EntryGvFresh]=
    some (s2Step111EntryGvAfter,⟨s2Step111EntryFOut,s2Step111EntryGOut,s2Step111EntryFvOut,s2Step111EntryGvOut⟩,(growRow 768 s2Step111EntryFFresh ++ (growRow 769 s2Step111EntryGFresh ++ (growRow 770 s2Step111EntryFvFresh ++ (growRow 771 s2Step111EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step111EntryBank_rows]
  rfl

private def s2Step111ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<724) ∨ (725≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111ExitFBefore : Arena := s2Step111ExitGAfter

private def s2Step111ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 794],768⟩

private def s2Step111ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩

private def s2Step111ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 792],769⟩

private def s2Step111ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846],771⟩

private theorem s2Step111ExitBank_incomingDistinct : ([s2Step111ExitGRow,s2Step111ExitFRow,s2Step111ExitFvRow,s2Step111ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111ExitF_Incoming : rowsOwned s2Step111ExitFBefore [s2Step111ExitFRow,s2Step111ExitFvRow,s2Step111ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111ExitGRow,s2Step111ExitFRow,s2Step111ExitFvRow,s2Step111ExitGvRow] 1 s2Step111ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111ExitFBefore (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111ExitBank_outgoingOwned : rowsOwned s2Step111ExitGvAfter [s2Step111ExitGOut,s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step111ExitGvAfter (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<724) ∨ (725≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111ExitF_Outgoing : rowsOwned s2Step111ExitGvAfter [s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut] :=
  hmrRows_owned_drop s2Step111ExitGvAfter [s2Step111ExitGOut,s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut] 1 s2Step111ExitBank_outgoingOwned

private theorem s2Step111ExitF_distinct : (s2Step111ExitFRow.sign::s2Step111ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111ExitF_owned : (s2Step111ExitFRow.sign::s2Step111ExitFRow.payload).toFinset⊆s2Step111ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111ExitFBefore (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111ExitF_retired : s2Step111ExitFBefore.retireSet s2Step111ExitFExtra.toFinset=s2Step111ExitFAfter := by
  unfold Arena.retireSet s2Step111ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step111ExitFBefore,s2Step111ExitGAfter,s2Step111ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step111ExitF_checked : planRowResizeLog s2Step111ExitFBefore s2Step111ExitFRow 212 []=
    some (s2Step111ExitFAfter,s2Step111ExitFOut,shrinkRow 768 s2Step111ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step111ExitFBefore s2Step111ExitFRow 212 s2Step111ExitF_distinct s2Step111ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step111ExitFRow.payload.take 212) s2Step111ExitFRow.sign=s2Step111ExitFOut := by decide +kernel
  have hi : s2Step111ExitFRow.payload.drop 212=s2Step111ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step111ExitF_retired] at result
  exact result

private def s2Step111ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<724) ∨ (725≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111ExitFvBefore : Arena := s2Step111ExitFAfter

private theorem s2Step111ExitFv_Incoming : rowsOwned s2Step111ExitFvBefore [s2Step111ExitFvRow,s2Step111ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111ExitGRow,s2Step111ExitFRow,s2Step111ExitFvRow,s2Step111ExitGvRow] 2 s2Step111ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111ExitFvBefore (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<724) ∨ (725≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111ExitFv_Outgoing : rowsOwned s2Step111ExitGvAfter [s2Step111ExitFvOut,s2Step111ExitGvOut] :=
  hmrRows_owned_drop s2Step111ExitGvAfter [s2Step111ExitGOut,s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut] 2 s2Step111ExitBank_outgoingOwned

private theorem s2Step111ExitFv_distinct : (s2Step111ExitFvRow.sign::s2Step111ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111ExitFv_owned : (s2Step111ExitFvRow.sign::s2Step111ExitFvRow.payload).toFinset⊆s2Step111ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111ExitFvBefore (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<724) ∨ (725≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111ExitFv_retired : s2Step111ExitFvBefore.retireSet s2Step111ExitFvExtra.toFinset=s2Step111ExitFvAfter := by
  unfold Arena.retireSet s2Step111ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step111ExitFvBefore,s2Step111ExitFAfter,s2Step111ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step111ExitFv_checked : planRowResizeLog s2Step111ExitFvBefore s2Step111ExitFvRow 69 []=
    some (s2Step111ExitFvAfter,s2Step111ExitFvOut,shrinkRow 770 s2Step111ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step111ExitFvBefore s2Step111ExitFvRow 69 s2Step111ExitFv_distinct s2Step111ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step111ExitFvRow.payload.take 69) s2Step111ExitFvRow.sign=s2Step111ExitFvOut := by decide +kernel
  have hi : s2Step111ExitFvRow.payload.drop 69=s2Step111ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step111ExitFv_retired] at result
  exact result

private def s2Step111ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step111ExitG_Incoming : rowsOwned s2Step111ExitGBefore [s2Step111ExitGRow,s2Step111ExitFRow,s2Step111ExitFvRow,s2Step111ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111ExitGRow,s2Step111ExitFRow,s2Step111ExitFvRow,s2Step111ExitGvRow] 0 s2Step111ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111ExitG_Outgoing : rowsOwned s2Step111ExitGvAfter [s2Step111ExitGOut,s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut] :=
  hmrRows_owned_drop s2Step111ExitGvAfter [s2Step111ExitGOut,s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut] 0 s2Step111ExitBank_outgoingOwned

private theorem s2Step111ExitG_distinct : (s2Step111ExitGRow.sign::s2Step111ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111ExitG_owned : (s2Step111ExitGRow.sign::s2Step111ExitGRow.payload).toFinset⊆s2Step111ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111ExitG_retired : s2Step111ExitGBefore.retireSet s2Step111ExitGExtra.toFinset=s2Step111ExitGAfter := by
  unfold Arena.retireSet s2Step111ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step111ExitGBefore,s2Step111ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step111ExitG_checked : planRowResizeLog s2Step111ExitGBefore s2Step111ExitGRow 212 []=
    some (s2Step111ExitGAfter,s2Step111ExitGOut,shrinkRow 769 s2Step111ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step111ExitGBefore s2Step111ExitGRow 212 s2Step111ExitG_distinct s2Step111ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step111ExitGRow.payload.take 212) s2Step111ExitGRow.sign=s2Step111ExitGOut := by decide +kernel
  have hi : s2Step111ExitGRow.payload.drop 212=s2Step111ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step111ExitG_retired] at result
  exact result

private def s2Step111ExitGvBefore : Arena := s2Step111ExitFvAfter

private theorem s2Step111ExitGv_Incoming : rowsOwned s2Step111ExitGvBefore [s2Step111ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111ExitGRow,s2Step111ExitFRow,s2Step111ExitFvRow,s2Step111ExitGvRow] 3 s2Step111ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111ExitGvBefore (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<724) ∨ (725≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111ExitGv_Outgoing : rowsOwned s2Step111ExitGvAfter [s2Step111ExitGvOut] :=
  hmrRows_owned_drop s2Step111ExitGvAfter [s2Step111ExitGOut,s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut] 3 s2Step111ExitBank_outgoingOwned

private theorem s2Step111ExitGv_distinct : (s2Step111ExitGvRow.sign::s2Step111ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111ExitGv_owned : (s2Step111ExitGvRow.sign::s2Step111ExitGvRow.payload).toFinset⊆s2Step111ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111ExitGvBefore (fun q => (0≤q ∧ q<212) ∨ (213≤q ∧ q<724) ∨ (725≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111ExitGv_retired : s2Step111ExitGvBefore.retireSet s2Step111ExitGvExtra.toFinset=s2Step111ExitGvAfter := by
  unfold Arena.retireSet s2Step111ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step111ExitGvBefore,s2Step111ExitFvAfter,s2Step111ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step111ExitGv_checked : planRowResizeLog s2Step111ExitGvBefore s2Step111ExitGvRow 69 []=
    some (s2Step111ExitGvAfter,s2Step111ExitGvOut,shrinkRow 771 s2Step111ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step111ExitGvBefore s2Step111ExitGvRow 69 s2Step111ExitGv_distinct s2Step111ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step111ExitGvRow.payload.take 69) s2Step111ExitGvRow.sign=s2Step111ExitGvOut := by decide +kernel
  have hi : s2Step111ExitGvRow.payload.drop 69=s2Step111ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step111ExitGv_retired] at result
  exact result

private theorem s2Step111ExitBank_rows : planWindowRowsLog s2Step111ExitGBefore [(s2Step111ExitGRow,212),(s2Step111ExitFRow,212),(s2Step111ExitFvRow,69),(s2Step111ExitGvRow,69)] [[],[],[],[]]=
    some (s2Step111ExitGvAfter,[s2Step111ExitGOut,s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut],(shrinkRow 769 s2Step111ExitGExtra ++ (shrinkRow 768 s2Step111ExitFExtra ++ (shrinkRow 770 s2Step111ExitFvExtra ++ (shrinkRow 771 s2Step111ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step111ExitGvAfter [] []=some (s2Step111ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step111ExitGvBefore s2Step111ExitGvAfter s2Step111ExitGvAfter
    s2Step111ExitGvRow s2Step111ExitGvOut 69 [] [] [] []
    (shrinkRow 771 s2Step111ExitGvExtra) ([]) s2Step111ExitGv_Incoming s2Step111ExitGv_checked h4 s2Step111ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step111ExitFvBefore s2Step111ExitFvAfter s2Step111ExitGvAfter
    s2Step111ExitFvRow s2Step111ExitFvOut 69 [] [(s2Step111ExitGvRow,69)] [[]] [s2Step111ExitGvOut]
    (shrinkRow 770 s2Step111ExitFvExtra) ((shrinkRow 771 s2Step111ExitGvExtra ++ [])) s2Step111ExitFv_Incoming s2Step111ExitFv_checked h3 s2Step111ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step111ExitFBefore s2Step111ExitFAfter s2Step111ExitGvAfter
    s2Step111ExitFRow s2Step111ExitFOut 212 [] [(s2Step111ExitFvRow,69),(s2Step111ExitGvRow,69)] [[],[]] [s2Step111ExitFvOut,s2Step111ExitGvOut]
    (shrinkRow 768 s2Step111ExitFExtra) ((shrinkRow 770 s2Step111ExitFvExtra ++ (shrinkRow 771 s2Step111ExitGvExtra ++ []))) s2Step111ExitF_Incoming s2Step111ExitF_checked h2 s2Step111ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step111ExitGBefore s2Step111ExitGAfter s2Step111ExitGvAfter
    s2Step111ExitGRow s2Step111ExitGOut 212 [] [(s2Step111ExitFRow,212),(s2Step111ExitFvRow,69),(s2Step111ExitGvRow,69)] [[],[],[]] [s2Step111ExitFOut,s2Step111ExitFvOut,s2Step111ExitGvOut]
    (shrinkRow 769 s2Step111ExitGExtra) ((shrinkRow 768 s2Step111ExitFExtra ++ (shrinkRow 770 s2Step111ExitFvExtra ++ (shrinkRow 771 s2Step111ExitGvExtra ++ [])))) s2Step111ExitG_Incoming s2Step111ExitG_checked h1 s2Step111ExitG_Outgoing
  exact h0

private theorem s2Step111ExitBank_checked : compileHmrBankResizeLog .exit s2Step111ExitGBefore ⟨s2Step111ExitFRow,s2Step111ExitGRow,s2Step111ExitFvRow,s2Step111ExitGvRow⟩ ⟨212,212,69,69⟩ [[],[],[],[]]=
    some (s2Step111ExitGvAfter,⟨s2Step111ExitFOut,s2Step111ExitGOut,s2Step111ExitFvOut,s2Step111ExitGvOut⟩,(shrinkRow 769 s2Step111ExitGExtra ++ (shrinkRow 768 s2Step111ExitFExtra ++ (shrinkRow 770 s2Step111ExitFvExtra ++ (shrinkRow 771 s2Step111ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step111ExitBank_rows]
  rfl

private theorem s2Step111Add0_apart : Disjoint s2Step111Add0Arena.live s2Step111Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step111Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111Add0_card : s2Step111Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step111Add0_borrowed : s2Step111Add0Arena.checkBorrow (hmrHybridCount s2Step111Add0Arena s2Step111Add0B.length) s2Step111Add0Work=some s2Step111Add0During := by
  have len : s2Step111Add0Work.length=hmrHybridCount s2Step111Add0Arena s2Step111Add0B.length := by
    rw [hmrHybridCount,s2Step111Add0_card]
    decide +kernel
  have nd : s2Step111Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step111Add0Arena s2Step111Add0During s2Step111Add0Work.toFinset s2Step111Add0_bounded s2Step111Add0_apart rfl

private theorem s2Step111Add0_distinct : (815::787::809::(s2Step111Add0A++s2Step111Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111Add0_owned : (815::787::809::(s2Step111Add0A++s2Step111Add0B)).toFinset⊆s2Step111Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step111Add0Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111Add0_checked : compileHmrHybridCinLog s2Step111Add0Arena 787 815 809 s2Step111Add0A s2Step111Add0B s2Step111Add0Work=some s2Step111Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step111Add0Arena s2Step111Add0During 787 815 809 s2Step111Add0A s2Step111Add0B s2Step111Add0Work
    (by decide +kernel) (by decide +kernel) s2Step111Add0_distinct
    (fun q hq => s2Step111Add0_owned (List.mem_toFinset.mpr hq)) s2Step111Add0_borrowed

private theorem s2Step111Add1_apart : Disjoint s2Step111Add1Arena.live s2Step111Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step111Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111Add1_card : s2Step111Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step111Add1_borrowed : s2Step111Add1Arena.checkBorrow (hmrHybridCount s2Step111Add1Arena s2Step111Add1B.length) s2Step111Add1Work=some s2Step111Add1During := by
  have len : s2Step111Add1Work.length=hmrHybridCount s2Step111Add1Arena s2Step111Add1B.length := by
    rw [hmrHybridCount,s2Step111Add1_card]
    decide +kernel
  have nd : s2Step111Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step111Add1Arena s2Step111Add1During s2Step111Add1Work.toFinset s2Step111Add1_bounded s2Step111Add1_apart rfl

private theorem s2Step111Add1_distinct : (815::787::809::(s2Step111Add1A++s2Step111Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111Add1_owned : (815::787::809::(s2Step111Add1A++s2Step111Add1B)).toFinset⊆s2Step111Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step111Add1Arena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111Add1_checked : compileHmrHybridCinLog s2Step111Add1Arena 787 815 809 s2Step111Add1A s2Step111Add1B s2Step111Add1Work=some s2Step111Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step111Add1Arena s2Step111Add1During 787 815 809 s2Step111Add1A s2Step111Add1B s2Step111Add1Work
    (by decide +kernel) (by decide +kernel) s2Step111Add1_distinct
    (fun q hq => s2Step111Add1_owned (List.mem_toFinset.mpr hq)) s2Step111Add1_borrowed

private theorem s2Step111F4_apart : Disjoint (s2Step111Add0A++s2Step111Add0B).toFinset (s2Step111Add1A++s2Step111Add1B).toFinset := by
  have nd : ((s2Step111Add0A++s2Step111Add0B)++(s2Step111Add1A++s2Step111Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step111F4_carry : s2Step111F4FlagArena.checkBorrow 1 [809]=some s2Step111Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step111F4FlagArena,s2Step111HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step111F4FlagArena,s2Step111HeadFvAfter,s2Step111Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step111F4_distinct : (805::787::815::809::((s2Step111Add0A++s2Step111Add1A)++(s2Step111Add0B++s2Step111Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111F4_flag : s2Step111HeadFvAfter.checkBorrow 1 [815]=some s2Step111F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step111HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step111F4_owned : (805::787::((s2Step111Add0A++s2Step111Add1A)++(s2Step111Add0B++s2Step111Add1B))).toFinset⊆s2Step111HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step111HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111F4_checked : compileHmrHybridF4Log s2Step111HeadFvAfter 805 787 s2Step111Add0A s2Step111Add0B s2Step111Add1A s2Step111Add1B [815] [809] s2Step111Add0Work s2Step111Add1Work=some s2Step111F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step111HeadFvAfter s2Step111F4FlagArena s2Step111Add0Arena s2Step111Add0During s2Step111Add1During 805 787
    s2Step111Add0A s2Step111Add0B s2Step111Add1A s2Step111Add1B [815] [809] s2Step111Add0Work s2Step111Add1Work
    (fun q hq => s2Step111F4_owned (List.mem_toFinset.mpr hq)) s2Step111F4_flag s2Step111F4_carry
    s2Step111F4_distinct s2Step111F4_apart s2Step111Add0_checked s2Step111Add1_checked

private theorem s2Step111Front_branch : s2Step111FrontSigmaArena.checkBorrow 1 [787]=some s2Step111HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step111FrontSigmaArena,s2Step111EntryGvAfter,s2Step111EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step111FrontSigmaArena,s2Step111EntryGvAfter,s2Step111EntryFBefore,s2Step111HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step111Front_entry : HmrFrontEntryValid s2Step111EntryFBefore s2Step111FrontBank 213 69 ⟨212,212,69,69⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step111FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step111EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step111EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<787) ∨ (788≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step111FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step111Front_sigma : s2Step111EntryGvAfter.checkBorrow 1 [805]=some s2Step111FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step111EntryGvAfter,s2Step111EntryFBefore,arenaWires]
  · rfl

private def s2Step111HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111HeadFBefore : Arena := s2Step111HeadGAfter

private def s2Step111HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724],768⟩

private def s2Step111HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810],770⟩

private def s2Step111HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212],769⟩

private def s2Step111HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800],771⟩

private theorem s2Step111HeadBank_incomingDistinct : ([s2Step111HeadGRow,s2Step111HeadFRow,s2Step111HeadGvRow,s2Step111HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111HeadF_Incoming : rowsOwned s2Step111HeadFBefore [s2Step111HeadFRow,s2Step111HeadGvRow,s2Step111HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111HeadGRow,s2Step111HeadFRow,s2Step111HeadGvRow,s2Step111HeadFvRow] 1 s2Step111HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111HeadBank_outgoingOwned : rowsOwned s2Step111HeadFvAfter [s2Step111HeadGOut,s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step111HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111HeadF_Outgoing : rowsOwned s2Step111HeadFvAfter [s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut] :=
  hmrRows_owned_drop s2Step111HeadFvAfter [s2Step111HeadGOut,s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut] 1 s2Step111HeadBank_outgoingOwned

private theorem s2Step111HeadF_distinct : (s2Step111HeadFRow.sign::s2Step111HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111HeadF_owned : (s2Step111HeadFRow.sign::s2Step111HeadFRow.payload).toFinset⊆s2Step111HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111HeadF_reserved : s2Step111HeadFBefore.reserve s2Step111HeadFFresh.toFinset=some s2Step111HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step111HeadFFresh,arenaWires]
  · norm_num [s2Step111HeadFBefore,s2Step111HeadGAfter,s2Step111HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step111HeadFAfter,s2Step111HeadFBefore,s2Step111HeadGAfter,s2Step111HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step111HeadF_checked : planRowResizeLog s2Step111HeadFBefore s2Step111HeadFRow 214 s2Step111HeadFFresh=
    some (s2Step111HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 794],768⟩,growRow 768 s2Step111HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step111HeadFBefore s2Step111HeadFAfter s2Step111HeadFRow 214 s2Step111HeadFFresh
    s2Step111HeadF_distinct s2Step111HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step111HeadF_reserved
  have rowEq : WindowRow.mk (s2Step111HeadFRow.payload++s2Step111HeadFFresh) s2Step111HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 724, 794],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step111HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step111HeadFvBefore : Arena := s2Step111HeadGvAfter

private theorem s2Step111HeadFv_Incoming : rowsOwned s2Step111HeadFvBefore [s2Step111HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111HeadGRow,s2Step111HeadFRow,s2Step111HeadGvRow,s2Step111HeadFvRow] 3 s2Step111HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111HeadFv_Outgoing : rowsOwned s2Step111HeadFvAfter [s2Step111HeadFvOut] :=
  hmrRows_owned_drop s2Step111HeadFvAfter [s2Step111HeadGOut,s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut] 3 s2Step111HeadBank_outgoingOwned

private theorem s2Step111HeadFv_distinct : (s2Step111HeadFvRow.sign::s2Step111HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111HeadFv_owned : (s2Step111HeadFvRow.sign::s2Step111HeadFvRow.payload).toFinset⊆s2Step111HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111HeadFv_reserved : s2Step111HeadFvBefore.reserve s2Step111HeadFvFresh.toFinset=some s2Step111HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step111HeadFvFresh,arenaWires]
  · norm_num [s2Step111HeadFvBefore,s2Step111HeadGvAfter,s2Step111HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step111HeadFvAfter,s2Step111HeadFvBefore,s2Step111HeadGvAfter,s2Step111HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step111HeadFv_checked : planRowResizeLog s2Step111HeadFvBefore s2Step111HeadFvRow 70 s2Step111HeadFvFresh=
    some (s2Step111HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩,growRow 770 s2Step111HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step111HeadFvBefore s2Step111HeadFvAfter s2Step111HeadFvRow 70 s2Step111HeadFvFresh
    s2Step111HeadFv_distinct s2Step111HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step111HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step111HeadFvRow.payload++s2Step111HeadFvFresh) s2Step111HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 812, 820, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step111HeadG_Incoming : rowsOwned s2Step111HeadGBefore [s2Step111HeadGRow,s2Step111HeadFRow,s2Step111HeadGvRow,s2Step111HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111HeadGRow,s2Step111HeadFRow,s2Step111HeadGvRow,s2Step111HeadFvRow] 0 s2Step111HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111HeadG_Outgoing : rowsOwned s2Step111HeadFvAfter [s2Step111HeadGOut,s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut] :=
  hmrRows_owned_drop s2Step111HeadFvAfter [s2Step111HeadGOut,s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut] 0 s2Step111HeadBank_outgoingOwned

private theorem s2Step111HeadG_distinct : (s2Step111HeadGRow.sign::s2Step111HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111HeadG_owned : (s2Step111HeadGRow.sign::s2Step111HeadGRow.payload).toFinset⊆s2Step111HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111HeadG_reserved : s2Step111HeadGBefore.reserve s2Step111HeadGFresh.toFinset=some s2Step111HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step111HeadGFresh,arenaWires]
  · norm_num [s2Step111HeadGBefore,s2Step111HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step111HeadGAfter,s2Step111HeadGBefore,s2Step111HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step111HeadG_checked : planRowResizeLog s2Step111HeadGBefore s2Step111HeadGRow 214 s2Step111HeadGFresh=
    some (s2Step111HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 792],769⟩,growRow 769 s2Step111HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step111HeadGBefore s2Step111HeadGAfter s2Step111HeadGRow 214 s2Step111HeadGFresh
    s2Step111HeadG_distinct s2Step111HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step111HeadG_reserved
  have rowEq : WindowRow.mk (s2Step111HeadGRow.payload++s2Step111HeadGFresh) s2Step111HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 792],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step111HeadGvBefore : Arena := s2Step111HeadFAfter

private theorem s2Step111HeadGv_Incoming : rowsOwned s2Step111HeadGvBefore [s2Step111HeadGvRow,s2Step111HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step111HeadGRow,s2Step111HeadFRow,s2Step111HeadGvRow,s2Step111HeadFvRow] 2 s2Step111HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step111HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step111HeadGv_Outgoing : rowsOwned s2Step111HeadFvAfter [s2Step111HeadGvOut,s2Step111HeadFvOut] :=
  hmrRows_owned_drop s2Step111HeadFvAfter [s2Step111HeadGOut,s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut] 2 s2Step111HeadBank_outgoingOwned

private theorem s2Step111HeadGv_distinct : (s2Step111HeadGvRow.sign::s2Step111HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step111HeadGv_owned : (s2Step111HeadGvRow.sign::s2Step111HeadGvRow.payload).toFinset⊆s2Step111HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step111HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<808) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step111HeadGv_reserved : s2Step111HeadGvBefore.reserve s2Step111HeadGvFresh.toFinset=some s2Step111HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step111HeadGvFresh,arenaWires]
  · norm_num [s2Step111HeadGvBefore,s2Step111HeadFAfter,s2Step111HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step111HeadGvAfter,s2Step111HeadGvBefore,s2Step111HeadFAfter,s2Step111HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step111HeadGv_checked : planRowResizeLog s2Step111HeadGvBefore s2Step111HeadGvRow 70 s2Step111HeadGvFresh=
    some (s2Step111HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846],771⟩,growRow 771 s2Step111HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step111HeadGvBefore s2Step111HeadGvAfter s2Step111HeadGvRow 70 s2Step111HeadGvFresh
    s2Step111HeadGv_distinct s2Step111HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step111HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step111HeadGvRow.payload++s2Step111HeadGvFresh) s2Step111HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 807, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 846],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step111HeadBank_rows : planWindowRowsLog s2Step111HeadGBefore [(s2Step111HeadGRow,214),(s2Step111HeadFRow,214),(s2Step111HeadGvRow,70),(s2Step111HeadFvRow,70)] [s2Step111HeadGFresh,s2Step111HeadFFresh,s2Step111HeadGvFresh,s2Step111HeadFvFresh]=
    some (s2Step111HeadFvAfter,[s2Step111HeadGOut,s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut],(growRow 769 s2Step111HeadGFresh ++ (growRow 768 s2Step111HeadFFresh ++ (growRow 771 s2Step111HeadGvFresh ++ (growRow 770 s2Step111HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step111HeadFvAfter [] []=some (s2Step111HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step111HeadFvBefore s2Step111HeadFvAfter s2Step111HeadFvAfter
    s2Step111HeadFvRow s2Step111HeadFvOut 70 s2Step111HeadFvFresh [] [] []
    (growRow 770 s2Step111HeadFvFresh) ([]) s2Step111HeadFv_Incoming s2Step111HeadFv_checked h4 s2Step111HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step111HeadGvBefore s2Step111HeadGvAfter s2Step111HeadFvAfter
    s2Step111HeadGvRow s2Step111HeadGvOut 70 s2Step111HeadGvFresh [(s2Step111HeadFvRow,70)] [s2Step111HeadFvFresh] [s2Step111HeadFvOut]
    (growRow 771 s2Step111HeadGvFresh) ((growRow 770 s2Step111HeadFvFresh ++ [])) s2Step111HeadGv_Incoming s2Step111HeadGv_checked h3 s2Step111HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step111HeadFBefore s2Step111HeadFAfter s2Step111HeadFvAfter
    s2Step111HeadFRow s2Step111HeadFOut 214 s2Step111HeadFFresh [(s2Step111HeadGvRow,70),(s2Step111HeadFvRow,70)] [s2Step111HeadGvFresh,s2Step111HeadFvFresh] [s2Step111HeadGvOut,s2Step111HeadFvOut]
    (growRow 768 s2Step111HeadFFresh) ((growRow 771 s2Step111HeadGvFresh ++ (growRow 770 s2Step111HeadFvFresh ++ []))) s2Step111HeadF_Incoming s2Step111HeadF_checked h2 s2Step111HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step111HeadGBefore s2Step111HeadGAfter s2Step111HeadFvAfter
    s2Step111HeadGRow s2Step111HeadGOut 214 s2Step111HeadGFresh [(s2Step111HeadFRow,214),(s2Step111HeadGvRow,70),(s2Step111HeadFvRow,70)] [s2Step111HeadFFresh,s2Step111HeadGvFresh,s2Step111HeadFvFresh] [s2Step111HeadFOut,s2Step111HeadGvOut,s2Step111HeadFvOut]
    (growRow 769 s2Step111HeadGFresh) ((growRow 768 s2Step111HeadFFresh ++ (growRow 771 s2Step111HeadGvFresh ++ (growRow 770 s2Step111HeadFvFresh ++ [])))) s2Step111HeadG_Incoming s2Step111HeadG_checked h1 s2Step111HeadG_Outgoing
  exact h0

private theorem s2Step111HeadBank_checked : compileHmrBankResizeLog .headroom s2Step111HeadGBefore ⟨s2Step111HeadFRow,s2Step111HeadGRow,s2Step111HeadFvRow,s2Step111HeadGvRow⟩ ⟨214,214,70,70⟩ [s2Step111HeadGFresh,s2Step111HeadFFresh,s2Step111HeadGvFresh,s2Step111HeadFvFresh]=
    some (s2Step111HeadFvAfter,⟨s2Step111HeadFOut,s2Step111HeadGOut,s2Step111HeadFvOut,s2Step111HeadGvOut⟩,(growRow 769 s2Step111HeadGFresh ++ (growRow 768 s2Step111HeadFFresh ++ (growRow 771 s2Step111HeadGvFresh ++ (growRow 770 s2Step111HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step111HeadBank_rows]
  rfl

private theorem s2Step111Front_checked : compileHmrSourceFrontLog s2Step111EntryFBefore s2Step111FrontBank 213 69 ⟨212,212,69,69⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step111FrontLog=some s2Step111FrontPlan := by
  have pairEq : s2Step111FrontPair=⟨s2Step111HeadFRow,s2Step111HeadGRow,s2Step111HeadFvRow,s2Step111HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step111FrontHead=⟨s2Step111ExitFRow,s2Step111ExitGRow,s2Step111ExitFvRow,s2Step111ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step111Add0A=s2Step111FrontHead.f.wires := by decide +kernel
  have gEq : s2Step111Add0B=s2Step111FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step111Add1A=s2Step111FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step111Add1B=s2Step111FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step111EntryFBefore s2Step111FrontBank 213 69 ⟨212,212,69,69⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step111FrontLog s2Step111FrontPlan
  · exact s2Step111Front_entry
  · exact s2Step111EntryBank_checked
  · exact s2Step111Front_sigma
  · rfl
  · exact s2Step111Front_branch
  · rfl
  · simpa only [s2Step111FrontPlan,pairEq] using s2Step111HeadBank_checked
  · simpa only [s2Step111FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step111F4_checked
  · exact s2Step111Counter_checked
  · rfl
  · simpa only [s2Step111FrontPlan,headEq] using s2Step111ExitBank_checked

private theorem s2Step111Complete_explicit_checked : compileHmrEarlyStepLog s2Step111EntryFBefore s2Step111FrontBank 213 69 ⟨212,212,69,69⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step111CompleteLog=some s2Step111CompletePlan := by
  let Q := s2Step111EarlyControlPlan
  have hq := s2Step111EarlyControl_plan_checked
  have fv1 : s2Step111CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step111CompleteOut.fv.payload[2]?.getD s2Step111CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step111CompleteOut.fv.payload[3]?.getD s2Step111CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step111CompleteOut.fv.payload[4]?.getD s2Step111CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step111EntryFBefore s2Step111EarlyControlArena s2Step111FrontBank 213 69 ⟨212,212,69,69⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step111CompleteLog s2Step111FrontPlan Q
    s2Step111Front_checked s2Step111Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step111Complete_owned s2Step111Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step111EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 805 s2Step111CompleteOut.fv.second (s2Step111CompleteOut.fv.payload[2]?.getD s2Step111CompleteOut.fv.sign) (s2Step111CompleteOut.fv.payload[3]?.getD s2Step111CompleteOut.fv.sign) (s2Step111CompleteOut.fv.payload[4]?.getD s2Step111CompleteOut.fv.sign) 787 37 s2Step111EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep111Arena : Arena := s2Step111EntryFBefore
def s2PrivateStep111Bank : WindowBank := s2Step111FrontBank
def s2PrivateStep111Spec : HmrSourceWalkStepLog := ⟨213,69,⟨212,212,69,69⟩,37,.early s2Step111CompleteLog⟩
def s2PrivateStep111Plan : HmrSourceStepPlan := .early s2Step111CompletePlan
theorem s2PrivateStep111_source : s2PrivateStep111Spec=s2ObservedLogs96[15] := rfl
theorem s2PrivateStep111_checked : compileHmrSourceStepLog s2PrivateStep111Arena s2PrivateStep111Bank
    s2PrivateStep111Spec.fgWidth s2PrivateStep111Spec.vWidth s2PrivateStep111Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 111 s2PrivateStep111Spec.need none s2PrivateStep111Spec.log=some s2PrivateStep111Plan := by
  change compileHmrSourceStepLog s2Step111EntryFBefore s2Step111FrontBank 213 69 ⟨212,212,69,69⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 111 37 none (.early s2Step111CompleteLog)=some (.early s2Step111CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 111<498)]
  rw [s2Step111Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
