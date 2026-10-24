import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep128
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

private def s2Step130CompleteMoves : List (Wire × Wire) := [(827,203),(840,715)]

private def s2Step130EarlyControlLog : HmrEarlyControlLog := ⟨[840, 827, 822, 817, 814],[781],[837],[849, 790, 815, 867, 877, 879],[]⟩

private def s2Step130FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], [831]],[[781], [814], [822], [817]],[[], [], [], []]⟩,[829],[835],[837],[849],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815]⟩

private def s2Step130CompleteLog : HmrEarlyStepLog := ⟨s2Step130FrontLog,s2Step130CompleteMoves,s2Step130EarlyControlLog⟩

private def s2Step130ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step130ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step130ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],769⟩

private def s2Step130ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step130FrontOut : WindowBank := ⟨s2Step130ExitFOut,s2Step130ExitGOut,s2Step130ExitFvOut,s2Step130ExitGvOut⟩

private def s2Step130CompleteOut : WindowBank := s2Step130FrontOut.repacked s2Step130CompleteMoves

private def s2Step130EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step130EarlyControlPositiveArena,[781],s2Step130EarlyControlEqualityArena,[837],⟨⟨829,false⟩,[⟨⟨781,false⟩,837⟩]⟩⟩

private def s2Step130EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,840⟩,⟨⟨774,false⟩,827⟩,⟨⟨775,false⟩,822⟩,⟨⟨776,false⟩,817⟩,⟨⟨777,false⟩,814⟩]⟩

private def s2Step130EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step130EarlyControlZeroArena,s2Step130EarlyControlZeroPlan,s2Step130EarlyControlClassPlan,s2Step130EarlyControlFlagArena,s2Step130EarlyControlFittedArena,s2Step130EarlyControlHistoryArena,s2Step130EarlyControlSigmaArena,s2Step130EarlyControlOutputArena,s2Step130EarlyControlLog⟩

private def s2Step130CounterWork : List Wire := [837, 849, 790, 815]

private theorem s2Step130Counter_bounded : s2Step130CounterWork.toFinset⊆arenaWires := by norm_num [s2Step130CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step130HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130CounterDuring : Arena := ⟨s2Step130HeadFvAfter.live∪s2Step130CounterWork.toFinset,Finset.union_subset s2Step130HeadFvAfter.bounded s2Step130Counter_bounded⟩

private def s2Step130EntryFFresh : List Wire := []

private def s2Step130EntryFvFresh : List Wire := []

private def s2Step130EntryGFresh : List Wire := []

private def s2Step130EntryGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EntryGvFresh : List Wire := [831]

private def s2Step130ExitFExtra : List Wire := [715, 814]

private def s2Step130ExitFvExtra : List Wire := [817]

private def s2Step130ExitGExtra : List Wire := [203, 781]

private def s2Step130ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<715) ∨ (716≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130ExitGvExtra : List Wire := [822]

private def s2Step130Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130Add0Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step130Add0_bounded : s2Step130Add0Work.toFinset⊆arenaWires := by
  have h : s2Step130Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step130Add0During : Arena := ⟨s2Step130Add0Arena.live∪s2Step130Add0Work.toFinset,Finset.union_subset s2Step130Add0Arena.bounded s2Step130Add0_bounded⟩

private def s2Step130Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130Add1Work : List Wire := [790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step130Add1_bounded : s2Step130Add1Work.toFinset⊆arenaWires := by
  have h : s2Step130Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step130Add1During : Arena := ⟨s2Step130Add1Arena.live∪s2Step130Add1Work.toFinset,Finset.union_subset s2Step130Add1Arena.bounded s2Step130Add1_bounded⟩

private def s2Step130F4FlagArena : Arena := ⟨s2Step130HeadFvAfter.live∪{837},Finset.union_subset s2Step130HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step130F4Plan : HmrHybridF4Plan := ⟨s2Step130F4FlagArena,[837],s2Step130Add0Arena,[849],s2Step130Add0During,s2Step130Add0Work,s2Step130Add1During,s2Step130Add1Work⟩

private def s2Step130HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814],768⟩

private def s2Step130HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817],770⟩

private def s2Step130HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 781],769⟩

private def s2Step130HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822],771⟩

private def s2Step130FrontHead : WindowBank := ⟨s2Step130HeadFOut,s2Step130HeadGOut,s2Step130HeadFvOut,s2Step130HeadGvOut⟩

private def s2Step130EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715],768⟩

private def s2Step130EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step130EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],769⟩

private def s2Step130EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step130FrontPair : WindowBank := ⟨s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut⟩

private def s2Step130FrontSigmaArena : Arena := ⟨s2Step130EntryGvAfter.live∪{829},Finset.union_subset s2Step130EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step130HeadFFresh : List Wire := [814]

private def s2Step130HeadFvFresh : List Wire := [817]

private def s2Step130HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130HeadGFresh : List Wire := [781]

private def s2Step130HeadGvFresh : List Wire := [822]

private def s2Step130FrontPlan : HmrSourceFront := ⟨s2Step130EntryGvAfter,s2Step130FrontPair,(growRow 768 s2Step130EntryFFresh ++ (growRow 769 s2Step130EntryGFresh ++ (growRow 770 s2Step130EntryFvFresh ++ (growRow 771 s2Step130EntryGvFresh ++ [])))),s2Step130FrontSigmaArena,[829],s2Step130HeadGBefore,[835],
  s2Step130HeadFvAfter,s2Step130FrontHead,(growRow 769 s2Step130HeadGFresh ++ (growRow 768 s2Step130HeadFFresh ++ (growRow 771 s2Step130HeadGvFresh ++ (growRow 770 s2Step130HeadFvFresh ++ [])))),s2Step130F4Plan,s2Step130CounterDuring,s2Step130CounterWork,s2Step130ExitGvAfter,s2Step130FrontOut,(shrinkRow 769 s2Step130ExitGExtra ++ (shrinkRow 768 s2Step130ExitFExtra ++ (shrinkRow 770 s2Step130ExitFvExtra ++ (shrinkRow 771 s2Step130ExitGvExtra ++ []))))⟩

private def s2Step130CompletePlan : HmrEarlyStepPlan := ⟨s2Step130FrontPlan,s2Step130EarlyControlArena,s2Step130EarlyControlPlan,s2Step130CompleteMoves⟩

