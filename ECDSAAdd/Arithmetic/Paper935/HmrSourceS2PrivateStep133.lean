import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep131
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

private def s2Step133CompleteMoves : List (Wire × Wire) := [(826,714)]

private def s2Step133EarlyControlLog : HmrEarlyControlLog := ⟨[826, 814, 781, 822, 783],[829],[837],[849, 790, 815, 867, 877, 879],[]⟩

private def s2Step133FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [783], [], [835]],[[829], [822], [814], [781]],[[], [], [], []]⟩,[827],[817],[837],[849],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815]⟩

private def s2Step133CompleteLog : HmrEarlyStepLog := ⟨s2Step133FrontLog,s2Step133CompleteMoves,s2Step133EarlyControlLog⟩

private def s2Step133ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713],768⟩

private def s2Step133ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step133ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩

private def s2Step133ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private def s2Step133FrontOut : WindowBank := ⟨s2Step133ExitFOut,s2Step133ExitGOut,s2Step133ExitFvOut,s2Step133ExitGvOut⟩

private def s2Step133CompleteOut : WindowBank := s2Step133FrontOut.repacked s2Step133CompleteMoves

private def s2Step133EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step133EarlyControlPositiveArena,[829],s2Step133EarlyControlEqualityArena,[837],⟨⟨827,false⟩,[⟨⟨829,false⟩,837⟩]⟩⟩

private def s2Step133EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,826⟩,⟨⟨774,false⟩,814⟩,⟨⟨775,false⟩,781⟩,⟨⟨776,false⟩,822⟩,⟨⟨777,false⟩,783⟩]⟩

private def s2Step133EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step133EarlyControlZeroArena,s2Step133EarlyControlZeroPlan,s2Step133EarlyControlClassPlan,s2Step133EarlyControlFlagArena,s2Step133EarlyControlFittedArena,s2Step133EarlyControlHistoryArena,s2Step133EarlyControlSigmaArena,s2Step133EarlyControlOutputArena,s2Step133EarlyControlLog⟩

private def s2Step133CounterWork : List Wire := [837, 849, 790, 815]

private theorem s2Step133Counter_bounded : s2Step133CounterWork.toFinset⊆arenaWires := by norm_num [s2Step133CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step133HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133CounterDuring : Arena := ⟨s2Step133HeadFvAfter.live∪s2Step133CounterWork.toFinset,Finset.union_subset s2Step133HeadFvAfter.bounded s2Step133Counter_bounded⟩

private def s2Step133EntryFFresh : List Wire := []

private def s2Step133EntryFvFresh : List Wire := []

private def s2Step133EntryGFresh : List Wire := [783]

private def s2Step133EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EntryGvFresh : List Wire := [835]

private def s2Step133ExitFExtra : List Wire := [714, 822]

private def s2Step133ExitFvExtra : List Wire := [781]

private def s2Step133ExitGExtra : List Wire := [783, 829]

private def s2Step133ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<714) ∨ (715≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133ExitGvExtra : List Wire := [814]

private def s2Step133Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step133Add0_bounded : s2Step133Add0Work.toFinset⊆arenaWires := by
  have h : s2Step133Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step133Add0During : Arena := ⟨s2Step133Add0Arena.live∪s2Step133Add0Work.toFinset,Finset.union_subset s2Step133Add0Arena.bounded s2Step133Add0_bounded⟩

private def s2Step133Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step133Add1_bounded : s2Step133Add1Work.toFinset⊆arenaWires := by
  have h : s2Step133Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step133Add1During : Arena := ⟨s2Step133Add1Arena.live∪s2Step133Add1Work.toFinset,Finset.union_subset s2Step133Add1Arena.bounded s2Step133Add1_bounded⟩

private def s2Step133F4FlagArena : Arena := ⟨s2Step133HeadFvAfter.live∪{837},Finset.union_subset s2Step133HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step133F4Plan : HmrHybridF4Plan := ⟨s2Step133F4FlagArena,[837],s2Step133Add0Arena,[849],s2Step133Add0During,s2Step133Add0Work,s2Step133Add1During,s2Step133Add1Work⟩

private def s2Step133HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 822],768⟩

private def s2Step133HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 781],770⟩

private def s2Step133HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783, 829],769⟩

private def s2Step133HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 814],771⟩

private def s2Step133FrontHead : WindowBank := ⟨s2Step133HeadFOut,s2Step133HeadGOut,s2Step133HeadFvOut,s2Step133HeadGvOut⟩

private def s2Step133EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step133EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step133EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783],769⟩

private def s2Step133EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private def s2Step133FrontPair : WindowBank := ⟨s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut⟩

private def s2Step133FrontSigmaArena : Arena := ⟨s2Step133EntryGvAfter.live∪{827},Finset.union_subset s2Step133EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step133HeadFFresh : List Wire := [822]

private def s2Step133HeadFvFresh : List Wire := [781]

private def s2Step133HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133HeadGFresh : List Wire := [829]

private def s2Step133HeadGvFresh : List Wire := [814]

private def s2Step133FrontPlan : HmrSourceFront := ⟨s2Step133EntryGvAfter,s2Step133FrontPair,(growRow 768 s2Step133EntryFFresh ++ (growRow 769 s2Step133EntryGFresh ++ (growRow 770 s2Step133EntryFvFresh ++ (growRow 771 s2Step133EntryGvFresh ++ [])))),s2Step133FrontSigmaArena,[827],s2Step133HeadGBefore,[817],
  s2Step133HeadFvAfter,s2Step133FrontHead,(growRow 769 s2Step133HeadGFresh ++ (growRow 768 s2Step133HeadFFresh ++ (growRow 771 s2Step133HeadGvFresh ++ (growRow 770 s2Step133HeadFvFresh ++ [])))),s2Step133F4Plan,s2Step133CounterDuring,s2Step133CounterWork,s2Step133ExitGvAfter,s2Step133FrontOut,(shrinkRow 769 s2Step133ExitGExtra ++ (shrinkRow 768 s2Step133ExitFExtra ++ (shrinkRow 770 s2Step133ExitFvExtra ++ (shrinkRow 771 s2Step133ExitGvExtra ++ []))))⟩

private def s2Step133CompletePlan : HmrEarlyStepPlan := ⟨s2Step133FrontPlan,s2Step133EarlyControlArena,s2Step133EarlyControlPlan,s2Step133CompleteMoves⟩

