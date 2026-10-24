import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep113
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

private def s2Step115CompleteMoves : List (Wire × Wire) := []

private def s2Step115EarlyControlLog : HmrEarlyControlLog := ⟨[815, 792, 794, 846, 781],[849],[806],[802, 867, 877, 879, 882, 883],[]⟩

private def s2Step115FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [794], [], [820]],[[846], [792], [815], [809]],[[], [], [], []]⟩,[805],[807],[781],[849],[806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[781, 849, 806, 802]⟩

private def s2Step115CompleteLog : HmrEarlyStepLog := ⟨s2Step115FrontLog,s2Step115CompleteMoves,s2Step115EarlyControlLog⟩

private def s2Step115ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step115ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step115ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step115ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820],771⟩

private def s2Step115FrontOut : WindowBank := ⟨s2Step115ExitFOut,s2Step115ExitGOut,s2Step115ExitFvOut,s2Step115ExitGvOut⟩

private def s2Step115CompleteOut : WindowBank := s2Step115FrontOut.repacked s2Step115CompleteMoves

private def s2Step115EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step115EarlyControlPositiveArena,[849],s2Step115EarlyControlEqualityArena,[806],⟨⟨805,false⟩,[⟨⟨849,false⟩,806⟩]⟩⟩

private def s2Step115EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<884)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,815⟩,⟨⟨774,false⟩,792⟩,⟨⟨775,false⟩,794⟩,⟨⟨776,false⟩,846⟩,⟨⟨777,false⟩,781⟩]⟩

private def s2Step115EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step115EarlyControlZeroArena,s2Step115EarlyControlZeroPlan,s2Step115EarlyControlClassPlan,s2Step115EarlyControlFlagArena,s2Step115EarlyControlFittedArena,s2Step115EarlyControlHistoryArena,s2Step115EarlyControlSigmaArena,s2Step115EarlyControlOutputArena,s2Step115EarlyControlLog⟩

private def s2Step115CounterWork : List Wire := [781, 849, 806, 802]

private theorem s2Step115Counter_bounded : s2Step115CounterWork.toFinset⊆arenaWires := by norm_num [s2Step115CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step115HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115CounterDuring : Arena := ⟨s2Step115HeadFvAfter.live∪s2Step115CounterWork.toFinset,Finset.union_subset s2Step115HeadFvAfter.bounded s2Step115Counter_bounded⟩

private def s2Step115EntryFFresh : List Wire := []

private def s2Step115EntryFvFresh : List Wire := []

private def s2Step115EntryGFresh : List Wire := [794]

private def s2Step115EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EntryGvFresh : List Wire := [820]

private def s2Step115ExitFExtra : List Wire := [792]

private def s2Step115ExitGExtra : List Wire := [794, 846]

private def s2Step115ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115ExitGvExtra : List Wire := [815]

private def s2Step115Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115Add0Work : List Wire := [806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step115Add0_bounded : s2Step115Add0Work.toFinset⊆arenaWires := by
  have h : s2Step115Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step115Add0During : Arena := ⟨s2Step115Add0Arena.live∪s2Step115Add0Work.toFinset,Finset.union_subset s2Step115Add0Arena.bounded s2Step115Add0_bounded⟩

private def s2Step115Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115Add1Work : List Wire := [806, 802, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step115Add1_bounded : s2Step115Add1Work.toFinset⊆arenaWires := by
  have h : s2Step115Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step115Add1During : Arena := ⟨s2Step115Add1Arena.live∪s2Step115Add1Work.toFinset,Finset.union_subset s2Step115Add1Arena.bounded s2Step115Add1_bounded⟩

private def s2Step115F4FlagArena : Arena := ⟨s2Step115HeadFvAfter.live∪{781},Finset.union_subset s2Step115HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step115F4Plan : HmrHybridF4Plan := ⟨s2Step115F4FlagArena,[781],s2Step115Add0Arena,[849],s2Step115Add0During,s2Step115Add0Work,s2Step115Add1During,s2Step115Add1Work⟩

private def s2Step115HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 792],768⟩

private def s2Step115HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step115HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794, 846],769⟩

private def s2Step115HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 815],771⟩

private def s2Step115FrontHead : WindowBank := ⟨s2Step115HeadFOut,s2Step115HeadGOut,s2Step115HeadFvOut,s2Step115HeadGvOut⟩

private def s2Step115EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step115EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩

private def s2Step115EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794],769⟩

private def s2Step115EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820],771⟩

private def s2Step115FrontPair : WindowBank := ⟨s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut⟩

private def s2Step115FrontSigmaArena : Arena := ⟨s2Step115EntryGvAfter.live∪{805},Finset.union_subset s2Step115EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step115HeadFFresh : List Wire := [792]

private def s2Step115HeadFvFresh : List Wire := [809]

private def s2Step115HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115HeadGFresh : List Wire := [846]

private def s2Step115HeadGvFresh : List Wire := [815]

private def s2Step115FrontPlan : HmrSourceFront := ⟨s2Step115EntryGvAfter,s2Step115FrontPair,(growRow 768 s2Step115EntryFFresh ++ (growRow 769 s2Step115EntryGFresh ++ (growRow 770 s2Step115EntryFvFresh ++ (growRow 771 s2Step115EntryGvFresh ++ [])))),s2Step115FrontSigmaArena,[805],s2Step115HeadGBefore,[807],
  s2Step115HeadFvAfter,s2Step115FrontHead,(growRow 769 s2Step115HeadGFresh ++ (growRow 768 s2Step115HeadFFresh ++ (growRow 771 s2Step115HeadGvFresh ++ (growRow 770 s2Step115HeadFvFresh ++ [])))),s2Step115F4Plan,s2Step115CounterDuring,s2Step115CounterWork,s2Step115ExitGvAfter,s2Step115FrontOut,(shrinkRow 769 s2Step115ExitGExtra ++ (shrinkRow 768 s2Step115ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step115ExitGvExtra ++ []))))⟩

private def s2Step115CompletePlan : HmrEarlyStepPlan := ⟨s2Step115FrontPlan,s2Step115EarlyControlArena,s2Step115EarlyControlPlan,s2Step115CompleteMoves⟩

