import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep125
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

private def s2Step127CompleteMoves : List (Wire × Wire) := [(834,205),(814,717)]

private def s2Step127EarlyControlLog : HmrEarlyControlLog := ⟨[814, 834, 781, 817, 822],[837],[849],[790, 815, 867, 877, 879, 882],[]⟩

private def s2Step127FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[822], [817], [781], [825]],[[], [], [], []]⟩,[829],[802],[837],[849],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815]⟩

private def s2Step127CompleteLog : HmrEarlyStepLog := ⟨s2Step127FrontLog,s2Step127CompleteMoves,s2Step127EarlyControlLog⟩

private def s2Step127ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716],768⟩

private def s2Step127ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step127ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204],769⟩

private def s2Step127ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step127FrontOut : WindowBank := ⟨s2Step127ExitFOut,s2Step127ExitGOut,s2Step127ExitFvOut,s2Step127ExitGvOut⟩

private def s2Step127CompleteOut : WindowBank := s2Step127FrontOut.repacked s2Step127CompleteMoves

private def s2Step127EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step127EarlyControlPositiveArena,[837],s2Step127EarlyControlEqualityArena,[849],⟨⟨829,false⟩,[⟨⟨837,false⟩,849⟩]⟩⟩

private def s2Step127EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<883)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,814⟩,⟨⟨774,false⟩,834⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,822⟩]⟩

private def s2Step127EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step127EarlyControlZeroArena,s2Step127EarlyControlZeroPlan,s2Step127EarlyControlClassPlan,s2Step127EarlyControlFlagArena,s2Step127EarlyControlFittedArena,s2Step127EarlyControlHistoryArena,s2Step127EarlyControlSigmaArena,s2Step127EarlyControlOutputArena,s2Step127EarlyControlLog⟩

private def s2Step127CounterWork : List Wire := [837, 849, 790, 815]

private theorem s2Step127Counter_bounded : s2Step127CounterWork.toFinset⊆arenaWires := by norm_num [s2Step127CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step127HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127CounterDuring : Arena := ⟨s2Step127HeadFvAfter.live∪s2Step127CounterWork.toFinset,Finset.union_subset s2Step127HeadFvAfter.bounded s2Step127Counter_bounded⟩

private def s2Step127EntryFFresh : List Wire := []

private def s2Step127EntryFvFresh : List Wire := []

private def s2Step127EntryGFresh : List Wire := []

private def s2Step127EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127EntryGvAfter : Arena := s2Step127EntryFBefore

private def s2Step127EntryGvFresh : List Wire := []

private def s2Step127ExitFExtra : List Wire := [717, 817]

private def s2Step127ExitGExtra : List Wire := [205, 822]

private def s2Step127ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<717) ∨ (718≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127ExitGvExtra : List Wire := [781]

private def s2Step127Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step127Add0_bounded : s2Step127Add0Work.toFinset⊆arenaWires := by
  have h : s2Step127Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step127Add0During : Arena := ⟨s2Step127Add0Arena.live∪s2Step127Add0Work.toFinset,Finset.union_subset s2Step127Add0Arena.bounded s2Step127Add0_bounded⟩

private def s2Step127Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step127Add1_bounded : s2Step127Add1Work.toFinset⊆arenaWires := by
  have h : s2Step127Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step127Add1During : Arena := ⟨s2Step127Add1Arena.live∪s2Step127Add1Work.toFinset,Finset.union_subset s2Step127Add1Arena.bounded s2Step127Add1_bounded⟩

private def s2Step127F4FlagArena : Arena := ⟨s2Step127HeadFvAfter.live∪{837},Finset.union_subset s2Step127HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step127F4Plan : HmrHybridF4Plan := ⟨s2Step127F4FlagArena,[837],s2Step127Add0Arena,[849],s2Step127Add0During,s2Step127Add0Work,s2Step127Add1During,s2Step127Add1Work⟩

private def s2Step127HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 817],768⟩

private def s2Step127HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step127HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 822],769⟩

private def s2Step127HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 781],771⟩

private def s2Step127FrontHead : WindowBank := ⟨s2Step127HeadFOut,s2Step127HeadGOut,s2Step127HeadFvOut,s2Step127HeadGvOut⟩

private def s2Step127EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717],768⟩

private def s2Step127EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step127EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],769⟩

private def s2Step127EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step127FrontPair : WindowBank := ⟨s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut⟩

private def s2Step127FrontSigmaArena : Arena := ⟨s2Step127EntryGvAfter.live∪{829},Finset.union_subset s2Step127EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step127HeadFFresh : List Wire := [817]

private def s2Step127HeadFvFresh : List Wire := [825]

private def s2Step127HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127HeadGFresh : List Wire := [822]

private def s2Step127HeadGvFresh : List Wire := [781]

private def s2Step127FrontPlan : HmrSourceFront := ⟨s2Step127EntryGvAfter,s2Step127FrontPair,(growRow 768 s2Step127EntryFFresh ++ (growRow 769 s2Step127EntryGFresh ++ (growRow 770 s2Step127EntryFvFresh ++ (growRow 771 s2Step127EntryGvFresh ++ [])))),s2Step127FrontSigmaArena,[829],s2Step127HeadGBefore,[802],
  s2Step127HeadFvAfter,s2Step127FrontHead,(growRow 769 s2Step127HeadGFresh ++ (growRow 768 s2Step127HeadFFresh ++ (growRow 771 s2Step127HeadGvFresh ++ (growRow 770 s2Step127HeadFvFresh ++ [])))),s2Step127F4Plan,s2Step127CounterDuring,s2Step127CounterWork,s2Step127ExitGvAfter,s2Step127FrontOut,(shrinkRow 769 s2Step127ExitGExtra ++ (shrinkRow 768 s2Step127ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step127ExitGvExtra ++ []))))⟩

private def s2Step127CompletePlan : HmrEarlyStepPlan := ⟨s2Step127FrontPlan,s2Step127EarlyControlArena,s2Step127EarlyControlPlan,s2Step127CompleteMoves⟩

