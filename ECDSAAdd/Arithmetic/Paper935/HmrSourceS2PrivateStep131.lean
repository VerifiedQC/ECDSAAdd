import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep129
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

private def s2Step131CompleteMoves : List (Wire × Wire) := [(783,202)]

private def s2Step131EarlyControlLog : HmrEarlyControlLog := ⟨[783, 822, 817, 827, 840],[814],[781],[837, 849, 790, 815, 867, 877],[]⟩

private def s2Step131FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [], [], []],[[840], [827], [822], [817]],[[], [], [], []]⟩,[835],[829],[814],[781],[837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 781, 837, 849]⟩

private def s2Step131CompleteLog : HmrEarlyStepLog := ⟨s2Step131FrontLog,s2Step131CompleteMoves,s2Step131EarlyControlLog⟩

private def s2Step131ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step131ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step131ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩

private def s2Step131ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step131FrontOut : WindowBank := ⟨s2Step131ExitFOut,s2Step131ExitGOut,s2Step131ExitFvOut,s2Step131ExitGvOut⟩

private def s2Step131CompleteOut : WindowBank := s2Step131FrontOut.repacked s2Step131CompleteMoves

private def s2Step131EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step131EarlyControlPositiveArena,[814],s2Step131EarlyControlEqualityArena,[781],⟨⟨835,false⟩,[⟨⟨814,false⟩,781⟩]⟩⟩

private def s2Step131EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,783⟩,⟨⟨774,false⟩,822⟩,⟨⟨775,false⟩,817⟩,⟨⟨776,false⟩,827⟩,⟨⟨777,false⟩,840⟩]⟩

private def s2Step131EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step131EarlyControlZeroArena,s2Step131EarlyControlZeroPlan,s2Step131EarlyControlClassPlan,s2Step131EarlyControlFlagArena,s2Step131EarlyControlFittedArena,s2Step131EarlyControlHistoryArena,s2Step131EarlyControlSigmaArena,s2Step131EarlyControlOutputArena,s2Step131EarlyControlLog⟩

private def s2Step131CounterWork : List Wire := [814, 781, 837, 849]

private theorem s2Step131Counter_bounded : s2Step131CounterWork.toFinset⊆arenaWires := by norm_num [s2Step131CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step131HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131CounterDuring : Arena := ⟨s2Step131HeadFvAfter.live∪s2Step131CounterWork.toFinset,Finset.union_subset s2Step131HeadFvAfter.bounded s2Step131Counter_bounded⟩

private def s2Step131EntryFFresh : List Wire := []

private def s2Step131EntryFvFresh : List Wire := []

private def s2Step131EntryGFresh : List Wire := []

private def s2Step131EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131EntryGvAfter : Arena := s2Step131EntryFBefore

private def s2Step131EntryGvFresh : List Wire := []

private def s2Step131ExitFExtra : List Wire := [827]

private def s2Step131ExitFvExtra : List Wire := [817]

private def s2Step131ExitGExtra : List Wire := [202, 840]

private def s2Step131ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131ExitGvExtra : List Wire := [822]

private def s2Step131Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131Add0Work : List Wire := [837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step131Add0_bounded : s2Step131Add0Work.toFinset⊆arenaWires := by
  have h : s2Step131Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step131Add0During : Arena := ⟨s2Step131Add0Arena.live∪s2Step131Add0Work.toFinset,Finset.union_subset s2Step131Add0Arena.bounded s2Step131Add0_bounded⟩

private def s2Step131Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131Add1Work : List Wire := [837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step131Add1_bounded : s2Step131Add1Work.toFinset⊆arenaWires := by
  have h : s2Step131Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step131Add1During : Arena := ⟨s2Step131Add1Arena.live∪s2Step131Add1Work.toFinset,Finset.union_subset s2Step131Add1Arena.bounded s2Step131Add1_bounded⟩

private def s2Step131F4FlagArena : Arena := ⟨s2Step131HeadFvAfter.live∪{814},Finset.union_subset s2Step131HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step131F4Plan : HmrHybridF4Plan := ⟨s2Step131F4FlagArena,[814],s2Step131Add0Arena,[781],s2Step131Add0During,s2Step131Add0Work,s2Step131Add1During,s2Step131Add1Work⟩

private def s2Step131HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 827],768⟩

private def s2Step131HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817],770⟩

private def s2Step131HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 840],769⟩

private def s2Step131HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822],771⟩

private def s2Step131FrontHead : WindowBank := ⟨s2Step131HeadFOut,s2Step131HeadGOut,s2Step131HeadFvOut,s2Step131HeadGvOut⟩

private def s2Step131EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step131EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step131EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],769⟩

private def s2Step131EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step131FrontPair : WindowBank := ⟨s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut⟩

private def s2Step131FrontSigmaArena : Arena := ⟨s2Step131EntryGvAfter.live∪{835},Finset.union_subset s2Step131EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step131HeadFFresh : List Wire := [827]

private def s2Step131HeadFvFresh : List Wire := [817]

private def s2Step131HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131HeadGFresh : List Wire := [840]

private def s2Step131HeadGvFresh : List Wire := [822]

private def s2Step131FrontPlan : HmrSourceFront := ⟨s2Step131EntryGvAfter,s2Step131FrontPair,(growRow 768 s2Step131EntryFFresh ++ (growRow 769 s2Step131EntryGFresh ++ (growRow 770 s2Step131EntryFvFresh ++ (growRow 771 s2Step131EntryGvFresh ++ [])))),s2Step131FrontSigmaArena,[835],s2Step131HeadGBefore,[829],
  s2Step131HeadFvAfter,s2Step131FrontHead,(growRow 769 s2Step131HeadGFresh ++ (growRow 768 s2Step131HeadFFresh ++ (growRow 771 s2Step131HeadGvFresh ++ (growRow 770 s2Step131HeadFvFresh ++ [])))),s2Step131F4Plan,s2Step131CounterDuring,s2Step131CounterWork,s2Step131ExitGvAfter,s2Step131FrontOut,(shrinkRow 769 s2Step131ExitGExtra ++ (shrinkRow 768 s2Step131ExitFExtra ++ (shrinkRow 770 s2Step131ExitFvExtra ++ (shrinkRow 771 s2Step131ExitGvExtra ++ []))))⟩

private def s2Step131CompletePlan : HmrEarlyStepPlan := ⟨s2Step131FrontPlan,s2Step131EarlyControlArena,s2Step131EarlyControlPlan,s2Step131CompleteMoves⟩