private theorem s2Step130Complete_apart : List.Disjoint (s2Step130CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [829, 835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step130CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[829, 835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step130Complete_owned : (s2Step130CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step130CompleteRelocationMove0After : Arena := ⟨arenaWires.filter (fun q => ([(0,715),(716,781),(782,790),(791,814),(816,817),(818,822),(823,827),(828,837),(838,849),(850,867),(868,877),(878,879),(880,882)] : List (Nat × Nat)).any (fun r => decide (r.1≤q ∧ q<r.2)) = true),Finset.filter_subset _ _⟩

private def s2Step130CompleteRelocationMove0Borrowed : Arena := ⟨s2Step130ExitGvAfter.live∪{203},Finset.union_subset s2Step130ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step130CompleteRelocationMove1Borrowed : Arena := ⟨s2Step130CompleteRelocationMove0After.live∪{715},Finset.union_subset s2Step130CompleteRelocationMove0After.bounded (by norm_num [arenaWires])⟩

private theorem s2Step130CompleteRelocation_move0_owned : 827∈s2Step130ExitGvAfter.live := by norm_num [s2Step130ExitGvAfter,arenaWires]

private theorem s2Step130CompleteRelocation_move0_reserve : s2Step130ExitGvAfter.reserve {203}=some s2Step130CompleteRelocationMove0Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step130ExitGvAfter,arenaWires]
  · rfl

private theorem s2Step130CompleteRelocation_move0_retire : s2Step130CompleteRelocationMove0Borrowed.retireSet {827}=s2Step130CompleteRelocationMove0After := by
  unfold Arena.retireSet s2Step130CompleteRelocationMove0After
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step130CompleteRelocationMove0Borrowed,s2Step130ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step130CompleteRelocation_move1_owned : 840∈s2Step130CompleteRelocationMove0After.live := by norm_num [s2Step130CompleteRelocationMove0After,arenaWires]

private theorem s2Step130CompleteRelocation_move1_reserve : s2Step130CompleteRelocationMove0After.reserve {715}=some s2Step130CompleteRelocationMove1Borrowed := by
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step130CompleteRelocationMove0After,arenaWires]
  · rfl

private theorem s2Step130CompleteRelocation_move1_retire : s2Step130CompleteRelocationMove1Borrowed.retireSet {840}=s2Step130EarlyControlArena := by
  unfold Arena.retireSet s2Step130EarlyControlArena
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step130CompleteRelocationMove1Borrowed,s2Step130CompleteRelocationMove0After,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range,List.any_cons,List.any_nil,Bool.or_eq_true,Bool.false_eq_true,or_false,decide_eq_true_eq]
  simp only [Wire] at *
  omega

private theorem s2Step130CompleteRelocation_checked : s2Step130ExitGvAfter.checkRepack [(827,203),(840,715)]=some s2Step130EarlyControlArena := by
  have tail2 : s2Step130EarlyControlArena.checkRepack []=some s2Step130EarlyControlArena := rfl
  have tail1 := Arena.checkRepack_cons_of_parts s2Step130CompleteRelocationMove0After s2Step130CompleteRelocationMove1Borrowed s2Step130EarlyControlArena s2Step130EarlyControlArena 840 715 []
    s2Step130CompleteRelocation_move1_owned s2Step130CompleteRelocation_move1_reserve s2Step130CompleteRelocation_move1_retire tail2
  have tail0 := Arena.checkRepack_cons_of_parts s2Step130ExitGvAfter s2Step130CompleteRelocationMove0Borrowed s2Step130CompleteRelocationMove0After s2Step130EarlyControlArena 827 203 [(840,715)]
    s2Step130CompleteRelocation_move0_owned s2Step130CompleteRelocation_move0_reserve s2Step130CompleteRelocation_move0_retire tail1
  exact tail0

private theorem s2Step130Complete_repack : s2Step130ExitGvAfter.checkRepack s2Step130CompleteMoves=some s2Step130EarlyControlArena := by
  simpa only [s2Step130CompleteMoves] using s2Step130CompleteRelocation_checked

private theorem s2Step130EarlyControl_branchOwned : ([835] : List Wire).toFinset⊆s2Step130EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_branch : compileHmrBranchRetirement s2Step130EarlyControlSigmaArena 835=some s2Step130EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step130EarlyControl_branchOwned
  · ext q
    simp [s2Step130EarlyControlOutputArena,s2Step130EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step130EarlyControl_classEqualityBorrow : s2Step130EarlyControlPositiveArena.checkBorrow (([829, 781] : List Wire).length-1) s2Step130EarlyControlLog.classWork=some s2Step130EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step130EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step130EarlyControlEqualityArena,s2Step130EarlyControlPositiveArena,s2Step130EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step130EarlyControl_classEqualityOwned : ([829, 781] : List Wire).toFinset⊆s2Step130EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_classEquality : compileHmrEqualityLog s2Step130EarlyControlPositiveArena [829, 781] 0 s2Step130EarlyControlLog.classWork=some (s2Step130EarlyControlEqualityArena,s2Step130EarlyControlLog.classWork,s2Step130EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step130EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step130EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step130EarlyControl_classOwned : ([777, 814, 829] : List Wire).toFinset⊆s2Step130EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_positiveBorrow : s2Step130EarlyControlZeroArena.checkBorrow (1) s2Step130EarlyControlLog.positiveWork=some s2Step130EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step130EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step130EarlyControlPositiveArena,s2Step130EarlyControlZeroArena,s2Step130EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step130EarlyControl_class : compileHmrSourceClassLog s2Step130EarlyControlZeroArena false 777 s2Step130EarlyControlZeroPlan.top 0 829 s2Step130EarlyControlLog.positiveWork s2Step130EarlyControlLog.classWork=some s2Step130EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step130EarlyControlClassPlan s2Step130EarlyControlZeroArena false 777 s2Step130EarlyControlZeroPlan.top 0 829
  constructor
  · decide +kernel
  · exact s2Step130EarlyControl_classOwned
  · exact s2Step130EarlyControl_positiveBorrow
  · exact s2Step130EarlyControl_classEquality

private theorem s2Step130EarlyControl_entryRecordOwned : ([835, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_entrySigmaOwned : ([829, 254] : List Wire).toFinset⊆s2Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_fitBorrow : s2Step130EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step130EarlyControlLog.recordFresh=some s2Step130EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step130EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step130EarlyControlFittedArena,s2Step130EarlyControlFlagArena,s2Step130EarlyControlLog,arenaWires]

private theorem s2Step130EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step130EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_fit : compileHmrRecordGrowLog s2Step130EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step130EarlyControlLog.recordFresh=some s2Step130EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step130EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step130EarlyControl_fitBorrow

private theorem s2Step130EarlyControl_flagsBorrow : s2Step130EarlyControlEqualityArena.checkBorrow (6) s2Step130EarlyControlLog.flagWork=some s2Step130EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step130EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step130EarlyControlFlagArena,s2Step130EarlyControlEqualityArena,s2Step130EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step130EarlyControl_flagsOwned : ([837, 253, 252, 251] : List Wire).toFinset⊆s2Step130EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_flags : compileHmrFlagsLog s2Step130EarlyControlClassPlan.equalityArena s2Step130EarlyControlClassPlan.equality.top 253 252 251 s2Step130EarlyControlLog.flagWork=some s2Step130EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step130EarlyControl_flagsOwned⟩
  · exact s2Step130EarlyControl_flagsBorrow

private theorem s2Step130EarlyControl_historyBorrow : s2Step130EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step130EarlyControlLog.recordFresh=some s2Step130EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step130EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step130EarlyControlHistoryArena,s2Step130EarlyControlArena,s2Step130EarlyControlLog,arenaWires]

private theorem s2Step130EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_history : compileHmrRecordGrowLog s2Step130EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step130EarlyControlLog.recordFresh=some s2Step130EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step130EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step130EarlyControl_historyBorrow

private theorem s2Step130EarlyControl_sigmaOwned : ([254, 829] : List Wire).toFinset⊆s2Step130EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_sigmaReleaseOwned : ([829] : List Wire).toFinset⊆s2Step130EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_sigmaRelease : s2Step130EarlyControlHistoryArena.release {829} (fun _ => false)=some s2Step130EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step130EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step130EarlyControlSigmaArena,s2Step130EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step130EarlyControl_sigma : compileHmrSigmaDropLog s2Step130EarlyControlHistoryArena false 0 0 254 829 []=some s2Step130EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step130EarlyControl_sigmaOwned⟩
  · exact s2Step130EarlyControl_sigmaRelease

private theorem s2Step130EarlyControl_zeroBorrow : s2Step130EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step130EarlyControlLog.zeroWork=some s2Step130EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step130EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step130EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step130EarlyControlZeroArena,s2Step130EarlyControlArena,s2Step130EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step130EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step130EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step130EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EarlyControl_zero : compileHmrEqualityLog s2Step130EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step130EarlyControlLog.zeroWork=some (s2Step130EarlyControlZeroArena,s2Step130EarlyControlLog.zeroWork,s2Step130EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step130EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step130EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step130EarlyControl_logged : s2Step130EarlyControlPlan.Logged s2Step130EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 835 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step130EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step130EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step130EarlyControl_zero
  · exact s2Step130EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step130EarlyControl_flags
  · exact s2Step130EarlyControl_fit
  · exact s2Step130EarlyControl_history
  · exact s2Step130EarlyControl_sigma
  · exact s2Step130EarlyControl_branch

private theorem s2Step130EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step130EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 835 37 s2Step130EarlyControlLog=some s2Step130EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step130EarlyControlPlan s2Step130EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 254 253 252 251 835 37 s2Step130EarlyControl_logged

private def s2Step130EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715],768⟩

private def s2Step130EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step130EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],769⟩

private def s2Step130EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802],771⟩

private def s2Step130FrontBank : WindowBank := ⟨s2Step130EntryFRow,s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow⟩

private def s2Step130Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814, 768]