private theorem s2Step127Complete_apart : List.Disjoint (s2Step127CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step127CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step127Complete_owned : (s2Step127CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step127CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,717),(718,781),(782,790),(791,815),(816,817),(818,822),(823,834),(835,837),(838,849),(850,867),(868,877),(878,879),(880,882)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step127CompleteRelocationMove0Borrowed : Arena := ⟨s2Step127ExitGvAfter.live∪{205},Finset.union_subset s2Step127ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step127CompleteRelocationMove1Borrowed : Arena := ⟨s2Step127CompleteRelocationMove0After.live∪{717},Finset.union_subset s2Step127CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step127CompleteRelocation_move0_owned : 834∈s2Step127ExitGvAfter.live := by norm_num [s2Step127ExitGvAfter,arenaWires]

private theorem s2Step127CompleteRelocation_move0_reserve : s2Step127ExitGvAfter.reserve {205}=some s2Step127CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step127ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step127CompleteRelocation_move0_retire : s2Step127CompleteRelocationMove0Borrowed.retireSet {834}=s2Step127CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step127CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step127CompleteRelocationMove0Borrowed,s2Step127ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step127CompleteRelocation_move1_owned : 814∈s2Step127CompleteRelocationMove0After.live := by norm_num [s2Step127CompleteRelocationMove0After,arenaWires]

private theorem s2Step127CompleteRelocation_move1_reserve : s2Step127CompleteRelocationMove0After.reserve {717}=some s2Step127CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step127CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step127CompleteRelocation_move1_retire : s2Step127CompleteRelocationMove1Borrowed.retireSet {814}=s2Step127EarlyControlArena := by
  unfold Arena.retireSet s2Step127EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step127CompleteRelocationMove1Borrowed,s2Step127CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step127CompleteRelocation_checked : s2Step127ExitGvAfter.checkRepack [(834,205),(814,717)]=some s2Step127EarlyControlArena := by
  have tail2 : s2Step127EarlyControlArena.checkRepack []=some s2Step127EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step127CompleteRelocationMove0After s2Step127CompleteRelocationMove1Borrowed s2Step127EarlyControlArena s2Step127EarlyControlArena 814 717 []
    s2Step127CompleteRelocation_move1_owned s2Step127CompleteRelocation_move1_reserve s2Step127CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step127ExitGvAfter s2Step127CompleteRelocationMove0Borrowed s2Step127CompleteRelocationMove0After s2Step127EarlyControlArena 834 205 [(814,717)]
    s2Step127CompleteRelocation_move0_owned s2Step127CompleteRelocation_move0_reserve s2Step127CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step127Complete_repack : s2Step127ExitGvAfter.checkRepack s2Step127CompleteMoves=some s2Step127EarlyControlArena := by
  simpa only [s2Step127CompleteMoves] using s2Step127CompleteRelocation_checked

private theorem s2Step127EarlyControl_branchOwned : ([802] : List Wire).toFinset⊆s2Step127EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_branch : compileHmrBranchRetirement s2Step127EarlyControlSigmaArena 802=some s2Step127EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step127EarlyControl_branchOwned
  · ext q
    simp [s2Step127EarlyControlOutputArena,s2Step127EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step127EarlyControl_classEqualityBorrow : s2Step127EarlyControlPositiveArena.checkBorrow (([829, 837] : List Wire).length-1) s2Step127EarlyControlLog.classWork=some s2Step127EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step127EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step127EarlyControlEqualityArena,s2Step127EarlyControlPositiveArena,s2Step127EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step127EarlyControl_classEqualityOwned : ([829, 837] : List Wire).toFinset⊆s2Step127EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_classEquality : compileHmrEqualityLog s2Step127EarlyControlPositiveArena [829, 837] 0 s2Step127EarlyControlLog.classWork=some (s2Step127EarlyControlEqualityArena,s2Step127EarlyControlLog.classWork,s2Step127EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step127EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step127EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step127EarlyControl_classOwned : ([777, 822, 829] : List Wire).toFinset⊆s2Step127EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_positiveBorrow : s2Step127EarlyControlZeroArena.checkBorrow (1) s2Step127EarlyControlLog.positiveWork=some s2Step127EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step127EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step127EarlyControlPositiveArena,s2Step127EarlyControlZeroArena,s2Step127EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step127EarlyControl_class : compileHmrSourceClassLog s2Step127EarlyControlZeroArena false 777 s2Step127EarlyControlZeroPlan.top 0 829 s2Step127EarlyControlLog.positiveWork s2Step127EarlyControlLog.classWork=some s2Step127EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step127EarlyControlClassPlan s2Step127EarlyControlZeroArena false 777 s2Step127EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step127EarlyControl_classOwned
  · exact s2Step127EarlyControl_positiveBorrow
  · exact s2Step127EarlyControl_classEquality

private theorem s2Step127EarlyControl_entryRecordOwned : ([802, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_entrySigmaOwned : ([829, 254] : List Wire).toFinset⊆s2Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_fitBorrow : s2Step127EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step127EarlyControlLog.recordFresh=some s2Step127EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step127EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
      decide +kernel
    · ext q
      simp [s2Step127EarlyControlFittedArena,s2Step127EarlyControlFlagArena,s2Step127EarlyControlLog,arenaWires]

private theorem s2Step127EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step127EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlFlagArena (fun q => (0≤q ∧ q<883)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_fit : compileHmrRecordGrowLog s2Step127EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step127EarlyControlLog.recordFresh=some s2Step127EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step127EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step127EarlyControl_fitBorrow

private theorem s2Step127EarlyControl_flagsBorrow : s2Step127EarlyControlEqualityArena.checkBorrow (6) s2Step127EarlyControlLog.flagWork=some s2Step127EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step127EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step127EarlyControlFlagArena,s2Step127EarlyControlEqualityArena,s2Step127EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step127EarlyControl_flagsOwned : ([849, 253, 252, 251] : List Wire).toFinset⊆s2Step127EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_flags : compileHmrFlagsLog s2Step127EarlyControlClassPlan.equalityArena s2Step127EarlyControlClassPlan.equality.top 253 252 251 s2Step127EarlyControlLog.flagWork=some s2Step127EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step127EarlyControl_flagsOwned⟩
  · exact s2Step127EarlyControl_flagsBorrow

private theorem s2Step127EarlyControl_historyBorrow : s2Step127EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step127EarlyControlLog.recordFresh=some s2Step127EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step127EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step127EarlyControlHistoryArena,s2Step127EarlyControlArena,s2Step127EarlyControlLog,arenaWires]

private theorem s2Step127EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_history : compileHmrRecordGrowLog s2Step127EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step127EarlyControlLog.recordFresh=some s2Step127EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step127EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step127EarlyControl_historyBorrow

private theorem s2Step127EarlyControl_sigmaOwned : ([254, 829] : List Wire).toFinset⊆s2Step127EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step127EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_sigmaRelease : s2Step127EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step127EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step127EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step127EarlyControlSigmaArena,s2Step127EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step127EarlyControl_sigma : compileHmrSigmaDropLog s2Step127EarlyControlHistoryArena false 0 0 254 829 []=some s2Step127EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step127EarlyControl_sigmaOwned⟩
  · exact s2Step127EarlyControl_sigmaRelease

private theorem s2Step127EarlyControl_zeroBorrow : s2Step127EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step127EarlyControlLog.zeroWork=some s2Step127EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step127EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step127EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step127EarlyControlZeroArena,s2Step127EarlyControlArena,s2Step127EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step127EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step127EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step127EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<834) ∨ (835≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EarlyControl_zero : compileHmrEqualityLog s2Step127EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step127EarlyControlLog.zeroWork=some (s2Step127EarlyControlZeroArena,s2Step127EarlyControlLog.zeroWork,s2Step127EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step127EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step127EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step127EarlyControl_logged : s2Step127EarlyControlPlan.Logged s2Step127EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 802 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step127EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step127EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step127EarlyControl_zero
  · exact s2Step127EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step127EarlyControl_flags
  · exact s2Step127EarlyControl_fit
  · exact s2Step127EarlyControl_history
  · exact s2Step127EarlyControl_sigma
  · exact s2Step127EarlyControl_branch

private theorem s2Step127EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step127EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 802 37 s2Step127EarlyControlLog=some s2Step127EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step127EarlyControlPlan s2Step127EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 802 37 s2Step127EarlyControl_logged

private def s2Step127EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717],768⟩

private def s2Step127EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step127EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],769⟩

private def s2Step127EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private def s2Step127FrontBank : WindowBank := ⟨s2Step127EntryFRow,s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow⟩

private def s2Step127Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 817, 768]

private def s2Step127Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 822, 769]

private def s2Step127Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 770]

private def s2Step127Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 781, 771]