private theorem s2Step115Complete_apart : List.Disjoint (s2Step115CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [805, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step115CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[805, 807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step115Complete_owned : (s2Step115CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115Complete_repack : s2Step115ExitGvAfter.checkRepack s2Step115CompleteMoves=some s2Step115EarlyControlArena := by rfl

private theorem s2Step115EarlyControl_branchOwned : ([807] : List Wire).toFinset⊆s2Step115EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_branch : compileHmrBranchRetirement s2Step115EarlyControlSigmaArena 807=some s2Step115EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step115EarlyControl_branchOwned
  · ext q
    simp [s2Step115EarlyControlOutputArena,s2Step115EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step115EarlyControl_classEqualityBorrow : s2Step115EarlyControlPositiveArena.checkBorrow (([805, 849] : List Wire).length-1) s2Step115EarlyControlLog.classWork=some s2Step115EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step115EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step115EarlyControlEqualityArena,s2Step115EarlyControlPositiveArena,s2Step115EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step115EarlyControl_classEqualityOwned : ([805, 849] : List Wire).toFinset⊆s2Step115EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlPositiveArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_classEquality : compileHmrEqualityLog s2Step115EarlyControlPositiveArena [805, 849] 0 s2Step115EarlyControlLog.classWork=some (s2Step115EarlyControlEqualityArena,s2Step115EarlyControlLog.classWork,s2Step115EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step115EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step115EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step115EarlyControl_classOwned : ([777, 781, 805] : List Wire).toFinset⊆s2Step115EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_positiveBorrow : s2Step115EarlyControlZeroArena.checkBorrow (1) s2Step115EarlyControlLog.positiveWork=some s2Step115EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step115EarlyControlZeroArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step115EarlyControlPositiveArena,s2Step115EarlyControlZeroArena,s2Step115EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step115EarlyControl_class : compileHmrSourceClassLog s2Step115EarlyControlZeroArena false 777 s2Step115EarlyControlZeroPlan.top 0 805 s2Step115EarlyControlLog.positiveWork s2Step115EarlyControlLog.classWork=some s2Step115EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step115EarlyControlClassPlan s2Step115EarlyControlZeroArena false 777 s2Step115EarlyControlZeroPlan.top 0 805
  constructor
  · decide +kernel
  · exact s2Step115EarlyControl_classOwned
  · exact s2Step115EarlyControl_positiveBorrow
  · exact s2Step115EarlyControl_classEquality

private theorem s2Step115EarlyControl_entryRecordOwned : ([807, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_entrySigmaOwned : ([805, 254] : List Wire).toFinset⊆s2Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_fitBorrow : s2Step115EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step115EarlyControlLog.recordFresh=some s2Step115EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step115EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
      decide +kernel
    · ext q
      simp [s2Step115EarlyControlFittedArena,s2Step115EarlyControlFlagArena,s2Step115EarlyControlLog,arenaWires]

private theorem s2Step115EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step115EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlFlagArena (fun q => (0≤q ∧ q<884)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_fit : compileHmrRecordGrowLog s2Step115EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step115EarlyControlLog.recordFresh=some s2Step115EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step115EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step115EarlyControl_fitBorrow

private theorem s2Step115EarlyControl_flagsBorrow : s2Step115EarlyControlEqualityArena.checkBorrow (6) s2Step115EarlyControlLog.flagWork=some s2Step115EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step115EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step115EarlyControlFlagArena,s2Step115EarlyControlEqualityArena,s2Step115EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step115EarlyControl_flagsOwned : ([806, 253, 252, 251] : List Wire).toFinset⊆s2Step115EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlEqualityArena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_flags : compileHmrFlagsLog s2Step115EarlyControlClassPlan.equalityArena s2Step115EarlyControlClassPlan.equality.top 253 252 251 s2Step115EarlyControlLog.flagWork=some s2Step115EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step115EarlyControl_flagsOwned⟩
  · exact s2Step115EarlyControl_flagsBorrow

private theorem s2Step115EarlyControl_historyBorrow : s2Step115EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step115EarlyControlLog.recordFresh=some s2Step115EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step115EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step115EarlyControlHistoryArena,s2Step115EarlyControlArena,s2Step115EarlyControlLog,arenaWires]

private theorem s2Step115EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_history : compileHmrRecordGrowLog s2Step115EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step115EarlyControlLog.recordFresh=some s2Step115EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step115EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step115EarlyControl_historyBorrow

private theorem s2Step115EarlyControl_sigmaOwned : ([254, 805] : List Wire).toFinset⊆s2Step115EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_sigmaReleaseOwned : ([805] : List Wire).toFinset⊆s2Step115EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_sigmaRelease : s2Step115EarlyControlHistoryArena.release {805} (fun _ => false)=some s2Step115EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step115EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step115EarlyControlSigmaArena,s2Step115EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step115EarlyControl_sigma : compileHmrSigmaDropLog s2Step115EarlyControlHistoryArena false 0 0 254 805 []=some s2Step115EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step115EarlyControl_sigmaOwned⟩
  · exact s2Step115EarlyControl_sigmaRelease

private theorem s2Step115EarlyControl_zeroBorrow : s2Step115EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step115EarlyControlLog.zeroWork=some s2Step115EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step115EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step115EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step115EarlyControlZeroArena,s2Step115EarlyControlArena,s2Step115EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step115EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step115EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step115EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EarlyControl_zero : compileHmrEqualityLog s2Step115EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step115EarlyControlLog.zeroWork=some (s2Step115EarlyControlZeroArena,s2Step115EarlyControlLog.zeroWork,s2Step115EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step115EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step115EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step115EarlyControl_logged : s2Step115EarlyControlPlan.Logged s2Step115EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 805 254 253 252 251 807 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step115EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step115EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step115EarlyControl_zero
  · exact s2Step115EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step115EarlyControl_flags
  · exact s2Step115EarlyControl_fit
  · exact s2Step115EarlyControl_history
  · exact s2Step115EarlyControl_sigma
  · exact s2Step115EarlyControl_branch

private theorem s2Step115EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step115EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 805 254 253 252 251 807 37 s2Step115EarlyControlLog=some s2Step115EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step115EarlyControlPlan s2Step115EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 805 254 253 252 251 807 37 s2Step115EarlyControl_logged

private def s2Step115EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step115EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩

private def s2Step115EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210],769⟩

private def s2Step115EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787],771⟩

private def s2Step115FrontBank : WindowBank := ⟨s2Step115EntryFRow,s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow⟩

private def s2Step115Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 792, 768]

private def s2Step115Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794, 846, 769]

private def s2Step115Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 770]

private def s2Step115Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 815, 771]

private theorem s2Step115Counter_apart : Disjoint s2Step115HeadFvAfter.live s2Step115CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step115HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115Counter_borrowed : s2Step115HeadFvAfter.checkBorrow 4 s2Step115CounterWork=some s2Step115CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step115HeadFvAfter s2Step115CounterDuring s2Step115CounterWork.toFinset s2Step115Counter_bounded s2Step115Counter_apart rfl

private theorem s2Step115Counter_owned : (805::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step115HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step115HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115Counter_checked : compileHmrCounterStepLog s2Step115HeadFvAfter true 805 [772, 773, 774, 775, 776, 777] s2Step115CounterWork=some s2Step115CounterDuring := by
  have owned : ∀q∈805::[772, 773, 774, 775, 776, 777],q∈s2Step115HeadFvAfter.live := fun q hq => s2Step115Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step115Counter_borrowed

private def s2Step115EntryFAfter : Arena := s2Step115EntryFBefore

private theorem s2Step115EntryBank_incomingDistinct : ([s2Step115EntryFRow,s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115EntryF_Incoming : rowsOwned s2Step115EntryFBefore [s2Step115EntryFRow,s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115EntryFRow,s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow] 0 s2Step115EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115EntryBank_outgoingOwned : rowsOwned s2Step115EntryGvAfter [s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step115EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115EntryF_Outgoing : rowsOwned s2Step115EntryGvAfter [s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut] :=
  hmrRows_owned_drop s2Step115EntryGvAfter [s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut] 0 s2Step115EntryBank_outgoingOwned

private theorem s2Step115EntryF_distinct : (s2Step115EntryFRow.sign::s2Step115EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115EntryF_owned : (s2Step115EntryFRow.sign::s2Step115EntryFRow.payload).toFinset⊆s2Step115EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EntryF_reserved : s2Step115EntryFBefore.reserve s2Step115EntryFFresh.toFinset=some s2Step115EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step115EntryFFresh,arenaWires]
  · norm_num [s2Step115EntryFBefore,s2Step115EntryFFresh,arenaWires]
  · simp only [s2Step115EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step115EntryF_checked : planRowResizeLog s2Step115EntryFBefore s2Step115EntryFRow 212 s2Step115EntryFFresh=
    some (s2Step115EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩,growRow 768 s2Step115EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step115EntryFBefore s2Step115EntryFAfter s2Step115EntryFRow 212 s2Step115EntryFFresh
    s2Step115EntryF_distinct s2Step115EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115EntryF_reserved
  have rowEq : WindowRow.mk (s2Step115EntryFRow.payload++s2Step115EntryFFresh) s2Step115EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step115EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115EntryFvAfter : Arena := s2Step115EntryGAfter

private def s2Step115EntryFvBefore : Arena := s2Step115EntryGAfter

private theorem s2Step115EntryFv_Incoming : rowsOwned s2Step115EntryFvBefore [s2Step115EntryFvRow,s2Step115EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115EntryFRow,s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow] 2 s2Step115EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115EntryFv_Outgoing : rowsOwned s2Step115EntryGvAfter [s2Step115EntryFvOut,s2Step115EntryGvOut] :=
  hmrRows_owned_drop s2Step115EntryGvAfter [s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut] 2 s2Step115EntryBank_outgoingOwned

private theorem s2Step115EntryFv_distinct : (s2Step115EntryFvRow.sign::s2Step115EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115EntryFv_owned : (s2Step115EntryFvRow.sign::s2Step115EntryFvRow.payload).toFinset⊆s2Step115EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EntryFv_reserved : s2Step115EntryFvBefore.reserve s2Step115EntryFvFresh.toFinset=some s2Step115EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step115EntryFvFresh,arenaWires]
  · norm_num [s2Step115EntryFvBefore,s2Step115EntryGAfter,s2Step115EntryFvFresh,arenaWires]
  · simp only [s2Step115EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step115EntryFv_checked : planRowResizeLog s2Step115EntryFvBefore s2Step115EntryFvRow 71 s2Step115EntryFvFresh=
    some (s2Step115EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩,growRow 770 s2Step115EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step115EntryFvBefore s2Step115EntryFvAfter s2Step115EntryFvRow 71 s2Step115EntryFvFresh
    s2Step115EntryFv_distinct s2Step115EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step115EntryFvRow.payload++s2Step115EntryFvFresh) s2Step115EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step115EntryGBefore : Arena := s2Step115EntryFBefore

private theorem s2Step115EntryG_Incoming : rowsOwned s2Step115EntryGBefore [s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115EntryFRow,s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow] 1 s2Step115EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115EntryG_Outgoing : rowsOwned s2Step115EntryGvAfter [s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut] :=
  hmrRows_owned_drop s2Step115EntryGvAfter [s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut] 1 s2Step115EntryBank_outgoingOwned

private theorem s2Step115EntryG_distinct : (s2Step115EntryGRow.sign::s2Step115EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115EntryG_owned : (s2Step115EntryGRow.sign::s2Step115EntryGRow.payload).toFinset⊆s2Step115EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EntryG_reserved : s2Step115EntryGBefore.reserve s2Step115EntryGFresh.toFinset=some s2Step115EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step115EntryGFresh,arenaWires]
  · norm_num [s2Step115EntryGBefore,s2Step115EntryFBefore,s2Step115EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step115EntryGAfter,s2Step115EntryGBefore,s2Step115EntryFBefore,s2Step115EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step115EntryG_checked : planRowResizeLog s2Step115EntryGBefore s2Step115EntryGRow 212 s2Step115EntryGFresh=
    some (s2Step115EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794],769⟩,growRow 769 s2Step115EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step115EntryGBefore s2Step115EntryGAfter s2Step115EntryGRow 212 s2Step115EntryGFresh
    s2Step115EntryG_distinct s2Step115EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115EntryG_reserved
  have rowEq : WindowRow.mk (s2Step115EntryGRow.payload++s2Step115EntryGFresh) s2Step115EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step115EntryGvBefore : Arena := s2Step115EntryGAfter

private theorem s2Step115EntryGv_Incoming : rowsOwned s2Step115EntryGvBefore [s2Step115EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115EntryFRow,s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow] 3 s2Step115EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115EntryGv_Outgoing : rowsOwned s2Step115EntryGvAfter [s2Step115EntryGvOut] :=
  hmrRows_owned_drop s2Step115EntryGvAfter [s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut] 3 s2Step115EntryBank_outgoingOwned

private theorem s2Step115EntryGv_distinct : (s2Step115EntryGvRow.sign::s2Step115EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115EntryGv_owned : (s2Step115EntryGvRow.sign::s2Step115EntryGvRow.payload).toFinset⊆s2Step115EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115EntryGv_reserved : s2Step115EntryGvBefore.reserve s2Step115EntryGvFresh.toFinset=some s2Step115EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step115EntryGvFresh,arenaWires]
  · norm_num [s2Step115EntryGvBefore,s2Step115EntryGAfter,s2Step115EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step115EntryGvAfter,s2Step115EntryGvBefore,s2Step115EntryGAfter,s2Step115EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step115EntryGv_checked : planRowResizeLog s2Step115EntryGvBefore s2Step115EntryGvRow 71 s2Step115EntryGvFresh=
    some (s2Step115EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820],771⟩,growRow 771 s2Step115EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step115EntryGvBefore s2Step115EntryGvAfter s2Step115EntryGvRow 71 s2Step115EntryGvFresh
    s2Step115EntryGv_distinct s2Step115EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step115EntryGvRow.payload++s2Step115EntryGvFresh) s2Step115EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step115EntryBank_rows : planWindowRowsLog s2Step115EntryFBefore [(s2Step115EntryFRow,212),(s2Step115EntryGRow,212),(s2Step115EntryFvRow,71),(s2Step115EntryGvRow,71)] [s2Step115EntryFFresh,s2Step115EntryGFresh,s2Step115EntryFvFresh,s2Step115EntryGvFresh]=
    some (s2Step115EntryGvAfter,[s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut],(growRow 768 s2Step115EntryFFresh ++ (growRow 769 s2Step115EntryGFresh ++ (growRow 770 s2Step115EntryFvFresh ++ (growRow 771 s2Step115EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step115EntryGvAfter [] []=some (s2Step115EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step115EntryGvBefore s2Step115EntryGvAfter s2Step115EntryGvAfter
    s2Step115EntryGvRow s2Step115EntryGvOut 71 s2Step115EntryGvFresh [] [] []
    (growRow 771 s2Step115EntryGvFresh) ([]) s2Step115EntryGv_Incoming s2Step115EntryGv_checked h4 s2Step115EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step115EntryFvBefore s2Step115EntryFvAfter s2Step115EntryGvAfter
    s2Step115EntryFvRow s2Step115EntryFvOut 71 s2Step115EntryFvFresh [(s2Step115EntryGvRow,71)] [s2Step115EntryGvFresh] [s2Step115EntryGvOut]
    (growRow 770 s2Step115EntryFvFresh) ((growRow 771 s2Step115EntryGvFresh ++ [])) s2Step115EntryFv_Incoming s2Step115EntryFv_checked h3 s2Step115EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step115EntryGBefore s2Step115EntryGAfter s2Step115EntryGvAfter
    s2Step115EntryGRow s2Step115EntryGOut 212 s2Step115EntryGFresh [(s2Step115EntryFvRow,71),(s2Step115EntryGvRow,71)] [s2Step115EntryFvFresh,s2Step115EntryGvFresh] [s2Step115EntryFvOut,s2Step115EntryGvOut]
    (growRow 769 s2Step115EntryGFresh) ((growRow 770 s2Step115EntryFvFresh ++ (growRow 771 s2Step115EntryGvFresh ++ []))) s2Step115EntryG_Incoming s2Step115EntryG_checked h2 s2Step115EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step115EntryFBefore s2Step115EntryFAfter s2Step115EntryGvAfter
    s2Step115EntryFRow s2Step115EntryFOut 212 s2Step115EntryFFresh [(s2Step115EntryGRow,212),(s2Step115EntryFvRow,71),(s2Step115EntryGvRow,71)] [s2Step115EntryGFresh,s2Step115EntryFvFresh,s2Step115EntryGvFresh] [s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut]
    (growRow 768 s2Step115EntryFFresh) ((growRow 769 s2Step115EntryGFresh ++ (growRow 770 s2Step115EntryFvFresh ++ (growRow 771 s2Step115EntryGvFresh ++ [])))) s2Step115EntryF_Incoming s2Step115EntryF_checked h1 s2Step115EntryF_Outgoing
  exact h0

private theorem s2Step115EntryBank_checked : compileHmrBankResizeLog .entry s2Step115EntryFBefore ⟨s2Step115EntryFRow,s2Step115EntryGRow,s2Step115EntryFvRow,s2Step115EntryGvRow⟩ ⟨212,212,71,71⟩ [s2Step115EntryFFresh,s2Step115EntryGFresh,s2Step115EntryFvFresh,s2Step115EntryGvFresh]=
    some (s2Step115EntryGvAfter,⟨s2Step115EntryFOut,s2Step115EntryGOut,s2Step115EntryFvOut,s2Step115EntryGvOut⟩,(growRow 768 s2Step115EntryFFresh ++ (growRow 769 s2Step115EntryGFresh ++ (growRow 770 s2Step115EntryFvFresh ++ (growRow 771 s2Step115EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step115EntryBank_rows]
  rfl

private def s2Step115ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115ExitFBefore : Arena := s2Step115ExitGAfter

private def s2Step115ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 792],768⟩

private def s2Step115ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩

private def s2Step115ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794, 846],769⟩

private def s2Step115ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 815],771⟩

private theorem s2Step115ExitBank_incomingDistinct : ([s2Step115ExitGRow,s2Step115ExitFRow,s2Step115ExitFvRow,s2Step115ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115ExitF_Incoming : rowsOwned s2Step115ExitFBefore [s2Step115ExitFRow,s2Step115ExitFvRow,s2Step115ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115ExitGRow,s2Step115ExitFRow,s2Step115ExitFvRow,s2Step115ExitGvRow] 1 s2Step115ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115ExitBank_outgoingOwned : rowsOwned s2Step115ExitGvAfter [s2Step115ExitGOut,s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step115ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115ExitF_Outgoing : rowsOwned s2Step115ExitGvAfter [s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut] :=
  hmrRows_owned_drop s2Step115ExitGvAfter [s2Step115ExitGOut,s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut] 1 s2Step115ExitBank_outgoingOwned

private theorem s2Step115ExitF_distinct : (s2Step115ExitFRow.sign::s2Step115ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115ExitF_owned : (s2Step115ExitFRow.sign::s2Step115ExitFRow.payload).toFinset⊆s2Step115ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115ExitF_retired : s2Step115ExitFBefore.retireSet s2Step115ExitFExtra.toFinset=s2Step115ExitFAfter := by
  unfold Arena.retireSet s2Step115ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step115ExitFBefore,s2Step115ExitGAfter,s2Step115ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step115ExitF_checked : planRowResizeLog s2Step115ExitFBefore s2Step115ExitFRow 212 []=
    some (s2Step115ExitFAfter,s2Step115ExitFOut,shrinkRow 768 s2Step115ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step115ExitFBefore s2Step115ExitFRow 212 s2Step115ExitF_distinct s2Step115ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step115ExitFRow.payload.take 212) s2Step115ExitFRow.sign=s2Step115ExitFOut := by decide +kernel
  have hi : s2Step115ExitFRow.payload.drop 212=s2Step115ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step115ExitF_retired] at result
  exact result

private def s2Step115ExitFvAfter : Arena := s2Step115ExitFAfter

private def s2Step115ExitFvBefore : Arena := s2Step115ExitFAfter

private theorem s2Step115ExitFv_Incoming : rowsOwned s2Step115ExitFvBefore [s2Step115ExitFvRow,s2Step115ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115ExitGRow,s2Step115ExitFRow,s2Step115ExitFvRow,s2Step115ExitGvRow] 2 s2Step115ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115ExitFv_Outgoing : rowsOwned s2Step115ExitGvAfter [s2Step115ExitFvOut,s2Step115ExitGvOut] :=
  hmrRows_owned_drop s2Step115ExitGvAfter [s2Step115ExitGOut,s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut] 2 s2Step115ExitBank_outgoingOwned

private theorem s2Step115ExitFv_distinct : (s2Step115ExitFvRow.sign::s2Step115ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115ExitFv_owned : (s2Step115ExitFvRow.sign::s2Step115ExitFvRow.payload).toFinset⊆s2Step115ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115ExitFv_reserved : s2Step115ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step115ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step115ExitFv_checked : planRowResizeLog s2Step115ExitFvBefore s2Step115ExitFvRow 72 []=
    some (s2Step115ExitFvAfter,s2Step115ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step115ExitFvBefore s2Step115ExitFvAfter s2Step115ExitFvRow 72 []
    s2Step115ExitFv_distinct s2Step115ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step115ExitFvRow.payload++[]) s2Step115ExitFvRow.sign=s2Step115ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step115ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step115ExitG_Incoming : rowsOwned s2Step115ExitGBefore [s2Step115ExitGRow,s2Step115ExitFRow,s2Step115ExitFvRow,s2Step115ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115ExitGRow,s2Step115ExitFRow,s2Step115ExitFvRow,s2Step115ExitGvRow] 0 s2Step115ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115ExitG_Outgoing : rowsOwned s2Step115ExitGvAfter [s2Step115ExitGOut,s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut] :=
  hmrRows_owned_drop s2Step115ExitGvAfter [s2Step115ExitGOut,s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut] 0 s2Step115ExitBank_outgoingOwned

private theorem s2Step115ExitG_distinct : (s2Step115ExitGRow.sign::s2Step115ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115ExitG_owned : (s2Step115ExitGRow.sign::s2Step115ExitGRow.payload).toFinset⊆s2Step115ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115ExitG_retired : s2Step115ExitGBefore.retireSet s2Step115ExitGExtra.toFinset=s2Step115ExitGAfter := by
  unfold Arena.retireSet s2Step115ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step115ExitGBefore,s2Step115ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step115ExitG_checked : planRowResizeLog s2Step115ExitGBefore s2Step115ExitGRow 211 []=
    some (s2Step115ExitGAfter,s2Step115ExitGOut,shrinkRow 769 s2Step115ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step115ExitGBefore s2Step115ExitGRow 211 s2Step115ExitG_distinct s2Step115ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step115ExitGRow.payload.take 211) s2Step115ExitGRow.sign=s2Step115ExitGOut := by decide +kernel
  have hi : s2Step115ExitGRow.payload.drop 211=s2Step115ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step115ExitG_retired] at result
  exact result

private def s2Step115ExitGvBefore : Arena := s2Step115ExitFAfter

private theorem s2Step115ExitGv_Incoming : rowsOwned s2Step115ExitGvBefore [s2Step115ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115ExitGRow,s2Step115ExitFRow,s2Step115ExitFvRow,s2Step115ExitGvRow] 3 s2Step115ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115ExitGv_Outgoing : rowsOwned s2Step115ExitGvAfter [s2Step115ExitGvOut] :=
  hmrRows_owned_drop s2Step115ExitGvAfter [s2Step115ExitGOut,s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut] 3 s2Step115ExitBank_outgoingOwned

private theorem s2Step115ExitGv_distinct : (s2Step115ExitGvRow.sign::s2Step115ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115ExitGv_owned : (s2Step115ExitGvRow.sign::s2Step115ExitGvRow.payload).toFinset⊆s2Step115ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115ExitGv_retired : s2Step115ExitGvBefore.retireSet s2Step115ExitGvExtra.toFinset=s2Step115ExitGvAfter := by
  unfold Arena.retireSet s2Step115ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step115ExitGvBefore,s2Step115ExitFAfter,s2Step115ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step115ExitGv_checked : planRowResizeLog s2Step115ExitGvBefore s2Step115ExitGvRow 71 []=
    some (s2Step115ExitGvAfter,s2Step115ExitGvOut,shrinkRow 771 s2Step115ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step115ExitGvBefore s2Step115ExitGvRow 71 s2Step115ExitGv_distinct s2Step115ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step115ExitGvRow.payload.take 71) s2Step115ExitGvRow.sign=s2Step115ExitGvOut := by decide +kernel
  have hi : s2Step115ExitGvRow.payload.drop 71=s2Step115ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step115ExitGv_retired] at result
  exact result

private theorem s2Step115ExitBank_rows : planWindowRowsLog s2Step115ExitGBefore [(s2Step115ExitGRow,211),(s2Step115ExitFRow,212),(s2Step115ExitFvRow,72),(s2Step115ExitGvRow,71)] [[],[],[],[]]=
    some (s2Step115ExitGvAfter,[s2Step115ExitGOut,s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut],(shrinkRow 769 s2Step115ExitGExtra ++ (shrinkRow 768 s2Step115ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step115ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step115ExitGvAfter [] []=some (s2Step115ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step115ExitGvBefore s2Step115ExitGvAfter s2Step115ExitGvAfter
    s2Step115ExitGvRow s2Step115ExitGvOut 71 [] [] [] []
    (shrinkRow 771 s2Step115ExitGvExtra) ([]) s2Step115ExitGv_Incoming s2Step115ExitGv_checked h4 s2Step115ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step115ExitFvBefore s2Step115ExitFvAfter s2Step115ExitGvAfter
    s2Step115ExitFvRow s2Step115ExitFvOut 72 [] [(s2Step115ExitGvRow,71)] [[]] [s2Step115ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step115ExitGvExtra ++ [])) s2Step115ExitFv_Incoming s2Step115ExitFv_checked h3 s2Step115ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step115ExitFBefore s2Step115ExitFAfter s2Step115ExitGvAfter
    s2Step115ExitFRow s2Step115ExitFOut 212 [] [(s2Step115ExitFvRow,72),(s2Step115ExitGvRow,71)] [[],[]] [s2Step115ExitFvOut,s2Step115ExitGvOut]
    (shrinkRow 768 s2Step115ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step115ExitGvExtra ++ []))) s2Step115ExitF_Incoming s2Step115ExitF_checked h2 s2Step115ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step115ExitGBefore s2Step115ExitGAfter s2Step115ExitGvAfter
    s2Step115ExitGRow s2Step115ExitGOut 211 [] [(s2Step115ExitFRow,212),(s2Step115ExitFvRow,72),(s2Step115ExitGvRow,71)] [[],[],[]] [s2Step115ExitFOut,s2Step115ExitFvOut,s2Step115ExitGvOut]
    (shrinkRow 769 s2Step115ExitGExtra) ((shrinkRow 768 s2Step115ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step115ExitGvExtra ++ [])))) s2Step115ExitG_Incoming s2Step115ExitG_checked h1 s2Step115ExitG_Outgoing
  exact h0

private theorem s2Step115ExitBank_checked : compileHmrBankResizeLog .exit s2Step115ExitGBefore ⟨s2Step115ExitFRow,s2Step115ExitGRow,s2Step115ExitFvRow,s2Step115ExitGvRow⟩ ⟨212,211,72,71⟩ [[],[],[],[]]=
    some (s2Step115ExitGvAfter,⟨s2Step115ExitFOut,s2Step115ExitGOut,s2Step115ExitFvOut,s2Step115ExitGvOut⟩,(shrinkRow 769 s2Step115ExitGExtra ++ (shrinkRow 768 s2Step115ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step115ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step115ExitBank_rows]
  rfl

private theorem s2Step115Add0_apart : Disjoint s2Step115Add0Arena.live s2Step115Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step115Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115Add0_card : s2Step115Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step115Add0_borrowed : s2Step115Add0Arena.checkBorrow (hmrHybridCount s2Step115Add0Arena s2Step115Add0B.length) s2Step115Add0Work=some s2Step115Add0During := by
  have len : s2Step115Add0Work.length=hmrHybridCount s2Step115Add0Arena s2Step115Add0B.length := by
    rw [hmrHybridCount,s2Step115Add0_card]
    decide +kernel
  have nd : s2Step115Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step115Add0Arena s2Step115Add0During s2Step115Add0Work.toFinset s2Step115Add0_bounded s2Step115Add0_apart rfl

private theorem s2Step115Add0_distinct : (781::807::849::(s2Step115Add0A++s2Step115Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115Add0_owned : (781::807::849::(s2Step115Add0A++s2Step115Add0B)).toFinset⊆s2Step115Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step115Add0Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115Add0_checked : compileHmrHybridCinLog s2Step115Add0Arena 807 781 849 s2Step115Add0A s2Step115Add0B s2Step115Add0Work=some s2Step115Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step115Add0Arena s2Step115Add0During 807 781 849 s2Step115Add0A s2Step115Add0B s2Step115Add0Work
    (by decide +kernel) (by decide +kernel) s2Step115Add0_distinct
    (fun q hq => s2Step115Add0_owned (List.mem_toFinset.mpr hq)) s2Step115Add0_borrowed

private theorem s2Step115Add1_apart : Disjoint s2Step115Add1Arena.live s2Step115Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step115Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115Add1_card : s2Step115Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step115Add1_borrowed : s2Step115Add1Arena.checkBorrow (hmrHybridCount s2Step115Add1Arena s2Step115Add1B.length) s2Step115Add1Work=some s2Step115Add1During := by
  have len : s2Step115Add1Work.length=hmrHybridCount s2Step115Add1Arena s2Step115Add1B.length := by
    rw [hmrHybridCount,s2Step115Add1_card]
    decide +kernel
  have nd : s2Step115Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step115Add1Arena s2Step115Add1During s2Step115Add1Work.toFinset s2Step115Add1_bounded s2Step115Add1_apart rfl

private theorem s2Step115Add1_distinct : (781::807::849::(s2Step115Add1A++s2Step115Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115Add1_owned : (781::807::849::(s2Step115Add1A++s2Step115Add1B)).toFinset⊆s2Step115Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step115Add1Arena (fun q => (0≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115Add1_checked : compileHmrHybridCinLog s2Step115Add1Arena 807 781 849 s2Step115Add1A s2Step115Add1B s2Step115Add1Work=some s2Step115Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step115Add1Arena s2Step115Add1During 807 781 849 s2Step115Add1A s2Step115Add1B s2Step115Add1Work
    (by decide +kernel) (by decide +kernel) s2Step115Add1_distinct
    (fun q hq => s2Step115Add1_owned (List.mem_toFinset.mpr hq)) s2Step115Add1_borrowed

private theorem s2Step115F4_apart : Disjoint (s2Step115Add0A++s2Step115Add0B).toFinset (s2Step115Add1A++s2Step115Add1B).toFinset := by
  have nd : ((s2Step115Add0A++s2Step115Add0B)++(s2Step115Add1A++s2Step115Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step115F4_carry : s2Step115F4FlagArena.checkBorrow 1 [849]=some s2Step115Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step115F4FlagArena,s2Step115HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step115F4FlagArena,s2Step115HeadFvAfter,s2Step115Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step115F4_distinct : (805::807::781::849::((s2Step115Add0A++s2Step115Add1A)++(s2Step115Add0B++s2Step115Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115F4_flag : s2Step115HeadFvAfter.checkBorrow 1 [781]=some s2Step115F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step115HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step115F4_owned : (805::807::((s2Step115Add0A++s2Step115Add1A)++(s2Step115Add0B++s2Step115Add1B))).toFinset⊆s2Step115HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step115HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115F4_checked : compileHmrHybridF4Log s2Step115HeadFvAfter 805 807 s2Step115Add0A s2Step115Add0B s2Step115Add1A s2Step115Add1B [781] [849] s2Step115Add0Work s2Step115Add1Work=some s2Step115F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step115HeadFvAfter s2Step115F4FlagArena s2Step115Add0Arena s2Step115Add0During s2Step115Add1During 805 807
    s2Step115Add0A s2Step115Add0B s2Step115Add1A s2Step115Add1B [781] [849] s2Step115Add0Work s2Step115Add1Work
    (fun q hq => s2Step115F4_owned (List.mem_toFinset.mpr hq)) s2Step115F4_flag s2Step115F4_carry
    s2Step115F4_distinct s2Step115F4_apart s2Step115Add0_checked s2Step115Add1_checked

private theorem s2Step115Front_branch : s2Step115FrontSigmaArena.checkBorrow 1 [807]=some s2Step115HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step115FrontSigmaArena,s2Step115EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step115FrontSigmaArena,s2Step115EntryGvAfter,s2Step115HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step115Front_entry : HmrFrontEntryValid s2Step115EntryFBefore s2Step115FrontBank 212 71 ⟨212,211,72,71⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step115FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step115EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step115EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<794) ∨ (795≤q ∧ q<802) ∨ (803≤q ∧ q<805) ∨ (808≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<820) ∨ (821≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step115FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step115Front_sigma : s2Step115EntryGvAfter.checkBorrow 1 [805]=some s2Step115FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step115EntryGvAfter,arenaWires]
  · rfl

private def s2Step115HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115HeadFBefore : Arena := s2Step115HeadGAfter

private def s2Step115HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723],768⟩

private def s2Step115HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812],770⟩

private def s2Step115HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794],769⟩

private def s2Step115HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820],771⟩

private theorem s2Step115HeadBank_incomingDistinct : ([s2Step115HeadGRow,s2Step115HeadFRow,s2Step115HeadGvRow,s2Step115HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115HeadF_Incoming : rowsOwned s2Step115HeadFBefore [s2Step115HeadFRow,s2Step115HeadGvRow,s2Step115HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115HeadGRow,s2Step115HeadFRow,s2Step115HeadGvRow,s2Step115HeadFvRow] 1 s2Step115HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115HeadBank_outgoingOwned : rowsOwned s2Step115HeadFvAfter [s2Step115HeadGOut,s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step115HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115HeadF_Outgoing : rowsOwned s2Step115HeadFvAfter [s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut] :=
  hmrRows_owned_drop s2Step115HeadFvAfter [s2Step115HeadGOut,s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut] 1 s2Step115HeadBank_outgoingOwned

private theorem s2Step115HeadF_distinct : (s2Step115HeadFRow.sign::s2Step115HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115HeadF_owned : (s2Step115HeadFRow.sign::s2Step115HeadFRow.payload).toFinset⊆s2Step115HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115HeadF_reserved : s2Step115HeadFBefore.reserve s2Step115HeadFFresh.toFinset=some s2Step115HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step115HeadFFresh,arenaWires]
  · norm_num [s2Step115HeadFBefore,s2Step115HeadGAfter,s2Step115HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step115HeadFAfter,s2Step115HeadFBefore,s2Step115HeadGAfter,s2Step115HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step115HeadF_checked : planRowResizeLog s2Step115HeadFBefore s2Step115HeadFRow 213 s2Step115HeadFFresh=
    some (s2Step115HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 792],768⟩,growRow 768 s2Step115HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step115HeadFBefore s2Step115HeadFAfter s2Step115HeadFRow 213 s2Step115HeadFFresh
    s2Step115HeadF_distinct s2Step115HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115HeadF_reserved
  have rowEq : WindowRow.mk (s2Step115HeadFRow.payload++s2Step115HeadFFresh) s2Step115HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 718, 719, 720, 721, 722, 723, 792],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step115HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step115HeadFvBefore : Arena := s2Step115HeadGvAfter

private theorem s2Step115HeadFv_Incoming : rowsOwned s2Step115HeadFvBefore [s2Step115HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115HeadGRow,s2Step115HeadFRow,s2Step115HeadGvRow,s2Step115HeadFvRow] 3 s2Step115HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115HeadFv_Outgoing : rowsOwned s2Step115HeadFvAfter [s2Step115HeadFvOut] :=
  hmrRows_owned_drop s2Step115HeadFvAfter [s2Step115HeadGOut,s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut] 3 s2Step115HeadBank_outgoingOwned

private theorem s2Step115HeadFv_distinct : (s2Step115HeadFvRow.sign::s2Step115HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115HeadFv_owned : (s2Step115HeadFvRow.sign::s2Step115HeadFvRow.payload).toFinset⊆s2Step115HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115HeadFv_reserved : s2Step115HeadFvBefore.reserve s2Step115HeadFvFresh.toFinset=some s2Step115HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step115HeadFvFresh,arenaWires]
  · norm_num [s2Step115HeadFvBefore,s2Step115HeadGvAfter,s2Step115HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step115HeadFvAfter,s2Step115HeadFvBefore,s2Step115HeadGvAfter,s2Step115HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step115HeadFv_checked : planRowResizeLog s2Step115HeadFvBefore s2Step115HeadFvRow 72 s2Step115HeadFvFresh=
    some (s2Step115HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩,growRow 770 s2Step115HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step115HeadFvBefore s2Step115HeadFvAfter s2Step115HeadFvRow 72 s2Step115HeadFvFresh
    s2Step115HeadFv_distinct s2Step115HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step115HeadFvRow.payload++s2Step115HeadFvFresh) s2Step115HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 817, 790, 830, 825, 829, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step115HeadG_Incoming : rowsOwned s2Step115HeadGBefore [s2Step115HeadGRow,s2Step115HeadFRow,s2Step115HeadGvRow,s2Step115HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115HeadGRow,s2Step115HeadFRow,s2Step115HeadGvRow,s2Step115HeadFvRow] 0 s2Step115HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115HeadG_Outgoing : rowsOwned s2Step115HeadFvAfter [s2Step115HeadGOut,s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut] :=
  hmrRows_owned_drop s2Step115HeadFvAfter [s2Step115HeadGOut,s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut] 0 s2Step115HeadBank_outgoingOwned

private theorem s2Step115HeadG_distinct : (s2Step115HeadGRow.sign::s2Step115HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115HeadG_owned : (s2Step115HeadGRow.sign::s2Step115HeadGRow.payload).toFinset⊆s2Step115HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<792) ∨ (793≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<846) ∨ (847≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115HeadG_reserved : s2Step115HeadGBefore.reserve s2Step115HeadGFresh.toFinset=some s2Step115HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step115HeadGFresh,arenaWires]
  · norm_num [s2Step115HeadGBefore,s2Step115HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step115HeadGAfter,s2Step115HeadGBefore,s2Step115HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step115HeadG_checked : planRowResizeLog s2Step115HeadGBefore s2Step115HeadGRow 213 s2Step115HeadGFresh=
    some (s2Step115HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794, 846],769⟩,growRow 769 s2Step115HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step115HeadGBefore s2Step115HeadGAfter s2Step115HeadGRow 213 s2Step115HeadGFresh
    s2Step115HeadG_distinct s2Step115HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115HeadG_reserved
  have rowEq : WindowRow.mk (s2Step115HeadGRow.payload++s2Step115HeadGFresh) s2Step115HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 794, 846],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step115HeadGvBefore : Arena := s2Step115HeadFAfter

private theorem s2Step115HeadGv_Incoming : rowsOwned s2Step115HeadGvBefore [s2Step115HeadGvRow,s2Step115HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step115HeadGRow,s2Step115HeadFRow,s2Step115HeadGvRow,s2Step115HeadFvRow] 2 s2Step115HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step115HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step115HeadGv_Outgoing : rowsOwned s2Step115HeadFvAfter [s2Step115HeadGvOut,s2Step115HeadFvOut] :=
  hmrRows_owned_drop s2Step115HeadFvAfter [s2Step115HeadGOut,s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut] 2 s2Step115HeadBank_outgoingOwned

private theorem s2Step115HeadGv_distinct : (s2Step115HeadGvRow.sign::s2Step115HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step115HeadGv_owned : (s2Step115HeadGvRow.sign::s2Step115HeadGvRow.payload).toFinset⊆s2Step115HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step115HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<802) ∨ (803≤q ∧ q<806) ∨ (807≤q ∧ q<809) ∨ (810≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step115HeadGv_reserved : s2Step115HeadGvBefore.reserve s2Step115HeadGvFresh.toFinset=some s2Step115HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step115HeadGvFresh,arenaWires]
  · norm_num [s2Step115HeadGvBefore,s2Step115HeadFAfter,s2Step115HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step115HeadGvAfter,s2Step115HeadGvBefore,s2Step115HeadFAfter,s2Step115HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step115HeadGv_checked : planRowResizeLog s2Step115HeadGvBefore s2Step115HeadGvRow 72 s2Step115HeadGvFresh=
    some (s2Step115HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 815],771⟩,growRow 771 s2Step115HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step115HeadGvBefore s2Step115HeadGvAfter s2Step115HeadGvRow 72 s2Step115HeadGvFresh
    s2Step115HeadGv_distinct s2Step115HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step115HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step115HeadGvRow.payload++s2Step115HeadGvFresh) s2Step115HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 821, 819, 824, 832, 837, 822, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 815],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step115HeadBank_rows : planWindowRowsLog s2Step115HeadGBefore [(s2Step115HeadGRow,213),(s2Step115HeadFRow,213),(s2Step115HeadGvRow,72),(s2Step115HeadFvRow,72)] [s2Step115HeadGFresh,s2Step115HeadFFresh,s2Step115HeadGvFresh,s2Step115HeadFvFresh]=
    some (s2Step115HeadFvAfter,[s2Step115HeadGOut,s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut],(growRow 769 s2Step115HeadGFresh ++ (growRow 768 s2Step115HeadFFresh ++ (growRow 771 s2Step115HeadGvFresh ++ (growRow 770 s2Step115HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step115HeadFvAfter [] []=some (s2Step115HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step115HeadFvBefore s2Step115HeadFvAfter s2Step115HeadFvAfter
    s2Step115HeadFvRow s2Step115HeadFvOut 72 s2Step115HeadFvFresh [] [] []
    (growRow 770 s2Step115HeadFvFresh) ([]) s2Step115HeadFv_Incoming s2Step115HeadFv_checked h4 s2Step115HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step115HeadGvBefore s2Step115HeadGvAfter s2Step115HeadFvAfter
    s2Step115HeadGvRow s2Step115HeadGvOut 72 s2Step115HeadGvFresh [(s2Step115HeadFvRow,72)] [s2Step115HeadFvFresh] [s2Step115HeadFvOut]
    (growRow 771 s2Step115HeadGvFresh) ((growRow 770 s2Step115HeadFvFresh ++ [])) s2Step115HeadGv_Incoming s2Step115HeadGv_checked h3 s2Step115HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step115HeadFBefore s2Step115HeadFAfter s2Step115HeadFvAfter
    s2Step115HeadFRow s2Step115HeadFOut 213 s2Step115HeadFFresh [(s2Step115HeadGvRow,72),(s2Step115HeadFvRow,72)] [s2Step115HeadGvFresh,s2Step115HeadFvFresh] [s2Step115HeadGvOut,s2Step115HeadFvOut]
    (growRow 768 s2Step115HeadFFresh) ((growRow 771 s2Step115HeadGvFresh ++ (growRow 770 s2Step115HeadFvFresh ++ []))) s2Step115HeadF_Incoming s2Step115HeadF_checked h2 s2Step115HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step115HeadGBefore s2Step115HeadGAfter s2Step115HeadFvAfter
    s2Step115HeadGRow s2Step115HeadGOut 213 s2Step115HeadGFresh [(s2Step115HeadFRow,213),(s2Step115HeadGvRow,72),(s2Step115HeadFvRow,72)] [s2Step115HeadFFresh,s2Step115HeadGvFresh,s2Step115HeadFvFresh] [s2Step115HeadFOut,s2Step115HeadGvOut,s2Step115HeadFvOut]
    (growRow 769 s2Step115HeadGFresh) ((growRow 768 s2Step115HeadFFresh ++ (growRow 771 s2Step115HeadGvFresh ++ (growRow 770 s2Step115HeadFvFresh ++ [])))) s2Step115HeadG_Incoming s2Step115HeadG_checked h1 s2Step115HeadG_Outgoing
  exact h0

private theorem s2Step115HeadBank_checked : compileHmrBankResizeLog .headroom s2Step115HeadGBefore ⟨s2Step115HeadFRow,s2Step115HeadGRow,s2Step115HeadFvRow,s2Step115HeadGvRow⟩ ⟨213,213,72,72⟩ [s2Step115HeadGFresh,s2Step115HeadFFresh,s2Step115HeadGvFresh,s2Step115HeadFvFresh]=
    some (s2Step115HeadFvAfter,⟨s2Step115HeadFOut,s2Step115HeadGOut,s2Step115HeadFvOut,s2Step115HeadGvOut⟩,(growRow 769 s2Step115HeadGFresh ++ (growRow 768 s2Step115HeadFFresh ++ (growRow 771 s2Step115HeadGvFresh ++ (growRow 770 s2Step115HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step115HeadBank_rows]
  rfl

private theorem s2Step115Front_checked : compileHmrSourceFrontLog s2Step115EntryFBefore s2Step115FrontBank 212 71 ⟨212,211,72,71⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step115FrontLog=some s2Step115FrontPlan := by
  have pairEq : s2Step115FrontPair=⟨s2Step115HeadFRow,s2Step115HeadGRow,s2Step115HeadFvRow,s2Step115HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step115FrontHead=⟨s2Step115ExitFRow,s2Step115ExitGRow,s2Step115ExitFvRow,s2Step115ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step115Add0A=s2Step115FrontHead.f.wires := by decide +kernel
  have gEq : s2Step115Add0B=s2Step115FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step115Add1A=s2Step115FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step115Add1B=s2Step115FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step115EntryFBefore s2Step115FrontBank 212 71 ⟨212,211,72,71⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step115FrontLog s2Step115FrontPlan
  · exact s2Step115Front_entry
  · exact s2Step115EntryBank_checked
  · exact s2Step115Front_sigma
  · rfl
  · exact s2Step115Front_branch
  · rfl
  · simpa only [s2Step115FrontPlan,pairEq] using s2Step115HeadBank_checked
  · simpa only [s2Step115FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step115F4_checked
  · exact s2Step115Counter_checked
  · rfl
  · simpa only [s2Step115FrontPlan,headEq] using s2Step115ExitBank_checked

private theorem s2Step115Complete_explicit_checked : compileHmrEarlyStepLog s2Step115EntryFBefore s2Step115FrontBank 212 71 ⟨212,211,72,71⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step115CompleteLog=some s2Step115CompletePlan := by
  let Q := s2Step115EarlyControlPlan
  have hq := s2Step115EarlyControl_plan_checked
  have fv1 : s2Step115CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step115CompleteOut.fv.payload[2]?.getD s2Step115CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step115CompleteOut.fv.payload[3]?.getD s2Step115CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step115CompleteOut.fv.payload[4]?.getD s2Step115CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step115EntryFBefore s2Step115EarlyControlArena s2Step115FrontBank 212 71 ⟨212,211,72,71⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step115CompleteLog s2Step115FrontPlan Q
    s2Step115Front_checked s2Step115Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step115Complete_owned s2Step115Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step115EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 805 s2Step115CompleteOut.fv.second (s2Step115CompleteOut.fv.payload[2]?.getD s2Step115CompleteOut.fv.sign) (s2Step115CompleteOut.fv.payload[3]?.getD s2Step115CompleteOut.fv.sign) (s2Step115CompleteOut.fv.payload[4]?.getD s2Step115CompleteOut.fv.sign) 807 37 s2Step115EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep115Arena : Arena := s2Step115EntryFBefore
def s2PrivateStep115Bank : WindowBank := s2Step115FrontBank
def s2PrivateStep115Spec : HmrSourceWalkStepLog := ⟨212,71,⟨212,211,72,71⟩,37,.early s2Step115CompleteLog⟩
def s2PrivateStep115Plan : HmrSourceStepPlan := .early s2Step115CompletePlan
theorem s2PrivateStep115_source : s2PrivateStep115Spec=s2ObservedLogs112[3] := rfl
theorem s2PrivateStep115_checked : compileHmrSourceStepLog s2PrivateStep115Arena s2PrivateStep115Bank
    s2PrivateStep115Spec.fgWidth s2PrivateStep115Spec.vWidth s2PrivateStep115Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 115 s2PrivateStep115Spec.need none s2PrivateStep115Spec.log=some s2PrivateStep115Plan := by
  change compileHmrSourceStepLog s2Step115EntryFBefore s2Step115FrontBank 212 71 ⟨212,211,72,71⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 115 37 none (.early s2Step115CompleteLog)=some (.early s2Step115CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 115<498)]
  rw [s2Step115Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
