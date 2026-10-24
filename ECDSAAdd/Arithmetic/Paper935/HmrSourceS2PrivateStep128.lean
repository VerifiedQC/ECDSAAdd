import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep126
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

private def s2Step128CompleteMoves : List (Wire × Wire) := [(831,716)]

private def s2Step128EarlyControlLog : HmrEarlyControlLog := ⟨[831, 817, 822, 781, 834],[837],[849],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step128FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [802]],[[834], [781], [817], [822]],[[], [], [], []]⟩,[829],[814],[837],[849],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815]⟩

private def s2Step128CompleteLog : HmrEarlyStepLog := ⟨s2Step128FrontLog,s2Step128CompleteMoves,s2Step128EarlyControlLog⟩

private def s2Step128ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715],768⟩

private def s2Step128ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step128ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩

private def s2Step128ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩

private def s2Step128FrontOut : WindowBank := ⟨s2Step128ExitFOut,s2Step128ExitGOut,s2Step128ExitFvOut,s2Step128ExitGvOut⟩

private def s2Step128CompleteOut : WindowBank := s2Step128FrontOut.repacked s2Step128CompleteMoves

private def s2Step128EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step128EarlyControlPositiveArena,[837],s2Step128EarlyControlEqualityArena,[849],⟨⟨829,false⟩,[⟨⟨837,false⟩,849⟩]⟩⟩

private def s2Step128EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,831⟩,⟨⟨774,false⟩,817⟩,⟨⟨775,false⟩,822⟩,⟨⟨776,false⟩,781⟩,⟨⟨777,false⟩,834⟩]⟩

private def s2Step128EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step128EarlyControlZeroArena,s2Step128EarlyControlZeroPlan,s2Step128EarlyControlClassPlan,s2Step128EarlyControlFlagArena,s2Step128EarlyControlFittedArena,s2Step128EarlyControlHistoryArena,s2Step128EarlyControlSigmaArena,s2Step128EarlyControlOutputArena,s2Step128EarlyControlLog⟩

private def s2Step128CounterWork : List Wire := [837, 849, 790, 815]

private theorem s2Step128Counter_bounded : s2Step128CounterWork.toFinset⊆arenaWires := by norm_num [s2Step128CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step128HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128CounterDuring : Arena := ⟨s2Step128HeadFvAfter.live∪s2Step128CounterWork.toFinset,Finset.union_subset s2Step128HeadFvAfter.bounded s2Step128Counter_bounded⟩

private def s2Step128EntryFFresh : List Wire := []

private def s2Step128EntryFvFresh : List Wire := []

private def s2Step128EntryGFresh : List Wire := []

private def s2Step128EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EntryGvFresh : List Wire := [802]

private def s2Step128ExitFExtra : List Wire := [716, 781]

private def s2Step128ExitFvExtra : List Wire := [822]

private def s2Step128ExitGExtra : List Wire := [834]

private def s2Step128ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<716) ∨ (717≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128ExitGvExtra : List Wire := [817]

private def s2Step128Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step128Add0_bounded : s2Step128Add0Work.toFinset⊆arenaWires := by
  have h : s2Step128Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step128Add0During : Arena := ⟨s2Step128Add0Arena.live∪s2Step128Add0Work.toFinset,Finset.union_subset s2Step128Add0Arena.bounded s2Step128Add0_bounded⟩

private def s2Step128Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step128Add1_bounded : s2Step128Add1Work.toFinset⊆arenaWires := by
  have h : s2Step128Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step128Add1During : Arena := ⟨s2Step128Add1Arena.live∪s2Step128Add1Work.toFinset,Finset.union_subset s2Step128Add1Arena.bounded s2Step128Add1_bounded⟩

private def s2Step128F4FlagArena : Arena := ⟨s2Step128HeadFvAfter.live∪{837},Finset.union_subset s2Step128HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step128F4Plan : HmrHybridF4Plan := ⟨s2Step128F4FlagArena,[837],s2Step128Add0Arena,[849],s2Step128Add0During,s2Step128Add0Work,s2Step128Add1During,s2Step128Add1Work⟩

private def s2Step128HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 781],768⟩

private def s2Step128HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 822],770⟩

private def s2Step128HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 834],769⟩

private def s2Step128HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 817],771⟩

private def s2Step128FrontHead : WindowBank := ⟨s2Step128HeadFOut,s2Step128HeadGOut,s2Step128HeadFvOut,s2Step128HeadGvOut⟩

private def s2Step128EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716],768⟩

private def s2Step128EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step128EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩

private def s2Step128EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩

private def s2Step128FrontPair : WindowBank := ⟨s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut⟩

private def s2Step128FrontSigmaArena : Arena := ⟨s2Step128EntryGvAfter.live∪{829},Finset.union_subset s2Step128EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step128HeadFFresh : List Wire := [781]

private def s2Step128HeadFvFresh : List Wire := [822]

private def s2Step128HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128HeadGFresh : List Wire := [834]

private def s2Step128HeadGvFresh : List Wire := [817]

private def s2Step128FrontPlan : HmrSourceFront := ⟨s2Step128EntryGvAfter,s2Step128FrontPair,(growRow 768 s2Step128EntryFFresh ++ (growRow 769 s2Step128EntryGFresh ++ (growRow 770 s2Step128EntryFvFresh ++ (growRow 771 s2Step128EntryGvFresh ++ [])))),s2Step128FrontSigmaArena,[829],s2Step128HeadGBefore,[814],
  s2Step128HeadFvAfter,s2Step128FrontHead,(growRow 769 s2Step128HeadGFresh ++ (growRow 768 s2Step128HeadFFresh ++ (growRow 771 s2Step128HeadGvFresh ++ (growRow 770 s2Step128HeadFvFresh ++ [])))),s2Step128F4Plan,s2Step128CounterDuring,s2Step128CounterWork,s2Step128ExitGvAfter,s2Step128FrontOut,(shrinkRow 769 s2Step128ExitGExtra ++ (shrinkRow 768 s2Step128ExitFExtra ++ (shrinkRow 770 s2Step128ExitFvExtra ++ (shrinkRow 771 s2Step128ExitGvExtra ++ []))))⟩

private def s2Step128CompletePlan : HmrEarlyStepPlan := ⟨s2Step128FrontPlan,s2Step128EarlyControlArena,s2Step128EarlyControlPlan,s2Step128CompleteMoves⟩