private theorem s2Step127Counter_apart : Disjoint s2Step127HeadFvAfter.live s2Step127CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step127HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127Counter_borrowed : s2Step127HeadFvAfter.checkBorrow 4 s2Step127CounterWork=some s2Step127CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step127HeadFvAfter s2Step127CounterDuring s2Step127CounterWork.toFinset s2Step127Counter_bounded s2Step127Counter_apart rfl

private theorem s2Step127Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step127HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step127HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127Counter_checked : compileHmrCounterStepLog s2Step127HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step127CounterWork=some s2Step127CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step127HeadFvAfter.live := fun q hq => s2Step127Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step127Counter_borrowed

private def s2Step127EntryFAfter : Arena := s2Step127EntryFBefore

private theorem s2Step127EntryBank_incomingDistinct : ([s2Step127EntryFRow,s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127EntryF_Incoming : rowsOwned s2Step127EntryFBefore [s2Step127EntryFRow,s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127EntryFRow,s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow] 0 s2Step127EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127EntryBank_outgoingOwned : rowsOwned s2Step127EntryGvAfter [s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step127EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127EntryF_Outgoing : rowsOwned s2Step127EntryGvAfter [s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut] :=
  hmrRows_owned_drop s2Step127EntryGvAfter [s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut] 0 s2Step127EntryBank_outgoingOwned

private theorem s2Step127EntryF_distinct : (s2Step127EntryFRow.sign::s2Step127EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127EntryF_owned : (s2Step127EntryFRow.sign::s2Step127EntryFRow.payload).toFinset⊆s2Step127EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EntryF_reserved : s2Step127EntryFBefore.reserve s2Step127EntryFFresh.toFinset=some s2Step127EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step127EntryFFresh,arenaWires]
  · norm_num [s2Step127EntryFBefore,s2Step127EntryFFresh,arenaWires]
  · simp only [s2Step127EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step127EntryF_checked : planRowResizeLog s2Step127EntryFBefore s2Step127EntryFRow 206 s2Step127EntryFFresh=
    some (s2Step127EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717],768⟩,growRow 768 s2Step127EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step127EntryFBefore s2Step127EntryFAfter s2Step127EntryFRow 206 s2Step127EntryFFresh
    s2Step127EntryF_distinct s2Step127EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127EntryF_reserved
  have rowEq : WindowRow.mk (s2Step127EntryFRow.payload++s2Step127EntryFFresh) s2Step127EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step127EntryFvAfter : Arena := s2Step127EntryFBefore

private def s2Step127EntryFvBefore : Arena := s2Step127EntryFBefore

private theorem s2Step127EntryFv_Incoming : rowsOwned s2Step127EntryFvBefore [s2Step127EntryFvRow,s2Step127EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127EntryFRow,s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow] 2 s2Step127EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127EntryFv_Outgoing : rowsOwned s2Step127EntryGvAfter [s2Step127EntryFvOut,s2Step127EntryGvOut] :=
  hmrRows_owned_drop s2Step127EntryGvAfter [s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut] 2 s2Step127EntryBank_outgoingOwned

private theorem s2Step127EntryFv_distinct : (s2Step127EntryFvRow.sign::s2Step127EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127EntryFv_owned : (s2Step127EntryFvRow.sign::s2Step127EntryFvRow.payload).toFinset⊆s2Step127EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EntryFv_reserved : s2Step127EntryFvBefore.reserve s2Step127EntryFvFresh.toFinset=some s2Step127EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step127EntryFvFresh,arenaWires]
  · norm_num [s2Step127EntryFvBefore,s2Step127EntryFBefore,s2Step127EntryFvFresh,arenaWires]
  · simp only [s2Step127EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step127EntryFv_checked : planRowResizeLog s2Step127EntryFvBefore s2Step127EntryFvRow 77 s2Step127EntryFvFresh=
    some (s2Step127EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩,growRow 770 s2Step127EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step127EntryFvBefore s2Step127EntryFvAfter s2Step127EntryFvRow 77 s2Step127EntryFvFresh
    s2Step127EntryFv_distinct s2Step127EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step127EntryFvRow.payload++s2Step127EntryFvFresh) s2Step127EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step127EntryGAfter : Arena := s2Step127EntryFBefore

private def s2Step127EntryGBefore : Arena := s2Step127EntryFBefore

private theorem s2Step127EntryG_Incoming : rowsOwned s2Step127EntryGBefore [s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127EntryFRow,s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow] 1 s2Step127EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127EntryG_Outgoing : rowsOwned s2Step127EntryGvAfter [s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut] :=
  hmrRows_owned_drop s2Step127EntryGvAfter [s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut] 1 s2Step127EntryBank_outgoingOwned

private theorem s2Step127EntryG_distinct : (s2Step127EntryGRow.sign::s2Step127EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127EntryG_owned : (s2Step127EntryGRow.sign::s2Step127EntryGRow.payload).toFinset⊆s2Step127EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EntryG_reserved : s2Step127EntryGBefore.reserve s2Step127EntryGFresh.toFinset=some s2Step127EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step127EntryGFresh,arenaWires]
  · norm_num [s2Step127EntryGBefore,s2Step127EntryFBefore,s2Step127EntryGFresh,arenaWires]
  · simp only [s2Step127EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step127EntryG_checked : planRowResizeLog s2Step127EntryGBefore s2Step127EntryGRow 206 s2Step127EntryGFresh=
    some (s2Step127EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],769⟩,growRow 769 s2Step127EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step127EntryGBefore s2Step127EntryGAfter s2Step127EntryGRow 206 s2Step127EntryGFresh
    s2Step127EntryG_distinct s2Step127EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127EntryG_reserved
  have rowEq : WindowRow.mk (s2Step127EntryGRow.payload++s2Step127EntryGFresh) s2Step127EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step127EntryGvBefore : Arena := s2Step127EntryFBefore

private theorem s2Step127EntryGv_Incoming : rowsOwned s2Step127EntryGvBefore [s2Step127EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127EntryFRow,s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow] 3 s2Step127EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127EntryGv_Outgoing : rowsOwned s2Step127EntryGvAfter [s2Step127EntryGvOut] :=
  hmrRows_owned_drop s2Step127EntryGvAfter [s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut] 3 s2Step127EntryBank_outgoingOwned

private theorem s2Step127EntryGv_distinct : (s2Step127EntryGvRow.sign::s2Step127EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127EntryGv_owned : (s2Step127EntryGvRow.sign::s2Step127EntryGvRow.payload).toFinset⊆s2Step127EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127EntryGv_reserved : s2Step127EntryGvBefore.reserve s2Step127EntryGvFresh.toFinset=some s2Step127EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step127EntryGvFresh,arenaWires]
  · norm_num [s2Step127EntryGvBefore,s2Step127EntryFBefore,s2Step127EntryGvFresh,arenaWires]
  · simp only [s2Step127EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step127EntryGv_checked : planRowResizeLog s2Step127EntryGvBefore s2Step127EntryGvRow 77 s2Step127EntryGvFresh=
    some (s2Step127EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩,growRow 771 s2Step127EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step127EntryGvBefore s2Step127EntryGvAfter s2Step127EntryGvRow 77 s2Step127EntryGvFresh
    s2Step127EntryGv_distinct s2Step127EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step127EntryGvRow.payload++s2Step127EntryGvFresh) s2Step127EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step127EntryBank_rows : planWindowRowsLog s2Step127EntryFBefore [(s2Step127EntryFRow,206),(s2Step127EntryGRow,206),(s2Step127EntryFvRow,77),(s2Step127EntryGvRow,77)] [s2Step127EntryFFresh,s2Step127EntryGFresh,s2Step127EntryFvFresh,s2Step127EntryGvFresh]=
    some (s2Step127EntryGvAfter,[s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut],(growRow 768 s2Step127EntryFFresh ++ (growRow 769 s2Step127EntryGFresh ++ (growRow 770 s2Step127EntryFvFresh ++ (growRow 771 s2Step127EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step127EntryGvAfter [] []=some (s2Step127EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step127EntryGvBefore s2Step127EntryGvAfter s2Step127EntryGvAfter
    s2Step127EntryGvRow s2Step127EntryGvOut 77 s2Step127EntryGvFresh [] [] []
    (growRow 771 s2Step127EntryGvFresh) ([]) s2Step127EntryGv_Incoming s2Step127EntryGv_checked h4 s2Step127EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step127EntryFvBefore s2Step127EntryFvAfter s2Step127EntryGvAfter
    s2Step127EntryFvRow s2Step127EntryFvOut 77 s2Step127EntryFvFresh [(s2Step127EntryGvRow,77)] [s2Step127EntryGvFresh] [s2Step127EntryGvOut]
    (growRow 770 s2Step127EntryFvFresh) ((growRow 771 s2Step127EntryGvFresh ++ [])) s2Step127EntryFv_Incoming s2Step127EntryFv_checked h3 s2Step127EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step127EntryGBefore s2Step127EntryGAfter s2Step127EntryGvAfter
    s2Step127EntryGRow s2Step127EntryGOut 206 s2Step127EntryGFresh [(s2Step127EntryFvRow,77),(s2Step127EntryGvRow,77)] [s2Step127EntryFvFresh,s2Step127EntryGvFresh] [s2Step127EntryFvOut,s2Step127EntryGvOut]
    (growRow 769 s2Step127EntryGFresh) ((growRow 770 s2Step127EntryFvFresh ++ (growRow 771 s2Step127EntryGvFresh ++ []))) s2Step127EntryG_Incoming s2Step127EntryG_checked h2 s2Step127EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step127EntryFBefore s2Step127EntryFAfter s2Step127EntryGvAfter
    s2Step127EntryFRow s2Step127EntryFOut 206 s2Step127EntryFFresh [(s2Step127EntryGRow,206),(s2Step127EntryFvRow,77),(s2Step127EntryGvRow,77)] [s2Step127EntryGFresh,s2Step127EntryFvFresh,s2Step127EntryGvFresh] [s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut]
    (growRow 768 s2Step127EntryFFresh) ((growRow 769 s2Step127EntryGFresh ++ (growRow 770 s2Step127EntryFvFresh ++ (growRow 771 s2Step127EntryGvFresh ++ [])))) s2Step127EntryF_Incoming s2Step127EntryF_checked h1 s2Step127EntryF_Outgoing
  exact h0

private theorem s2Step127EntryBank_checked : compileHmrBankResizeLog .entry s2Step127EntryFBefore ⟨s2Step127EntryFRow,s2Step127EntryGRow,s2Step127EntryFvRow,s2Step127EntryGvRow⟩ ⟨206,206,77,77⟩ [s2Step127EntryFFresh,s2Step127EntryGFresh,s2Step127EntryFvFresh,s2Step127EntryGvFresh]=
    some (s2Step127EntryGvAfter,⟨s2Step127EntryFOut,s2Step127EntryGOut,s2Step127EntryFvOut,s2Step127EntryGvOut⟩,(growRow 768 s2Step127EntryFFresh ++ (growRow 769 s2Step127EntryGFresh ++ (growRow 770 s2Step127EntryFvFresh ++ (growRow 771 s2Step127EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step127EntryBank_rows]
  rfl

private def s2Step127ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<717) ∨ (718≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127ExitFBefore : Arena := s2Step127ExitGAfter

private def s2Step127ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 817],768⟩

private def s2Step127ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩

private def s2Step127ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 822],769⟩

private def s2Step127ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 781],771⟩

private theorem s2Step127ExitBank_incomingDistinct : ([s2Step127ExitGRow,s2Step127ExitFRow,s2Step127ExitFvRow,s2Step127ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127ExitF_Incoming : rowsOwned s2Step127ExitFBefore [s2Step127ExitFRow,s2Step127ExitFvRow,s2Step127ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127ExitGRow,s2Step127ExitFRow,s2Step127ExitFvRow,s2Step127ExitGvRow] 1 s2Step127ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127ExitFBefore (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127ExitBank_outgoingOwned : rowsOwned s2Step127ExitGvAfter [s2Step127ExitGOut,s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step127ExitGvAfter (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<717) ∨ (718≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127ExitF_Outgoing : rowsOwned s2Step127ExitGvAfter [s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut] :=
  hmrRows_owned_drop s2Step127ExitGvAfter [s2Step127ExitGOut,s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut] 1 s2Step127ExitBank_outgoingOwned

private theorem s2Step127ExitF_distinct : (s2Step127ExitFRow.sign::s2Step127ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127ExitF_owned : (s2Step127ExitFRow.sign::s2Step127ExitFRow.payload).toFinset⊆s2Step127ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127ExitFBefore (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127ExitF_retired : s2Step127ExitFBefore.retireSet s2Step127ExitFExtra.toFinset=s2Step127ExitFAfter := by
  unfold Arena.retireSet s2Step127ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step127ExitFBefore,s2Step127ExitGAfter,s2Step127ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step127ExitF_checked : planRowResizeLog s2Step127ExitFBefore s2Step127ExitFRow 205 []=
    some (s2Step127ExitFAfter,s2Step127ExitFOut,shrinkRow 768 s2Step127ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step127ExitFBefore s2Step127ExitFRow 205 s2Step127ExitF_distinct s2Step127ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step127ExitFRow.payload.take 205) s2Step127ExitFRow.sign=s2Step127ExitFOut := by decide +kernel
  have hi : s2Step127ExitFRow.payload.drop 205=s2Step127ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step127ExitF_retired] at result
  exact result

private def s2Step127ExitFvAfter : Arena := s2Step127ExitFAfter

private def s2Step127ExitFvBefore : Arena := s2Step127ExitFAfter

private theorem s2Step127ExitFv_Incoming : rowsOwned s2Step127ExitFvBefore [s2Step127ExitFvRow,s2Step127ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127ExitGRow,s2Step127ExitFRow,s2Step127ExitFvRow,s2Step127ExitGvRow] 2 s2Step127ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127ExitFvBefore (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<717) ∨ (718≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127ExitFv_Outgoing : rowsOwned s2Step127ExitGvAfter [s2Step127ExitFvOut,s2Step127ExitGvOut] :=
  hmrRows_owned_drop s2Step127ExitGvAfter [s2Step127ExitGOut,s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut] 2 s2Step127ExitBank_outgoingOwned

private theorem s2Step127ExitFv_distinct : (s2Step127ExitFvRow.sign::s2Step127ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127ExitFv_owned : (s2Step127ExitFvRow.sign::s2Step127ExitFvRow.payload).toFinset⊆s2Step127ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127ExitFvBefore (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<717) ∨ (718≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127ExitFv_reserved : s2Step127ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step127ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step127ExitFv_checked : planRowResizeLog s2Step127ExitFvBefore s2Step127ExitFvRow 78 []=
    some (s2Step127ExitFvAfter,s2Step127ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step127ExitFvBefore s2Step127ExitFvAfter s2Step127ExitFvRow 78 []
    s2Step127ExitFv_distinct s2Step127ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step127ExitFvRow.payload++[]) s2Step127ExitFvRow.sign=s2Step127ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step127ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step127ExitG_Incoming : rowsOwned s2Step127ExitGBefore [s2Step127ExitGRow,s2Step127ExitFRow,s2Step127ExitFvRow,s2Step127ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127ExitGRow,s2Step127ExitFRow,s2Step127ExitFvRow,s2Step127ExitGvRow] 0 s2Step127ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127ExitG_Outgoing : rowsOwned s2Step127ExitGvAfter [s2Step127ExitGOut,s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut] :=
  hmrRows_owned_drop s2Step127ExitGvAfter [s2Step127ExitGOut,s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut] 0 s2Step127ExitBank_outgoingOwned

private theorem s2Step127ExitG_distinct : (s2Step127ExitGRow.sign::s2Step127ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127ExitG_owned : (s2Step127ExitGRow.sign::s2Step127ExitGRow.payload).toFinset⊆s2Step127ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127ExitG_retired : s2Step127ExitGBefore.retireSet s2Step127ExitGExtra.toFinset=s2Step127ExitGAfter := by
  unfold Arena.retireSet s2Step127ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step127ExitGBefore,s2Step127ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step127ExitG_checked : planRowResizeLog s2Step127ExitGBefore s2Step127ExitGRow 205 []=
    some (s2Step127ExitGAfter,s2Step127ExitGOut,shrinkRow 769 s2Step127ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step127ExitGBefore s2Step127ExitGRow 205 s2Step127ExitG_distinct s2Step127ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step127ExitGRow.payload.take 205) s2Step127ExitGRow.sign=s2Step127ExitGOut := by decide +kernel
  have hi : s2Step127ExitGRow.payload.drop 205=s2Step127ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step127ExitG_retired] at result
  exact result

private def s2Step127ExitGvBefore : Arena := s2Step127ExitFAfter

private theorem s2Step127ExitGv_Incoming : rowsOwned s2Step127ExitGvBefore [s2Step127ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127ExitGRow,s2Step127ExitFRow,s2Step127ExitFvRow,s2Step127ExitGvRow] 3 s2Step127ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127ExitGvBefore (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<717) ∨ (718≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127ExitGv_Outgoing : rowsOwned s2Step127ExitGvAfter [s2Step127ExitGvOut] :=
  hmrRows_owned_drop s2Step127ExitGvAfter [s2Step127ExitGOut,s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut] 3 s2Step127ExitBank_outgoingOwned

private theorem s2Step127ExitGv_distinct : (s2Step127ExitGvRow.sign::s2Step127ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127ExitGv_owned : (s2Step127ExitGvRow.sign::s2Step127ExitGvRow.payload).toFinset⊆s2Step127ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127ExitGvBefore (fun q => (0≤q ∧ q<205) ∨ (206≤q ∧ q<717) ∨ (718≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127ExitGv_retired : s2Step127ExitGvBefore.retireSet s2Step127ExitGvExtra.toFinset=s2Step127ExitGvAfter := by
  unfold Arena.retireSet s2Step127ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step127ExitGvBefore,s2Step127ExitFAfter,s2Step127ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step127ExitGv_checked : planRowResizeLog s2Step127ExitGvBefore s2Step127ExitGvRow 77 []=
    some (s2Step127ExitGvAfter,s2Step127ExitGvOut,shrinkRow 771 s2Step127ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step127ExitGvBefore s2Step127ExitGvRow 77 s2Step127ExitGv_distinct s2Step127ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step127ExitGvRow.payload.take 77) s2Step127ExitGvRow.sign=s2Step127ExitGvOut := by decide +kernel
  have hi : s2Step127ExitGvRow.payload.drop 77=s2Step127ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step127ExitGv_retired] at result
  exact result

private theorem s2Step127ExitBank_rows : planWindowRowsLog s2Step127ExitGBefore [(s2Step127ExitGRow,205),(s2Step127ExitFRow,205),(s2Step127ExitFvRow,78),(s2Step127ExitGvRow,77)] [[],[],[],[]]=
    some (s2Step127ExitGvAfter,[s2Step127ExitGOut,s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut],(shrinkRow 769 s2Step127ExitGExtra ++ (shrinkRow 768 s2Step127ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step127ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step127ExitGvAfter [] []=some (s2Step127ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step127ExitGvBefore s2Step127ExitGvAfter s2Step127ExitGvAfter
    s2Step127ExitGvRow s2Step127ExitGvOut 77 [] [] [] []
    (shrinkRow 771 s2Step127ExitGvExtra) ([]) s2Step127ExitGv_Incoming s2Step127ExitGv_checked h4 s2Step127ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step127ExitFvBefore s2Step127ExitFvAfter s2Step127ExitGvAfter
    s2Step127ExitFvRow s2Step127ExitFvOut 78 [] [(s2Step127ExitGvRow,77)] [[]] [s2Step127ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step127ExitGvExtra ++ [])) s2Step127ExitFv_Incoming s2Step127ExitFv_checked h3 s2Step127ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step127ExitFBefore s2Step127ExitFAfter s2Step127ExitGvAfter
    s2Step127ExitFRow s2Step127ExitFOut 205 [] [(s2Step127ExitFvRow,78),(s2Step127ExitGvRow,77)] [[],[]] [s2Step127ExitFvOut,s2Step127ExitGvOut]
    (shrinkRow 768 s2Step127ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step127ExitGvExtra ++ []))) s2Step127ExitF_Incoming s2Step127ExitF_checked h2 s2Step127ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step127ExitGBefore s2Step127ExitGAfter s2Step127ExitGvAfter
    s2Step127ExitGRow s2Step127ExitGOut 205 [] [(s2Step127ExitFRow,205),(s2Step127ExitFvRow,78),(s2Step127ExitGvRow,77)] [[],[],[]] [s2Step127ExitFOut,s2Step127ExitFvOut,s2Step127ExitGvOut]
    (shrinkRow 769 s2Step127ExitGExtra) ((shrinkRow 768 s2Step127ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step127ExitGvExtra ++ [])))) s2Step127ExitG_Incoming s2Step127ExitG_checked h1 s2Step127ExitG_Outgoing
  exact h0

private theorem s2Step127ExitBank_checked : compileHmrBankResizeLog .exit s2Step127ExitGBefore ⟨s2Step127ExitFRow,s2Step127ExitGRow,s2Step127ExitFvRow,s2Step127ExitGvRow⟩ ⟨205,205,78,77⟩ [[],[],[],[]]=
    some (s2Step127ExitGvAfter,⟨s2Step127ExitFOut,s2Step127ExitGOut,s2Step127ExitFvOut,s2Step127ExitGvOut⟩,(shrinkRow 769 s2Step127ExitGExtra ++ (shrinkRow 768 s2Step127ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step127ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step127ExitBank_rows]
  rfl

private theorem s2Step127Add0_apart : Disjoint s2Step127Add0Arena.live s2Step127Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step127Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127Add0_card : s2Step127Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step127Add0_borrowed : s2Step127Add0Arena.checkBorrow (hmrHybridCount s2Step127Add0Arena s2Step127Add0B.length) s2Step127Add0Work=some s2Step127Add0During := by
  have len : s2Step127Add0Work.length=hmrHybridCount s2Step127Add0Arena s2Step127Add0B.length := by
    rw [hmrHybridCount,s2Step127Add0_card]
    decide +kernel
  have nd : s2Step127Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step127Add0Arena s2Step127Add0During s2Step127Add0Work.toFinset s2Step127Add0_bounded s2Step127Add0_apart rfl

private theorem s2Step127Add0_distinct : (837::802::849::(s2Step127Add0A++s2Step127Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127Add0_owned : (837::802::849::(s2Step127Add0A++s2Step127Add0B)).toFinset⊆s2Step127Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step127Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127Add0_checked : compileHmrHybridCinLog s2Step127Add0Arena 802 837 849 s2Step127Add0A s2Step127Add0B s2Step127Add0Work=some s2Step127Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step127Add0Arena s2Step127Add0During 802 837 849 s2Step127Add0A s2Step127Add0B s2Step127Add0Work
    (by decide +kernel) (by decide +kernel) s2Step127Add0_distinct
    (fun q hq => s2Step127Add0_owned (List.mem_toFinset.mpr hq)) s2Step127Add0_borrowed

private theorem s2Step127Add1_apart : Disjoint s2Step127Add1Arena.live s2Step127Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step127Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127Add1_card : s2Step127Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step127Add1_borrowed : s2Step127Add1Arena.checkBorrow (hmrHybridCount s2Step127Add1Arena s2Step127Add1B.length) s2Step127Add1Work=some s2Step127Add1During := by
  have len : s2Step127Add1Work.length=hmrHybridCount s2Step127Add1Arena s2Step127Add1B.length := by
    rw [hmrHybridCount,s2Step127Add1_card]
    decide +kernel
  have nd : s2Step127Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step127Add1Arena s2Step127Add1During s2Step127Add1Work.toFinset s2Step127Add1_bounded s2Step127Add1_apart rfl

private theorem s2Step127Add1_distinct : (837::802::849::(s2Step127Add1A++s2Step127Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127Add1_owned : (837::802::849::(s2Step127Add1A++s2Step127Add1B)).toFinset⊆s2Step127Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step127Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127Add1_checked : compileHmrHybridCinLog s2Step127Add1Arena 802 837 849 s2Step127Add1A s2Step127Add1B s2Step127Add1Work=some s2Step127Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step127Add1Arena s2Step127Add1During 802 837 849 s2Step127Add1A s2Step127Add1B s2Step127Add1Work
    (by decide +kernel) (by decide +kernel) s2Step127Add1_distinct
    (fun q hq => s2Step127Add1_owned (List.mem_toFinset.mpr hq)) s2Step127Add1_borrowed

private theorem s2Step127F4_apart : Disjoint (s2Step127Add0A++s2Step127Add0B).toFinset (s2Step127Add1A++s2Step127Add1B).toFinset := by
  have nd : ((s2Step127Add0A++s2Step127Add0B)++(s2Step127Add1A++s2Step127Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step127F4_carry : s2Step127F4FlagArena.checkBorrow 1 [849]=some s2Step127Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step127F4FlagArena,s2Step127HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step127F4FlagArena,s2Step127HeadFvAfter,s2Step127Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step127F4_distinct : (829::802::837::849::((s2Step127Add0A++s2Step127Add1A)++(s2Step127Add0B++s2Step127Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127F4_flag : s2Step127HeadFvAfter.checkBorrow 1 [837]=some s2Step127F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step127HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step127F4_owned : (829::802::((s2Step127Add0A++s2Step127Add1A)++(s2Step127Add0B++s2Step127Add1B))).toFinset⊆s2Step127HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step127HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127F4_checked : compileHmrHybridF4Log s2Step127HeadFvAfter 829 802 s2Step127Add0A s2Step127Add0B s2Step127Add1A s2Step127Add1B [837] [849] s2Step127Add0Work s2Step127Add1Work=some s2Step127F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step127HeadFvAfter s2Step127F4FlagArena s2Step127Add0Arena s2Step127Add0During s2Step127Add1During 829 802
    s2Step127Add0A s2Step127Add0B s2Step127Add1A s2Step127Add1B [837] [849] s2Step127Add0Work s2Step127Add1Work
    (fun q hq => s2Step127F4_owned (List.mem_toFinset.mpr hq)) s2Step127F4_flag s2Step127F4_carry
    s2Step127F4_distinct s2Step127F4_apart s2Step127Add0_checked s2Step127Add1_checked

private theorem s2Step127Front_branch : s2Step127FrontSigmaArena.checkBorrow 1 [802]=some s2Step127HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step127FrontSigmaArena,s2Step127EntryGvAfter,s2Step127EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step127FrontSigmaArena,s2Step127EntryGvAfter,s2Step127EntryFBefore,s2Step127HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step127Front_entry : HmrFrontEntryValid s2Step127EntryFBefore s2Step127FrontBank 206 77 ⟨205,205,78,77⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step127FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step127EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step127EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<802) ∨ (803≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step127FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step127Front_sigma : s2Step127EntryGvAfter.checkBorrow 1 [829]=some s2Step127FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step127EntryGvAfter,s2Step127EntryFBefore,arenaWires]
  · rfl

private def s2Step127HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127HeadFBefore : Arena := s2Step127HeadGAfter

private def s2Step127HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717],768⟩

private def s2Step127HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824],770⟩

private def s2Step127HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205],769⟩

private def s2Step127HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832],771⟩

private theorem s2Step127HeadBank_incomingDistinct : ([s2Step127HeadGRow,s2Step127HeadFRow,s2Step127HeadGvRow,s2Step127HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127HeadF_Incoming : rowsOwned s2Step127HeadFBefore [s2Step127HeadFRow,s2Step127HeadGvRow,s2Step127HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127HeadGRow,s2Step127HeadFRow,s2Step127HeadGvRow,s2Step127HeadFvRow] 1 s2Step127HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127HeadBank_outgoingOwned : rowsOwned s2Step127HeadFvAfter [s2Step127HeadGOut,s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step127HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127HeadF_Outgoing : rowsOwned s2Step127HeadFvAfter [s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut] :=
  hmrRows_owned_drop s2Step127HeadFvAfter [s2Step127HeadGOut,s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut] 1 s2Step127HeadBank_outgoingOwned

private theorem s2Step127HeadF_distinct : (s2Step127HeadFRow.sign::s2Step127HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127HeadF_owned : (s2Step127HeadFRow.sign::s2Step127HeadFRow.payload).toFinset⊆s2Step127HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127HeadF_reserved : s2Step127HeadFBefore.reserve s2Step127HeadFFresh.toFinset=some s2Step127HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step127HeadFFresh,arenaWires]
  · norm_num [s2Step127HeadFBefore,s2Step127HeadGAfter,s2Step127HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step127HeadFAfter,s2Step127HeadFBefore,s2Step127HeadGAfter,s2Step127HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step127HeadF_checked : planRowResizeLog s2Step127HeadFBefore s2Step127HeadFRow 207 s2Step127HeadFFresh=
    some (s2Step127HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 817],768⟩,growRow 768 s2Step127HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step127HeadFBefore s2Step127HeadFAfter s2Step127HeadFRow 207 s2Step127HeadFFresh
    s2Step127HeadF_distinct s2Step127HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127HeadF_reserved
  have rowEq : WindowRow.mk (s2Step127HeadFRow.payload++s2Step127HeadFFresh) s2Step127HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 716, 717, 817],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step127HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step127HeadFvBefore : Arena := s2Step127HeadGvAfter

private theorem s2Step127HeadFv_Incoming : rowsOwned s2Step127HeadFvBefore [s2Step127HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127HeadGRow,s2Step127HeadFRow,s2Step127HeadGvRow,s2Step127HeadFvRow] 3 s2Step127HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127HeadFv_Outgoing : rowsOwned s2Step127HeadFvAfter [s2Step127HeadFvOut] :=
  hmrRows_owned_drop s2Step127HeadFvAfter [s2Step127HeadGOut,s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut] 3 s2Step127HeadBank_outgoingOwned

private theorem s2Step127HeadFv_distinct : (s2Step127HeadFvRow.sign::s2Step127HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127HeadFv_owned : (s2Step127HeadFvRow.sign::s2Step127HeadFvRow.payload).toFinset⊆s2Step127HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127HeadFv_reserved : s2Step127HeadFvBefore.reserve s2Step127HeadFvFresh.toFinset=some s2Step127HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step127HeadFvFresh,arenaWires]
  · norm_num [s2Step127HeadFvBefore,s2Step127HeadGvAfter,s2Step127HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step127HeadFvAfter,s2Step127HeadFvBefore,s2Step127HeadGvAfter,s2Step127HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step127HeadFv_checked : planRowResizeLog s2Step127HeadFvBefore s2Step127HeadFvRow 78 s2Step127HeadFvFresh=
    some (s2Step127HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩,growRow 770 s2Step127HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step127HeadFvBefore s2Step127HeadFvAfter s2Step127HeadFvRow 78 s2Step127HeadFvFresh
    s2Step127HeadFv_distinct s2Step127HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step127HeadFvRow.payload++s2Step127HeadFvFresh) s2Step127HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 834, 835, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step127HeadG_Incoming : rowsOwned s2Step127HeadGBefore [s2Step127HeadGRow,s2Step127HeadFRow,s2Step127HeadGvRow,s2Step127HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127HeadGRow,s2Step127HeadFRow,s2Step127HeadGvRow,s2Step127HeadFvRow] 0 s2Step127HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127HeadG_Outgoing : rowsOwned s2Step127HeadFvAfter [s2Step127HeadGOut,s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut] :=
  hmrRows_owned_drop s2Step127HeadFvAfter [s2Step127HeadGOut,s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut] 0 s2Step127HeadBank_outgoingOwned

private theorem s2Step127HeadG_distinct : (s2Step127HeadGRow.sign::s2Step127HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127HeadG_owned : (s2Step127HeadGRow.sign::s2Step127HeadGRow.payload).toFinset⊆s2Step127HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127HeadG_reserved : s2Step127HeadGBefore.reserve s2Step127HeadGFresh.toFinset=some s2Step127HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step127HeadGFresh,arenaWires]
  · norm_num [s2Step127HeadGBefore,s2Step127HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step127HeadGAfter,s2Step127HeadGBefore,s2Step127HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step127HeadG_checked : planRowResizeLog s2Step127HeadGBefore s2Step127HeadGRow 207 s2Step127HeadGFresh=
    some (s2Step127HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 822],769⟩,growRow 769 s2Step127HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step127HeadGBefore s2Step127HeadGAfter s2Step127HeadGRow 207 s2Step127HeadGFresh
    s2Step127HeadG_distinct s2Step127HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127HeadG_reserved
  have rowEq : WindowRow.mk (s2Step127HeadGRow.payload++s2Step127HeadGFresh) s2Step127HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 822],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step127HeadGvBefore : Arena := s2Step127HeadFAfter

private theorem s2Step127HeadGv_Incoming : rowsOwned s2Step127HeadGvBefore [s2Step127HeadGvRow,s2Step127HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step127HeadGRow,s2Step127HeadFRow,s2Step127HeadGvRow,s2Step127HeadFvRow] 2 s2Step127HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step127HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step127HeadGv_Outgoing : rowsOwned s2Step127HeadFvAfter [s2Step127HeadGvOut,s2Step127HeadFvOut] :=
  hmrRows_owned_drop s2Step127HeadFvAfter [s2Step127HeadGOut,s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut] 2 s2Step127HeadBank_outgoingOwned

private theorem s2Step127HeadGv_distinct : (s2Step127HeadGvRow.sign::s2Step127HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step127HeadGv_owned : (s2Step127HeadGvRow.sign::s2Step127HeadGvRow.payload).toFinset⊆s2Step127HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step127HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<825) ∨ (826≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step127HeadGv_reserved : s2Step127HeadGvBefore.reserve s2Step127HeadGvFresh.toFinset=some s2Step127HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step127HeadGvFresh,arenaWires]
  · norm_num [s2Step127HeadGvBefore,s2Step127HeadFAfter,s2Step127HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step127HeadGvAfter,s2Step127HeadGvBefore,s2Step127HeadFAfter,s2Step127HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step127HeadGv_checked : planRowResizeLog s2Step127HeadGvBefore s2Step127HeadGvRow 78 s2Step127HeadGvFresh=
    some (s2Step127HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 781],771⟩,growRow 771 s2Step127HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step127HeadGvBefore s2Step127HeadGvAfter s2Step127HeadGvRow 78 s2Step127HeadGvFresh
    s2Step127HeadGv_distinct s2Step127HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step127HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step127HeadGvRow.payload++s2Step127HeadGvFresh) s2Step127HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 814, 831, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 781],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step127HeadBank_rows : planWindowRowsLog s2Step127HeadGBefore [(s2Step127HeadGRow,207),(s2Step127HeadFRow,207),(s2Step127HeadGvRow,78),(s2Step127HeadFvRow,78)] [s2Step127HeadGFresh,s2Step127HeadFFresh,s2Step127HeadGvFresh,s2Step127HeadFvFresh]=
    some (s2Step127HeadFvAfter,[s2Step127HeadGOut,s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut],(growRow 769 s2Step127HeadGFresh ++ (growRow 768 s2Step127HeadFFresh ++ (growRow 771 s2Step127HeadGvFresh ++ (growRow 770 s2Step127HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step127HeadFvAfter [] []=some (s2Step127HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step127HeadFvBefore s2Step127HeadFvAfter s2Step127HeadFvAfter
    s2Step127HeadFvRow s2Step127HeadFvOut 78 s2Step127HeadFvFresh [] [] []
    (growRow 770 s2Step127HeadFvFresh) ([]) s2Step127HeadFv_Incoming s2Step127HeadFv_checked h4 s2Step127HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step127HeadGvBefore s2Step127HeadGvAfter s2Step127HeadFvAfter
    s2Step127HeadGvRow s2Step127HeadGvOut 78 s2Step127HeadGvFresh [(s2Step127HeadFvRow,78)] [s2Step127HeadFvFresh] [s2Step127HeadFvOut]
    (growRow 771 s2Step127HeadGvFresh) ((growRow 770 s2Step127HeadFvFresh ++ [])) s2Step127HeadGv_Incoming s2Step127HeadGv_checked h3 s2Step127HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step127HeadFBefore s2Step127HeadFAfter s2Step127HeadFvAfter
    s2Step127HeadFRow s2Step127HeadFOut 207 s2Step127HeadFFresh [(s2Step127HeadGvRow,78),(s2Step127HeadFvRow,78)] [s2Step127HeadGvFresh,s2Step127HeadFvFresh] [s2Step127HeadGvOut,s2Step127HeadFvOut]
    (growRow 768 s2Step127HeadFFresh) ((growRow 771 s2Step127HeadGvFresh ++ (growRow 770 s2Step127HeadFvFresh ++ []))) s2Step127HeadF_Incoming s2Step127HeadF_checked h2 s2Step127HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step127HeadGBefore s2Step127HeadGAfter s2Step127HeadFvAfter
    s2Step127HeadGRow s2Step127HeadGOut 207 s2Step127HeadGFresh [(s2Step127HeadFRow,207),(s2Step127HeadGvRow,78),(s2Step127HeadFvRow,78)] [s2Step127HeadFFresh,s2Step127HeadGvFresh,s2Step127HeadFvFresh] [s2Step127HeadFOut,s2Step127HeadGvOut,s2Step127HeadFvOut]
    (growRow 769 s2Step127HeadGFresh) ((growRow 768 s2Step127HeadFFresh ++ (growRow 771 s2Step127HeadGvFresh ++ (growRow 770 s2Step127HeadFvFresh ++ [])))) s2Step127HeadG_Incoming s2Step127HeadG_checked h1 s2Step127HeadG_Outgoing
  exact h0

private theorem s2Step127HeadBank_checked : compileHmrBankResizeLog .headroom s2Step127HeadGBefore ⟨s2Step127HeadFRow,s2Step127HeadGRow,s2Step127HeadFvRow,s2Step127HeadGvRow⟩ ⟨207,207,78,78⟩ [s2Step127HeadGFresh,s2Step127HeadFFresh,s2Step127HeadGvFresh,s2Step127HeadFvFresh]=
    some (s2Step127HeadFvAfter,⟨s2Step127HeadFOut,s2Step127HeadGOut,s2Step127HeadFvOut,s2Step127HeadGvOut⟩,(growRow 769 s2Step127HeadGFresh ++ (growRow 768 s2Step127HeadFFresh ++ (growRow 771 s2Step127HeadGvFresh ++ (growRow 770 s2Step127HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step127HeadBank_rows]
  rfl

private theorem s2Step127Front_checked : compileHmrSourceFrontLog s2Step127EntryFBefore s2Step127FrontBank 206 77 ⟨205,205,78,77⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step127FrontLog=some s2Step127FrontPlan := by
  have pairEq : s2Step127FrontPair=⟨s2Step127HeadFRow,s2Step127HeadGRow,s2Step127HeadFvRow,s2Step127HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step127FrontHead=⟨s2Step127ExitFRow,s2Step127ExitGRow,s2Step127ExitFvRow,s2Step127ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step127Add0A=s2Step127FrontHead.f.wires := by decide +kernel
  have gEq : s2Step127Add0B=s2Step127FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step127Add1A=s2Step127FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step127Add1B=s2Step127FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step127EntryFBefore s2Step127FrontBank 206 77 ⟨205,205,78,77⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step127FrontLog s2Step127FrontPlan
  · exact s2Step127Front_entry
  · exact s2Step127EntryBank_checked
  · exact s2Step127Front_sigma
  · rfl
  · exact s2Step127Front_branch
  · rfl
  · simpa only [s2Step127FrontPlan,pairEq] using s2Step127HeadBank_checked
  · simpa only [s2Step127FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step127F4_checked
  · exact s2Step127Counter_checked
  · rfl
  · simpa only [s2Step127FrontPlan,headEq] using s2Step127ExitBank_checked

private theorem s2Step127Complete_explicit_checked : compileHmrEarlyStepLog s2Step127EntryFBefore s2Step127FrontBank 206 77 ⟨205,205,78,77⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step127CompleteLog=some s2Step127CompletePlan := by
  let Q := s2Step127EarlyControlPlan
  have hq := s2Step127EarlyControl_plan_checked
  have fv1 : s2Step127CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step127CompleteOut.fv.payload[2]?.getD s2Step127CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step127CompleteOut.fv.payload[3]?.getD s2Step127CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step127CompleteOut.fv.payload[4]?.getD s2Step127CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step127EntryFBefore s2Step127EarlyControlArena s2Step127FrontBank 206 77 ⟨205,205,78,77⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step127CompleteLog s2Step127FrontPlan Q
    s2Step127Front_checked s2Step127Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step127Complete_owned s2Step127Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step127EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 s2Step127CompleteOut.fv.second (s2Step127CompleteOut.fv.payload[2]?.getD s2Step127CompleteOut.fv.sign) (s2Step127CompleteOut.fv.payload[3]?.getD s2Step127CompleteOut.fv.sign) (s2Step127CompleteOut.fv.payload[4]?.getD s2Step127CompleteOut.fv.sign) 802 37 s2Step127EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep127Arena : Arena := s2Step127EntryFBefore
def s2PrivateStep127Bank : WindowBank := s2Step127FrontBank
def s2PrivateStep127Spec : HmrSourceWalkStepLog := ⟨206,77,⟨205,205,78,77⟩,37,.early s2Step127CompleteLog⟩
def s2PrivateStep127Plan : HmrSourceStepPlan := .early s2Step127CompletePlan
theorem s2PrivateStep127_source : s2PrivateStep127Spec=s2ObservedLogs112[15] := rfl
theorem s2PrivateStep127_checked : compileHmrSourceStepLog s2PrivateStep127Arena s2PrivateStep127Bank
    s2PrivateStep127Spec.fgWidth s2PrivateStep127Spec.vWidth s2PrivateStep127Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 127 s2PrivateStep127Spec.need none s2PrivateStep127Spec.log=some s2PrivateStep127Plan := by
  change compileHmrSourceStepLog s2Step127EntryFBefore s2Step127FrontBank 206 77 ⟨205,205,78,77⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 127 37 none (.early s2Step127CompleteLog)=some (.early s2Step127CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 127<498)]
  rw [s2Step127Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