private theorem s2Step131Complete_apart : List.Disjoint (s2Step131CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [835, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step131CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[835, 829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step131Complete_owned : (s2Step131CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private def s2Step131CompleteMoveArena : Arena := ⟨s2Step131ExitGvAfter.live∪{202},Finset.union_subset s2Step131ExitGvAfter.bounded (by norm_num [arenaWires])⟩

private theorem s2Step131Complete_repack : s2Step131ExitGvAfter.checkRepack s2Step131CompleteMoves=some s2Step131EarlyControlArena := by
  have owned : 783∈s2Step131ExitGvAfter.live := by norm_num [s2Step131ExitGvAfter,arenaWires]
  have reserve : s2Step131ExitGvAfter.reserve {202}=some s2Step131CompleteMoveArena := by
    apply hmrArena_reserve_of_live
    · norm_num [arenaWires]
    · norm_num [s2Step131ExitGvAfter,arenaWires]
    · rfl
  have retired : s2Step131CompleteMoveArena.retireSet {783}=s2Step131EarlyControlArena := by
    unfold Arena.retireSet s2Step131EarlyControlArena
    simp only [Arena.mk.injEq]
    ext q
    simp only [s2Step131CompleteMoveArena,s2Step131ExitGvAfter,arenaWires,Finset.mem_sdiff,Finset.mem_union,Finset.mem_singleton,Finset.mem_filter,Finset.mem_range]
    simp only [Wire] at *
    omega
  simp only [s2Step131CompleteMoves]
  rw [Arena.checkRepack,if_pos owned,reserve]
  change (s2Step131CompleteMoveArena.retireSet {783}).checkRepack []=some s2Step131EarlyControlArena
  rw [retired]
  rfl

private theorem s2Step131EarlyControl_branchOwned : ([829] : List Wire).toFinset⊆s2Step131EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_branch : compileHmrBranchRetirement s2Step131EarlyControlSigmaArena 829=some s2Step131EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step131EarlyControl_branchOwned
  · ext q
    simp [s2Step131EarlyControlOutputArena,s2Step131EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step131EarlyControl_classEqualityBorrow : s2Step131EarlyControlPositiveArena.checkBorrow (([835, 814] : List Wire).length-1) s2Step131EarlyControlLog.classWork=some s2Step131EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step131EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step131EarlyControlEqualityArena,s2Step131EarlyControlPositiveArena,s2Step131EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step131EarlyControl_classEqualityOwned : ([835, 814] : List Wire).toFinset⊆s2Step131EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlPositiveArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_classEquality : compileHmrEqualityLog s2Step131EarlyControlPositiveArena [835, 814] 0 s2Step131EarlyControlLog.classWork=some (s2Step131EarlyControlEqualityArena,s2Step131EarlyControlLog.classWork,s2Step131EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step131EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step131EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step131EarlyControl_classOwned : ([777, 840, 835] : List Wire).toFinset⊆s2Step131EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_positiveBorrow : s2Step131EarlyControlZeroArena.checkBorrow (1) s2Step131EarlyControlLog.positiveWork=some s2Step131EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step131EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step131EarlyControlPositiveArena,s2Step131EarlyControlZeroArena,s2Step131EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step131EarlyControl_class : compileHmrSourceClassLog s2Step131EarlyControlZeroArena false 777 s2Step131EarlyControlZeroPlan.top 0 835 s2Step131EarlyControlLog.positiveWork s2Step131EarlyControlLog.classWork=some s2Step131EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step131EarlyControlClassPlan s2Step131EarlyControlZeroArena false 777 s2Step131EarlyControlZeroPlan.top 0 835
  constructor
  · decide +kernel
  · exact s2Step131EarlyControl_classOwned
  · exact s2Step131EarlyControl_positiveBorrow
  · exact s2Step131EarlyControl_classEquality

private theorem s2Step131EarlyControl_entryRecordOwned : ([829, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_entrySigmaOwned : ([835, 254] : List Wire).toFinset⊆s2Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_fitBorrow : s2Step131EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step131EarlyControlLog.recordFresh=some s2Step131EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step131EarlyControlFlagArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step131EarlyControlFittedArena,s2Step131EarlyControlFlagArena,s2Step131EarlyControlLog,arenaWires]

private theorem s2Step131EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step131EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlFlagArena (fun q => (0≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_fit : compileHmrRecordGrowLog s2Step131EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step131EarlyControlLog.recordFresh=some s2Step131EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step131EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step131EarlyControl_fitBorrow

private theorem s2Step131EarlyControl_flagsBorrow : s2Step131EarlyControlEqualityArena.checkBorrow (6) s2Step131EarlyControlLog.flagWork=some s2Step131EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step131EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step131EarlyControlFlagArena,s2Step131EarlyControlEqualityArena,s2Step131EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step131EarlyControl_flagsOwned : ([781, 253, 252, 251] : List Wire).toFinset⊆s2Step131EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_flags : compileHmrFlagsLog s2Step131EarlyControlClassPlan.equalityArena s2Step131EarlyControlClassPlan.equality.top 253 252 251 s2Step131EarlyControlLog.flagWork=some s2Step131EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step131EarlyControl_flagsOwned⟩
  · exact s2Step131EarlyControl_flagsBorrow

private theorem s2Step131EarlyControl_historyBorrow : s2Step131EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step131EarlyControlLog.recordFresh=some s2Step131EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step131EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step131EarlyControlHistoryArena,s2Step131EarlyControlArena,s2Step131EarlyControlLog,arenaWires]

private theorem s2Step131EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_history : compileHmrRecordGrowLog s2Step131EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step131EarlyControlLog.recordFresh=some s2Step131EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step131EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step131EarlyControl_historyBorrow

private theorem s2Step131EarlyControl_sigmaOwned : ([254, 835] : List Wire).toFinset⊆s2Step131EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_sigmaReleaseOwned : ([835] : List Wire).toFinset⊆s2Step131EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_sigmaRelease : s2Step131EarlyControlHistoryArena.release {835} (fun _ => false)=some s2Step131EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step131EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step131EarlyControlSigmaArena,s2Step131EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step131EarlyControl_sigma : compileHmrSigmaDropLog s2Step131EarlyControlHistoryArena false 0 0 254 835 []=some s2Step131EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step131EarlyControl_sigmaOwned⟩
  · exact s2Step131EarlyControl_sigmaRelease

private theorem s2Step131EarlyControl_zeroBorrow : s2Step131EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step131EarlyControlLog.zeroWork=some s2Step131EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step131EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step131EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step131EarlyControlZeroArena,s2Step131EarlyControlArena,s2Step131EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step131EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step131EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step131EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EarlyControl_zero : compileHmrEqualityLog s2Step131EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step131EarlyControlLog.zeroWork=some (s2Step131EarlyControlZeroArena,s2Step131EarlyControlLog.zeroWork,s2Step131EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step131EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step131EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step131EarlyControl_logged : s2Step131EarlyControlPlan.Logged s2Step131EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 835 254 253 252 251 829 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step131EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step131EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step131EarlyControl_zero
  · exact s2Step131EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step131EarlyControl_flags
  · exact s2Step131EarlyControl_fit
  · exact s2Step131EarlyControl_history
  · exact s2Step131EarlyControl_sigma
  · exact s2Step131EarlyControl_branch

private theorem s2Step131EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step131EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 835 254 253 252 251 829 37 s2Step131EarlyControlLog=some s2Step131EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step131EarlyControlPlan s2Step131EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 835 254 253 252 251 829 37 s2Step131EarlyControl_logged

private def s2Step131EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step131EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step131EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],769⟩

private def s2Step131EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step131FrontBank : WindowBank := ⟨s2Step131EntryFRow,s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow⟩

private def s2Step131Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 827, 768]

private def s2Step131Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 840, 769]

private def s2Step131Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817, 770]

private def s2Step131Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822, 771]

private theorem s2Step131Counter_apart : Disjoint s2Step131HeadFvAfter.live s2Step131CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step131HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131Counter_borrowed : s2Step131HeadFvAfter.checkBorrow 4 s2Step131CounterWork=some s2Step131CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step131HeadFvAfter s2Step131CounterDuring s2Step131CounterWork.toFinset s2Step131Counter_bounded s2Step131Counter_apart rfl

private theorem s2Step131Counter_owned : (835::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step131HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step131HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131Counter_checked : compileHmrCounterStepLog s2Step131HeadFvAfter true 835 [772, 773, 774, 775, 776, 777] s2Step131CounterWork=some s2Step131CounterDuring := by
  have owned : ∀q∈835::[772, 773, 774, 775, 776, 777],q∈s2Step131HeadFvAfter.live := fun q hq => s2Step131Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step131Counter_borrowed

private def s2Step131EntryFAfter : Arena := s2Step131EntryFBefore

private theorem s2Step131EntryBank_incomingDistinct : ([s2Step131EntryFRow,s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131EntryF_Incoming : rowsOwned s2Step131EntryFBefore [s2Step131EntryFRow,s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131EntryFRow,s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow] 0 s2Step131EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131EntryBank_outgoingOwned : rowsOwned s2Step131EntryGvAfter [s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step131EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131EntryF_Outgoing : rowsOwned s2Step131EntryGvAfter [s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut] :=
  hmrRows_owned_drop s2Step131EntryGvAfter [s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut] 0 s2Step131EntryBank_outgoingOwned

private theorem s2Step131EntryF_distinct : (s2Step131EntryFRow.sign::s2Step131EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131EntryF_owned : (s2Step131EntryFRow.sign::s2Step131EntryFRow.payload).toFinset⊆s2Step131EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EntryF_reserved : s2Step131EntryFBefore.reserve s2Step131EntryFFresh.toFinset=some s2Step131EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step131EntryFFresh,arenaWires]
  · norm_num [s2Step131EntryFBefore,s2Step131EntryFFresh,arenaWires]
  · simp only [s2Step131EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step131EntryF_checked : planRowResizeLog s2Step131EntryFBefore s2Step131EntryFRow 203 s2Step131EntryFFresh=
    some (s2Step131EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩,growRow 768 s2Step131EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step131EntryFBefore s2Step131EntryFAfter s2Step131EntryFRow 203 s2Step131EntryFFresh
    s2Step131EntryF_distinct s2Step131EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step131EntryF_reserved
  have rowEq : WindowRow.mk (s2Step131EntryFRow.payload++s2Step131EntryFFresh) s2Step131EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step131EntryFvAfter : Arena := s2Step131EntryFBefore

private def s2Step131EntryFvBefore : Arena := s2Step131EntryFBefore

private theorem s2Step131EntryFv_Incoming : rowsOwned s2Step131EntryFvBefore [s2Step131EntryFvRow,s2Step131EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131EntryFRow,s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow] 2 s2Step131EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131EntryFv_Outgoing : rowsOwned s2Step131EntryGvAfter [s2Step131EntryFvOut,s2Step131EntryGvOut] :=
  hmrRows_owned_drop s2Step131EntryGvAfter [s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut] 2 s2Step131EntryBank_outgoingOwned

private theorem s2Step131EntryFv_distinct : (s2Step131EntryFvRow.sign::s2Step131EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131EntryFv_owned : (s2Step131EntryFvRow.sign::s2Step131EntryFvRow.payload).toFinset⊆s2Step131EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EntryFv_reserved : s2Step131EntryFvBefore.reserve s2Step131EntryFvFresh.toFinset=some s2Step131EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step131EntryFvFresh,arenaWires]
  · norm_num [s2Step131EntryFvBefore,s2Step131EntryFBefore,s2Step131EntryFvFresh,arenaWires]
  · simp only [s2Step131EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step131EntryFv_checked : planRowResizeLog s2Step131EntryFvBefore s2Step131EntryFvRow 79 s2Step131EntryFvFresh=
    some (s2Step131EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩,growRow 770 s2Step131EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step131EntryFvBefore s2Step131EntryFvAfter s2Step131EntryFvRow 79 s2Step131EntryFvFresh
    s2Step131EntryFv_distinct s2Step131EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step131EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step131EntryFvRow.payload++s2Step131EntryFvFresh) s2Step131EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step131EntryGAfter : Arena := s2Step131EntryFBefore

private def s2Step131EntryGBefore : Arena := s2Step131EntryFBefore

private theorem s2Step131EntryG_Incoming : rowsOwned s2Step131EntryGBefore [s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131EntryFRow,s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow] 1 s2Step131EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131EntryG_Outgoing : rowsOwned s2Step131EntryGvAfter [s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut] :=
  hmrRows_owned_drop s2Step131EntryGvAfter [s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut] 1 s2Step131EntryBank_outgoingOwned

private theorem s2Step131EntryG_distinct : (s2Step131EntryGRow.sign::s2Step131EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131EntryG_owned : (s2Step131EntryGRow.sign::s2Step131EntryGRow.payload).toFinset⊆s2Step131EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EntryG_reserved : s2Step131EntryGBefore.reserve s2Step131EntryGFresh.toFinset=some s2Step131EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step131EntryGFresh,arenaWires]
  · norm_num [s2Step131EntryGBefore,s2Step131EntryFBefore,s2Step131EntryGFresh,arenaWires]
  · simp only [s2Step131EntryGFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step131EntryG_checked : planRowResizeLog s2Step131EntryGBefore s2Step131EntryGRow 203 s2Step131EntryGFresh=
    some (s2Step131EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],769⟩,growRow 769 s2Step131EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step131EntryGBefore s2Step131EntryGAfter s2Step131EntryGRow 203 s2Step131EntryGFresh
    s2Step131EntryG_distinct s2Step131EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step131EntryG_reserved
  have rowEq : WindowRow.mk (s2Step131EntryGRow.payload++s2Step131EntryGFresh) s2Step131EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step131EntryGvBefore : Arena := s2Step131EntryFBefore

private theorem s2Step131EntryGv_Incoming : rowsOwned s2Step131EntryGvBefore [s2Step131EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131EntryFRow,s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow] 3 s2Step131EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131EntryGv_Outgoing : rowsOwned s2Step131EntryGvAfter [s2Step131EntryGvOut] :=
  hmrRows_owned_drop s2Step131EntryGvAfter [s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut] 3 s2Step131EntryBank_outgoingOwned

private theorem s2Step131EntryGv_distinct : (s2Step131EntryGvRow.sign::s2Step131EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131EntryGv_owned : (s2Step131EntryGvRow.sign::s2Step131EntryGvRow.payload).toFinset⊆s2Step131EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131EntryGv_reserved : s2Step131EntryGvBefore.reserve s2Step131EntryGvFresh.toFinset=some s2Step131EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step131EntryGvFresh,arenaWires]
  · norm_num [s2Step131EntryGvBefore,s2Step131EntryFBefore,s2Step131EntryGvFresh,arenaWires]
  · simp only [s2Step131EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step131EntryGv_checked : planRowResizeLog s2Step131EntryGvBefore s2Step131EntryGvRow 79 s2Step131EntryGvFresh=
    some (s2Step131EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩,growRow 771 s2Step131EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step131EntryGvBefore s2Step131EntryGvAfter s2Step131EntryGvRow 79 s2Step131EntryGvFresh
    s2Step131EntryGv_distinct s2Step131EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step131EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step131EntryGvRow.payload++s2Step131EntryGvFresh) s2Step131EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step131EntryBank_rows : planWindowRowsLog s2Step131EntryFBefore [(s2Step131EntryFRow,203),(s2Step131EntryGRow,203),(s2Step131EntryFvRow,79),(s2Step131EntryGvRow,79)] [s2Step131EntryFFresh,s2Step131EntryGFresh,s2Step131EntryFvFresh,s2Step131EntryGvFresh]=
    some (s2Step131EntryGvAfter,[s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut],(growRow 768 s2Step131EntryFFresh ++ (growRow 769 s2Step131EntryGFresh ++ (growRow 770 s2Step131EntryFvFresh ++ (growRow 771 s2Step131EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step131EntryGvAfter [] []=some (s2Step131EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step131EntryGvBefore s2Step131EntryGvAfter s2Step131EntryGvAfter
    s2Step131EntryGvRow s2Step131EntryGvOut 79 s2Step131EntryGvFresh [] [] []
    (growRow 771 s2Step131EntryGvFresh) ([]) s2Step131EntryGv_Incoming s2Step131EntryGv_checked h4 s2Step131EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step131EntryFvBefore s2Step131EntryFvAfter s2Step131EntryGvAfter
    s2Step131EntryFvRow s2Step131EntryFvOut 79 s2Step131EntryFvFresh [(s2Step131EntryGvRow,79)] [s2Step131EntryGvFresh] [s2Step131EntryGvOut]
    (growRow 770 s2Step131EntryFvFresh) ((growRow 771 s2Step131EntryGvFresh ++ [])) s2Step131EntryFv_Incoming s2Step131EntryFv_checked h3 s2Step131EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step131EntryGBefore s2Step131EntryGAfter s2Step131EntryGvAfter
    s2Step131EntryGRow s2Step131EntryGOut 203 s2Step131EntryGFresh [(s2Step131EntryFvRow,79),(s2Step131EntryGvRow,79)] [s2Step131EntryFvFresh,s2Step131EntryGvFresh] [s2Step131EntryFvOut,s2Step131EntryGvOut]
    (growRow 769 s2Step131EntryGFresh) ((growRow 770 s2Step131EntryFvFresh ++ (growRow 771 s2Step131EntryGvFresh ++ []))) s2Step131EntryG_Incoming s2Step131EntryG_checked h2 s2Step131EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step131EntryFBefore s2Step131EntryFAfter s2Step131EntryGvAfter
    s2Step131EntryFRow s2Step131EntryFOut 203 s2Step131EntryFFresh [(s2Step131EntryGRow,203),(s2Step131EntryFvRow,79),(s2Step131EntryGvRow,79)] [s2Step131EntryGFresh,s2Step131EntryFvFresh,s2Step131EntryGvFresh] [s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut]
    (growRow 768 s2Step131EntryFFresh) ((growRow 769 s2Step131EntryGFresh ++ (growRow 770 s2Step131EntryFvFresh ++ (growRow 771 s2Step131EntryGvFresh ++ [])))) s2Step131EntryF_Incoming s2Step131EntryF_checked h1 s2Step131EntryF_Outgoing
  exact h0

private theorem s2Step131EntryBank_checked : compileHmrBankResizeLog .entry s2Step131EntryFBefore ⟨s2Step131EntryFRow,s2Step131EntryGRow,s2Step131EntryFvRow,s2Step131EntryGvRow⟩ ⟨203,203,79,79⟩ [s2Step131EntryFFresh,s2Step131EntryGFresh,s2Step131EntryFvFresh,s2Step131EntryGvFresh]=
    some (s2Step131EntryGvAfter,⟨s2Step131EntryFOut,s2Step131EntryGOut,s2Step131EntryFvOut,s2Step131EntryGvOut⟩,(growRow 768 s2Step131EntryFFresh ++ (growRow 769 s2Step131EntryGFresh ++ (growRow 770 s2Step131EntryFvFresh ++ (growRow 771 s2Step131EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step131EntryBank_rows]
  rfl

private def s2Step131ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131ExitFBefore : Arena := s2Step131ExitGAfter

private def s2Step131ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 827],768⟩

private def s2Step131ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817],770⟩

private def s2Step131ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 840],769⟩

private def s2Step131ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822],771⟩

private theorem s2Step131ExitBank_incomingDistinct : ([s2Step131ExitGRow,s2Step131ExitFRow,s2Step131ExitFvRow,s2Step131ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131ExitF_Incoming : rowsOwned s2Step131ExitFBefore [s2Step131ExitFRow,s2Step131ExitFvRow,s2Step131ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131ExitGRow,s2Step131ExitFRow,s2Step131ExitFvRow,s2Step131ExitGvRow] 1 s2Step131ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131ExitFBefore (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131ExitBank_outgoingOwned : rowsOwned s2Step131ExitGvAfter [s2Step131ExitGOut,s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step131ExitGvAfter (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131ExitF_Outgoing : rowsOwned s2Step131ExitGvAfter [s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut] :=
  hmrRows_owned_drop s2Step131ExitGvAfter [s2Step131ExitGOut,s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut] 1 s2Step131ExitBank_outgoingOwned

private theorem s2Step131ExitF_distinct : (s2Step131ExitFRow.sign::s2Step131ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131ExitF_owned : (s2Step131ExitFRow.sign::s2Step131ExitFRow.payload).toFinset⊆s2Step131ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131ExitFBefore (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131ExitF_retired : s2Step131ExitFBefore.retireSet s2Step131ExitFExtra.toFinset=s2Step131ExitFAfter := by
  unfold Arena.retireSet s2Step131ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step131ExitFBefore,s2Step131ExitGAfter,s2Step131ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step131ExitF_checked : planRowResizeLog s2Step131ExitFBefore s2Step131ExitFRow 203 []=
    some (s2Step131ExitFAfter,s2Step131ExitFOut,shrinkRow 768 s2Step131ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step131ExitFBefore s2Step131ExitFRow 203 s2Step131ExitF_distinct s2Step131ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step131ExitFRow.payload.take 203) s2Step131ExitFRow.sign=s2Step131ExitFOut := by decide +kernel
  have hi : s2Step131ExitFRow.payload.drop 203=s2Step131ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step131ExitF_retired] at result
  exact result

private def s2Step131ExitFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131ExitFvBefore : Arena := s2Step131ExitFAfter

private theorem s2Step131ExitFv_Incoming : rowsOwned s2Step131ExitFvBefore [s2Step131ExitFvRow,s2Step131ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131ExitGRow,s2Step131ExitFRow,s2Step131ExitFvRow,s2Step131ExitGvRow] 2 s2Step131ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131ExitFvBefore (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131ExitFv_Outgoing : rowsOwned s2Step131ExitGvAfter [s2Step131ExitFvOut,s2Step131ExitGvOut] :=
  hmrRows_owned_drop s2Step131ExitGvAfter [s2Step131ExitGOut,s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut] 2 s2Step131ExitBank_outgoingOwned

private theorem s2Step131ExitFv_distinct : (s2Step131ExitFvRow.sign::s2Step131ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131ExitFv_owned : (s2Step131ExitFvRow.sign::s2Step131ExitFvRow.payload).toFinset⊆s2Step131ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131ExitFvBefore (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131ExitFv_retired : s2Step131ExitFvBefore.retireSet s2Step131ExitFvExtra.toFinset=s2Step131ExitFvAfter := by
  unfold Arena.retireSet s2Step131ExitFvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step131ExitFvBefore,s2Step131ExitFAfter,s2Step131ExitFvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step131ExitFv_checked : planRowResizeLog s2Step131ExitFvBefore s2Step131ExitFvRow 79 []=
    some (s2Step131ExitFvAfter,s2Step131ExitFvOut,shrinkRow 770 s2Step131ExitFvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step131ExitFvBefore s2Step131ExitFvRow 79 s2Step131ExitFv_distinct s2Step131ExitFv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step131ExitFvRow.payload.take 79) s2Step131ExitFvRow.sign=s2Step131ExitFvOut := by decide +kernel
  have hi : s2Step131ExitFvRow.payload.drop 79=s2Step131ExitFvExtra := by decide +kernel
  rw [lo,hi,s2Step131ExitFv_retired] at result
  exact result

private def s2Step131ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step131ExitG_Incoming : rowsOwned s2Step131ExitGBefore [s2Step131ExitGRow,s2Step131ExitFRow,s2Step131ExitFvRow,s2Step131ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131ExitGRow,s2Step131ExitFRow,s2Step131ExitFvRow,s2Step131ExitGvRow] 0 s2Step131ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131ExitG_Outgoing : rowsOwned s2Step131ExitGvAfter [s2Step131ExitGOut,s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut] :=
  hmrRows_owned_drop s2Step131ExitGvAfter [s2Step131ExitGOut,s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut] 0 s2Step131ExitBank_outgoingOwned

private theorem s2Step131ExitG_distinct : (s2Step131ExitGRow.sign::s2Step131ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131ExitG_owned : (s2Step131ExitGRow.sign::s2Step131ExitGRow.payload).toFinset⊆s2Step131ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131ExitG_retired : s2Step131ExitGBefore.retireSet s2Step131ExitGExtra.toFinset=s2Step131ExitGAfter := by
  unfold Arena.retireSet s2Step131ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step131ExitGBefore,s2Step131ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step131ExitG_checked : planRowResizeLog s2Step131ExitGBefore s2Step131ExitGRow 202 []=
    some (s2Step131ExitGAfter,s2Step131ExitGOut,shrinkRow 769 s2Step131ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step131ExitGBefore s2Step131ExitGRow 202 s2Step131ExitG_distinct s2Step131ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step131ExitGRow.payload.take 202) s2Step131ExitGRow.sign=s2Step131ExitGOut := by decide +kernel
  have hi : s2Step131ExitGRow.payload.drop 202=s2Step131ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step131ExitG_retired] at result
  exact result

private def s2Step131ExitGvBefore : Arena := s2Step131ExitFvAfter

private theorem s2Step131ExitGv_Incoming : rowsOwned s2Step131ExitGvBefore [s2Step131ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131ExitGRow,s2Step131ExitFRow,s2Step131ExitFvRow,s2Step131ExitGvRow] 3 s2Step131ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131ExitGvBefore (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131ExitGv_Outgoing : rowsOwned s2Step131ExitGvAfter [s2Step131ExitGvOut] :=
  hmrRows_owned_drop s2Step131ExitGvAfter [s2Step131ExitGOut,s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut] 3 s2Step131ExitBank_outgoingOwned

private theorem s2Step131ExitGv_distinct : (s2Step131ExitGvRow.sign::s2Step131ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131ExitGv_owned : (s2Step131ExitGvRow.sign::s2Step131ExitGvRow.payload).toFinset⊆s2Step131ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131ExitGvBefore (fun q => (0≤q ∧ q<202) ∨ (203≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131ExitGv_retired : s2Step131ExitGvBefore.retireSet s2Step131ExitGvExtra.toFinset=s2Step131ExitGvAfter := by
  unfold Arena.retireSet s2Step131ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step131ExitGvBefore,s2Step131ExitFvAfter,s2Step131ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step131ExitGv_checked : planRowResizeLog s2Step131ExitGvBefore s2Step131ExitGvRow 79 []=
    some (s2Step131ExitGvAfter,s2Step131ExitGvOut,shrinkRow 771 s2Step131ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step131ExitGvBefore s2Step131ExitGvRow 79 s2Step131ExitGv_distinct s2Step131ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step131ExitGvRow.payload.take 79) s2Step131ExitGvRow.sign=s2Step131ExitGvOut := by decide +kernel
  have hi : s2Step131ExitGvRow.payload.drop 79=s2Step131ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step131ExitGv_retired] at result
  exact result

private theorem s2Step131ExitBank_rows : planWindowRowsLog s2Step131ExitGBefore [(s2Step131ExitGRow,202),(s2Step131ExitFRow,203),(s2Step131ExitFvRow,79),(s2Step131ExitGvRow,79)] [[],[],[],[]]=
    some (s2Step131ExitGvAfter,[s2Step131ExitGOut,s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut],(shrinkRow 769 s2Step131ExitGExtra ++ (shrinkRow 768 s2Step131ExitFExtra ++ (shrinkRow 770 s2Step131ExitFvExtra ++ (shrinkRow 771 s2Step131ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step131ExitGvAfter [] []=some (s2Step131ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step131ExitGvBefore s2Step131ExitGvAfter s2Step131ExitGvAfter
    s2Step131ExitGvRow s2Step131ExitGvOut 79 [] [] [] []
    (shrinkRow 771 s2Step131ExitGvExtra) ([]) s2Step131ExitGv_Incoming s2Step131ExitGv_checked h4 s2Step131ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step131ExitFvBefore s2Step131ExitFvAfter s2Step131ExitGvAfter
    s2Step131ExitFvRow s2Step131ExitFvOut 79 [] [(s2Step131ExitGvRow,79)] [[]] [s2Step131ExitGvOut]
    (shrinkRow 770 s2Step131ExitFvExtra) ((shrinkRow 771 s2Step131ExitGvExtra ++ [])) s2Step131ExitFv_Incoming s2Step131ExitFv_checked h3 s2Step131ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step131ExitFBefore s2Step131ExitFAfter s2Step131ExitGvAfter
    s2Step131ExitFRow s2Step131ExitFOut 203 [] [(s2Step131ExitFvRow,79),(s2Step131ExitGvRow,79)] [[],[]] [s2Step131ExitFvOut,s2Step131ExitGvOut]
    (shrinkRow 768 s2Step131ExitFExtra) ((shrinkRow 770 s2Step131ExitFvExtra ++ (shrinkRow 771 s2Step131ExitGvExtra ++ []))) s2Step131ExitF_Incoming s2Step131ExitF_checked h2 s2Step131ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step131ExitGBefore s2Step131ExitGAfter s2Step131ExitGvAfter
    s2Step131ExitGRow s2Step131ExitGOut 202 [] [(s2Step131ExitFRow,203),(s2Step131ExitFvRow,79),(s2Step131ExitGvRow,79)] [[],[],[]] [s2Step131ExitFOut,s2Step131ExitFvOut,s2Step131ExitGvOut]
    (shrinkRow 769 s2Step131ExitGExtra) ((shrinkRow 768 s2Step131ExitFExtra ++ (shrinkRow 770 s2Step131ExitFvExtra ++ (shrinkRow 771 s2Step131ExitGvExtra ++ [])))) s2Step131ExitG_Incoming s2Step131ExitG_checked h1 s2Step131ExitG_Outgoing
  exact h0

private theorem s2Step131ExitBank_checked : compileHmrBankResizeLog .exit s2Step131ExitGBefore ⟨s2Step131ExitFRow,s2Step131ExitGRow,s2Step131ExitFvRow,s2Step131ExitGvRow⟩ ⟨203,202,79,79⟩ [[],[],[],[]]=
    some (s2Step131ExitGvAfter,⟨s2Step131ExitFOut,s2Step131ExitGOut,s2Step131ExitFvOut,s2Step131ExitGvOut⟩,(shrinkRow 769 s2Step131ExitGExtra ++ (shrinkRow 768 s2Step131ExitFExtra ++ (shrinkRow 770 s2Step131ExitFvExtra ++ (shrinkRow 771 s2Step131ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step131ExitBank_rows]
  rfl

private theorem s2Step131Add0_apart : Disjoint s2Step131Add0Arena.live s2Step131Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step131Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131Add0_card : s2Step131Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step131Add0_borrowed : s2Step131Add0Arena.checkBorrow (hmrHybridCount s2Step131Add0Arena s2Step131Add0B.length) s2Step131Add0Work=some s2Step131Add0During := by
  have len : s2Step131Add0Work.length=hmrHybridCount s2Step131Add0Arena s2Step131Add0B.length := by
    rw [hmrHybridCount,s2Step131Add0_card]
    decide +kernel
  have nd : s2Step131Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step131Add0Arena s2Step131Add0During s2Step131Add0Work.toFinset s2Step131Add0_bounded s2Step131Add0_apart rfl

private theorem s2Step131Add0_distinct : (814::829::781::(s2Step131Add0A++s2Step131Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131Add0_owned : (814::829::781::(s2Step131Add0A++s2Step131Add0B)).toFinset⊆s2Step131Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step131Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131Add0_checked : compileHmrHybridCinLog s2Step131Add0Arena 829 814 781 s2Step131Add0A s2Step131Add0B s2Step131Add0Work=some s2Step131Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step131Add0Arena s2Step131Add0During 829 814 781 s2Step131Add0A s2Step131Add0B s2Step131Add0Work
    (by decide +kernel) (by decide +kernel) s2Step131Add0_distinct
    (fun q hq => s2Step131Add0_owned (List.mem_toFinset.mpr hq)) s2Step131Add0_borrowed

private theorem s2Step131Add1_apart : Disjoint s2Step131Add1Arena.live s2Step131Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step131Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131Add1_card : s2Step131Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step131Add1_borrowed : s2Step131Add1Arena.checkBorrow (hmrHybridCount s2Step131Add1Arena s2Step131Add1B.length) s2Step131Add1Work=some s2Step131Add1During := by
  have len : s2Step131Add1Work.length=hmrHybridCount s2Step131Add1Arena s2Step131Add1B.length := by
    rw [hmrHybridCount,s2Step131Add1_card]
    decide +kernel
  have nd : s2Step131Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step131Add1Arena s2Step131Add1During s2Step131Add1Work.toFinset s2Step131Add1_bounded s2Step131Add1_apart rfl

private theorem s2Step131Add1_distinct : (814::829::781::(s2Step131Add1A++s2Step131Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131Add1_owned : (814::829::781::(s2Step131Add1A++s2Step131Add1B)).toFinset⊆s2Step131Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step131Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131Add1_checked : compileHmrHybridCinLog s2Step131Add1Arena 829 814 781 s2Step131Add1A s2Step131Add1B s2Step131Add1Work=some s2Step131Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step131Add1Arena s2Step131Add1During 829 814 781 s2Step131Add1A s2Step131Add1B s2Step131Add1Work
    (by decide +kernel) (by decide +kernel) s2Step131Add1_distinct
    (fun q hq => s2Step131Add1_owned (List.mem_toFinset.mpr hq)) s2Step131Add1_borrowed

private theorem s2Step131F4_apart : Disjoint (s2Step131Add0A++s2Step131Add0B).toFinset (s2Step131Add1A++s2Step131Add1B).toFinset := by
  have nd : ((s2Step131Add0A++s2Step131Add0B)++(s2Step131Add1A++s2Step131Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step131F4_carry : s2Step131F4FlagArena.checkBorrow 1 [781]=some s2Step131Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step131F4FlagArena,s2Step131HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step131F4FlagArena,s2Step131HeadFvAfter,s2Step131Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step131F4_distinct : (835::829::814::781::((s2Step131Add0A++s2Step131Add1A)++(s2Step131Add0B++s2Step131Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131F4_flag : s2Step131HeadFvAfter.checkBorrow 1 [814]=some s2Step131F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step131HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step131F4_owned : (835::829::((s2Step131Add0A++s2Step131Add1A)++(s2Step131Add0B++s2Step131Add1B))).toFinset⊆s2Step131HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step131HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131F4_checked : compileHmrHybridF4Log s2Step131HeadFvAfter 835 829 s2Step131Add0A s2Step131Add0B s2Step131Add1A s2Step131Add1B [814] [781] s2Step131Add0Work s2Step131Add1Work=some s2Step131F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step131HeadFvAfter s2Step131F4FlagArena s2Step131Add0Arena s2Step131Add0During s2Step131Add1During 835 829
    s2Step131Add0A s2Step131Add0B s2Step131Add1A s2Step131Add1B [814] [781] s2Step131Add0Work s2Step131Add1Work
    (fun q hq => s2Step131F4_owned (List.mem_toFinset.mpr hq)) s2Step131F4_flag s2Step131F4_carry
    s2Step131F4_distinct s2Step131F4_apart s2Step131Add0_checked s2Step131Add1_checked

private theorem s2Step131Front_branch : s2Step131FrontSigmaArena.checkBorrow 1 [829]=some s2Step131HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step131FrontSigmaArena,s2Step131EntryGvAfter,s2Step131EntryFBefore,arenaWires]
  · ext q
    simp only [s2Step131FrontSigmaArena,s2Step131EntryGvAfter,s2Step131EntryFBefore,s2Step131HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step131Front_entry : HmrFrontEntryValid s2Step131EntryFBefore s2Step131FrontBank 203 79 ⟨203,202,79,79⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step131FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step131EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step131EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step131FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step131Front_sigma : s2Step131EntryGvAfter.checkBorrow 1 [835]=some s2Step131FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step131EntryGvAfter,s2Step131EntryFBefore,arenaWires]
  · rfl

private def s2Step131HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131HeadFBefore : Arena := s2Step131HeadGAfter

private def s2Step131HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step131HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step131HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202],769⟩

private def s2Step131HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private theorem s2Step131HeadBank_incomingDistinct : ([s2Step131HeadGRow,s2Step131HeadFRow,s2Step131HeadGvRow,s2Step131HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131HeadF_Incoming : rowsOwned s2Step131HeadFBefore [s2Step131HeadFRow,s2Step131HeadGvRow,s2Step131HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131HeadGRow,s2Step131HeadFRow,s2Step131HeadGvRow,s2Step131HeadFvRow] 1 s2Step131HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131HeadBank_outgoingOwned : rowsOwned s2Step131HeadFvAfter [s2Step131HeadGOut,s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step131HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131HeadF_Outgoing : rowsOwned s2Step131HeadFvAfter [s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut] :=
  hmrRows_owned_drop s2Step131HeadFvAfter [s2Step131HeadGOut,s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut] 1 s2Step131HeadBank_outgoingOwned

private theorem s2Step131HeadF_distinct : (s2Step131HeadFRow.sign::s2Step131HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131HeadF_owned : (s2Step131HeadFRow.sign::s2Step131HeadFRow.payload).toFinset⊆s2Step131HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131HeadF_reserved : s2Step131HeadFBefore.reserve s2Step131HeadFFresh.toFinset=some s2Step131HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step131HeadFFresh,arenaWires]
  · norm_num [s2Step131HeadFBefore,s2Step131HeadGAfter,s2Step131HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step131HeadFAfter,s2Step131HeadFBefore,s2Step131HeadGAfter,s2Step131HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step131HeadF_checked : planRowResizeLog s2Step131HeadFBefore s2Step131HeadFRow 204 s2Step131HeadFFresh=
    some (s2Step131HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 827],768⟩,growRow 768 s2Step131HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step131HeadFBefore s2Step131HeadFAfter s2Step131HeadFRow 204 s2Step131HeadFFresh
    s2Step131HeadF_distinct s2Step131HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step131HeadF_reserved
  have rowEq : WindowRow.mk (s2Step131HeadFRow.payload++s2Step131HeadFFresh) s2Step131HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 827],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step131HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step131HeadFvBefore : Arena := s2Step131HeadGvAfter

private theorem s2Step131HeadFv_Incoming : rowsOwned s2Step131HeadFvBefore [s2Step131HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131HeadGRow,s2Step131HeadFRow,s2Step131HeadGvRow,s2Step131HeadFvRow] 3 s2Step131HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131HeadFv_Outgoing : rowsOwned s2Step131HeadFvAfter [s2Step131HeadFvOut] :=
  hmrRows_owned_drop s2Step131HeadFvAfter [s2Step131HeadGOut,s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut] 3 s2Step131HeadBank_outgoingOwned

private theorem s2Step131HeadFv_distinct : (s2Step131HeadFvRow.sign::s2Step131HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131HeadFv_owned : (s2Step131HeadFvRow.sign::s2Step131HeadFvRow.payload).toFinset⊆s2Step131HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131HeadFv_reserved : s2Step131HeadFvBefore.reserve s2Step131HeadFvFresh.toFinset=some s2Step131HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step131HeadFvFresh,arenaWires]
  · norm_num [s2Step131HeadFvBefore,s2Step131HeadGvAfter,s2Step131HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step131HeadFvAfter,s2Step131HeadFvBefore,s2Step131HeadGvAfter,s2Step131HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step131HeadFv_checked : planRowResizeLog s2Step131HeadFvBefore s2Step131HeadFvRow 80 s2Step131HeadFvFresh=
    some (s2Step131HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817],770⟩,growRow 770 s2Step131HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step131HeadFvBefore s2Step131HeadFvAfter s2Step131HeadFvRow 80 s2Step131HeadFvFresh
    s2Step131HeadFv_distinct s2Step131HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step131HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step131HeadFvRow.payload++s2Step131HeadFvFresh) s2Step131HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 783, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 817],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step131HeadG_Incoming : rowsOwned s2Step131HeadGBefore [s2Step131HeadGRow,s2Step131HeadFRow,s2Step131HeadGvRow,s2Step131HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131HeadGRow,s2Step131HeadFRow,s2Step131HeadGvRow,s2Step131HeadFvRow] 0 s2Step131HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131HeadG_Outgoing : rowsOwned s2Step131HeadFvAfter [s2Step131HeadGOut,s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut] :=
  hmrRows_owned_drop s2Step131HeadFvAfter [s2Step131HeadGOut,s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut] 0 s2Step131HeadBank_outgoingOwned

private theorem s2Step131HeadG_distinct : (s2Step131HeadGRow.sign::s2Step131HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131HeadG_owned : (s2Step131HeadGRow.sign::s2Step131HeadGRow.payload).toFinset⊆s2Step131HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131HeadG_reserved : s2Step131HeadGBefore.reserve s2Step131HeadGFresh.toFinset=some s2Step131HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step131HeadGFresh,arenaWires]
  · norm_num [s2Step131HeadGBefore,s2Step131HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step131HeadGAfter,s2Step131HeadGBefore,s2Step131HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step131HeadG_checked : planRowResizeLog s2Step131HeadGBefore s2Step131HeadGRow 204 s2Step131HeadGFresh=
    some (s2Step131HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 840],769⟩,growRow 769 s2Step131HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step131HeadGBefore s2Step131HeadGAfter s2Step131HeadGRow 204 s2Step131HeadGFresh
    s2Step131HeadG_distinct s2Step131HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step131HeadG_reserved
  have rowEq : WindowRow.mk (s2Step131HeadGRow.payload++s2Step131HeadGFresh) s2Step131HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 840],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step131HeadGvBefore : Arena := s2Step131HeadFAfter

private theorem s2Step131HeadGv_Incoming : rowsOwned s2Step131HeadGvBefore [s2Step131HeadGvRow,s2Step131HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step131HeadGRow,s2Step131HeadFRow,s2Step131HeadGvRow,s2Step131HeadFvRow] 2 s2Step131HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step131HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step131HeadGv_Outgoing : rowsOwned s2Step131HeadFvAfter [s2Step131HeadGvOut,s2Step131HeadFvOut] :=
  hmrRows_owned_drop s2Step131HeadFvAfter [s2Step131HeadGOut,s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut] 2 s2Step131HeadBank_outgoingOwned

private theorem s2Step131HeadGv_distinct : (s2Step131HeadGvRow.sign::s2Step131HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step131HeadGv_owned : (s2Step131HeadGvRow.sign::s2Step131HeadGvRow.payload).toFinset⊆s2Step131HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step131HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step131HeadGv_reserved : s2Step131HeadGvBefore.reserve s2Step131HeadGvFresh.toFinset=some s2Step131HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step131HeadGvFresh,arenaWires]
  · norm_num [s2Step131HeadGvBefore,s2Step131HeadFAfter,s2Step131HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step131HeadGvAfter,s2Step131HeadGvBefore,s2Step131HeadFAfter,s2Step131HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step131HeadGv_checked : planRowResizeLog s2Step131HeadGvBefore s2Step131HeadGvRow 80 s2Step131HeadGvFresh=
    some (s2Step131HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822],771⟩,growRow 771 s2Step131HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step131HeadGvBefore s2Step131HeadGvAfter s2Step131HeadGvRow 80 s2Step131HeadGvFresh
    s2Step131HeadGv_distinct s2Step131HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step131HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step131HeadGvRow.payload++s2Step131HeadGvFresh) s2Step131HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 822],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step131HeadBank_rows : planWindowRowsLog s2Step131HeadGBefore [(s2Step131HeadGRow,204),(s2Step131HeadFRow,204),(s2Step131HeadGvRow,80),(s2Step131HeadFvRow,80)] [s2Step131HeadGFresh,s2Step131HeadFFresh,s2Step131HeadGvFresh,s2Step131HeadFvFresh]=
    some (s2Step131HeadFvAfter,[s2Step131HeadGOut,s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut],(growRow 769 s2Step131HeadGFresh ++ (growRow 768 s2Step131HeadFFresh ++ (growRow 771 s2Step131HeadGvFresh ++ (growRow 770 s2Step131HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step131HeadFvAfter [] []=some (s2Step131HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step131HeadFvBefore s2Step131HeadFvAfter s2Step131HeadFvAfter
    s2Step131HeadFvRow s2Step131HeadFvOut 80 s2Step131HeadFvFresh [] [] []
    (growRow 770 s2Step131HeadFvFresh) ([]) s2Step131HeadFv_Incoming s2Step131HeadFv_checked h4 s2Step131HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step131HeadGvBefore s2Step131HeadGvAfter s2Step131HeadFvAfter
    s2Step131HeadGvRow s2Step131HeadGvOut 80 s2Step131HeadGvFresh [(s2Step131HeadFvRow,80)] [s2Step131HeadFvFresh] [s2Step131HeadFvOut]
    (growRow 771 s2Step131HeadGvFresh) ((growRow 770 s2Step131HeadFvFresh ++ [])) s2Step131HeadGv_Incoming s2Step131HeadGv_checked h3 s2Step131HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step131HeadFBefore s2Step131HeadFAfter s2Step131HeadFvAfter
    s2Step131HeadFRow s2Step131HeadFOut 204 s2Step131HeadFFresh [(s2Step131HeadGvRow,80),(s2Step131HeadFvRow,80)] [s2Step131HeadGvFresh,s2Step131HeadFvFresh] [s2Step131HeadGvOut,s2Step131HeadFvOut]
    (growRow 768 s2Step131HeadFFresh) ((growRow 771 s2Step131HeadGvFresh ++ (growRow 770 s2Step131HeadFvFresh ++ []))) s2Step131HeadF_Incoming s2Step131HeadF_checked h2 s2Step131HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step131HeadGBefore s2Step131HeadGAfter s2Step131HeadFvAfter
    s2Step131HeadGRow s2Step131HeadGOut 204 s2Step131HeadGFresh [(s2Step131HeadFRow,204),(s2Step131HeadGvRow,80),(s2Step131HeadFvRow,80)] [s2Step131HeadFFresh,s2Step131HeadGvFresh,s2Step131HeadFvFresh] [s2Step131HeadFOut,s2Step131HeadGvOut,s2Step131HeadFvOut]
    (growRow 769 s2Step131HeadGFresh) ((growRow 768 s2Step131HeadFFresh ++ (growRow 771 s2Step131HeadGvFresh ++ (growRow 770 s2Step131HeadFvFresh ++ [])))) s2Step131HeadG_Incoming s2Step131HeadG_checked h1 s2Step131HeadG_Outgoing
  exact h0

private theorem s2Step131HeadBank_checked : compileHmrBankResizeLog .headroom s2Step131HeadGBefore ⟨s2Step131HeadFRow,s2Step131HeadGRow,s2Step131HeadFvRow,s2Step131HeadGvRow⟩ ⟨204,204,80,80⟩ [s2Step131HeadGFresh,s2Step131HeadFFresh,s2Step131HeadGvFresh,s2Step131HeadFvFresh]=
    some (s2Step131HeadFvAfter,⟨s2Step131HeadFOut,s2Step131HeadGOut,s2Step131HeadFvOut,s2Step131HeadGvOut⟩,(growRow 769 s2Step131HeadGFresh ++ (growRow 768 s2Step131HeadFFresh ++ (growRow 771 s2Step131HeadGvFresh ++ (growRow 770 s2Step131HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step131HeadBank_rows]
  rfl

private theorem s2Step131Front_checked : compileHmrSourceFrontLog s2Step131EntryFBefore s2Step131FrontBank 203 79 ⟨203,202,79,79⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step131FrontLog=some s2Step131FrontPlan := by
  have pairEq : s2Step131FrontPair=⟨s2Step131HeadFRow,s2Step131HeadGRow,s2Step131HeadFvRow,s2Step131HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step131FrontHead=⟨s2Step131ExitFRow,s2Step131ExitGRow,s2Step131ExitFvRow,s2Step131ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step131Add0A=s2Step131FrontHead.f.wires := by decide +kernel
  have gEq : s2Step131Add0B=s2Step131FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step131Add1A=s2Step131FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step131Add1B=s2Step131FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step131EntryFBefore s2Step131FrontBank 203 79 ⟨203,202,79,79⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step131FrontLog s2Step131FrontPlan
  · exact s2Step131Front_entry
  · exact s2Step131EntryBank_checked
  · exact s2Step131Front_sigma
  · rfl
  · exact s2Step131Front_branch
  · rfl
  · simpa only [s2Step131FrontPlan,pairEq] using s2Step131HeadBank_checked
  · simpa only [s2Step131FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step131F4_checked
  · exact s2Step131Counter_checked
  · rfl
  · simpa only [s2Step131FrontPlan,headEq] using s2Step131ExitBank_checked

private theorem s2Step131Complete_explicit_checked : compileHmrEarlyStepLog s2Step131EntryFBefore s2Step131FrontBank 203 79 ⟨203,202,79,79⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step131CompleteLog=some s2Step131CompletePlan := by
  let Q := s2Step131EarlyControlPlan
  have hq := s2Step131EarlyControl_plan_checked
  have fv1 : s2Step131CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step131CompleteOut.fv.payload[2]?.getD s2Step131CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step131CompleteOut.fv.payload[3]?.getD s2Step131CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step131CompleteOut.fv.payload[4]?.getD s2Step131CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step131EntryFBefore s2Step131EarlyControlArena s2Step131FrontBank 203 79 ⟨203,202,79,79⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step131CompleteLog s2Step131FrontPlan Q
    s2Step131Front_checked s2Step131Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step131Complete_owned s2Step131Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step131EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 835 s2Step131CompleteOut.fv.second (s2Step131CompleteOut.fv.payload[2]?.getD s2Step131CompleteOut.fv.sign) (s2Step131CompleteOut.fv.payload[3]?.getD s2Step131CompleteOut.fv.sign) (s2Step131CompleteOut.fv.payload[4]?.getD s2Step131CompleteOut.fv.sign) 829 37 s2Step131EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep131Arena : Arena := s2Step131EntryFBefore
def s2PrivateStep131Bank : WindowBank := s2Step131FrontBank
def s2PrivateStep131Spec : HmrSourceWalkStepLog := ⟨203,79,⟨203,202,79,79⟩,37,.early s2Step131CompleteLog⟩
def s2PrivateStep131Plan : HmrSourceStepPlan := .early s2Step131CompletePlan
theorem s2PrivateStep131_source : s2PrivateStep131Spec=s2ObservedLogs128[3] := rfl
theorem s2PrivateStep131_checked : compileHmrSourceStepLog s2PrivateStep131Arena s2PrivateStep131Bank
    s2PrivateStep131Spec.fgWidth s2PrivateStep131Spec.vWidth s2PrivateStep131Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 131 s2PrivateStep131Spec.need none s2PrivateStep131Spec.log=some s2PrivateStep131Plan := by
  change compileHmrSourceStepLog s2Step131EntryFBefore s2Step131FrontBank 203 79 ⟨203,202,79,79⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 131 37 none (.early s2Step131CompleteLog)=some (.early s2Step131CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 131<498)]
  rw [s2Step131Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