private theorem s2Step128Complete_apart : List.Disjoint (s2Step128CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step128CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step128Complete_owned : (s2Step128CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step128CompleteMoveArena : Arena := ⟨s2Step128ExitGvAfter.live∪{716},Finset.union_subset s2Step128ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step128Complete_repack : s2Step128ExitGvAfter.checkRepack s2Step128CompleteMoves=some s2Step128EarlyControlArena := by
  have owned : 831∈s2Step128ExitGvAfter.live := by norm_num [s2Step128ExitGvAfter,arenaWires]
  have reserve : s2Step128ExitGvAfter.reserve {716}=some s2Step128CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step128ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step128CompleteMoveArena.retireSet {831}=s2Step128EarlyControlArena := by
    unfold Arena.retireSet s2Step128EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step128CompleteMoveArena,s2Step128ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step128CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step128CompleteMoveArena.retireSet {831}).checkRepack []=some s2Step128EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step128EarlyControl_branchOwned : ([814] : List Wire).toFinset⊆s2Step128EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_branch : compileHmrBranchRetirement s2Step128EarlyControlSigmaArena 814=some s2Step128EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step128EarlyControl_branchOwned
  · ext q
    simp [s2Step128EarlyControlOutputArena,s2Step128EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step128EarlyControl_classEqualityBorrow : s2Step128EarlyControlPositiveArena.checkBorrow (([829, 837] : List Wire).length-1) s2Step128EarlyControlLog.classWork=some s2Step128EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step128EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step128EarlyControlEqualityArena,s2Step128EarlyControlPositiveArena,s2Step128EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step128EarlyControl_classEqualityOwned : ([829, 837] : List Wire).toFinset⊆s2Step128EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_classEquality : compileHmrEqualityLog s2Step128EarlyControlPositiveArena [829, 837] 0 s2Step128EarlyControlLog.classWork=some (s2Step128EarlyControlEqualityArena,s2Step128EarlyControlLog.classWork,s2Step128EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step128EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step128EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step128EarlyControl_classOwned : ([777, 834, 829] : List Wire).toFinset⊆s2Step128EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_positiveBorrow : s2Step128EarlyControlZeroArena.checkBorrow (1) s2Step128EarlyControlLog.positiveWork=some s2Step128EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step128EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step128EarlyControlPositiveArena,s2Step128EarlyControlZeroArena,s2Step128EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step128EarlyControl_class : compileHmrSourceClassLog s2Step128EarlyControlZeroArena false 777 s2Step128EarlyControlZeroPlan.top 0 829 s2Step128EarlyControlLog.positiveWork s2Step128EarlyControlLog.classWork=some s2Step128EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step128EarlyControlClassPlan s2Step128EarlyControlZeroArena false 777 s2Step128EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step128EarlyControl_classOwned
  · exact s2Step128EarlyControl_positiveBorrow
  · exact s2Step128EarlyControl_classEquality

private theorem s2Step128EarlyControl_entryRecordOwned : ([814, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_entrySigmaOwned : ([829, 254] : List Wire).toFinset⊆s2Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_fitBorrow : s2Step128EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step128EarlyControlLog.recordFresh=some s2Step128EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step128EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
      decide +kernel
    · ext q
      simp [s2Step128EarlyControlFittedArena,s2Step128EarlyControlFlagArena,s2Step128EarlyControlLog,arenaWires]

private theorem s2Step128EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step128EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_fit : compileHmrRecordGrowLog s2Step128EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step128EarlyControlLog.recordFresh=some s2Step128EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step128EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step128EarlyControl_fitBorrow

private theorem s2Step128EarlyControl_flagsBorrow : s2Step128EarlyControlEqualityArena.checkBorrow (6) s2Step128EarlyControlLog.flagWork=some s2Step128EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step128EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step128EarlyControlFlagArena,s2Step128EarlyControlEqualityArena,s2Step128EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step128EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step128EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_flags : compileHmrFlagsLog s2Step128EarlyControlClassPlan.equalityArena s2Step128EarlyControlClassPlan.equality.top 253 252 251 s2Step128EarlyControlLog.flagWork=some s2Step128EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step128EarlyControl_flagsOwned⟩
  · exact s2Step128EarlyControl_flagsBorrow

private theorem s2Step128EarlyControl_historyBorrow : s2Step128EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step128EarlyControlLog.recordFresh=some s2Step128EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step128EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step128EarlyControlHistoryArena,s2Step128EarlyControlArena,s2Step128EarlyControlLog,arenaWires]

private theorem s2Step128EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_history : compileHmrRecordGrowLog s2Step128EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step128EarlyControlLog.recordFresh=some s2Step128EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step128EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step128EarlyControl_historyBorrow

private theorem s2Step128EarlyControl_sigmaOwned : ([254, 829] : List Wire).toFinset⊆s2Step128EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step128EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_sigmaRelease : s2Step128EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step128EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step128EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step128EarlyControlSigmaArena,s2Step128EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step128EarlyControl_sigma : compileHmrSigmaDropLog s2Step128EarlyControlHistoryArena false 0 0 254 829 []=some s2Step128EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step128EarlyControl_sigmaOwned⟩
  · exact s2Step128EarlyControl_sigmaRelease

private theorem s2Step128EarlyControl_zeroBorrow : s2Step128EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step128EarlyControlLog.zeroWork=some s2Step128EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step128EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step128EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step128EarlyControlZeroArena,s2Step128EarlyControlArena,s2Step128EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step128EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step128EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step128EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<831) ∨ (832≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EarlyControl_zero : compileHmrEqualityLog s2Step128EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step128EarlyControlLog.zeroWork=some (s2Step128EarlyControlZeroArena,s2Step128EarlyControlLog.zeroWork,s2Step128EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step128EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step128EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step128EarlyControl_logged : s2Step128EarlyControlPlan.Logged s2Step128EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 814 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step128EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step128EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step128EarlyControl_zero
  · exact s2Step128EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step128EarlyControl_flags
  · exact s2Step128EarlyControl_fit
  · exact s2Step128EarlyControl_history
  · exact s2Step128EarlyControl_sigma
  · exact s2Step128EarlyControl_branch

private theorem s2Step128EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step128EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 814 37 s2Step128EarlyControlLog=some s2Step128EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step128EarlyControlPlan s2Step128EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 814 37 s2Step128EarlyControl_logged

private def s2Step128EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716],768⟩

private def s2Step128EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step128EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩

private def s2Step128EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step128FrontBank : WindowBank := ⟨s2Step128EntryFRow,s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow⟩

private def s2Step128Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 781, 768]

private def s2Step128Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 834, 769]

private def s2Step128Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 822, 770]

private def s2Step128Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 817, 771]

private theorem s2Step128Counter_apart : Disjoint s2Step128HeadFvAfter.live s2Step128CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step128HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128Counter_borrowed : s2Step128HeadFvAfter.checkBorrow 4 s2Step128CounterWork=some s2Step128CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step128HeadFvAfter s2Step128CounterDuring s2Step128CounterWork.toFinset s2Step128Counter_bounded s2Step128Counter_apart rfl

private theorem s2Step128Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step128HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step128HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128Counter_checked : compileHmrCounterStepLog s2Step128HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step128CounterWork=some s2Step128CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step128HeadFvAfter.live := fun q hq => s2Step128Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step128Counter_borrowed

private def s2Step128EntryFAfter : Arena := s2Step128EntryFBefore