private theorem s2Step133Complete_apart : List.Disjoint (s2Step133CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [827, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step133CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[827, 817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step133Complete_owned : (s2Step133CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step133CompleteMoveArena : Arena := ⟨s2Step133ExitGvAfter.live∪{714},Finset.union_subset s2Step133ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step133Complete_repack : s2Step133ExitGvAfter.checkRepack s2Step133CompleteMoves=some s2Step133EarlyControlArena := by
  have owned : 826∈s2Step133ExitGvAfter.live := by norm_num [s2Step133ExitGvAfter,arenaWires]
  have reserve : s2Step133ExitGvAfter.reserve {714}=some s2Step133CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step133ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step133CompleteMoveArena.retireSet {826}=s2Step133EarlyControlArena := by
    unfold Arena.retireSet s2Step133EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step133CompleteMoveArena,s2Step133ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step133CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step133CompleteMoveArena.retireSet {826}).checkRepack []=some s2Step133EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step133EarlyControl_branchOwned : ([817] : List Wire).toFinset⊆s2Step133EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_branch : compileHmrBranchRetirement s2Step133EarlyControlSigmaArena 817=some s2Step133EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step133EarlyControl_branchOwned
  · ext q
    simp [s2Step133EarlyControlOutputArena,s2Step133EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step133EarlyControl_classEqualityBorrow : s2Step133EarlyControlPositiveArena.checkBorrow (([827, 829] : List Wire).length-1) s2Step133EarlyControlLog.classWork=some s2Step133EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step133EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step133EarlyControlEqualityArena,s2Step133EarlyControlPositiveArena,s2Step133EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step133EarlyControl_classEqualityOwned : ([827, 829] : List Wire).toFinset⊆s2Step133EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_classEquality : compileHmrEqualityLog s2Step133EarlyControlPositiveArena [827, 829] 0 s2Step133EarlyControlLog.classWork=some (s2Step133EarlyControlEqualityArena,s2Step133EarlyControlLog.classWork,s2Step133EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step133EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step133EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step133EarlyControl_classOwned : ([777, 783, 827] : List Wire).toFinset⊆s2Step133EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_positiveBorrow : s2Step133EarlyControlZeroArena.checkBorrow (1) s2Step133EarlyControlLog.positiveWork=some s2Step133EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step133EarlyControlZeroArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step133EarlyControlPositiveArena,s2Step133EarlyControlZeroArena,s2Step133EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step133EarlyControl_class : compileHmrSourceClassLog s2Step133EarlyControlZeroArena false 777 s2Step133EarlyControlZeroPlan.top 0 827 s2Step133EarlyControlLog.positiveWork s2Step133EarlyControlLog.classWork=some s2Step133EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step133EarlyControlClassPlan s2Step133EarlyControlZeroArena false 777 s2Step133EarlyControlZeroPlan.top 0 827
  constructor
  · decide +kernel
  · exact s2Step133EarlyControl_classOwned
  · exact s2Step133EarlyControl_positiveBorrow
  · exact s2Step133EarlyControl_classEquality

private theorem s2Step133EarlyControl_entryRecordOwned : ([817, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_entrySigmaOwned : ([827, 254] : List Wire).toFinset⊆s2Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_fitBorrow : s2Step133EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step133EarlyControlLog.recordFresh=some s2Step133EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step133EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step133EarlyControlFittedArena,s2Step133EarlyControlFlagArena,s2Step133EarlyControlLog,arenaWires]

private theorem s2Step133EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step133EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_fit : compileHmrRecordGrowLog s2Step133EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step133EarlyControlLog.recordFresh=some s2Step133EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step133EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step133EarlyControl_fitBorrow

private theorem s2Step133EarlyControl_flagsBorrow : s2Step133EarlyControlEqualityArena.checkBorrow (6) s2Step133EarlyControlLog.flagWork=some s2Step133EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step133EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step133EarlyControlFlagArena,s2Step133EarlyControlEqualityArena,s2Step133EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step133EarlyControl_flagsOwned : ([837, 253, 252, 251] : List Wire).toFinset⊆s2Step133EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_flags : compileHmrFlagsLog s2Step133EarlyControlClassPlan.equalityArena s2Step133EarlyControlClassPlan.equality.top 253 252 251 s2Step133EarlyControlLog.flagWork=some s2Step133EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step133EarlyControl_flagsOwned⟩
  · exact s2Step133EarlyControl_flagsBorrow

private theorem s2Step133EarlyControl_historyBorrow : s2Step133EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step133EarlyControlLog.recordFresh=some s2Step133EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step133EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step133EarlyControlHistoryArena,s2Step133EarlyControlArena,s2Step133EarlyControlLog,arenaWires]

private theorem s2Step133EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_history : compileHmrRecordGrowLog s2Step133EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step133EarlyControlLog.recordFresh=some s2Step133EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step133EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step133EarlyControl_historyBorrow

private theorem s2Step133EarlyControl_sigmaOwned : ([254, 827] : List Wire).toFinset⊆s2Step133EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_sigmaReleaseOwned : ([827] : List Wire).toFinset⊆s2Step133EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_sigmaRelease : s2Step133EarlyControlHistoryArena.release {827} (fun _ => false)=some s2Step133EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step133EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step133EarlyControlSigmaArena,s2Step133EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step133EarlyControl_sigma : compileHmrSigmaDropLog s2Step133EarlyControlHistoryArena false 0 0 254 827 []=some s2Step133EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step133EarlyControl_sigmaOwned⟩
  · exact s2Step133EarlyControl_sigmaRelease

private theorem s2Step133EarlyControl_zeroBorrow : s2Step133EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step133EarlyControlLog.zeroWork=some s2Step133EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step133EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step133EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step133EarlyControlZeroArena,s2Step133EarlyControlArena,s2Step133EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step133EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step133EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step133EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<826) ∨ (827≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EarlyControl_zero : compileHmrEqualityLog s2Step133EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step133EarlyControlLog.zeroWork=some (s2Step133EarlyControlZeroArena,s2Step133EarlyControlLog.zeroWork,s2Step133EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step133EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step133EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step133EarlyControl_logged : s2Step133EarlyControlPlan.Logged s2Step133EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 827 254 253 252 251 817 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step133EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step133EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step133EarlyControl_zero
  · exact s2Step133EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step133EarlyControl_flags
  · exact s2Step133EarlyControl_fit
  · exact s2Step133EarlyControl_history
  · exact s2Step133EarlyControl_sigma
  · exact s2Step133EarlyControl_branch

private theorem s2Step133EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step133EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 827 254 253 252 251 817 37 s2Step133EarlyControlLog=some s2Step133EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step133EarlyControlPlan s2Step133EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 827 254 253 252 251 817 37 s2Step133EarlyControl_logged

private def s2Step133EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step133EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step133EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩

private def s2Step133EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step133FrontBank : WindowBank := ⟨s2Step133EntryFRow,s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow⟩

private def s2Step133Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 822, 768]

private def s2Step133Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783, 829, 769]

private def s2Step133Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 781, 770]

private def s2Step133Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 814, 771]

private theorem s2Step133Counter_apart : Disjoint s2Step133HeadFvAfter.live s2Step133CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step133HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133Counter_borrowed : s2Step133HeadFvAfter.checkBorrow 4 s2Step133CounterWork=some s2Step133CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step133HeadFvAfter s2Step133CounterDuring s2Step133CounterWork.toFinset s2Step133Counter_bounded s2Step133Counter_apart rfl

private theorem s2Step133Counter_owned : (827::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step133HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step133HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133Counter_checked : compileHmrCounterStepLog s2Step133HeadFvAfter true 827 [772, 773, 774, 775, 776, 777] s2Step133CounterWork=some s2Step133CounterDuring := by
  have owned : ∀q∈827::[772, 773, 774, 775, 776, 777],q∈s2Step133HeadFvAfter.live := fun q hq => s2Step133Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step133Counter_borrowed

private def s2Step133EntryFAfter : Arena := s2Step133EntryFBefore

private theorem s2Step133EntryBank_incomingDistinct : ([s2Step133EntryFRow,s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133EntryF_Incoming : rowsOwned s2Step133EntryFBefore [s2Step133EntryFRow,s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133EntryFRow,s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow] 0 s2Step133EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133EntryBank_outgoingOwned : rowsOwned s2Step133EntryGvAfter [s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step133EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133EntryF_Outgoing : rowsOwned s2Step133EntryGvAfter [s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut] :=
  hmrRows_owned_drop s2Step133EntryGvAfter [s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut] 0 s2Step133EntryBank_outgoingOwned

private theorem s2Step133EntryF_distinct : (s2Step133EntryFRow.sign::s2Step133EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133EntryF_owned : (s2Step133EntryFRow.sign::s2Step133EntryFRow.payload).toFinset⊆s2Step133EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EntryF_reserved : s2Step133EntryFBefore.reserve s2Step133EntryFFresh.toFinset=some s2Step133EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step133EntryFFresh,arenaWires]
  · norm_num [s2Step133EntryFBefore,s2Step133EntryFFresh,arenaWires]
  · simp only [s2Step133EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step133EntryF_checked : planRowResizeLog s2Step133EntryFBefore s2Step133EntryFRow 203 s2Step133EntryFFresh=
    some (s2Step133EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩,growRow 768 s2Step133EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step133EntryFBefore s2Step133EntryFAfter s2Step133EntryFRow 203 s2Step133EntryFFresh
    s2Step133EntryF_distinct s2Step133EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step133EntryF_reserved
  have rowEq : WindowRow.mk (s2Step133EntryFRow.payload++s2Step133EntryFFresh) s2Step133EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step133EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133EntryFvAfter : Arena := s2Step133EntryGAfter

private def s2Step133EntryFvBefore : Arena := s2Step133EntryGAfter

private theorem s2Step133EntryFv_Incoming : rowsOwned s2Step133EntryFvBefore [s2Step133EntryFvRow,s2Step133EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133EntryFRow,s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow] 2 s2Step133EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133EntryFv_Outgoing : rowsOwned s2Step133EntryGvAfter [s2Step133EntryFvOut,s2Step133EntryGvOut] :=
  hmrRows_owned_drop s2Step133EntryGvAfter [s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut] 2 s2Step133EntryBank_outgoingOwned

private theorem s2Step133EntryFv_distinct : (s2Step133EntryFvRow.sign::s2Step133EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133EntryFv_owned : (s2Step133EntryFvRow.sign::s2Step133EntryFvRow.payload).toFinset⊆s2Step133EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EntryFv_reserved : s2Step133EntryFvBefore.reserve s2Step133EntryFvFresh.toFinset=some s2Step133EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step133EntryFvFresh,arenaWires]
  · norm_num [s2Step133EntryFvBefore,s2Step133EntryGAfter,s2Step133EntryFvFresh,arenaWires]
  · simp only [s2Step133EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step133EntryFv_checked : planRowResizeLog s2Step133EntryFvBefore s2Step133EntryFvRow 80 s2Step133EntryFvFresh=
    some (s2Step133EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩,growRow 770 s2Step133EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step133EntryFvBefore s2Step133EntryFvAfter s2Step133EntryFvRow 80 s2Step133EntryFvFresh
    s2Step133EntryFv_distinct s2Step133EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step133EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step133EntryFvRow.payload++s2Step133EntryFvFresh) s2Step133EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step133EntryGBefore : Arena := s2Step133EntryFBefore

private theorem s2Step133EntryG_Incoming : rowsOwned s2Step133EntryGBefore [s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133EntryFRow,s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow] 1 s2Step133EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133EntryG_Outgoing : rowsOwned s2Step133EntryGvAfter [s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut] :=
  hmrRows_owned_drop s2Step133EntryGvAfter [s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut] 1 s2Step133EntryBank_outgoingOwned

private theorem s2Step133EntryG_distinct : (s2Step133EntryGRow.sign::s2Step133EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133EntryG_owned : (s2Step133EntryGRow.sign::s2Step133EntryGRow.payload).toFinset⊆s2Step133EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EntryG_reserved : s2Step133EntryGBefore.reserve s2Step133EntryGFresh.toFinset=some s2Step133EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step133EntryGFresh,arenaWires]
  · norm_num [s2Step133EntryGBefore,s2Step133EntryFBefore,s2Step133EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step133EntryGAfter,s2Step133EntryGBefore,s2Step133EntryFBefore,s2Step133EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step133EntryG_checked : planRowResizeLog s2Step133EntryGBefore s2Step133EntryGRow 203 s2Step133EntryGFresh=
    some (s2Step133EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783],769⟩,growRow 769 s2Step133EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step133EntryGBefore s2Step133EntryGAfter s2Step133EntryGRow 203 s2Step133EntryGFresh
    s2Step133EntryG_distinct s2Step133EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step133EntryG_reserved
  have rowEq : WindowRow.mk (s2Step133EntryGRow.payload++s2Step133EntryGFresh) s2Step133EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step133EntryGvBefore : Arena := s2Step133EntryGAfter

private theorem s2Step133EntryGv_Incoming : rowsOwned s2Step133EntryGvBefore [s2Step133EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133EntryFRow,s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow] 3 s2Step133EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133EntryGv_Outgoing : rowsOwned s2Step133EntryGvAfter [s2Step133EntryGvOut] :=
  hmrRows_owned_drop s2Step133EntryGvAfter [s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut] 3 s2Step133EntryBank_outgoingOwned

private theorem s2Step133EntryGv_distinct : (s2Step133EntryGvRow.sign::s2Step133EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133EntryGv_owned : (s2Step133EntryGvRow.sign::s2Step133EntryGvRow.payload).toFinset⊆s2Step133EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133EntryGv_reserved : s2Step133EntryGvBefore.reserve s2Step133EntryGvFresh.toFinset=some s2Step133EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step133EntryGvFresh,arenaWires]
  · norm_num [s2Step133EntryGvBefore,s2Step133EntryGAfter,s2Step133EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step133EntryGvAfter,s2Step133EntryGvBefore,s2Step133EntryGAfter,s2Step133EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step133EntryGv_checked : planRowResizeLog s2Step133EntryGvBefore s2Step133EntryGvRow 80 s2Step133EntryGvFresh=
    some (s2Step133EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩,growRow 771 s2Step133EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step133EntryGvBefore s2Step133EntryGvAfter s2Step133EntryGvRow 80 s2Step133EntryGvFresh
    s2Step133EntryGv_distinct s2Step133EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step133EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step133EntryGvRow.payload++s2Step133EntryGvFresh) s2Step133EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step133EntryBank_rows : planWindowRowsLog s2Step133EntryFBefore [(s2Step133EntryFRow,203),(s2Step133EntryGRow,203),(s2Step133EntryFvRow,80),(s2Step133EntryGvRow,80)] [s2Step133EntryFFresh,s2Step133EntryGFresh,s2Step133EntryFvFresh,s2Step133EntryGvFresh]=
    some (s2Step133EntryGvAfter,[s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut],(growRow 768 s2Step133EntryFFresh ++ (growRow 769 s2Step133EntryGFresh ++ (growRow 770 s2Step133EntryFvFresh ++ (growRow 771 s2Step133EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step133EntryGvAfter [] []=some (s2Step133EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step133EntryGvBefore s2Step133EntryGvAfter s2Step133EntryGvAfter
    s2Step133EntryGvRow s2Step133EntryGvOut 80 s2Step133EntryGvFresh [] [] []
    (growRow 771 s2Step133EntryGvFresh) ([]) s2Step133EntryGv_Incoming s2Step133EntryGv_checked h4 s2Step133EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step133EntryFvBefore s2Step133EntryFvAfter s2Step133EntryGvAfter
    s2Step133EntryFvRow s2Step133EntryFvOut 80 s2Step133EntryFvFresh [(s2Step133EntryGvRow,80)] [s2Step133EntryGvFresh] [s2Step133EntryGvOut]
    (growRow 770 s2Step133EntryFvFresh) ((growRow 771 s2Step133EntryGvFresh ++ [])) s2Step133EntryFv_Incoming s2Step133EntryFv_checked h3 s2Step133EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step133EntryGBefore s2Step133EntryGAfter s2Step133EntryGvAfter
    s2Step133EntryGRow s2Step133EntryGOut 203 s2Step133EntryGFresh [(s2Step133EntryFvRow,80),(s2Step133EntryGvRow,80)] [s2Step133EntryFvFresh,s2Step133EntryGvFresh] [s2Step133EntryFvOut,s2Step133EntryGvOut]
    (growRow 769 s2Step133EntryGFresh) ((growRow 770 s2Step133EntryFvFresh ++ (growRow 771 s2Step133EntryGvFresh ++ []))) s2Step133EntryG_Incoming s2Step133EntryG_checked h2 s2Step133EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step133EntryFBefore s2Step133EntryFAfter s2Step133EntryGvAfter
    s2Step133EntryFRow s2Step133EntryFOut 203 s2Step133EntryFFresh [(s2Step133EntryGRow,203),(s2Step133EntryFvRow,80),(s2Step133EntryGvRow,80)] [s2Step133EntryGFresh,s2Step133EntryFvFresh,s2Step133EntryGvFresh] [s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut]
    (growRow 768 s2Step133EntryFFresh) ((growRow 769 s2Step133EntryGFresh ++ (growRow 770 s2Step133EntryFvFresh ++ (growRow 771 s2Step133EntryGvFresh ++ [])))) s2Step133EntryF_Incoming s2Step133EntryF_checked h1 s2Step133EntryF_Outgoing
  exact h0

private theorem s2Step133EntryBank_checked : compileHmrBankResizeLog .entry s2Step133EntryFBefore ⟨s2Step133EntryFRow,s2Step133EntryGRow,s2Step133EntryFvRow,s2Step133EntryGvRow⟩ ⟨203,203,80,80⟩ [s2Step133EntryFFresh,s2Step133EntryGFresh,s2Step133EntryFvFresh,s2Step133EntryGvFresh]=
    some (s2Step133EntryGvAfter,⟨s2Step133EntryFOut,s2Step133EntryGOut,s2Step133EntryFvOut,s2Step133EntryGvOut⟩,(growRow 768 s2Step133EntryFFresh ++ (growRow 769 s2Step133EntryGFresh ++ (growRow 770 s2Step133EntryFvFresh ++ (growRow 771 s2Step133EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step133EntryBank_rows]
  rfl

private def s2Step133ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<714) ∨ (715≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133ExitFBefore : Arena := s2Step133ExitGAfter

private def s2Step133ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 822],768⟩

private def s2Step133ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 781],770⟩

private def s2Step133ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783, 829],769⟩

private def s2Step133ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 814],771⟩

private theorem s2Step133ExitBank_incomingDistinct : ([s2Step133ExitGRow,s2Step133ExitFRow,s2Step133ExitFvRow,s2Step133ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133ExitF_Incoming : rowsOwned s2Step133ExitFBefore [s2Step133ExitFRow,s2Step133ExitFvRow,s2Step133ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133ExitGRow,s2Step133ExitFRow,s2Step133ExitFvRow,s2Step133ExitGvRow] 1 s2Step133ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133ExitBank_outgoingOwned : rowsOwned s2Step133ExitGvAfter [s2Step133ExitGOut,s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step133ExitGvAfter (fun q => (0≤q ∧ q<714) ∨ (715≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133ExitF_Outgoing : rowsOwned s2Step133ExitGvAfter [s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut] :=
  hmrRows_owned_drop s2Step133ExitGvAfter [s2Step133ExitGOut,s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut] 1 s2Step133ExitBank_outgoingOwned

private theorem s2Step133ExitF_distinct : (s2Step133ExitFRow.sign::s2Step133ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133ExitF_owned : (s2Step133ExitFRow.sign::s2Step133ExitFRow.payload).toFinset⊆s2Step133ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133ExitFBefore (fun q => (0≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133ExitF_retired : s2Step133ExitFBefore.retireSet s2Step133ExitFExtra.toFinset=s2Step133ExitFAfter := by
  unfold Arena.retireSet s2Step133ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step133ExitFBefore,s2Step133ExitGAfter,s2Step133ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step133ExitF_checked : planRowResizeLog s2Step133ExitFBefore s2Step133ExitFRow 202 []=
    some (s2Step133ExitFAfter,s2Step133ExitFOut,shrinkRow 768 s2Step133ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step133ExitFBefore s2Step133ExitFRow 202 s2Step133ExitF_distinct s2Step133ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step133ExitFRow.payload.take 202) s2Step133ExitFRow.sign=s2Step133ExitFOut := by decide +kernel
  have hi : s2Step133ExitFRow.payload.drop 202=s2Step133ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step133ExitF_retired] at result
  exact result

private def s2Step133ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<714) ∨ (715≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133ExitFvBefore : Arena := s2Step133ExitFAfter

private theorem s2Step133ExitFv_Incoming : rowsOwned s2Step133ExitFvBefore [s2Step133ExitFvRow,s2Step133ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133ExitGRow,s2Step133ExitFRow,s2Step133ExitFvRow,s2Step133ExitGvRow] 2 s2Step133ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133ExitFvBefore (fun q => (0≤q ∧ q<714) ∨ (715≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133ExitFv_Outgoing : rowsOwned s2Step133ExitGvAfter [s2Step133ExitFvOut,s2Step133ExitGvOut] :=
  hmrRows_owned_drop s2Step133ExitGvAfter [s2Step133ExitGOut,s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut] 2 s2Step133ExitBank_outgoingOwned

private theorem s2Step133ExitFv_distinct : (s2Step133ExitFvRow.sign::s2Step133ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133ExitFv_owned : (s2Step133ExitFvRow.sign::s2Step133ExitFvRow.payload).toFinset⊆s2Step133ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133ExitFvBefore (fun q => (0≤q ∧ q<714) ∨ (715≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133ExitFv_retired : s2Step133ExitFvBefore.retireSet s2Step133ExitFvExtra.toFinset=s2Step133ExitFvAfter := by
  unfold Arena.retireSet s2Step133ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step133ExitFvBefore,s2Step133ExitFAfter,s2Step133ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step133ExitFv_checked : planRowResizeLog s2Step133ExitFvBefore s2Step133ExitFvRow 80 []=
    some (s2Step133ExitFvAfter,s2Step133ExitFvOut,shrinkRow 770 s2Step133ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step133ExitFvBefore s2Step133ExitFvRow 80 s2Step133ExitFv_distinct s2Step133ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step133ExitFvRow.payload.take 80) s2Step133ExitFvRow.sign=s2Step133ExitFvOut := by decide +kernel
  have hi : s2Step133ExitFvRow.payload.drop 80=s2Step133ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step133ExitFv_retired] at result
  exact result

private def s2Step133ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step133ExitG_Incoming : rowsOwned s2Step133ExitGBefore [s2Step133ExitGRow,s2Step133ExitFRow,s2Step133ExitFvRow,s2Step133ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133ExitGRow,s2Step133ExitFRow,s2Step133ExitFvRow,s2Step133ExitGvRow] 0 s2Step133ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133ExitG_Outgoing : rowsOwned s2Step133ExitGvAfter [s2Step133ExitGOut,s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut] :=
  hmrRows_owned_drop s2Step133ExitGvAfter [s2Step133ExitGOut,s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut] 0 s2Step133ExitBank_outgoingOwned

private theorem s2Step133ExitG_distinct : (s2Step133ExitGRow.sign::s2Step133ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133ExitG_owned : (s2Step133ExitGRow.sign::s2Step133ExitGRow.payload).toFinset⊆s2Step133ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133ExitG_retired : s2Step133ExitGBefore.retireSet s2Step133ExitGExtra.toFinset=s2Step133ExitGAfter := by
  unfold Arena.retireSet s2Step133ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step133ExitGBefore,s2Step133ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step133ExitG_checked : planRowResizeLog s2Step133ExitGBefore s2Step133ExitGRow 202 []=
    some (s2Step133ExitGAfter,s2Step133ExitGOut,shrinkRow 769 s2Step133ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step133ExitGBefore s2Step133ExitGRow 202 s2Step133ExitG_distinct s2Step133ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step133ExitGRow.payload.take 202) s2Step133ExitGRow.sign=s2Step133ExitGOut := by decide +kernel
  have hi : s2Step133ExitGRow.payload.drop 202=s2Step133ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step133ExitG_retired] at result
  exact result

private def s2Step133ExitGvBefore : Arena := s2Step133ExitFvAfter

private theorem s2Step133ExitGv_Incoming : rowsOwned s2Step133ExitGvBefore [s2Step133ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133ExitGRow,s2Step133ExitFRow,s2Step133ExitFvRow,s2Step133ExitGvRow] 3 s2Step133ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133ExitGvBefore (fun q => (0≤q ∧ q<714) ∨ (715≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133ExitGv_Outgoing : rowsOwned s2Step133ExitGvAfter [s2Step133ExitGvOut] :=
  hmrRows_owned_drop s2Step133ExitGvAfter [s2Step133ExitGOut,s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut] 3 s2Step133ExitBank_outgoingOwned

private theorem s2Step133ExitGv_distinct : (s2Step133ExitGvRow.sign::s2Step133ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133ExitGv_owned : (s2Step133ExitGvRow.sign::s2Step133ExitGvRow.payload).toFinset⊆s2Step133ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133ExitGvBefore (fun q => (0≤q ∧ q<714) ∨ (715≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133ExitGv_retired : s2Step133ExitGvBefore.retireSet s2Step133ExitGvExtra.toFinset=s2Step133ExitGvAfter := by
  unfold Arena.retireSet s2Step133ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step133ExitGvBefore,s2Step133ExitFvAfter,s2Step133ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step133ExitGv_checked : planRowResizeLog s2Step133ExitGvBefore s2Step133ExitGvRow 80 []=
    some (s2Step133ExitGvAfter,s2Step133ExitGvOut,shrinkRow 771 s2Step133ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step133ExitGvBefore s2Step133ExitGvRow 80 s2Step133ExitGv_distinct s2Step133ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step133ExitGvRow.payload.take 80) s2Step133ExitGvRow.sign=s2Step133ExitGvOut := by decide +kernel
  have hi : s2Step133ExitGvRow.payload.drop 80=s2Step133ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step133ExitGv_retired] at result
  exact result

private theorem s2Step133ExitBank_rows : planWindowRowsLog s2Step133ExitGBefore [(s2Step133ExitGRow,202),(s2Step133ExitFRow,202),(s2Step133ExitFvRow,80),(s2Step133ExitGvRow,80)] [[],[],[],[]]=
    some (s2Step133ExitGvAfter,[s2Step133ExitGOut,s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut],(shrinkRow 769 s2Step133ExitGExtra ++ (shrinkRow 768 s2Step133ExitFExtra ++ (shrinkRow 770 s2Step133ExitFvExtra ++ (shrinkRow 771 s2Step133ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step133ExitGvAfter [] []=some (s2Step133ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step133ExitGvBefore s2Step133ExitGvAfter s2Step133ExitGvAfter
    s2Step133ExitGvRow s2Step133ExitGvOut 80 [] [] [] []
    (shrinkRow 771 s2Step133ExitGvExtra) ([]) s2Step133ExitGv_Incoming s2Step133ExitGv_checked h4 s2Step133ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step133ExitFvBefore s2Step133ExitFvAfter s2Step133ExitGvAfter
    s2Step133ExitFvRow s2Step133ExitFvOut 80 [] [(s2Step133ExitGvRow,80)] [[]] [s2Step133ExitGvOut]
    (shrinkRow 770 s2Step133ExitFvExtra) ((shrinkRow 771 s2Step133ExitGvExtra ++ [])) s2Step133ExitFv_Incoming s2Step133ExitFv_checked h3 s2Step133ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step133ExitFBefore s2Step133ExitFAfter s2Step133ExitGvAfter
    s2Step133ExitFRow s2Step133ExitFOut 202 [] [(s2Step133ExitFvRow,80),(s2Step133ExitGvRow,80)] [[],[]] [s2Step133ExitFvOut,s2Step133ExitGvOut]
    (shrinkRow 768 s2Step133ExitFExtra) ((shrinkRow 770 s2Step133ExitFvExtra ++ (shrinkRow 771 s2Step133ExitGvExtra ++ []))) s2Step133ExitF_Incoming s2Step133ExitF_checked h2 s2Step133ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step133ExitGBefore s2Step133ExitGAfter s2Step133ExitGvAfter
    s2Step133ExitGRow s2Step133ExitGOut 202 [] [(s2Step133ExitFRow,202),(s2Step133ExitFvRow,80),(s2Step133ExitGvRow,80)] [[],[],[]] [s2Step133ExitFOut,s2Step133ExitFvOut,s2Step133ExitGvOut]
    (shrinkRow 769 s2Step133ExitGExtra) ((shrinkRow 768 s2Step133ExitFExtra ++ (shrinkRow 770 s2Step133ExitFvExtra ++ (shrinkRow 771 s2Step133ExitGvExtra ++ [])))) s2Step133ExitG_Incoming s2Step133ExitG_checked h1 s2Step133ExitG_Outgoing
  exact h0

private theorem s2Step133ExitBank_checked : compileHmrBankResizeLog .exit s2Step133ExitGBefore ⟨s2Step133ExitFRow,s2Step133ExitGRow,s2Step133ExitFvRow,s2Step133ExitGvRow⟩ ⟨202,202,80,80⟩ [[],[],[],[]]=
    some (s2Step133ExitGvAfter,⟨s2Step133ExitFOut,s2Step133ExitGOut,s2Step133ExitFvOut,s2Step133ExitGvOut⟩,(shrinkRow 769 s2Step133ExitGExtra ++ (shrinkRow 768 s2Step133ExitFExtra ++ (shrinkRow 770 s2Step133ExitFvExtra ++ (shrinkRow 771 s2Step133ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step133ExitBank_rows]
  rfl

private theorem s2Step133Add0_apart : Disjoint s2Step133Add0Arena.live s2Step133Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step133Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133Add0_card : s2Step133Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step133Add0_borrowed : s2Step133Add0Arena.checkBorrow (hmrHybridCount s2Step133Add0Arena s2Step133Add0B.length) s2Step133Add0Work=some s2Step133Add0During := by
  have len : s2Step133Add0Work.length=hmrHybridCount s2Step133Add0Arena s2Step133Add0B.length := by
    rw [hmrHybridCount,s2Step133Add0_card]
    decide +kernel
  have nd : s2Step133Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step133Add0Arena s2Step133Add0During s2Step133Add0Work.toFinset s2Step133Add0_bounded s2Step133Add0_apart rfl

private theorem s2Step133Add0_distinct : (837::817::849::(s2Step133Add0A++s2Step133Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133Add0_owned : (837::817::849::(s2Step133Add0A++s2Step133Add0B)).toFinset⊆s2Step133Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step133Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133Add0_checked : compileHmrHybridCinLog s2Step133Add0Arena 817 837 849 s2Step133Add0A s2Step133Add0B s2Step133Add0Work=some s2Step133Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step133Add0Arena s2Step133Add0During 817 837 849 s2Step133Add0A s2Step133Add0B s2Step133Add0Work
    (by decide +kernel) (by decide +kernel) s2Step133Add0_distinct
    (fun q hq => s2Step133Add0_owned (List.mem_toFinset.mpr hq)) s2Step133Add0_borrowed

private theorem s2Step133Add1_apart : Disjoint s2Step133Add1Arena.live s2Step133Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step133Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133Add1_card : s2Step133Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step133Add1_borrowed : s2Step133Add1Arena.checkBorrow (hmrHybridCount s2Step133Add1Arena s2Step133Add1B.length) s2Step133Add1Work=some s2Step133Add1During := by
  have len : s2Step133Add1Work.length=hmrHybridCount s2Step133Add1Arena s2Step133Add1B.length := by
    rw [hmrHybridCount,s2Step133Add1_card]
    decide +kernel
  have nd : s2Step133Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step133Add1Arena s2Step133Add1During s2Step133Add1Work.toFinset s2Step133Add1_bounded s2Step133Add1_apart rfl

private theorem s2Step133Add1_distinct : (837::817::849::(s2Step133Add1A++s2Step133Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133Add1_owned : (837::817::849::(s2Step133Add1A++s2Step133Add1B)).toFinset⊆s2Step133Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step133Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133Add1_checked : compileHmrHybridCinLog s2Step133Add1Arena 817 837 849 s2Step133Add1A s2Step133Add1B s2Step133Add1Work=some s2Step133Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step133Add1Arena s2Step133Add1During 817 837 849 s2Step133Add1A s2Step133Add1B s2Step133Add1Work
    (by decide +kernel) (by decide +kernel) s2Step133Add1_distinct
    (fun q hq => s2Step133Add1_owned (List.mem_toFinset.mpr hq)) s2Step133Add1_borrowed

private theorem s2Step133F4_apart : Disjoint (s2Step133Add0A++s2Step133Add0B).toFinset (s2Step133Add1A++s2Step133Add1B).toFinset := by
  have nd : ((s2Step133Add0A++s2Step133Add0B)++(s2Step133Add1A++s2Step133Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step133F4_carry : s2Step133F4FlagArena.checkBorrow 1 [849]=some s2Step133Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step133F4FlagArena,s2Step133HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step133F4FlagArena,s2Step133HeadFvAfter,s2Step133Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step133F4_distinct : (827::817::837::849::((s2Step133Add0A++s2Step133Add1A)++(s2Step133Add0B++s2Step133Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133F4_flag : s2Step133HeadFvAfter.checkBorrow 1 [837]=some s2Step133F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step133HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step133F4_owned : (827::817::((s2Step133Add0A++s2Step133Add1A)++(s2Step133Add0B++s2Step133Add1B))).toFinset⊆s2Step133HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step133HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133F4_checked : compileHmrHybridF4Log s2Step133HeadFvAfter 827 817 s2Step133Add0A s2Step133Add0B s2Step133Add1A s2Step133Add1B [837] [849] s2Step133Add0Work s2Step133Add1Work=some s2Step133F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step133HeadFvAfter s2Step133F4FlagArena s2Step133Add0Arena s2Step133Add0During s2Step133Add1During 827 817
    s2Step133Add0A s2Step133Add0B s2Step133Add1A s2Step133Add1B [837] [849] s2Step133Add0Work s2Step133Add1Work
    (fun q hq => s2Step133F4_owned (List.mem_toFinset.mpr hq)) s2Step133F4_flag s2Step133F4_carry
    s2Step133F4_distinct s2Step133F4_apart s2Step133Add0_checked s2Step133Add1_checked

private theorem s2Step133Front_branch : s2Step133FrontSigmaArena.checkBorrow 1 [817]=some s2Step133HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step133FrontSigmaArena,s2Step133EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step133FrontSigmaArena,s2Step133EntryGvAfter,s2Step133HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step133Front_entry : HmrFrontEntryValid s2Step133EntryFBefore s2Step133FrontBank 203 80 ⟨202,202,80,80⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step133FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step133EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step133EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step133FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step133Front_sigma : s2Step133EntryGvAfter.checkBorrow 1 [827]=some s2Step133FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step133EntryGvAfter,arenaWires]
  · rfl

private def s2Step133HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133HeadFBefore : Arena := s2Step133HeadGAfter

private def s2Step133HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step133HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step133HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783],769⟩

private def s2Step133HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835],771⟩

private theorem s2Step133HeadBank_incomingDistinct : ([s2Step133HeadGRow,s2Step133HeadFRow,s2Step133HeadGvRow,s2Step133HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133HeadF_Incoming : rowsOwned s2Step133HeadFBefore [s2Step133HeadFRow,s2Step133HeadGvRow,s2Step133HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133HeadGRow,s2Step133HeadFRow,s2Step133HeadGvRow,s2Step133HeadFvRow] 1 s2Step133HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133HeadBank_outgoingOwned : rowsOwned s2Step133HeadFvAfter [s2Step133HeadGOut,s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step133HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133HeadF_Outgoing : rowsOwned s2Step133HeadFvAfter [s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut] :=
  hmrRows_owned_drop s2Step133HeadFvAfter [s2Step133HeadGOut,s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut] 1 s2Step133HeadBank_outgoingOwned

private theorem s2Step133HeadF_distinct : (s2Step133HeadFRow.sign::s2Step133HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133HeadF_owned : (s2Step133HeadFRow.sign::s2Step133HeadFRow.payload).toFinset⊆s2Step133HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133HeadF_reserved : s2Step133HeadFBefore.reserve s2Step133HeadFFresh.toFinset=some s2Step133HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step133HeadFFresh,arenaWires]
  · norm_num [s2Step133HeadFBefore,s2Step133HeadGAfter,s2Step133HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step133HeadFAfter,s2Step133HeadFBefore,s2Step133HeadGAfter,s2Step133HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step133HeadF_checked : planRowResizeLog s2Step133HeadFBefore s2Step133HeadFRow 204 s2Step133HeadFFresh=
    some (s2Step133HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 822],768⟩,growRow 768 s2Step133HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step133HeadFBefore s2Step133HeadFAfter s2Step133HeadFRow 204 s2Step133HeadFFresh
    s2Step133HeadF_distinct s2Step133HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step133HeadF_reserved
  have rowEq : WindowRow.mk (s2Step133HeadFRow.payload++s2Step133HeadFFresh) s2Step133HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 822],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step133HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step133HeadFvBefore : Arena := s2Step133HeadGvAfter

private theorem s2Step133HeadFv_Incoming : rowsOwned s2Step133HeadFvBefore [s2Step133HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133HeadGRow,s2Step133HeadFRow,s2Step133HeadGvRow,s2Step133HeadFvRow] 3 s2Step133HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133HeadFv_Outgoing : rowsOwned s2Step133HeadFvAfter [s2Step133HeadFvOut] :=
  hmrRows_owned_drop s2Step133HeadFvAfter [s2Step133HeadGOut,s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut] 3 s2Step133HeadBank_outgoingOwned

private theorem s2Step133HeadFv_distinct : (s2Step133HeadFvRow.sign::s2Step133HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133HeadFv_owned : (s2Step133HeadFvRow.sign::s2Step133HeadFvRow.payload).toFinset⊆s2Step133HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133HeadFv_reserved : s2Step133HeadFvBefore.reserve s2Step133HeadFvFresh.toFinset=some s2Step133HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step133HeadFvFresh,arenaWires]
  · norm_num [s2Step133HeadFvBefore,s2Step133HeadGvAfter,s2Step133HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step133HeadFvAfter,s2Step133HeadFvBefore,s2Step133HeadGvAfter,s2Step133HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step133HeadFv_checked : planRowResizeLog s2Step133HeadFvBefore s2Step133HeadFvRow 81 s2Step133HeadFvFresh=
    some (s2Step133HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 781],770⟩,growRow 770 s2Step133HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step133HeadFvBefore s2Step133HeadFvAfter s2Step133HeadFvRow 81 s2Step133HeadFvFresh
    s2Step133HeadFv_distinct s2Step133HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step133HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step133HeadFvRow.payload++s2Step133HeadFvFresh) s2Step133HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 781],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step133HeadG_Incoming : rowsOwned s2Step133HeadGBefore [s2Step133HeadGRow,s2Step133HeadFRow,s2Step133HeadGvRow,s2Step133HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133HeadGRow,s2Step133HeadFRow,s2Step133HeadGvRow,s2Step133HeadFvRow] 0 s2Step133HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133HeadG_Outgoing : rowsOwned s2Step133HeadFvAfter [s2Step133HeadGOut,s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut] :=
  hmrRows_owned_drop s2Step133HeadFvAfter [s2Step133HeadGOut,s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut] 0 s2Step133HeadBank_outgoingOwned

private theorem s2Step133HeadG_distinct : (s2Step133HeadGRow.sign::s2Step133HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133HeadG_owned : (s2Step133HeadGRow.sign::s2Step133HeadGRow.payload).toFinset⊆s2Step133HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133HeadG_reserved : s2Step133HeadGBefore.reserve s2Step133HeadGFresh.toFinset=some s2Step133HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step133HeadGFresh,arenaWires]
  · norm_num [s2Step133HeadGBefore,s2Step133HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step133HeadGAfter,s2Step133HeadGBefore,s2Step133HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step133HeadG_checked : planRowResizeLog s2Step133HeadGBefore s2Step133HeadGRow 204 s2Step133HeadGFresh=
    some (s2Step133HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783, 829],769⟩,growRow 769 s2Step133HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step133HeadGBefore s2Step133HeadGAfter s2Step133HeadGRow 204 s2Step133HeadGFresh
    s2Step133HeadG_distinct s2Step133HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step133HeadG_reserved
  have rowEq : WindowRow.mk (s2Step133HeadGRow.payload++s2Step133HeadGFresh) s2Step133HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 783, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step133HeadGvBefore : Arena := s2Step133HeadFAfter

private theorem s2Step133HeadGv_Incoming : rowsOwned s2Step133HeadGvBefore [s2Step133HeadGvRow,s2Step133HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step133HeadGRow,s2Step133HeadFRow,s2Step133HeadGvRow,s2Step133HeadFvRow] 2 s2Step133HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step133HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step133HeadGv_Outgoing : rowsOwned s2Step133HeadFvAfter [s2Step133HeadGvOut,s2Step133HeadFvOut] :=
  hmrRows_owned_drop s2Step133HeadFvAfter [s2Step133HeadGOut,s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut] 2 s2Step133HeadBank_outgoingOwned

private theorem s2Step133HeadGv_distinct : (s2Step133HeadGvRow.sign::s2Step133HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step133HeadGv_owned : (s2Step133HeadGvRow.sign::s2Step133HeadGvRow.payload).toFinset⊆s2Step133HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step133HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step133HeadGv_reserved : s2Step133HeadGvBefore.reserve s2Step133HeadGvFresh.toFinset=some s2Step133HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step133HeadGvFresh,arenaWires]
  · norm_num [s2Step133HeadGvBefore,s2Step133HeadFAfter,s2Step133HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step133HeadGvAfter,s2Step133HeadGvBefore,s2Step133HeadFAfter,s2Step133HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step133HeadGv_checked : planRowResizeLog s2Step133HeadGvBefore s2Step133HeadGvRow 81 s2Step133HeadGvFresh=
    some (s2Step133HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 814],771⟩,growRow 771 s2Step133HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step133HeadGvBefore s2Step133HeadGvAfter s2Step133HeadGvRow 81 s2Step133HeadGvFresh
    s2Step133HeadGv_distinct s2Step133HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step133HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step133HeadGvRow.payload++s2Step133HeadGvFresh) s2Step133HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 835, 814],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step133HeadBank_rows : planWindowRowsLog s2Step133HeadGBefore [(s2Step133HeadGRow,204),(s2Step133HeadFRow,204),(s2Step133HeadGvRow,81),(s2Step133HeadFvRow,81)] [s2Step133HeadGFresh,s2Step133HeadFFresh,s2Step133HeadGvFresh,s2Step133HeadFvFresh]=
    some (s2Step133HeadFvAfter,[s2Step133HeadGOut,s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut],(growRow 769 s2Step133HeadGFresh ++ (growRow 768 s2Step133HeadFFresh ++ (growRow 771 s2Step133HeadGvFresh ++ (growRow 770 s2Step133HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step133HeadFvAfter [] []=some (s2Step133HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step133HeadFvBefore s2Step133HeadFvAfter s2Step133HeadFvAfter
    s2Step133HeadFvRow s2Step133HeadFvOut 81 s2Step133HeadFvFresh [] [] []
    (growRow 770 s2Step133HeadFvFresh) ([]) s2Step133HeadFv_Incoming s2Step133HeadFv_checked h4 s2Step133HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step133HeadGvBefore s2Step133HeadGvAfter s2Step133HeadFvAfter
    s2Step133HeadGvRow s2Step133HeadGvOut 81 s2Step133HeadGvFresh [(s2Step133HeadFvRow,81)] [s2Step133HeadFvFresh] [s2Step133HeadFvOut]
    (growRow 771 s2Step133HeadGvFresh) ((growRow 770 s2Step133HeadFvFresh ++ [])) s2Step133HeadGv_Incoming s2Step133HeadGv_checked h3 s2Step133HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step133HeadFBefore s2Step133HeadFAfter s2Step133HeadFvAfter
    s2Step133HeadFRow s2Step133HeadFOut 204 s2Step133HeadFFresh [(s2Step133HeadGvRow,81),(s2Step133HeadFvRow,81)] [s2Step133HeadGvFresh,s2Step133HeadFvFresh] [s2Step133HeadGvOut,s2Step133HeadFvOut]
    (growRow 768 s2Step133HeadFFresh) ((growRow 771 s2Step133HeadGvFresh ++ (growRow 770 s2Step133HeadFvFresh ++ []))) s2Step133HeadF_Incoming s2Step133HeadF_checked h2 s2Step133HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step133HeadGBefore s2Step133HeadGAfter s2Step133HeadFvAfter
    s2Step133HeadGRow s2Step133HeadGOut 204 s2Step133HeadGFresh [(s2Step133HeadFRow,204),(s2Step133HeadGvRow,81),(s2Step133HeadFvRow,81)] [s2Step133HeadFFresh,s2Step133HeadGvFresh,s2Step133HeadFvFresh] [s2Step133HeadFOut,s2Step133HeadGvOut,s2Step133HeadFvOut]
    (growRow 769 s2Step133HeadGFresh) ((growRow 768 s2Step133HeadFFresh ++ (growRow 771 s2Step133HeadGvFresh ++ (growRow 770 s2Step133HeadFvFresh ++ [])))) s2Step133HeadG_Incoming s2Step133HeadG_checked h1 s2Step133HeadG_Outgoing
  exact h0

private theorem s2Step133HeadBank_checked : compileHmrBankResizeLog .headroom s2Step133HeadGBefore ⟨s2Step133HeadFRow,s2Step133HeadGRow,s2Step133HeadFvRow,s2Step133HeadGvRow⟩ ⟨204,204,81,81⟩ [s2Step133HeadGFresh,s2Step133HeadFFresh,s2Step133HeadGvFresh,s2Step133HeadFvFresh]=
    some (s2Step133HeadFvAfter,⟨s2Step133HeadFOut,s2Step133HeadGOut,s2Step133HeadFvOut,s2Step133HeadGvOut⟩,(growRow 769 s2Step133HeadGFresh ++ (growRow 768 s2Step133HeadFFresh ++ (growRow 771 s2Step133HeadGvFresh ++ (growRow 770 s2Step133HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step133HeadBank_rows]
  rfl

private theorem s2Step133Front_checked : compileHmrSourceFrontLog s2Step133EntryFBefore s2Step133FrontBank 203 80 ⟨202,202,80,80⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step133FrontLog=some s2Step133FrontPlan := by
  have pairEq : s2Step133FrontPair=⟨s2Step133HeadFRow,s2Step133HeadGRow,s2Step133HeadFvRow,s2Step133HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step133FrontHead=⟨s2Step133ExitFRow,s2Step133ExitGRow,s2Step133ExitFvRow,s2Step133ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step133Add0A=s2Step133FrontHead.f.wires := by decide +kernel
  have gEq : s2Step133Add0B=s2Step133FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step133Add1A=s2Step133FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step133Add1B=s2Step133FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step133EntryFBefore s2Step133FrontBank 203 80 ⟨202,202,80,80⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step133FrontLog s2Step133FrontPlan
  · exact s2Step133Front_entry
  · exact s2Step133EntryBank_checked
  · exact s2Step133Front_sigma
  · rfl
  · exact s2Step133Front_branch
  · rfl
  · simpa only [s2Step133FrontPlan,pairEq] using s2Step133HeadBank_checked
  · simpa only [s2Step133FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step133F4_checked
  · exact s2Step133Counter_checked
  · rfl
  · simpa only [s2Step133FrontPlan,headEq] using s2Step133ExitBank_checked

private theorem s2Step133Complete_explicit_checked : compileHmrEarlyStepLog s2Step133EntryFBefore s2Step133FrontBank 203 80 ⟨202,202,80,80⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step133CompleteLog=some s2Step133CompletePlan := by
  let Q := s2Step133EarlyControlPlan
  have hq := s2Step133EarlyControl_plan_checked
  have fv1 : s2Step133CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step133CompleteOut.fv.payload[2]?.getD s2Step133CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step133CompleteOut.fv.payload[3]?.getD s2Step133CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step133CompleteOut.fv.payload[4]?.getD s2Step133CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step133EntryFBefore s2Step133EarlyControlArena s2Step133FrontBank 203 80 ⟨202,202,80,80⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step133CompleteLog s2Step133FrontPlan Q
    s2Step133Front_checked s2Step133Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step133Complete_owned s2Step133Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step133EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 827 s2Step133CompleteOut.fv.second (s2Step133CompleteOut.fv.payload[2]?.getD s2Step133CompleteOut.fv.sign) (s2Step133CompleteOut.fv.payload[3]?.getD s2Step133CompleteOut.fv.sign) (s2Step133CompleteOut.fv.payload[4]?.getD s2Step133CompleteOut.fv.sign) 817 37 s2Step133EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep133Arena : Arena := s2Step133EntryFBefore
def s2PrivateStep133Bank : WindowBank := s2Step133FrontBank
def s2PrivateStep133Spec : HmrSourceWalkStepLog := ⟨203,80,⟨202,202,80,80⟩,37,.early s2Step133CompleteLog⟩
def s2PrivateStep133Plan : HmrSourceStepPlan := .early s2Step133CompletePlan
theorem s2PrivateStep133_source : s2PrivateStep133Spec=s2ObservedLogs128[5] := rfl
theorem s2PrivateStep133_checked : compileHmrSourceStepLog s2PrivateStep133Arena s2PrivateStep133Bank
    s2PrivateStep133Spec.fgWidth s2PrivateStep133Spec.vWidth s2PrivateStep133Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 133 s2PrivateStep133Spec.need none s2PrivateStep133Spec.log=some s2PrivateStep133Plan := by
  change compileHmrSourceStepLog s2Step133EntryFBefore s2Step133FrontBank 203 80 ⟨202,202,80,80⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 133 37 none (.early s2Step133CompleteLog)=some (.early s2Step133CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 133<498)]
  rw [s2Step133Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