private def s2Step130Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 781, 769]

private def s2Step130Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817, 770]

private def s2Step130Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822, 771]

private theorem s2Step130Counter_apart : Disjoint s2Step130HeadFvAfter.live s2Step130CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step130HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130Counter_borrowed : s2Step130HeadFvAfter.checkBorrow 4 s2Step130CounterWork=some s2Step130CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step130HeadFvAfter s2Step130CounterDuring s2Step130CounterWork.toFinset s2Step130Counter_bounded s2Step130Counter_apart rfl

private theorem s2Step130Counter_owned : (829::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step130HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step130HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130Counter_checked : compileHmrCounterStepLog s2Step130HeadFvAfter true 829 [772, 773, 774, 775, 776, 777] s2Step130CounterWork=some s2Step130CounterDuring := by
  have owned : ∀q∈829::[772, 773, 774, 775, 776, 777],q∈s2Step130HeadFvAfter.live := fun q hq => s2Step130Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step130Counter_borrowed

private def s2Step130EntryFAfter : Arena := s2Step130EntryFBefore

private theorem s2Step130EntryBank_incomingDistinct : ([s2Step130EntryFRow,s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130EntryF_Incoming : rowsOwned s2Step130EntryFBefore [s2Step130EntryFRow,s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130EntryFRow,s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow] 0 s2Step130EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130EntryBank_outgoingOwned : rowsOwned s2Step130EntryGvAfter [s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step130EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130EntryF_Outgoing : rowsOwned s2Step130EntryGvAfter [s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut] :=
  hmrRows_owned_drop s2Step130EntryGvAfter [s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut] 0 s2Step130EntryBank_outgoingOwned

private theorem s2Step130EntryF_distinct : (s2Step130EntryFRow.sign::s2Step130EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130EntryF_owned : (s2Step130EntryFRow.sign::s2Step130EntryFRow.payload).toFinset⊆s2Step130EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EntryF_reserved : s2Step130EntryFBefore.reserve s2Step130EntryFFresh.toFinset=some s2Step130EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step130EntryFFresh,arenaWires]
  · norm_num [s2Step130EntryFBefore,s2Step130EntryFFresh,arenaWires]
  · simp only [s2Step130EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step130EntryF_checked : planRowResizeLog s2Step130EntryFBefore s2Step130EntryFRow 204 s2Step130EntryFFresh=
    some (s2Step130EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715],768⟩,growRow 768 s2Step130EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step130EntryFBefore s2Step130EntryFAfter s2Step130EntryFRow 204 s2Step130EntryFFresh
    s2Step130EntryF_distinct s2Step130EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step130EntryF_reserved
  have rowEq : WindowRow.mk (s2Step130EntryFRow.payload++s2Step130EntryFFresh) s2Step130EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step130EntryFvAfter : Arena := s2Step130EntryFBefore

private def s2Step130EntryFvBefore : Arena := s2Step130EntryFBefore

private theorem s2Step130EntryFv_Incoming : rowsOwned s2Step130EntryFvBefore [s2Step130EntryFvRow,s2Step130EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130EntryFRow,s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow] 2 s2Step130EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130EntryFv_Outgoing : rowsOwned s2Step130EntryGvAfter [s2Step130EntryFvOut,s2Step130EntryGvOut] :=
  hmrRows_owned_drop s2Step130EntryGvAfter [s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut] 2 s2Step130EntryBank_outgoingOwned

private theorem s2Step130EntryFv_distinct : (s2Step130EntryFvRow.sign::s2Step130EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130EntryFv_owned : (s2Step130EntryFvRow.sign::s2Step130EntryFvRow.payload).toFinset⊆s2Step130EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EntryFv_reserved : s2Step130EntryFvBefore.reserve s2Step130EntryFvFresh.toFinset=some s2Step130EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step130EntryFvFresh,arenaWires]
  · norm_num [s2Step130EntryFvBefore,s2Step130EntryFBefore,s2Step130EntryFvFresh,arenaWires]
  · simp only [s2Step130EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step130EntryFv_checked : planRowResizeLog s2Step130EntryFvBefore s2Step130EntryFvRow 79 s2Step130EntryFvFresh=
    some (s2Step130EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩,growRow 770 s2Step130EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step130EntryFvBefore s2Step130EntryFvAfter s2Step130EntryFvRow 79 s2Step130EntryFvFresh
    s2Step130EntryFv_distinct s2Step130EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step130EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step130EntryFvRow.payload++s2Step130EntryFvFresh) s2Step130EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step130EntryGAfter : Arena := s2Step130EntryFBefore

private def s2Step130EntryGBefore : Arena := s2Step130EntryFBefore

private theorem s2Step130EntryG_Incoming : rowsOwned s2Step130EntryGBefore [s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130EntryFRow,s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow] 1 s2Step130EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130EntryG_Outgoing : rowsOwned s2Step130EntryGvAfter [s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut] :=
  hmrRows_owned_drop s2Step130EntryGvAfter [s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut] 1 s2Step130EntryBank_outgoingOwned

private theorem s2Step130EntryG_distinct : (s2Step130EntryGRow.sign::s2Step130EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130EntryG_owned : (s2Step130EntryGRow.sign::s2Step130EntryGRow.payload).toFinset⊆s2Step130EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EntryG_reserved : s2Step130EntryGBefore.reserve s2Step130EntryGFresh.toFinset=some s2Step130EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step130EntryGFresh,arenaWires]
  · norm_num [s2Step130EntryGBefore,s2Step130EntryFBefore,s2Step130EntryGFresh,arenaWires]
  · simp only [s2Step130EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step130EntryG_checked : planRowResizeLog s2Step130EntryGBefore s2Step130EntryGRow 204 s2Step130EntryGFresh=
    some (s2Step130EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],769⟩,growRow 769 s2Step130EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step130EntryGBefore s2Step130EntryGAfter s2Step130EntryGRow 204 s2Step130EntryGFresh
    s2Step130EntryG_distinct s2Step130EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step130EntryG_reserved
  have rowEq : WindowRow.mk (s2Step130EntryGRow.payload++s2Step130EntryGFresh) s2Step130EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step130EntryGvBefore : Arena := s2Step130EntryFBefore

private theorem s2Step130EntryGv_Incoming : rowsOwned s2Step130EntryGvBefore [s2Step130EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130EntryFRow,s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow] 3 s2Step130EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130EntryGv_Outgoing : rowsOwned s2Step130EntryGvAfter [s2Step130EntryGvOut] :=
  hmrRows_owned_drop s2Step130EntryGvAfter [s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut] 3 s2Step130EntryBank_outgoingOwned

private theorem s2Step130EntryGv_distinct : (s2Step130EntryGvRow.sign::s2Step130EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130EntryGv_owned : (s2Step130EntryGvRow.sign::s2Step130EntryGvRow.payload).toFinset⊆s2Step130EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130EntryGv_reserved : s2Step130EntryGvBefore.reserve s2Step130EntryGvFresh.toFinset=some s2Step130EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step130EntryGvFresh,arenaWires]
  · norm_num [s2Step130EntryGvBefore,s2Step130EntryFBefore,s2Step130EntryGvFresh,arenaWires]
  · ext q
    simp only [s2Step130EntryGvAfter,s2Step130EntryGvBefore,s2Step130EntryFBefore,s2Step130EntryGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step130EntryGv_checked : planRowResizeLog s2Step130EntryGvBefore s2Step130EntryGvRow 79 s2Step130EntryGvFresh=
    some (s2Step130EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩,growRow 771 s2Step130EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step130EntryGvBefore s2Step130EntryGvAfter s2Step130EntryGvRow 79 s2Step130EntryGvFresh
    s2Step130EntryGv_distinct s2Step130EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step130EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step130EntryGvRow.payload++s2Step130EntryGvFresh) s2Step130EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step130EntryBank_rows : planWindowRowsLog s2Step130EntryFBefore [(s2Step130EntryFRow,204),(s2Step130EntryGRow,204),(s2Step130EntryFvRow,79),(s2Step130EntryGvRow,79)] [s2Step130EntryFFresh,s2Step130EntryGFresh,s2Step130EntryFvFresh,s2Step130EntryGvFresh]=
    some (s2Step130EntryGvAfter,[s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut],(growRow 768 s2Step130EntryFFresh ++ (growRow 769 s2Step130EntryGFresh ++ (growRow 770 s2Step130EntryFvFresh ++ (growRow 771 s2Step130EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step130EntryGvAfter [] []=some (s2Step130EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step130EntryGvBefore s2Step130EntryGvAfter s2Step130EntryGvAfter
    s2Step130EntryGvRow s2Step130EntryGvOut 79 s2Step130EntryGvFresh [] [] []
    (growRow 771 s2Step130EntryGvFresh) ([]) s2Step130EntryGv_Incoming s2Step130EntryGv_checked h4 s2Step130EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step130EntryFvBefore s2Step130EntryFvAfter s2Step130EntryGvAfter
    s2Step130EntryFvRow s2Step130EntryFvOut 79 s2Step130EntryFvFresh [(s2Step130EntryGvRow,79)] [s2Step130EntryGvFresh] [s2Step130EntryGvOut]
    (growRow 770 s2Step130EntryFvFresh) ((growRow 771 s2Step130EntryGvFresh ++ [])) s2Step130EntryFv_Incoming s2Step130EntryFv_checked h3 s2Step130EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step130EntryGBefore s2Step130EntryGAfter s2Step130EntryGvAfter
    s2Step130EntryGRow s2Step130EntryGOut 204 s2Step130EntryGFresh [(s2Step130EntryFvRow,79),(s2Step130EntryGvRow,79)] [s2Step130EntryFvFresh,s2Step130EntryGvFresh] [s2Step130EntryFvOut,s2Step130EntryGvOut]
    (growRow 769 s2Step130EntryGFresh) ((growRow 770 s2Step130EntryFvFresh ++ (growRow 771 s2Step130EntryGvFresh ++ []))) s2Step130EntryG_Incoming s2Step130EntryG_checked h2 s2Step130EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step130EntryFBefore s2Step130EntryFAfter s2Step130EntryGvAfter
    s2Step130EntryFRow s2Step130EntryFOut 204 s2Step130EntryFFresh [(s2Step130EntryGRow,204),(s2Step130EntryFvRow,79),(s2Step130EntryGvRow,79)] [s2Step130EntryGFresh,s2Step130EntryFvFresh,s2Step130EntryGvFresh] [s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut]
    (growRow 768 s2Step130EntryFFresh) ((growRow 769 s2Step130EntryGFresh ++ (growRow 770 s2Step130EntryFvFresh ++ (growRow 771 s2Step130EntryGvFresh ++ [])))) s2Step130EntryF_Incoming s2Step130EntryF_checked h1 s2Step130EntryF_Outgoing
  exact h0

private theorem s2Step130EntryBank_checked : compileHmrBankResizeLog .entry s2Step130EntryFBefore ⟨s2Step130EntryFRow,s2Step130EntryGRow,s2Step130EntryFvRow,s2Step130EntryGvRow⟩ ⟨204,204,79,79⟩ [s2Step130EntryFFresh,s2Step130EntryGFresh,s2Step130EntryFvFresh,s2Step130EntryGvFresh]=
    some (s2Step130EntryGvAfter,⟨s2Step130EntryFOut,s2Step130EntryGOut,s2Step130EntryFvOut,s2Step130EntryGvOut⟩,(growRow 768 s2Step130EntryFFresh ++ (growRow 769 s2Step130EntryGFresh ++ (growRow 770 s2Step130EntryFvFresh ++ (growRow 771 s2Step130EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step130EntryBank_rows]
  rfl

private def s2Step130ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<715) ∨ (716≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130ExitFBefore : Arena := s2Step130ExitGAfter

private def s2Step130ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814],768⟩

private def s2Step130ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817],770⟩

private def s2Step130ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 781],769⟩

private def s2Step130ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822],771⟩

private theorem s2Step130ExitBank_incomingDistinct : ([s2Step130ExitGRow,s2Step130ExitFRow,s2Step130ExitFvRow,s2Step130ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130ExitF_Incoming : rowsOwned s2Step130ExitFBefore [s2Step130ExitFRow,s2Step130ExitFvRow,s2Step130ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130ExitGRow,s2Step130ExitFRow,s2Step130ExitFvRow,s2Step130ExitGvRow] 1 s2Step130ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130ExitFBefore (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130ExitBank_outgoingOwned : rowsOwned s2Step130ExitGvAfter [s2Step130ExitGOut,s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step130ExitGvAfter (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<715) ∨ (716≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130ExitF_Outgoing : rowsOwned s2Step130ExitGvAfter [s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut] :=
  hmrRows_owned_drop s2Step130ExitGvAfter [s2Step130ExitGOut,s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut] 1 s2Step130ExitBank_outgoingOwned

private theorem s2Step130ExitF_distinct : (s2Step130ExitFRow.sign::s2Step130ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130ExitF_owned : (s2Step130ExitFRow.sign::s2Step130ExitFRow.payload).toFinset⊆s2Step130ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130ExitFBefore (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130ExitF_retired : s2Step130ExitFBefore.retireSet s2Step130ExitFExtra.toFinset=s2Step130ExitFAfter := by
  unfold Arena.retireSet s2Step130ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step130ExitFBefore,s2Step130ExitGAfter,s2Step130ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step130ExitF_checked : planRowResizeLog s2Step130ExitFBefore s2Step130ExitFRow 203 []=
    some (s2Step130ExitFAfter,s2Step130ExitFOut,shrinkRow 768 s2Step130ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step130ExitFBefore s2Step130ExitFRow 203 s2Step130ExitF_distinct s2Step130ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step130ExitFRow.payload.take 203) s2Step130ExitFRow.sign=s2Step130ExitFOut := by decide +kernel
  have hi : s2Step130ExitFRow.payload.drop 203=s2Step130ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step130ExitF_retired] at result
  exact result

private def s2Step130ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<715) ∨ (716≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130ExitFvBefore : Arena := s2Step130ExitFAfter

private theorem s2Step130ExitFv_Incoming : rowsOwned s2Step130ExitFvBefore [s2Step130ExitFvRow,s2Step130ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130ExitGRow,s2Step130ExitFRow,s2Step130ExitFvRow,s2Step130ExitGvRow] 2 s2Step130ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130ExitFvBefore (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<715) ∨ (716≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130ExitFv_Outgoing : rowsOwned s2Step130ExitGvAfter [s2Step130ExitFvOut,s2Step130ExitGvOut] :=
  hmrRows_owned_drop s2Step130ExitGvAfter [s2Step130ExitGOut,s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut] 2 s2Step130ExitBank_outgoingOwned

private theorem s2Step130ExitFv_distinct : (s2Step130ExitFvRow.sign::s2Step130ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130ExitFv_owned : (s2Step130ExitFvRow.sign::s2Step130ExitFvRow.payload).toFinset⊆s2Step130ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130ExitFvBefore (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<715) ∨ (716≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130ExitFv_retired : s2Step130ExitFvBefore.retireSet s2Step130ExitFvExtra.toFinset=s2Step130ExitFvAfter := by
  unfold Arena.retireSet s2Step130ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step130ExitFvBefore,s2Step130ExitFAfter,s2Step130ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step130ExitFv_checked : planRowResizeLog s2Step130ExitFvBefore s2Step130ExitFvRow 79 []=
    some (s2Step130ExitFvAfter,s2Step130ExitFvOut,shrinkRow 770 s2Step130ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step130ExitFvBefore s2Step130ExitFvRow 79 s2Step130ExitFv_distinct s2Step130ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step130ExitFvRow.payload.take 79) s2Step130ExitFvRow.sign=s2Step130ExitFvOut := by decide +kernel
  have hi : s2Step130ExitFvRow.payload.drop 79=s2Step130ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step130ExitFv_retired] at result
  exact result

private def s2Step130ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step130ExitG_Incoming : rowsOwned s2Step130ExitGBefore [s2Step130ExitGRow,s2Step130ExitFRow,s2Step130ExitFvRow,s2Step130ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130ExitGRow,s2Step130ExitFRow,s2Step130ExitFvRow,s2Step130ExitGvRow] 0 s2Step130ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130ExitG_Outgoing : rowsOwned s2Step130ExitGvAfter [s2Step130ExitGOut,s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut] :=
  hmrRows_owned_drop s2Step130ExitGvAfter [s2Step130ExitGOut,s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut] 0 s2Step130ExitBank_outgoingOwned

private theorem s2Step130ExitG_distinct : (s2Step130ExitGRow.sign::s2Step130ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130ExitG_owned : (s2Step130ExitGRow.sign::s2Step130ExitGRow.payload).toFinset⊆s2Step130ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130ExitGBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130ExitG_retired : s2Step130ExitGBefore.retireSet s2Step130ExitGExtra.toFinset=s2Step130ExitGAfter := by
  unfold Arena.retireSet s2Step130ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step130ExitGBefore,s2Step130ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step130ExitG_checked : planRowResizeLog s2Step130ExitGBefore s2Step130ExitGRow 203 []=
    some (s2Step130ExitGAfter,s2Step130ExitGOut,shrinkRow 769 s2Step130ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step130ExitGBefore s2Step130ExitGRow 203 s2Step130ExitG_distinct s2Step130ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step130ExitGRow.payload.take 203) s2Step130ExitGRow.sign=s2Step130ExitGOut := by decide +kernel
  have hi : s2Step130ExitGRow.payload.drop 203=s2Step130ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step130ExitG_retired] at result
  exact result

private def s2Step130ExitGvBefore : Arena := s2Step130ExitFvAfter

private theorem s2Step130ExitGv_Incoming : rowsOwned s2Step130ExitGvBefore [s2Step130ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130ExitGRow,s2Step130ExitFRow,s2Step130ExitFvRow,s2Step130ExitGvRow] 3 s2Step130ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130ExitGvBefore (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<715) ∨ (716≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130ExitGv_Outgoing : rowsOwned s2Step130ExitGvAfter [s2Step130ExitGvOut] :=
  hmrRows_owned_drop s2Step130ExitGvAfter [s2Step130ExitGOut,s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut] 3 s2Step130ExitBank_outgoingOwned

private theorem s2Step130ExitGv_distinct : (s2Step130ExitGvRow.sign::s2Step130ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130ExitGv_owned : (s2Step130ExitGvRow.sign::s2Step130ExitGvRow.payload).toFinset⊆s2Step130ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130ExitGvBefore (fun q => (0≤q ∧ q<203) ∨ (204≤q ∧ q<715) ∨ (716≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130ExitGv_retired : s2Step130ExitGvBefore.retireSet s2Step130ExitGvExtra.toFinset=s2Step130ExitGvAfter := by
  unfold Arena.retireSet s2Step130ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step130ExitGvBefore,s2Step130ExitFvAfter,s2Step130ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step130ExitGv_checked : planRowResizeLog s2Step130ExitGvBefore s2Step130ExitGvRow 79 []=
    some (s2Step130ExitGvAfter,s2Step130ExitGvOut,shrinkRow 771 s2Step130ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step130ExitGvBefore s2Step130ExitGvRow 79 s2Step130ExitGv_distinct s2Step130ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step130ExitGvRow.payload.take 79) s2Step130ExitGvRow.sign=s2Step130ExitGvOut := by decide +kernel
  have hi : s2Step130ExitGvRow.payload.drop 79=s2Step130ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step130ExitGv_retired] at result
  exact result

private theorem s2Step130ExitBank_rows : planWindowRowsLog s2Step130ExitGBefore [(s2Step130ExitGRow,203),(s2Step130ExitFRow,203),(s2Step130ExitFvRow,79),(s2Step130ExitGvRow,79)] [[],[],[],[]]=
    some (s2Step130ExitGvAfter,[s2Step130ExitGOut,s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut],(shrinkRow 769 s2Step130ExitGExtra ++ (shrinkRow 768 s2Step130ExitFExtra ++ (shrinkRow 770 s2Step130ExitFvExtra ++ (shrinkRow 771 s2Step130ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step130ExitGvAfter [] []=some (s2Step130ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step130ExitGvBefore s2Step130ExitGvAfter s2Step130ExitGvAfter
    s2Step130ExitGvRow s2Step130ExitGvOut 79 [] [] [] []
    (shrinkRow 771 s2Step130ExitGvExtra) ([]) s2Step130ExitGv_Incoming s2Step130ExitGv_checked h4 s2Step130ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step130ExitFvBefore s2Step130ExitFvAfter s2Step130ExitGvAfter
    s2Step130ExitFvRow s2Step130ExitFvOut 79 [] [(s2Step130ExitGvRow,79)] [[]] [s2Step130ExitGvOut]
    (shrinkRow 770 s2Step130ExitFvExtra) ((shrinkRow 771 s2Step130ExitGvExtra ++ [])) s2Step130ExitFv_Incoming s2Step130ExitFv_checked h3 s2Step130ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step130ExitFBefore s2Step130ExitFAfter s2Step130ExitGvAfter
    s2Step130ExitFRow s2Step130ExitFOut 203 [] [(s2Step130ExitFvRow,79),(s2Step130ExitGvRow,79)] [[],[]] [s2Step130ExitFvOut,s2Step130ExitGvOut]
    (shrinkRow 768 s2Step130ExitFExtra) ((shrinkRow 770 s2Step130ExitFvExtra ++ (shrinkRow 771 s2Step130ExitGvExtra ++ []))) s2Step130ExitF_Incoming s2Step130ExitF_checked h2 s2Step130ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step130ExitGBefore s2Step130ExitGAfter s2Step130ExitGvAfter
    s2Step130ExitGRow s2Step130ExitGOut 203 [] [(s2Step130ExitFRow,203),(s2Step130ExitFvRow,79),(s2Step130ExitGvRow,79)] [[],[],[]] [s2Step130ExitFOut,s2Step130ExitFvOut,s2Step130ExitGvOut]
    (shrinkRow 769 s2Step130ExitGExtra) ((shrinkRow 768 s2Step130ExitFExtra ++ (shrinkRow 770 s2Step130ExitFvExtra ++ (shrinkRow 771 s2Step130ExitGvExtra ++ [])))) s2Step130ExitG_Incoming s2Step130ExitG_checked h1 s2Step130ExitG_Outgoing
  exact h0

private theorem s2Step130ExitBank_checked : compileHmrBankResizeLog .exit s2Step130ExitGBefore ⟨s2Step130ExitFRow,s2Step130ExitGRow,s2Step130ExitFvRow,s2Step130ExitGvRow⟩ ⟨203,203,79,79⟩ [[],[],[],[]]=
    some (s2Step130ExitGvAfter,⟨s2Step130ExitFOut,s2Step130ExitGOut,s2Step130ExitFvOut,s2Step130ExitGvOut⟩,(shrinkRow 769 s2Step130ExitGExtra ++ (shrinkRow 768 s2Step130ExitFExtra ++ (shrinkRow 770 s2Step130ExitFvExtra ++ (shrinkRow 771 s2Step130ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step130ExitBank_rows]
  rfl

private theorem s2Step130Add0_apart : Disjoint s2Step130Add0Arena.live s2Step130Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step130Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130Add0_card : s2Step130Add0Arena.live.card=877 := by
  decide +kernel

private theorem s2Step130Add0_borrowed : s2Step130Add0Arena.checkBorrow (hmrHybridCount s2Step130Add0Arena s2Step130Add0B.length) s2Step130Add0Work=some s2Step130Add0During := by
  have len : s2Step130Add0Work.length=hmrHybridCount s2Step130Add0Arena s2Step130Add0B.length := by
    rw [hmrHybridCount,s2Step130Add0_card]
    decide +kernel
  have nd : s2Step130Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step130Add0Arena s2Step130Add0During s2Step130Add0Work.toFinset s2Step130Add0_bounded s2Step130Add0_apart rfl

private theorem s2Step130Add0_distinct : (837::835::849::(s2Step130Add0A++s2Step130Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130Add0_owned : (837::835::849::(s2Step130Add0A++s2Step130Add0B)).toFinset⊆s2Step130Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step130Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130Add0_checked : compileHmrHybridCinLog s2Step130Add0Arena 835 837 849 s2Step130Add0A s2Step130Add0B s2Step130Add0Work=some s2Step130Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step130Add0Arena s2Step130Add0During 835 837 849 s2Step130Add0A s2Step130Add0B s2Step130Add0Work
    (by decide +kernel) (by decide +kernel) s2Step130Add0_distinct
    (fun q hq => s2Step130Add0_owned (List.mem_toFinset.mpr hq)) s2Step130Add0_borrowed

private theorem s2Step130Add1_apart : Disjoint s2Step130Add1Arena.live s2Step130Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step130Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130Add1_card : s2Step130Add1Arena.live.card=877 := by
  decide +kernel

private theorem s2Step130Add1_borrowed : s2Step130Add1Arena.checkBorrow (hmrHybridCount s2Step130Add1Arena s2Step130Add1B.length) s2Step130Add1Work=some s2Step130Add1During := by
  have len : s2Step130Add1Work.length=hmrHybridCount s2Step130Add1Arena s2Step130Add1B.length := by
    rw [hmrHybridCount,s2Step130Add1_card]
    decide +kernel
  have nd : s2Step130Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step130Add1Arena s2Step130Add1During s2Step130Add1Work.toFinset s2Step130Add1_bounded s2Step130Add1_apart rfl

private theorem s2Step130Add1_distinct : (837::835::849::(s2Step130Add1A++s2Step130Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130Add1_owned : (837::835::849::(s2Step130Add1A++s2Step130Add1B)).toFinset⊆s2Step130Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step130Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130Add1_checked : compileHmrHybridCinLog s2Step130Add1Arena 835 837 849 s2Step130Add1A s2Step130Add1B s2Step130Add1Work=some s2Step130Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step130Add1Arena s2Step130Add1During 835 837 849 s2Step130Add1A s2Step130Add1B s2Step130Add1Work
    (by decide +kernel) (by decide +kernel) s2Step130Add1_distinct
    (fun q hq => s2Step130Add1_owned (List.mem_toFinset.mpr hq)) s2Step130Add1_borrowed

private theorem s2Step130F4_apart : Disjoint (s2Step130Add0A++s2Step130Add0B).toFinset (s2Step130Add1A++s2Step130Add1B).toFinset := by
  have nd : ((s2Step130Add0A++s2Step130Add0B)++(s2Step130Add1A++s2Step130Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step130F4_carry : s2Step130F4FlagArena.checkBorrow 1 [849]=some s2Step130Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step130F4FlagArena,s2Step130HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step130F4FlagArena,s2Step130HeadFvAfter,s2Step130Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step130F4_distinct : (829::835::837::849::((s2Step130Add0A++s2Step130Add1A)++(s2Step130Add0B++s2Step130Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130F4_flag : s2Step130HeadFvAfter.checkBorrow 1 [837]=some s2Step130F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step130HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step130F4_owned : (829::835::((s2Step130Add0A++s2Step130Add1A)++(s2Step130Add0B++s2Step130Add1B))).toFinset⊆s2Step130HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step130HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130F4_checked : compileHmrHybridF4Log s2Step130HeadFvAfter 829 835 s2Step130Add0A s2Step130Add0B s2Step130Add1A s2Step130Add1B [837] [849] s2Step130Add0Work s2Step130Add1Work=some s2Step130F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step130HeadFvAfter s2Step130F4FlagArena s2Step130Add0Arena s2Step130Add0During s2Step130Add1During 829 835
    s2Step130Add0A s2Step130Add0B s2Step130Add1A s2Step130Add1B [837] [849] s2Step130Add0Work s2Step130Add1Work
    (fun q hq => s2Step130F4_owned (List.mem_toFinset.mpr hq)) s2Step130F4_flag s2Step130F4_carry
    s2Step130F4_distinct s2Step130F4_apart s2Step130Add0_checked s2Step130Add1_checked

private theorem s2Step130Front_branch : s2Step130FrontSigmaArena.checkBorrow 1 [835]=some s2Step130HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step130FrontSigmaArena,s2Step130EntryGvAfter,arenaWires]
  · ext q
    simp only [s2Step130FrontSigmaArena,s2Step130EntryGvAfter,s2Step130HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step130Front_entry : HmrFrontEntryValid s2Step130EntryFBefore s2Step130FrontBank 204 79 ⟨203,203,79,79⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step130FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step130EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step130EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<831) ∨ (832≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step130FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step130Front_sigma : s2Step130EntryGvAfter.checkBorrow 1 [829]=some s2Step130FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step130EntryGvAfter,arenaWires]
  · rfl

private def s2Step130HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130HeadFBefore : Arena := s2Step130HeadGAfter

private def s2Step130HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715],768⟩

private def s2Step130HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step130HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203],769⟩

private def s2Step130HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private theorem s2Step130HeadBank_incomingDistinct : ([s2Step130HeadGRow,s2Step130HeadFRow,s2Step130HeadGvRow,s2Step130HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130HeadF_Incoming : rowsOwned s2Step130HeadFBefore [s2Step130HeadFRow,s2Step130HeadGvRow,s2Step130HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130HeadGRow,s2Step130HeadFRow,s2Step130HeadGvRow,s2Step130HeadFvRow] 1 s2Step130HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130HeadBank_outgoingOwned : rowsOwned s2Step130HeadFvAfter [s2Step130HeadGOut,s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step130HeadFvAfter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130HeadF_Outgoing : rowsOwned s2Step130HeadFvAfter [s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut] :=
  hmrRows_owned_drop s2Step130HeadFvAfter [s2Step130HeadGOut,s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut] 1 s2Step130HeadBank_outgoingOwned

private theorem s2Step130HeadF_distinct : (s2Step130HeadFRow.sign::s2Step130HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130HeadF_owned : (s2Step130HeadFRow.sign::s2Step130HeadFRow.payload).toFinset⊆s2Step130HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130HeadFBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130HeadF_reserved : s2Step130HeadFBefore.reserve s2Step130HeadFFresh.toFinset=some s2Step130HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step130HeadFFresh,arenaWires]
  · norm_num [s2Step130HeadFBefore,s2Step130HeadGAfter,s2Step130HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step130HeadFAfter,s2Step130HeadFBefore,s2Step130HeadGAfter,s2Step130HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step130HeadF_checked : planRowResizeLog s2Step130HeadFBefore s2Step130HeadFRow 205 s2Step130HeadFFresh=
    some (s2Step130HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814],768⟩,growRow 768 s2Step130HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step130HeadFBefore s2Step130HeadFAfter s2Step130HeadFRow 205 s2Step130HeadFFresh
    s2Step130HeadF_distinct s2Step130HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step130HeadF_reserved
  have rowEq : WindowRow.mk (s2Step130HeadFRow.payload++s2Step130HeadFFresh) s2Step130HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 715, 814],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step130HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step130HeadFvBefore : Arena := s2Step130HeadGvAfter

private theorem s2Step130HeadFv_Incoming : rowsOwned s2Step130HeadFvBefore [s2Step130HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130HeadGRow,s2Step130HeadFRow,s2Step130HeadGvRow,s2Step130HeadFvRow] 3 s2Step130HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130HeadFv_Outgoing : rowsOwned s2Step130HeadFvAfter [s2Step130HeadFvOut] :=
  hmrRows_owned_drop s2Step130HeadFvAfter [s2Step130HeadGOut,s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut] 3 s2Step130HeadBank_outgoingOwned

private theorem s2Step130HeadFv_distinct : (s2Step130HeadFvRow.sign::s2Step130HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130HeadFv_owned : (s2Step130HeadFvRow.sign::s2Step130HeadFvRow.payload).toFinset⊆s2Step130HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130HeadFvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130HeadFv_reserved : s2Step130HeadFvBefore.reserve s2Step130HeadFvFresh.toFinset=some s2Step130HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step130HeadFvFresh,arenaWires]
  · norm_num [s2Step130HeadFvBefore,s2Step130HeadGvAfter,s2Step130HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step130HeadFvAfter,s2Step130HeadFvBefore,s2Step130HeadGvAfter,s2Step130HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step130HeadFv_checked : planRowResizeLog s2Step130HeadFvBefore s2Step130HeadFvRow 80 s2Step130HeadFvFresh=
    some (s2Step130HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817],770⟩,growRow 770 s2Step130HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step130HeadFvBefore s2Step130HeadFvAfter s2Step130HeadFvRow 80 s2Step130HeadFvFresh
    s2Step130HeadFv_distinct s2Step130HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step130HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step130HeadFvRow.payload++s2Step130HeadFvFresh) s2Step130HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 827, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step130HeadG_Incoming : rowsOwned s2Step130HeadGBefore [s2Step130HeadGRow,s2Step130HeadFRow,s2Step130HeadGvRow,s2Step130HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130HeadGRow,s2Step130HeadFRow,s2Step130HeadGvRow,s2Step130HeadFvRow] 0 s2Step130HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130HeadG_Outgoing : rowsOwned s2Step130HeadFvAfter [s2Step130HeadGOut,s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut] :=
  hmrRows_owned_drop s2Step130HeadFvAfter [s2Step130HeadGOut,s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut] 0 s2Step130HeadBank_outgoingOwned

private theorem s2Step130HeadG_distinct : (s2Step130HeadGRow.sign::s2Step130HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130HeadG_owned : (s2Step130HeadGRow.sign::s2Step130HeadGRow.payload).toFinset⊆s2Step130HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130HeadG_reserved : s2Step130HeadGBefore.reserve s2Step130HeadGFresh.toFinset=some s2Step130HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step130HeadGFresh,arenaWires]
  · norm_num [s2Step130HeadGBefore,s2Step130HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step130HeadGAfter,s2Step130HeadGBefore,s2Step130HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step130HeadG_checked : planRowResizeLog s2Step130HeadGBefore s2Step130HeadGRow 205 s2Step130HeadGFresh=
    some (s2Step130HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 781],769⟩,growRow 769 s2Step130HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step130HeadGBefore s2Step130HeadGAfter s2Step130HeadGRow 205 s2Step130HeadGFresh
    s2Step130HeadG_distinct s2Step130HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step130HeadG_reserved
  have rowEq : WindowRow.mk (s2Step130HeadGRow.payload++s2Step130HeadGFresh) s2Step130HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 781],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step130HeadGvBefore : Arena := s2Step130HeadFAfter

private theorem s2Step130HeadGv_Incoming : rowsOwned s2Step130HeadGvBefore [s2Step130HeadGvRow,s2Step130HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step130HeadGRow,s2Step130HeadFRow,s2Step130HeadGvRow,s2Step130HeadFvRow] 2 s2Step130HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step130HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step130HeadGv_Outgoing : rowsOwned s2Step130HeadFvAfter [s2Step130HeadGvOut,s2Step130HeadFvOut] :=
  hmrRows_owned_drop s2Step130HeadFvAfter [s2Step130HeadGOut,s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut] 2 s2Step130HeadBank_outgoingOwned

private theorem s2Step130HeadGv_distinct : (s2Step130HeadGvRow.sign::s2Step130HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step130HeadGv_owned : (s2Step130HeadGvRow.sign::s2Step130HeadGvRow.payload).toFinset⊆s2Step130HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step130HeadGvBefore (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step130HeadGv_reserved : s2Step130HeadGvBefore.reserve s2Step130HeadGvFresh.toFinset=some s2Step130HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step130HeadGvFresh,arenaWires]
  · norm_num [s2Step130HeadGvBefore,s2Step130HeadFAfter,s2Step130HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step130HeadGvAfter,s2Step130HeadGvBefore,s2Step130HeadFAfter,s2Step130HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step130HeadGv_checked : planRowResizeLog s2Step130HeadGvBefore s2Step130HeadGvRow 80 s2Step130HeadGvFresh=
    some (s2Step130HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822],771⟩,growRow 771 s2Step130HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step130HeadGvBefore s2Step130HeadGvAfter s2Step130HeadGvRow 80 s2Step130HeadGvFresh
    s2Step130HeadGv_distinct s2Step130HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step130HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step130HeadGvRow.payload++s2Step130HeadGvFresh) s2Step130HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 840, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step130HeadBank_rows : planWindowRowsLog s2Step130HeadGBefore [(s2Step130HeadGRow,205),(s2Step130HeadFRow,205),(s2Step130HeadGvRow,80),(s2Step130HeadFvRow,80)] [s2Step130HeadGFresh,s2Step130HeadFFresh,s2Step130HeadGvFresh,s2Step130HeadFvFresh]=
    some (s2Step130HeadFvAfter,[s2Step130HeadGOut,s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut],(growRow 769 s2Step130HeadGFresh ++ (growRow 768 s2Step130HeadFFresh ++ (growRow 771 s2Step130HeadGvFresh ++ (growRow 770 s2Step130HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step130HeadFvAfter [] []=some (s2Step130HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step130HeadFvBefore s2Step130HeadFvAfter s2Step130HeadFvAfter
    s2Step130HeadFvRow s2Step130HeadFvOut 80 s2Step130HeadFvFresh [] [] []
    (growRow 770 s2Step130HeadFvFresh) ([]) s2Step130HeadFv_Incoming s2Step130HeadFv_checked h4 s2Step130HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step130HeadGvBefore s2Step130HeadGvAfter s2Step130HeadFvAfter
    s2Step130HeadGvRow s2Step130HeadGvOut 80 s2Step130HeadGvFresh [(s2Step130HeadFvRow,80)] [s2Step130HeadFvFresh] [s2Step130HeadFvOut]
    (growRow 771 s2Step130HeadGvFresh) ((growRow 770 s2Step130HeadFvFresh ++ [])) s2Step130HeadGv_Incoming s2Step130HeadGv_checked h3 s2Step130HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step130HeadFBefore s2Step130HeadFAfter s2Step130HeadFvAfter
    s2Step130HeadFRow s2Step130HeadFOut 205 s2Step130HeadFFresh [(s2Step130HeadGvRow,80),(s2Step130HeadFvRow,80)] [s2Step130HeadGvFresh,s2Step130HeadFvFresh] [s2Step130HeadGvOut,s2Step130HeadFvOut]
    (growRow 768 s2Step130HeadFFresh) ((growRow 771 s2Step130HeadGvFresh ++ (growRow 770 s2Step130HeadFvFresh ++ []))) s2Step130HeadF_Incoming s2Step130HeadF_checked h2 s2Step130HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step130HeadGBefore s2Step130HeadGAfter s2Step130HeadFvAfter
    s2Step130HeadGRow s2Step130HeadGOut 205 s2Step130HeadGFresh [(s2Step130HeadFRow,205),(s2Step130HeadGvRow,80),(s2Step130HeadFvRow,80)] [s2Step130HeadFFresh,s2Step130HeadGvFresh,s2Step130HeadFvFresh] [s2Step130HeadFOut,s2Step130HeadGvOut,s2Step130HeadFvOut]
    (growRow 769 s2Step130HeadGFresh) ((growRow 768 s2Step130HeadFFresh ++ (growRow 771 s2Step130HeadGvFresh ++ (growRow 770 s2Step130HeadFvFresh ++ [])))) s2Step130HeadG_Incoming s2Step130HeadG_checked h1 s2Step130HeadG_Outgoing
  exact h0

private theorem s2Step130HeadBank_checked : compileHmrBankResizeLog .headroom s2Step130HeadGBefore ⟨s2Step130HeadFRow,s2Step130HeadGRow,s2Step130HeadFvRow,s2Step130HeadGvRow⟩ ⟨205,205,80,80⟩ [s2Step130HeadGFresh,s2Step130HeadFFresh,s2Step130HeadGvFresh,s2Step130HeadFvFresh]=
    some (s2Step130HeadFvAfter,⟨s2Step130HeadFOut,s2Step130HeadGOut,s2Step130HeadFvOut,s2Step130HeadGvOut⟩,(growRow 769 s2Step130HeadGFresh ++ (growRow 768 s2Step130HeadFFresh ++ (growRow 771 s2Step130HeadGvFresh ++ (growRow 770 s2Step130HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step130HeadBank_rows]
  rfl

private theorem s2Step130Front_checked : compileHmrSourceFrontLog s2Step130EntryFBefore s2Step130FrontBank 204 79 ⟨203,203,79,79⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step130FrontLog=some s2Step130FrontPlan := by
  have pairEq : s2Step130FrontPair=⟨s2Step130HeadFRow,s2Step130HeadGRow,s2Step130HeadFvRow,s2Step130HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step130FrontHead=⟨s2Step130ExitFRow,s2Step130ExitGRow,s2Step130ExitFvRow,s2Step130ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step130Add0A=s2Step130FrontHead.f.wires := by decide +kernel
  have gEq : s2Step130Add0B=s2Step130FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step130Add1A=s2Step130FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step130Add1B=s2Step130FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step130EntryFBefore s2Step130FrontBank 204 79 ⟨203,203,79,79⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step130FrontLog s2Step130FrontPlan
  · exact s2Step130Front_entry
  · exact s2Step130EntryBank_checked
  · exact s2Step130Front_sigma
  · rfl
  · exact s2Step130Front_branch
  · rfl
  · simpa only [s2Step130FrontPlan,pairEq] using s2Step130HeadBank_checked
  · simpa only [s2Step130FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step130F4_checked
  · exact s2Step130Counter_checked
  · rfl
  · simpa only [s2Step130FrontPlan,headEq] using s2Step130ExitBank_checked

private theorem s2Step130Complete_explicit_checked : compileHmrEarlyStepLog s2Step130EntryFBefore s2Step130FrontBank 204 79 ⟨203,203,79,79⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step130CompleteLog=some s2Step130CompletePlan := by
  let Q := s2Step130EarlyControlPlan
  have hq := s2Step130EarlyControl_plan_checked
  have fv1 : s2Step130CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step130CompleteOut.fv.payload[2]?.getD s2Step130CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step130CompleteOut.fv.payload[3]?.getD s2Step130CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step130CompleteOut.fv.payload[4]?.getD s2Step130CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step130EntryFBefore s2Step130EarlyControlArena s2Step130FrontBank 204 79 ⟨203,203,79,79⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step130CompleteLog s2Step130FrontPlan Q
    s2Step130Front_checked s2Step130Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step130Complete_owned s2Step130Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step130EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 829 s2Step130CompleteOut.fv.second (s2Step130CompleteOut.fv.payload[2]?.getD s2Step130CompleteOut.fv.sign) (s2Step130CompleteOut.fv.payload[3]?.getD s2Step130CompleteOut.fv.sign) (s2Step130CompleteOut.fv.payload[4]?.getD s2Step130CompleteOut.fv.sign) 835 37 s2Step130EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep130Arena : Arena := s2Step130EntryFBefore
def s2PrivateStep130Bank : WindowBank := s2Step130FrontBank
def s2PrivateStep130Spec : HmrSourceWalkStepLog := ⟨204,79,⟨203,203,79,79⟩,37,.early s2Step130CompleteLog⟩
def s2PrivateStep130Plan : HmrSourceStepPlan := .early s2Step130CompletePlan
theorem s2PrivateStep130_source : s2PrivateStep130Spec=s2ObservedLogs128[2] := rfl
theorem s2PrivateStep130_checked : compileHmrSourceStepLog s2PrivateStep130Arena s2PrivateStep130Bank
    s2PrivateStep130Spec.fgWidth s2PrivateStep130Spec.vWidth s2PrivateStep130Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 130 s2PrivateStep130Spec.need none s2PrivateStep130Spec.log=some s2PrivateStep130Plan := by
  change compileHmrSourceStepLog s2Step130EntryFBefore s2Step130FrontBank 204 79 ⟨203,203,79,79⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 130 37 none (.early s2Step130CompleteLog)=some (.early s2Step130CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 130<498)]
  rw [s2Step130Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