private theorem s2Step128EntryBank_incomingDistinct : ([s2Step128EntryFRow,s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128EntryF_Incoming : rowsOwned s2Step128EntryFBefore [s2Step128EntryFRow,s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128EntryFRow,s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow] 0 s2Step128EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128EntryBank_outgoingOwned : rowsOwned s2Step128EntryGvAfter [s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step128EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128EntryF_Outgoing : rowsOwned s2Step128EntryGvAfter [s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut] :=
  hmrRows_owned_drop s2Step128EntryGvAfter [s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut] 0 s2Step128EntryBank_outgoingOwned

private theorem s2Step128EntryF_distinct : (s2Step128EntryFRow.sign::s2Step128EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128EntryF_owned : (s2Step128EntryFRow.sign::s2Step128EntryFRow.payload).toFinset⊆s2Step128EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EntryF_reserved : s2Step128EntryFBefore.reserve s2Step128EntryFFresh.toFinset=some s2Step128EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step128EntryFFresh,arenaWires]
  · norm_num [s2Step128EntryFBefore,s2Step128EntryFFresh,arenaWires]
  · simp only [s2Step128EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step128EntryF_checked : planRowResizeLog s2Step128EntryFBefore s2Step128EntryFRow 205 s2Step128EntryFFresh=
    some (s2Step128EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716],768⟩,growRow 768 s2Step128EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step128EntryFBefore s2Step128EntryFAfter s2Step128EntryFRow 205 s2Step128EntryFFresh
    s2Step128EntryF_distinct s2Step128EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step128EntryF_reserved
  have rowEq : WindowRow.mk (s2Step128EntryFRow.payload++s2Step128EntryFFresh) s2Step128EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step128EntryFvAfter : Arena := s2Step128EntryFBefore

private def s2Step128EntryFvBefore : Arena := s2Step128EntryFBefore

private theorem s2Step128EntryFv_Incoming : rowsOwned s2Step128EntryFvBefore [s2Step128EntryFvRow,s2Step128EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128EntryFRow,s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow] 2 s2Step128EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128EntryFv_Outgoing : rowsOwned s2Step128EntryGvAfter [s2Step128EntryFvOut,s2Step128EntryGvOut] :=
  hmrRows_owned_drop s2Step128EntryGvAfter [s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut] 2 s2Step128EntryBank_outgoingOwned

private theorem s2Step128EntryFv_distinct : (s2Step128EntryFvRow.sign::s2Step128EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128EntryFv_owned : (s2Step128EntryFvRow.sign::s2Step128EntryFvRow.payload).toFinset⊆s2Step128EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EntryFv_reserved : s2Step128EntryFvBefore.reserve s2Step128EntryFvFresh.toFinset=some s2Step128EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step128EntryFvFresh,arenaWires]
  · norm_num [s2Step128EntryFvBefore,s2Step128EntryFBefore,s2Step128EntryFvFresh,arenaWires]
  · simp only [s2Step128EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step128EntryFv_checked : planRowResizeLog s2Step128EntryFvBefore s2Step128EntryFvRow 78 s2Step128EntryFvFresh=
    some (s2Step128EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩,growRow 770 s2Step128EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step128EntryFvBefore s2Step128EntryFvAfter s2Step128EntryFvRow 78 s2Step128EntryFvFresh
    s2Step128EntryFv_distinct s2Step128EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step128EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step128EntryFvRow.payload++s2Step128EntryFvFresh) s2Step128EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step128EntryGAfter : Arena := s2Step128EntryFBefore

private def s2Step128EntryGBefore : Arena := s2Step128EntryFBefore

private theorem s2Step128EntryG_Incoming : rowsOwned s2Step128EntryGBefore [s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128EntryFRow,s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow] 1 s2Step128EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128EntryG_Outgoing : rowsOwned s2Step128EntryGvAfter [s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut] :=
  hmrRows_owned_drop s2Step128EntryGvAfter [s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut] 1 s2Step128EntryBank_outgoingOwned

private theorem s2Step128EntryG_distinct : (s2Step128EntryGRow.sign::s2Step128EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128EntryG_owned : (s2Step128EntryGRow.sign::s2Step128EntryGRow.payload).toFinset⊆s2Step128EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EntryG_reserved : s2Step128EntryGBefore.reserve s2Step128EntryGFresh.toFinset=some s2Step128EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step128EntryGFresh,arenaWires]
  · norm_num [s2Step128EntryGBefore,s2Step128EntryFBefore,s2Step128EntryGFresh,arenaWires]
  · simp only [s2Step128EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step128EntryG_checked : planRowResizeLog s2Step128EntryGBefore s2Step128EntryGRow 205 s2Step128EntryGFresh=
    some (s2Step128EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩,growRow 769 s2Step128EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step128EntryGBefore s2Step128EntryGAfter s2Step128EntryGRow 205 s2Step128EntryGFresh
    s2Step128EntryG_distinct s2Step128EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step128EntryG_reserved
  have rowEq : WindowRow.mk (s2Step128EntryGRow.payload++s2Step128EntryGFresh) s2Step128EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step128EntryGvBefore : Arena := s2Step128EntryFBefore

private theorem s2Step128EntryGv_Incoming : rowsOwned s2Step128EntryGvBefore [s2Step128EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128EntryFRow,s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow] 3 s2Step128EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128EntryGv_Outgoing : rowsOwned s2Step128EntryGvAfter [s2Step128EntryGvOut] :=
  hmrRows_owned_drop s2Step128EntryGvAfter [s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut] 3 s2Step128EntryBank_outgoingOwned

private theorem s2Step128EntryGv_distinct : (s2Step128EntryGvRow.sign::s2Step128EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128EntryGv_owned : (s2Step128EntryGvRow.sign::s2Step128EntryGvRow.payload).toFinset⊆s2Step128EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128EntryGv_reserved : s2Step128EntryGvBefore.reserve s2Step128EntryGvFresh.toFinset=some s2Step128EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step128EntryGvFresh,arenaWires]
  · norm_num [s2Step128EntryGvBefore,s2Step128EntryFBefore,s2Step128EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step128EntryGvAfter,s2Step128EntryGvBefore,s2Step128EntryFBefore,s2Step128EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step128EntryGv_checked : planRowResizeLog s2Step128EntryGvBefore s2Step128EntryGvRow 78 s2Step128EntryGvFresh=
    some (s2Step128EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩,growRow 771 s2Step128EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step128EntryGvBefore s2Step128EntryGvAfter s2Step128EntryGvRow 78 s2Step128EntryGvFresh
    s2Step128EntryGv_distinct s2Step128EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step128EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step128EntryGvRow.payload++s2Step128EntryGvFresh) s2Step128EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step128EntryBank_rows : planWindowRowsLog s2Step128EntryFBefore [(s2Step128EntryFRow,205),(s2Step128EntryGRow,205),(s2Step128EntryFvRow,78),(s2Step128EntryGvRow,78)] [s2Step128EntryFFresh,s2Step128EntryGFresh,s2Step128EntryFvFresh,s2Step128EntryGvFresh]=
    some (s2Step128EntryGvAfter,[s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut],(growRow 768 s2Step128EntryFFresh ++ (growRow 769 s2Step128EntryGFresh ++ (growRow 770 s2Step128EntryFvFresh ++ (growRow 771 s2Step128EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step128EntryGvAfter [] []=some (s2Step128EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step128EntryGvBefore s2Step128EntryGvAfter s2Step128EntryGvAfter
    s2Step128EntryGvRow s2Step128EntryGvOut 78 s2Step128EntryGvFresh [] [] []
    (growRow 771 s2Step128EntryGvFresh) ([]) s2Step128EntryGv_Incoming s2Step128EntryGv_checked h4 s2Step128EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step128EntryFvBefore s2Step128EntryFvAfter s2Step128EntryGvAfter
    s2Step128EntryFvRow s2Step128EntryFvOut 78 s2Step128EntryFvFresh [(s2Step128EntryGvRow,78)] [s2Step128EntryGvFresh] [s2Step128EntryGvOut]
    (growRow 770 s2Step128EntryFvFresh) ((growRow 771 s2Step128EntryGvFresh ++ [])) s2Step128EntryFv_Incoming s2Step128EntryFv_checked h3 s2Step128EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step128EntryGBefore s2Step128EntryGAfter s2Step128EntryGvAfter
    s2Step128EntryGRow s2Step128EntryGOut 205 s2Step128EntryGFresh [(s2Step128EntryFvRow,78),(s2Step128EntryGvRow,78)] [s2Step128EntryFvFresh,s2Step128EntryGvFresh] [s2Step128EntryFvOut,s2Step128EntryGvOut]
    (growRow 769 s2Step128EntryGFresh) ((growRow 770 s2Step128EntryFvFresh ++ (growRow 771 s2Step128EntryGvFresh ++ []))) s2Step128EntryG_Incoming s2Step128EntryG_checked h2 s2Step128EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step128EntryFBefore s2Step128EntryFAfter s2Step128EntryGvAfter
    s2Step128EntryFRow s2Step128EntryFOut 205 s2Step128EntryFFresh [(s2Step128EntryGRow,205),(s2Step128EntryFvRow,78),(s2Step128EntryGvRow,78)] [s2Step128EntryGFresh,s2Step128EntryFvFresh,s2Step128EntryGvFresh] [s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut]
    (growRow 768 s2Step128EntryFFresh) ((growRow 769 s2Step128EntryGFresh ++ (growRow 770 s2Step128EntryFvFresh ++ (growRow 771 s2Step128EntryGvFresh ++ [])))) s2Step128EntryF_Incoming s2Step128EntryF_checked h1 s2Step128EntryF_Outgoing
  exact h0

private theorem s2Step128EntryBank_checked : compileHmrBankResizeLog .entry s2Step128EntryFBefore ⟨s2Step128EntryFRow,s2Step128EntryGRow,s2Step128EntryFvRow,s2Step128EntryGvRow⟩ ⟨205,205,78,78⟩ [s2Step128EntryFFresh,s2Step128EntryGFresh,s2Step128EntryFvFresh,s2Step128EntryGvFresh]=
    some (s2Step128EntryGvAfter,⟨s2Step128EntryFOut,s2Step128EntryGOut,s2Step128EntryFvOut,s2Step128EntryGvOut⟩,(growRow 768 s2Step128EntryFFresh ++ (growRow 769 s2Step128EntryGFresh ++ (growRow 770 s2Step128EntryFvFresh ++ (growRow 771 s2Step128EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step128EntryBank_rows]
  rfl

private def s2Step128ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<716) ∨ (717≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128ExitFBefore : Arena := s2Step128ExitGAfter

private def s2Step128ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 781],768⟩

private def s2Step128ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 822],770⟩

private def s2Step128ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 834],769⟩

private def s2Step128ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 817],771⟩

private theorem s2Step128ExitBank_incomingDistinct : ([s2Step128ExitGRow,s2Step128ExitFRow,s2Step128ExitFvRow,s2Step128ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128ExitF_Incoming : rowsOwned s2Step128ExitFBefore [s2Step128ExitFRow,s2Step128ExitFvRow,s2Step128ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128ExitGRow,s2Step128ExitFRow,s2Step128ExitFvRow,s2Step128ExitGvRow] 1 s2Step128ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128ExitBank_outgoingOwned : rowsOwned s2Step128ExitGvAfter [s2Step128ExitGOut,s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step128ExitGvAfter (fun q => (0≤q ∧ q<716) ∨ (717≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128ExitF_Outgoing : rowsOwned s2Step128ExitGvAfter [s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut] :=
  hmrRows_owned_drop s2Step128ExitGvAfter [s2Step128ExitGOut,s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut] 1 s2Step128ExitBank_outgoingOwned

private theorem s2Step128ExitF_distinct : (s2Step128ExitFRow.sign::s2Step128ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128ExitF_owned : (s2Step128ExitFRow.sign::s2Step128ExitFRow.payload).toFinset⊆s2Step128ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128ExitFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128ExitF_retired : s2Step128ExitFBefore.retireSet s2Step128ExitFExtra.toFinset=s2Step128ExitFAfter := by
  unfold Arena.retireSet s2Step128ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step128ExitFBefore,s2Step128ExitGAfter,s2Step128ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step128ExitF_checked : planRowResizeLog s2Step128ExitFBefore s2Step128ExitFRow 204 []=
    some (s2Step128ExitFAfter,s2Step128ExitFOut,shrinkRow 768 s2Step128ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step128ExitFBefore s2Step128ExitFRow 204 s2Step128ExitF_distinct s2Step128ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step128ExitFRow.payload.take 204) s2Step128ExitFRow.sign=s2Step128ExitFOut := by decide +kernel
  have hi : s2Step128ExitFRow.payload.drop 204=s2Step128ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step128ExitF_retired] at result
  exact result

private def s2Step128ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<716) ∨ (717≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128ExitFvBefore : Arena := s2Step128ExitFAfter

private theorem s2Step128ExitFv_Incoming : rowsOwned s2Step128ExitFvBefore [s2Step128ExitFvRow,s2Step128ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128ExitGRow,s2Step128ExitFRow,s2Step128ExitFvRow,s2Step128ExitGvRow] 2 s2Step128ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128ExitFvBefore (fun q => (0≤q ∧ q<716) ∨ (717≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128ExitFv_Outgoing : rowsOwned s2Step128ExitGvAfter [s2Step128ExitFvOut,s2Step128ExitGvOut] :=
  hmrRows_owned_drop s2Step128ExitGvAfter [s2Step128ExitGOut,s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut] 2 s2Step128ExitBank_outgoingOwned

private theorem s2Step128ExitFv_distinct : (s2Step128ExitFvRow.sign::s2Step128ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128ExitFv_owned : (s2Step128ExitFvRow.sign::s2Step128ExitFvRow.payload).toFinset⊆s2Step128ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128ExitFvBefore (fun q => (0≤q ∧ q<716) ∨ (717≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128ExitFv_retired : s2Step128ExitFvBefore.retireSet s2Step128ExitFvExtra.toFinset=s2Step128ExitFvAfter := by
  unfold Arena.retireSet s2Step128ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step128ExitFvBefore,s2Step128ExitFAfter,s2Step128ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step128ExitFv_checked : planRowResizeLog s2Step128ExitFvBefore s2Step128ExitFvRow 78 []=
    some (s2Step128ExitFvAfter,s2Step128ExitFvOut,shrinkRow 770 s2Step128ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step128ExitFvBefore s2Step128ExitFvRow 78 s2Step128ExitFv_distinct s2Step128ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step128ExitFvRow.payload.take 78) s2Step128ExitFvRow.sign=s2Step128ExitFvOut := by decide +kernel
  have hi : s2Step128ExitFvRow.payload.drop 78=s2Step128ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step128ExitFv_retired] at result
  exact result

private def s2Step128ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step128ExitG_Incoming : rowsOwned s2Step128ExitGBefore [s2Step128ExitGRow,s2Step128ExitFRow,s2Step128ExitFvRow,s2Step128ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128ExitGRow,s2Step128ExitFRow,s2Step128ExitFvRow,s2Step128ExitGvRow] 0 s2Step128ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128ExitG_Outgoing : rowsOwned s2Step128ExitGvAfter [s2Step128ExitGOut,s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut] :=
  hmrRows_owned_drop s2Step128ExitGvAfter [s2Step128ExitGOut,s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut] 0 s2Step128ExitBank_outgoingOwned

private theorem s2Step128ExitG_distinct : (s2Step128ExitGRow.sign::s2Step128ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128ExitG_owned : (s2Step128ExitGRow.sign::s2Step128ExitGRow.payload).toFinset⊆s2Step128ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128ExitG_retired : s2Step128ExitGBefore.retireSet s2Step128ExitGExtra.toFinset=s2Step128ExitGAfter := by
  unfold Arena.retireSet s2Step128ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step128ExitGBefore,s2Step128ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step128ExitG_checked : planRowResizeLog s2Step128ExitGBefore s2Step128ExitGRow 205 []=
    some (s2Step128ExitGAfter,s2Step128ExitGOut,shrinkRow 769 s2Step128ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step128ExitGBefore s2Step128ExitGRow 205 s2Step128ExitG_distinct s2Step128ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step128ExitGRow.payload.take 205) s2Step128ExitGRow.sign=s2Step128ExitGOut := by decide +kernel
  have hi : s2Step128ExitGRow.payload.drop 205=s2Step128ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step128ExitG_retired] at result
  exact result

private def s2Step128ExitGvBefore : Arena := s2Step128ExitFvAfter

private theorem s2Step128ExitGv_Incoming : rowsOwned s2Step128ExitGvBefore [s2Step128ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128ExitGRow,s2Step128ExitFRow,s2Step128ExitFvRow,s2Step128ExitGvRow] 3 s2Step128ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128ExitGvBefore (fun q => (0≤q ∧ q<716) ∨ (717≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128ExitGv_Outgoing : rowsOwned s2Step128ExitGvAfter [s2Step128ExitGvOut] :=
  hmrRows_owned_drop s2Step128ExitGvAfter [s2Step128ExitGOut,s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut] 3 s2Step128ExitBank_outgoingOwned

private theorem s2Step128ExitGv_distinct : (s2Step128ExitGvRow.sign::s2Step128ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128ExitGv_owned : (s2Step128ExitGvRow.sign::s2Step128ExitGvRow.payload).toFinset⊆s2Step128ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128ExitGvBefore (fun q => (0≤q ∧ q<716) ∨ (717≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128ExitGv_retired : s2Step128ExitGvBefore.retireSet s2Step128ExitGvExtra.toFinset=s2Step128ExitGvAfter := by
  unfold Arena.retireSet s2Step128ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step128ExitGvBefore,s2Step128ExitFvAfter,s2Step128ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step128ExitGv_checked : planRowResizeLog s2Step128ExitGvBefore s2Step128ExitGvRow 78 []=
    some (s2Step128ExitGvAfter,s2Step128ExitGvOut,shrinkRow 771 s2Step128ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step128ExitGvBefore s2Step128ExitGvRow 78 s2Step128ExitGv_distinct s2Step128ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step128ExitGvRow.payload.take 78) s2Step128ExitGvRow.sign=s2Step128ExitGvOut := by decide +kernel
  have hi : s2Step128ExitGvRow.payload.drop 78=s2Step128ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step128ExitGv_retired] at result
  exact result

private theorem s2Step128ExitBank_rows : planWindowRowsLog s2Step128ExitGBefore [(s2Step128ExitGRow,205),(s2Step128ExitFRow,204),(s2Step128ExitFvRow,78),(s2Step128ExitGvRow,78)] [[],[],[],[]]=
    some (s2Step128ExitGvAfter,[s2Step128ExitGOut,s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut],(shrinkRow 769 s2Step128ExitGExtra ++ (shrinkRow 768 s2Step128ExitFExtra ++ (shrinkRow 770 s2Step128ExitFvExtra ++ (shrinkRow 771 s2Step128ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step128ExitGvAfter [] []=some (s2Step128ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step128ExitGvBefore s2Step128ExitGvAfter s2Step128ExitGvAfter
    s2Step128ExitGvRow s2Step128ExitGvOut 78 [] [] [] []
    (shrinkRow 771 s2Step128ExitGvExtra) ([]) s2Step128ExitGv_Incoming s2Step128ExitGv_checked h4 s2Step128ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step128ExitFvBefore s2Step128ExitFvAfter s2Step128ExitGvAfter
    s2Step128ExitFvRow s2Step128ExitFvOut 78 [] [(s2Step128ExitGvRow,78)] [[]] [s2Step128ExitGvOut]
    (shrinkRow 770 s2Step128ExitFvExtra) ((shrinkRow 771 s2Step128ExitGvExtra ++ [])) s2Step128ExitFv_Incoming s2Step128ExitFv_checked h3 s2Step128ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step128ExitFBefore s2Step128ExitFAfter s2Step128ExitGvAfter
    s2Step128ExitFRow s2Step128ExitFOut 204 [] [(s2Step128ExitFvRow,78),(s2Step128ExitGvRow,78)] [[],[]] [s2Step128ExitFvOut,s2Step128ExitGvOut]
    (shrinkRow 768 s2Step128ExitFExtra) ((shrinkRow 770 s2Step128ExitFvExtra ++ (shrinkRow 771 s2Step128ExitGvExtra ++ []))) s2Step128ExitF_Incoming s2Step128ExitF_checked h2 s2Step128ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step128ExitGBefore s2Step128ExitGAfter s2Step128ExitGvAfter
    s2Step128ExitGRow s2Step128ExitGOut 205 [] [(s2Step128ExitFRow,204),(s2Step128ExitFvRow,78),(s2Step128ExitGvRow,78)] [[],[],[]] [s2Step128ExitFOut,s2Step128ExitFvOut,s2Step128ExitGvOut]
    (shrinkRow 769 s2Step128ExitGExtra) ((shrinkRow 768 s2Step128ExitFExtra ++ (shrinkRow 770 s2Step128ExitFvExtra ++ (shrinkRow 771 s2Step128ExitGvExtra ++ [])))) s2Step128ExitG_Incoming s2Step128ExitG_checked h1 s2Step128ExitG_Outgoing
  exact h0

private theorem s2Step128ExitBank_checked : compileHmrBankResizeLog .exit s2Step128ExitGBefore ⟨s2Step128ExitFRow,s2Step128ExitGRow,s2Step128ExitFvRow,s2Step128ExitGvRow⟩ ⟨204,205,78,78⟩ [[],[],[],[]]=
    some (s2Step128ExitGvAfter,⟨s2Step128ExitFOut,s2Step128ExitGOut,s2Step128ExitFvOut,s2Step128ExitGvOut⟩,(shrinkRow 769 s2Step128ExitGExtra ++ (shrinkRow 768 s2Step128ExitFExtra ++ (shrinkRow 770 s2Step128ExitFvExtra ++ (shrinkRow 771 s2Step128ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step128ExitBank_rows]
  rfl

private theorem s2Step128Add0_apart : Disjoint s2Step128Add0Arena.live s2Step128Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step128Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128Add0_card : s2Step128Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step128Add0_borrowed : s2Step128Add0Arena.checkBorrow (hmrHybridCount s2Step128Add0Arena s2Step128Add0B.length) s2Step128Add0Work=some s2Step128Add0During := by
  have len : s2Step128Add0Work.length=hmrHybridCount s2Step128Add0Arena s2Step128Add0B.length := by
    rw [hmrHybridCount,s2Step128Add0_card]
    decide +kernel
  have nd : s2Step128Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step128Add0Arena s2Step128Add0During s2Step128Add0Work.toFinset s2Step128Add0_bounded s2Step128Add0_apart rfl

private theorem s2Step128Add0_distinct : (837::814::849::(s2Step128Add0A++s2Step128Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128Add0_owned : (837::814::849::(s2Step128Add0A++s2Step128Add0B)).toFinset⊆s2Step128Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step128Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128Add0_checked : compileHmrHybridCinLog s2Step128Add0Arena 814 837 849 s2Step128Add0A s2Step128Add0B s2Step128Add0Work=some s2Step128Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step128Add0Arena s2Step128Add0During 814 837 849 s2Step128Add0A s2Step128Add0B s2Step128Add0Work
    (by decide +kernel) (by decide +kernel) s2Step128Add0_distinct
    (fun q hq => s2Step128Add0_owned (List.mem_toFinset.mpr hq)) s2Step128Add0_borrowed

private theorem s2Step128Add1_apart : Disjoint s2Step128Add1Arena.live s2Step128Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step128Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128Add1_card : s2Step128Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step128Add1_borrowed : s2Step128Add1Arena.checkBorrow (hmrHybridCount s2Step128Add1Arena s2Step128Add1B.length) s2Step128Add1Work=some s2Step128Add1During := by
  have len : s2Step128Add1Work.length=hmrHybridCount s2Step128Add1Arena s2Step128Add1B.length := by
    rw [hmrHybridCount,s2Step128Add1_card]
    decide +kernel
  have nd : s2Step128Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step128Add1Arena s2Step128Add1During s2Step128Add1Work.toFinset s2Step128Add1_bounded s2Step128Add1_apart rfl

private theorem s2Step128Add1_distinct : (837::814::849::(s2Step128Add1A++s2Step128Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128Add1_owned : (837::814::849::(s2Step128Add1A++s2Step128Add1B)).toFinset⊆s2Step128Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step128Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128Add1_checked : compileHmrHybridCinLog s2Step128Add1Arena 814 837 849 s2Step128Add1A s2Step128Add1B s2Step128Add1Work=some s2Step128Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step128Add1Arena s2Step128Add1During 814 837 849 s2Step128Add1A s2Step128Add1B s2Step128Add1Work
    (by decide +kernel) (by decide +kernel) s2Step128Add1_distinct
    (fun q hq => s2Step128Add1_owned (List.mem_toFinset.mpr hq)) s2Step128Add1_borrowed

private theorem s2Step128F4_apart : Disjoint (s2Step128Add0A++s2Step128Add0B).toFinset (s2Step128Add1A++s2Step128Add1B).toFinset := by
  have nd : ((s2Step128Add0A++s2Step128Add0B)++(s2Step128Add1A++s2Step128Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step128F4_carry : s2Step128F4FlagArena.checkBorrow 1 [849]=some s2Step128Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step128F4FlagArena,s2Step128HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step128F4FlagArena,s2Step128HeadFvAfter,s2Step128Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step128F4_distinct : (829::814::837::849::((s2Step128Add0A++s2Step128Add1A)++(s2Step128Add0B++s2Step128Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128F4_flag : s2Step128HeadFvAfter.checkBorrow 1 [837]=some s2Step128F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step128HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step128F4_owned : (829::814::((s2Step128Add0A++s2Step128Add1A)++(s2Step128Add0B++s2Step128Add1B))).toFinset⊆s2Step128HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step128HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128F4_checked : compileHmrHybridF4Log s2Step128HeadFvAfter 829 814 s2Step128Add0A s2Step128Add0B s2Step128Add1A s2Step128Add1B [837] [849] s2Step128Add0Work s2Step128Add1Work=some s2Step128F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step128HeadFvAfter s2Step128F4FlagArena s2Step128Add0Arena s2Step128Add0During s2Step128Add1During 829 814
    s2Step128Add0A s2Step128Add0B s2Step128Add1A s2Step128Add1B [837] [849] s2Step128Add0Work s2Step128Add1Work
    (fun q hq => s2Step128F4_owned (List.mem_toFinset.mpr hq)) s2Step128F4_flag s2Step128F4_carry
    s2Step128F4_distinct s2Step128F4_apart s2Step128Add0_checked s2Step128Add1_checked

private theorem s2Step128Front_branch : s2Step128FrontSigmaArena.checkBorrow 1 [814]=some s2Step128HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step128FrontSigmaArena,s2Step128EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step128FrontSigmaArena,s2Step128EntryGvAfter,s2Step128HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step128Front_entry : HmrFrontEntryValid s2Step128EntryFBefore s2Step128FrontBank 205 78 ⟨204,205,78,78⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step128FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step128EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step128EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step128FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step128Front_sigma : s2Step128EntryGvAfter.checkBorrow 1 [829]=some s2Step128FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step128EntryGvAfter,arenaWires]
  · rfl

private def s2Step128HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128HeadFBefore : Arena := s2Step128HeadGAfter

private def s2Step128HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716],768⟩

private def s2Step128HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step128HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩

private def s2Step128HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩

private theorem s2Step128HeadBank_incomingDistinct : ([s2Step128HeadGRow,s2Step128HeadFRow,s2Step128HeadGvRow,s2Step128HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128HeadF_Incoming : rowsOwned s2Step128HeadFBefore [s2Step128HeadFRow,s2Step128HeadGvRow,s2Step128HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128HeadGRow,s2Step128HeadFRow,s2Step128HeadGvRow,s2Step128HeadFvRow] 1 s2Step128HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128HeadBank_outgoingOwned : rowsOwned s2Step128HeadFvAfter [s2Step128HeadGOut,s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step128HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128HeadF_Outgoing : rowsOwned s2Step128HeadFvAfter [s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut] :=
  hmrRows_owned_drop s2Step128HeadFvAfter [s2Step128HeadGOut,s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut] 1 s2Step128HeadBank_outgoingOwned

private theorem s2Step128HeadF_distinct : (s2Step128HeadFRow.sign::s2Step128HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128HeadF_owned : (s2Step128HeadFRow.sign::s2Step128HeadFRow.payload).toFinset⊆s2Step128HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128HeadF_reserved : s2Step128HeadFBefore.reserve s2Step128HeadFFresh.toFinset=some s2Step128HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step128HeadFFresh,arenaWires]
  · norm_num [s2Step128HeadFBefore,s2Step128HeadGAfter,s2Step128HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step128HeadFAfter,s2Step128HeadFBefore,s2Step128HeadGAfter,s2Step128HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step128HeadF_checked : planRowResizeLog s2Step128HeadFBefore s2Step128HeadFRow 206 s2Step128HeadFFresh=
    some (s2Step128HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 781],768⟩,growRow 768 s2Step128HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step128HeadFBefore s2Step128HeadFAfter s2Step128HeadFRow 206 s2Step128HeadFFresh
    s2Step128HeadF_distinct s2Step128HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step128HeadF_reserved
  have rowEq : WindowRow.mk (s2Step128HeadFRow.payload++s2Step128HeadFFresh) s2Step128HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 781],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step128HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step128HeadFvBefore : Arena := s2Step128HeadGvAfter

private theorem s2Step128HeadFv_Incoming : rowsOwned s2Step128HeadFvBefore [s2Step128HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128HeadGRow,s2Step128HeadFRow,s2Step128HeadGvRow,s2Step128HeadFvRow] 3 s2Step128HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128HeadFv_Outgoing : rowsOwned s2Step128HeadFvAfter [s2Step128HeadFvOut] :=
  hmrRows_owned_drop s2Step128HeadFvAfter [s2Step128HeadGOut,s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut] 3 s2Step128HeadBank_outgoingOwned

private theorem s2Step128HeadFv_distinct : (s2Step128HeadFvRow.sign::s2Step128HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128HeadFv_owned : (s2Step128HeadFvRow.sign::s2Step128HeadFvRow.payload).toFinset⊆s2Step128HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128HeadFv_reserved : s2Step128HeadFvBefore.reserve s2Step128HeadFvFresh.toFinset=some s2Step128HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step128HeadFvFresh,arenaWires]
  · norm_num [s2Step128HeadFvBefore,s2Step128HeadGvAfter,s2Step128HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step128HeadFvAfter,s2Step128HeadFvBefore,s2Step128HeadGvAfter,s2Step128HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step128HeadFv_checked : planRowResizeLog s2Step128HeadFvBefore s2Step128HeadFvRow 79 s2Step128HeadFvFresh=
    some (s2Step128HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 822],770⟩,growRow 770 s2Step128HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step128HeadFvBefore s2Step128HeadFvAfter s2Step128HeadFvRow 79 s2Step128HeadFvFresh
    s2Step128HeadFv_distinct s2Step128HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step128HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step128HeadFvRow.payload++s2Step128HeadFvFresh) s2Step128HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 822],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step128HeadG_Incoming : rowsOwned s2Step128HeadGBefore [s2Step128HeadGRow,s2Step128HeadFRow,s2Step128HeadGvRow,s2Step128HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128HeadGRow,s2Step128HeadFRow,s2Step128HeadGvRow,s2Step128HeadFvRow] 0 s2Step128HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128HeadG_Outgoing : rowsOwned s2Step128HeadFvAfter [s2Step128HeadGOut,s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut] :=
  hmrRows_owned_drop s2Step128HeadFvAfter [s2Step128HeadGOut,s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut] 0 s2Step128HeadBank_outgoingOwned

private theorem s2Step128HeadG_distinct : (s2Step128HeadGRow.sign::s2Step128HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128HeadG_owned : (s2Step128HeadGRow.sign::s2Step128HeadGRow.payload).toFinset⊆s2Step128HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128HeadG_reserved : s2Step128HeadGBefore.reserve s2Step128HeadGFresh.toFinset=some s2Step128HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step128HeadGFresh,arenaWires]
  · norm_num [s2Step128HeadGBefore,s2Step128HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step128HeadGAfter,s2Step128HeadGBefore,s2Step128HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step128HeadG_checked : planRowResizeLog s2Step128HeadGBefore s2Step128HeadGRow 206 s2Step128HeadGFresh=
    some (s2Step128HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 834],769⟩,growRow 769 s2Step128HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step128HeadGBefore s2Step128HeadGAfter s2Step128HeadGRow 206 s2Step128HeadGFresh
    s2Step128HeadG_distinct s2Step128HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step128HeadG_reserved
  have rowEq : WindowRow.mk (s2Step128HeadGRow.payload++s2Step128HeadGFresh) s2Step128HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 834],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step128HeadGvBefore : Arena := s2Step128HeadFAfter

private theorem s2Step128HeadGv_Incoming : rowsOwned s2Step128HeadGvBefore [s2Step128HeadGvRow,s2Step128HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step128HeadGRow,s2Step128HeadFRow,s2Step128HeadGvRow,s2Step128HeadFvRow] 2 s2Step128HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step128HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step128HeadGv_Outgoing : rowsOwned s2Step128HeadFvAfter [s2Step128HeadGvOut,s2Step128HeadFvOut] :=
  hmrRows_owned_drop s2Step128HeadFvAfter [s2Step128HeadGOut,s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut] 2 s2Step128HeadBank_outgoingOwned

private theorem s2Step128HeadGv_distinct : (s2Step128HeadGvRow.sign::s2Step128HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step128HeadGv_owned : (s2Step128HeadGvRow.sign::s2Step128HeadGvRow.payload).toFinset⊆s2Step128HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step128HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step128HeadGv_reserved : s2Step128HeadGvBefore.reserve s2Step128HeadGvFresh.toFinset=some s2Step128HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step128HeadGvFresh,arenaWires]
  · norm_num [s2Step128HeadGvBefore,s2Step128HeadFAfter,s2Step128HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step128HeadGvAfter,s2Step128HeadGvBefore,s2Step128HeadFAfter,s2Step128HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step128HeadGv_checked : planRowResizeLog s2Step128HeadGvBefore s2Step128HeadGvRow 79 s2Step128HeadGvFresh=
    some (s2Step128HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 817],771⟩,growRow 771 s2Step128HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step128HeadGvBefore s2Step128HeadGvAfter s2Step128HeadGvRow 79 s2Step128HeadGvFresh
    s2Step128HeadGv_distinct s2Step128HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step128HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step128HeadGvRow.payload++s2Step128HeadGvFresh) s2Step128HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 817],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step128HeadBank_rows : planWindowRowsLog s2Step128HeadGBefore [(s2Step128HeadGRow,206),(s2Step128HeadFRow,206),(s2Step128HeadGvRow,79),(s2Step128HeadFvRow,79)] [s2Step128HeadGFresh,s2Step128HeadFFresh,s2Step128HeadGvFresh,s2Step128HeadFvFresh]=
    some (s2Step128HeadFvAfter,[s2Step128HeadGOut,s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut],(growRow 769 s2Step128HeadGFresh ++ (growRow 768 s2Step128HeadFFresh ++ (growRow 771 s2Step128HeadGvFresh ++ (growRow 770 s2Step128HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step128HeadFvAfter [] []=some (s2Step128HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step128HeadFvBefore s2Step128HeadFvAfter s2Step128HeadFvAfter
    s2Step128HeadFvRow s2Step128HeadFvOut 79 s2Step128HeadFvFresh [] [] []
    (growRow 770 s2Step128HeadFvFresh) ([]) s2Step128HeadFv_Incoming s2Step128HeadFv_checked h4 s2Step128HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step128HeadGvBefore s2Step128HeadGvAfter s2Step128HeadFvAfter
    s2Step128HeadGvRow s2Step128HeadGvOut 79 s2Step128HeadGvFresh [(s2Step128HeadFvRow,79)] [s2Step128HeadFvFresh] [s2Step128HeadFvOut]
    (growRow 771 s2Step128HeadGvFresh) ((growRow 770 s2Step128HeadFvFresh ++ [])) s2Step128HeadGv_Incoming s2Step128HeadGv_checked h3 s2Step128HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step128HeadFBefore s2Step128HeadFAfter s2Step128HeadFvAfter
    s2Step128HeadFRow s2Step128HeadFOut 206 s2Step128HeadFFresh [(s2Step128HeadGvRow,79),(s2Step128HeadFvRow,79)] [s2Step128HeadGvFresh,s2Step128HeadFvFresh] [s2Step128HeadGvOut,s2Step128HeadFvOut]
    (growRow 768 s2Step128HeadFFresh) ((growRow 771 s2Step128HeadGvFresh ++ (growRow 770 s2Step128HeadFvFresh ++ []))) s2Step128HeadF_Incoming s2Step128HeadF_checked h2 s2Step128HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step128HeadGBefore s2Step128HeadGAfter s2Step128HeadFvAfter
    s2Step128HeadGRow s2Step128HeadGOut 206 s2Step128HeadGFresh [(s2Step128HeadFRow,206),(s2Step128HeadGvRow,79),(s2Step128HeadFvRow,79)] [s2Step128HeadFFresh,s2Step128HeadGvFresh,s2Step128HeadFvFresh] [s2Step128HeadFOut,s2Step128HeadGvOut,s2Step128HeadFvOut]
    (growRow 769 s2Step128HeadGFresh) ((growRow 768 s2Step128HeadFFresh ++ (growRow 771 s2Step128HeadGvFresh ++ (growRow 770 s2Step128HeadFvFresh ++ [])))) s2Step128HeadG_Incoming s2Step128HeadG_checked h1 s2Step128HeadG_Outgoing
  exact h0

private theorem s2Step128HeadBank_checked : compileHmrBankResizeLog .headroom s2Step128HeadGBefore ⟨s2Step128HeadFRow,s2Step128HeadGRow,s2Step128HeadFvRow,s2Step128HeadGvRow⟩ ⟨206,206,79,79⟩ [s2Step128HeadGFresh,s2Step128HeadFFresh,s2Step128HeadGvFresh,s2Step128HeadFvFresh]=
    some (s2Step128HeadFvAfter,⟨s2Step128HeadFOut,s2Step128HeadGOut,s2Step128HeadFvOut,s2Step128HeadGvOut⟩,(growRow 769 s2Step128HeadGFresh ++ (growRow 768 s2Step128HeadFFresh ++ (growRow 771 s2Step128HeadGvFresh ++ (growRow 770 s2Step128HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step128HeadBank_rows]
  rfl

private theorem s2Step128Front_checked : compileHmrSourceFrontLog s2Step128EntryFBefore s2Step128FrontBank 205 78 ⟨204,205,78,78⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step128FrontLog=some s2Step128FrontPlan := by
  have pairEq : s2Step128FrontPair=⟨s2Step128HeadFRow,s2Step128HeadGRow,s2Step128HeadFvRow,s2Step128HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step128FrontHead=⟨s2Step128ExitFRow,s2Step128ExitGRow,s2Step128ExitFvRow,s2Step128ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step128Add0A=s2Step128FrontHead.f.wires := by decide +kernel
  have gEq : s2Step128Add0B=s2Step128FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step128Add1A=s2Step128FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step128Add1B=s2Step128FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step128EntryFBefore s2Step128FrontBank 205 78 ⟨204,205,78,78⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step128FrontLog s2Step128FrontPlan
  · exact s2Step128Front_entry
  · exact s2Step128EntryBank_checked
  · exact s2Step128Front_sigma
  · rfl
  · exact s2Step128Front_branch
  · rfl
  · simpa only [s2Step128FrontPlan,pairEq] using s2Step128HeadBank_checked
  · simpa only [s2Step128FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step128F4_checked
  · exact s2Step128Counter_checked
  · rfl
  · simpa only [s2Step128FrontPlan,headEq] using s2Step128ExitBank_checked

private theorem s2Step128Complete_explicit_checked : compileHmrEarlyStepLog s2Step128EntryFBefore s2Step128FrontBank 205 78 ⟨204,205,78,78⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step128CompleteLog=some s2Step128CompletePlan := by
  let Q := s2Step128EarlyControlPlan
  have hq := s2Step128EarlyControl_plan_checked
  have fv1 : s2Step128CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step128CompleteOut.fv.payload[2]?.getD s2Step128CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step128CompleteOut.fv.payload[3]?.getD s2Step128CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step128CompleteOut.fv.payload[4]?.getD s2Step128CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step128EntryFBefore s2Step128EarlyControlArena s2Step128FrontBank 205 78 ⟨204,205,78,78⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step128CompleteLog s2Step128FrontPlan Q
    s2Step128Front_checked s2Step128Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step128Complete_owned s2Step128Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step128EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 s2Step128CompleteOut.fv.second (s2Step128CompleteOut.fv.payload[2]?.getD s2Step128CompleteOut.fv.sign) (s2Step128CompleteOut.fv.payload[3]?.getD s2Step128CompleteOut.fv.sign) (s2Step128CompleteOut.fv.payload[4]?.getD s2Step128CompleteOut.fv.sign) 814 37 s2Step128EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep128Arena : Arena := s2Step128EntryFBefore
def s2PrivateStep128Bank : WindowBank := s2Step128FrontBank
def s2PrivateStep128Spec : HmrSourceWalkStepLog := ⟨205,78,⟨204,205,78,78⟩,37,.early s2Step128CompleteLog⟩
def s2PrivateStep128Plan : HmrSourceStepPlan := .early s2Step128CompletePlan
theorem s2PrivateStep128_source : s2PrivateStep128Spec=s2ObservedLogs128[0] := rfl
theorem s2PrivateStep128_checked : compileHmrSourceStepLog s2PrivateStep128Arena s2PrivateStep128Bank
    s2PrivateStep128Spec.fgWidth s2PrivateStep128Spec.vWidth s2PrivateStep128Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 128 s2PrivateStep128Spec.need none s2PrivateStep128Spec.log=some s2PrivateStep128Plan := by
  change compileHmrSourceStepLog s2Step128EntryFBefore s2Step128FrontBank 205 78 ⟨204,205,78,78⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 128 37 none (.early s2Step128CompleteLog)=some (.early s2Step128CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 128<498)]
  rw [s2Step128Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
