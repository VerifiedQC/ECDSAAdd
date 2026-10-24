import ECDSAAdd.Arithmetic.Paper935.HmrSourceS2PrivateStep130
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

private def s2Step132CompleteMoves : List (Wire × Wire) := []

private def s2Step132EarlyControlLog : HmrEarlyControlLog := ⟨[827, 817, 829, 822, 814],[781],[837],[849, 790, 815, 867, 877, 879],[]⟩

private def s2Step132FrontLog : HmrFrontAllocationLog := ⟨⟨[[], [829], [], []],[[822], [817], [827], [840]],[[], [], [], []]⟩,[835],[783],[814],[781],[837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934],[814, 781, 837, 849]⟩

private def s2Step132CompleteLog : HmrEarlyStepLog := ⟨s2Step132FrontLog,s2Step132CompleteMoves,s2Step132EarlyControlLog⟩

private def s2Step132ExitFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step132ExitFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step132ExitGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩

private def s2Step132ExitGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step132FrontOut : WindowBank := ⟨s2Step132ExitFOut,s2Step132ExitGOut,s2Step132ExitFvOut,s2Step132ExitGvOut⟩

private def s2Step132CompleteOut : WindowBank := s2Step132FrontOut.repacked s2Step132CompleteMoves

private def s2Step132EarlyControlArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlEqualityArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlPositiveArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlClassPlan : HmrSourceClassPlan := ⟨s2Step132EarlyControlPositiveArena,[781],s2Step132EarlyControlEqualityArena,[837],⟨⟨835,false⟩,[⟨⟨781,false⟩,837⟩]⟩⟩

private def s2Step132EarlyControlFittedArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlFlagArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlHistoryArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlOutputArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlSigmaArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlZeroArena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EarlyControlZeroPlan : HmrEqualityPlan := ⟨⟨772,false⟩,[⟨⟨773,false⟩,827⟩,⟨⟨774,false⟩,817⟩,⟨⟨775,false⟩,829⟩,⟨⟨776,false⟩,822⟩,⟨⟨777,false⟩,814⟩]⟩

private def s2Step132EarlyControlPlan : HmrEarlyControlPlan := ⟨s2Step132EarlyControlZeroArena,s2Step132EarlyControlZeroPlan,s2Step132EarlyControlClassPlan,s2Step132EarlyControlFlagArena,s2Step132EarlyControlFittedArena,s2Step132EarlyControlHistoryArena,s2Step132EarlyControlSigmaArena,s2Step132EarlyControlOutputArena,s2Step132EarlyControlLog⟩

private def s2Step132CounterWork : List Wire := [814, 781, 837, 849]

private theorem s2Step132Counter_bounded : s2Step132CounterWork.toFinset⊆arenaWires := by norm_num [s2Step132CounterWork,arenaWires,Finset.insert_subset_iff]

private def s2Step132HeadFvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132CounterDuring : Arena := ⟨s2Step132HeadFvAfter.live∪s2Step132CounterWork.toFinset,Finset.union_subset s2Step132HeadFvAfter.bounded s2Step132Counter_bounded⟩

private def s2Step132EntryFFresh : List Wire := []

private def s2Step132EntryFvFresh : List Wire := []

private def s2Step132EntryGFresh : List Wire := [829]

private def s2Step132EntryGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EntryGvAfter : Arena := s2Step132EntryGAfter

private def s2Step132EntryGvFresh : List Wire := []

private def s2Step132ExitFExtra : List Wire := [817]

private def s2Step132ExitGExtra : List Wire := [829, 822]

private def s2Step132ExitGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132ExitGvExtra : List Wire := [827]

private def s2Step132Add0Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132Add0Work : List Wire := [837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step132Add0_bounded : s2Step132Add0Work.toFinset⊆arenaWires := by
  have h : s2Step132Add0Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step132Add0During : Arena := ⟨s2Step132Add0Arena.live∪s2Step132Add0Work.toFinset,Finset.union_subset s2Step132Add0Arena.bounded s2Step132Add0_bounded⟩

private def s2Step132Add1Arena : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132Add1Work : List Wire := [837, 849, 790, 815, 867, 877, 879, 882, 883, 884, 885, 886, 887, 888, 889, 890, 891, 892, 893, 894, 895, 896, 897, 898, 899, 900, 901, 902, 903, 904, 905, 906, 907, 908, 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920, 921, 922, 923, 924, 925, 926, 927, 928, 929, 930, 931, 932, 933, 934]

private theorem s2Step132Add1_bounded : s2Step132Add1Work.toFinset⊆arenaWires := by
  have h : s2Step132Add1Work.all (fun q => decide (q<935))=true := by decide +kernel
  intro q hq
  have lt := of_decide_eq_true (List.all_eq_true.mp h q (List.mem_toFinset.mp hq))
  simpa [arenaWires] using lt

private def s2Step132Add1During : Arena := ⟨s2Step132Add1Arena.live∪s2Step132Add1Work.toFinset,Finset.union_subset s2Step132Add1Arena.bounded s2Step132Add1_bounded⟩

private def s2Step132F4FlagArena : Arena := ⟨s2Step132HeadFvAfter.live∪{814},Finset.union_subset s2Step132HeadFvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step132F4Plan : HmrHybridF4Plan := ⟨s2Step132F4FlagArena,[814],s2Step132Add0Arena,[781],s2Step132Add0During,s2Step132Add0Work,s2Step132Add1During,s2Step132Add1Work⟩

private def s2Step132HeadFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 817],768⟩

private def s2Step132HeadFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step132HeadGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829, 822],769⟩

private def s2Step132HeadGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 827],771⟩

private def s2Step132FrontHead : WindowBank := ⟨s2Step132HeadFOut,s2Step132HeadGOut,s2Step132HeadFvOut,s2Step132HeadGvOut⟩

private def s2Step132EntryFOut : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step132EntryFvOut : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step132EntryGOut : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829],769⟩

private def s2Step132EntryGvOut : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step132FrontPair : WindowBank := ⟨s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut⟩

private def s2Step132FrontSigmaArena : Arena := ⟨s2Step132EntryGvAfter.live∪{835},Finset.union_subset s2Step132EntryGvAfter.bounded (by norm_num [arenaWires])⟩

private def s2Step132HeadFFresh : List Wire := [817]

private def s2Step132HeadFvFresh : List Wire := [840]

private def s2Step132HeadGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132HeadGFresh : List Wire := [822]

private def s2Step132HeadGvFresh : List Wire := [827]

private def s2Step132FrontPlan : HmrSourceFront := ⟨s2Step132EntryGvAfter,s2Step132FrontPair,(growRow 768 s2Step132EntryFFresh ++ (growRow 769 s2Step132EntryGFresh ++ (growRow 770 s2Step132EntryFvFresh ++ (growRow 771 s2Step132EntryGvFresh ++ [])))),s2Step132FrontSigmaArena,[835],s2Step132HeadGBefore,[783],
  s2Step132HeadFvAfter,s2Step132FrontHead,(growRow 769 s2Step132HeadGFresh ++ (growRow 768 s2Step132HeadFFresh ++ (growRow 771 s2Step132HeadGvFresh ++ (growRow 770 s2Step132HeadFvFresh ++ [])))),s2Step132F4Plan,s2Step132CounterDuring,s2Step132CounterWork,s2Step132ExitGvAfter,s2Step132FrontOut,(shrinkRow 769 s2Step132ExitGExtra ++ (shrinkRow 768 s2Step132ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step132ExitGvExtra ++ []))))⟩

private def s2Step132CompletePlan : HmrEarlyStepPlan := ⟨s2Step132FrontPlan,s2Step132EarlyControlArena,s2Step132EarlyControlPlan,s2Step132CompleteMoves⟩

private theorem s2Step132Complete_apart : List.Disjoint (s2Step132CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]) [835, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] := by
  have nd : ((s2Step132CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777])++[835, 783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  exact (List.nodup_append'.mp nd).2.2

private theorem s2Step132Complete_owned : (s2Step132CompleteOut.rows.flatMap WindowRow.wires++[772, 773, 774, 775, 776, 777]).toFinset⊆s2Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132Complete_repack : s2Step132ExitGvAfter.checkRepack s2Step132CompleteMoves=some s2Step132EarlyControlArena := by rfl

private theorem s2Step132EarlyControl_branchOwned : ([783] : List Wire).toFinset⊆s2Step132EarlyControlSigmaArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlSigmaArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_branch : compileHmrBranchRetirement s2Step132EarlyControlSigmaArena 783=some s2Step132EarlyControlOutputArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step132EarlyControl_branchOwned
  · ext q
    simp [s2Step132EarlyControlOutputArena,s2Step132EarlyControlSigmaArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step132EarlyControl_classEqualityBorrow : s2Step132EarlyControlPositiveArena.checkBorrow (([835, 781] : List Wire).length-1) s2Step132EarlyControlLog.classWork=some s2Step132EarlyControlEqualityArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step132EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step132EarlyControlEqualityArena,s2Step132EarlyControlPositiveArena,s2Step132EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step132EarlyControl_classEqualityOwned : ([835, 781] : List Wire).toFinset⊆s2Step132EarlyControlPositiveArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlPositiveArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_classEquality : compileHmrEqualityLog s2Step132EarlyControlPositiveArena [835, 781] 0 s2Step132EarlyControlLog.classWork=some (s2Step132EarlyControlEqualityArena,s2Step132EarlyControlLog.classWork,s2Step132EarlyControlClassPlan.equality) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step132EarlyControl_classEqualityOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step132EarlyControl_classEqualityBorrow
  · rfl
  · decide +kernel

private theorem s2Step132EarlyControl_classOwned : ([777, 814, 835] : List Wire).toFinset⊆s2Step132EarlyControlZeroArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_positiveBorrow : s2Step132EarlyControlZeroArena.checkBorrow (1) s2Step132EarlyControlLog.positiveWork=some s2Step132EarlyControlPositiveArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step132EarlyControlZeroArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step132EarlyControlPositiveArena,s2Step132EarlyControlZeroArena,s2Step132EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step132EarlyControl_class : compileHmrSourceClassLog s2Step132EarlyControlZeroArena false 777 s2Step132EarlyControlZeroPlan.top 0 835 s2Step132EarlyControlLog.positiveWork s2Step132EarlyControlLog.classWork=some s2Step132EarlyControlClassPlan := by
  apply compileHmrSourceClassLog_of_logged s2Step132EarlyControlClassPlan s2Step132EarlyControlZeroArena false 777 s2Step132EarlyControlZeroPlan.top 0 835
  constructor
  · decide +kernel
  · exact s2Step132EarlyControl_classOwned
  · exact s2Step132EarlyControl_positiveBorrow
  · exact s2Step132EarlyControl_classEquality

private theorem s2Step132EarlyControl_entryRecordOwned : ([783, 795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_entrySigmaOwned : ([835, 254] : List Wire).toFinset⊆s2Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_fitBorrow : s2Step132EarlyControlFlagArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step132EarlyControlLog.recordFresh=some s2Step132EarlyControlFittedArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step132EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step132EarlyControlFittedArena,s2Step132EarlyControlFlagArena,s2Step132EarlyControlLog,arenaWires]

private theorem s2Step132EarlyControl_fitOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step132EarlyControlFlagArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlFlagArena (fun q => (0≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_fit : compileHmrRecordGrowLog s2Step132EarlyControlFlagArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step132EarlyControlLog.recordFresh=some s2Step132EarlyControlFittedArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step132EarlyControl_fitOwned,by decide +kernel⟩
  · exact s2Step132EarlyControl_fitBorrow

private theorem s2Step132EarlyControl_flagsBorrow : s2Step132EarlyControlEqualityArena.checkBorrow (6) s2Step132EarlyControlLog.flagWork=some s2Step132EarlyControlFlagArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step132EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step132EarlyControlFlagArena,s2Step132EarlyControlEqualityArena,s2Step132EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step132EarlyControl_flagsOwned : ([837, 253, 252, 251] : List Wire).toFinset⊆s2Step132EarlyControlEqualityArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlEqualityArena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_flags : compileHmrFlagsLog s2Step132EarlyControlClassPlan.equalityArena s2Step132EarlyControlClassPlan.equality.top 253 252 251 s2Step132EarlyControlLog.flagWork=some s2Step132EarlyControlFlagArena := by
  apply compileHmrFlagsLog_of_parts
  · exact ⟨by decide +kernel,s2Step132EarlyControl_flagsOwned⟩
  · exact s2Step132EarlyControl_flagsBorrow

private theorem s2Step132EarlyControl_historyBorrow : s2Step132EarlyControlArena.checkBorrow ((37-([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).length)) s2Step132EarlyControlLog.recordFresh=some s2Step132EarlyControlHistoryArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step132EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step132EarlyControlHistoryArena,s2Step132EarlyControlArena,s2Step132EarlyControlLog,arenaWires]

private theorem s2Step132EarlyControl_historyOwned : ([795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] : List Wire).toFinset⊆s2Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_history : compileHmrRecordGrowLog s2Step132EarlyControlArena [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step132EarlyControlLog.recordFresh=some s2Step132EarlyControlHistoryArena := by
  apply compileHmrRecordGrowLog_of_parts
  · exact ⟨by decide +kernel,s2Step132EarlyControl_historyOwned,by decide +kernel⟩
  · exact s2Step132EarlyControl_historyBorrow

private theorem s2Step132EarlyControl_sigmaOwned : ([254, 835] : List Wire).toFinset⊆s2Step132EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_sigmaReleaseOwned : ([835] : List Wire).toFinset⊆s2Step132EarlyControlHistoryArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlHistoryArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_sigmaRelease : s2Step132EarlyControlHistoryArena.release {835} (fun _ => false)=some s2Step132EarlyControlSigmaArena := by
  apply hmrArena_release_false_of_live
  · exact s2Step132EarlyControl_sigmaReleaseOwned
  · ext q
    simp [s2Step132EarlyControlSigmaArena,s2Step132EarlyControlHistoryArena,arenaWires]
    simp only [Wire] at *
    omega

private theorem s2Step132EarlyControl_sigma : compileHmrSigmaDropLog s2Step132EarlyControlHistoryArena false 0 0 254 835 []=some s2Step132EarlyControlSigmaArena := by
  apply compileHmrSigmaDropLog_early_of_parts
  · exact ⟨by decide +kernel,s2Step132EarlyControl_sigmaOwned⟩
  · exact s2Step132EarlyControl_sigmaRelease

private theorem s2Step132EarlyControl_zeroBorrow : s2Step132EarlyControlArena.checkBorrow (([772, 773, 774, 775, 776, 777] : List Wire).length-1) s2Step132EarlyControlLog.zeroWork=some s2Step132EarlyControlZeroArena := by
  apply Arena.checkBorrow_of_parts
  · decide +kernel
  · apply hmrArena_reserve_of_live
    · norm_num [s2Step132EarlyControlLog,arenaWires,Finset.insert_subset_iff]
    · apply hmrLayout_disjoint_of_filter s2Step132EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
      decide +kernel
    · ext q
      simp [s2Step132EarlyControlZeroArena,s2Step132EarlyControlArena,s2Step132EarlyControlLog,arenaWires]
      simp only [Wire] at *
      omega

private theorem s2Step132EarlyControl_zeroOwned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step132EarlyControlArena.live := by
  apply hmrLayout_owned_of_filter s2Step132EarlyControlArena (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EarlyControl_zero : compileHmrEqualityLog s2Step132EarlyControlArena [772, 773, 774, 775, 776, 777] 0 s2Step132EarlyControlLog.zeroWork=some (s2Step132EarlyControlZeroArena,s2Step132EarlyControlLog.zeroWork,s2Step132EarlyControlZeroPlan) := by
  apply compileHmrEqualityLog_of_parts
  · exact ⟨s2Step132EarlyControl_zeroOwned,by decide +kernel,by decide +kernel⟩
  · exact s2Step132EarlyControl_zeroBorrow
  · rfl
  · decide +kernel

private theorem s2Step132EarlyControl_logged : s2Step132EarlyControlPlan.Logged s2Step132EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 835 254 253 252 251 783 37 := by
  constructor
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact s2Step132EarlyControl_entryRecordOwned
  · decide +kernel
  · exact s2Step132EarlyControl_entrySigmaOwned
  · decide +kernel
  · exact s2Step132EarlyControl_zero
  · exact s2Step132EarlyControl_class
  · decide +kernel
  · decide +kernel
  · exact s2Step132EarlyControl_flags
  · exact s2Step132EarlyControl_fit
  · exact s2Step132EarlyControl_history
  · exact s2Step132EarlyControl_sigma
  · exact s2Step132EarlyControl_branch

private theorem s2Step132EarlyControl_plan_checked : compileHmrEarlyControlLog s2Step132EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 835 254 253 252 251 783 37 s2Step132EarlyControlLog=some s2Step132EarlyControlPlan :=
  compileHmrEarlyControlLog_of_logged s2Step132EarlyControlPlan s2Step132EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 835 254 253 252 251 783 37 s2Step132EarlyControl_logged

private def s2Step132EntryFBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132EntryFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step132EntryFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step132EntryGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201],769⟩

private def s2Step132EntryGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private def s2Step132FrontBank : WindowBank := ⟨s2Step132EntryFRow,s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow⟩

private def s2Step132Add0A : List Wire := [512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 817, 768]

private def s2Step132Add0B : List Wire := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829, 822, 769]

private def s2Step132Add1A : List Wire := [255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840, 770]

private def s2Step132Add1B : List Wire := [767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 827, 771]

private theorem s2Step132Counter_apart : Disjoint s2Step132HeadFvAfter.live s2Step132CounterWork.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step132HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132Counter_borrowed : s2Step132HeadFvAfter.checkBorrow 4 s2Step132CounterWork=some s2Step132CounterDuring := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide +kernel)]
  exact hmrArena_reserve_of_live s2Step132HeadFvAfter s2Step132CounterDuring s2Step132CounterWork.toFinset s2Step132Counter_bounded s2Step132Counter_apart rfl

private theorem s2Step132Counter_owned : (835::[772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step132HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step132HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132Counter_checked : compileHmrCounterStepLog s2Step132HeadFvAfter true 835 [772, 773, 774, 775, 776, 777] s2Step132CounterWork=some s2Step132CounterDuring := by
  have owned : ∀q∈835::[772, 773, 774, 775, 776, 777],q∈s2Step132HeadFvAfter.live := fun q hq => s2Step132Counter_owned (List.mem_toFinset.mpr hq)
  unfold compileHmrCounterStepLog
  rw [if_pos (And.intro (by decide) (And.intro (by decide) owned))]
  exact s2Step132Counter_borrowed

private def s2Step132EntryFAfter : Arena := s2Step132EntryFBefore

private theorem s2Step132EntryBank_incomingDistinct : ([s2Step132EntryFRow,s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132EntryF_Incoming : rowsOwned s2Step132EntryFBefore [s2Step132EntryFRow,s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132EntryFRow,s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow] 0 s2Step132EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132EntryBank_outgoingOwned : rowsOwned s2Step132EntryGvAfter [s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step132EntryGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132EntryF_Outgoing : rowsOwned s2Step132EntryGvAfter [s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut] :=
  hmrRows_owned_drop s2Step132EntryGvAfter [s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut] 0 s2Step132EntryBank_outgoingOwned

private theorem s2Step132EntryF_distinct : (s2Step132EntryFRow.sign::s2Step132EntryFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132EntryF_owned : (s2Step132EntryFRow.sign::s2Step132EntryFRow.payload).toFinset⊆s2Step132EntryFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EntryF_reserved : s2Step132EntryFBefore.reserve s2Step132EntryFFresh.toFinset=some s2Step132EntryFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step132EntryFFresh,arenaWires]
  · norm_num [s2Step132EntryFBefore,s2Step132EntryFFresh,arenaWires]
  · simp only [s2Step132EntryFFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step132EntryF_checked : planRowResizeLog s2Step132EntryFBefore s2Step132EntryFRow 203 s2Step132EntryFFresh=
    some (s2Step132EntryFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩,growRow 768 s2Step132EntryFFresh) := by
  have result := planRowResizeLog_of_growth s2Step132EntryFBefore s2Step132EntryFAfter s2Step132EntryFRow 203 s2Step132EntryFFresh
    s2Step132EntryF_distinct s2Step132EntryF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132EntryF_reserved
  have rowEq : WindowRow.mk (s2Step132EntryFRow.payload++s2Step132EntryFFresh) s2Step132EntryFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step132EntryFvAfter : Arena := s2Step132EntryGAfter

private def s2Step132EntryFvBefore : Arena := s2Step132EntryGAfter

private theorem s2Step132EntryFv_Incoming : rowsOwned s2Step132EntryFvBefore [s2Step132EntryFvRow,s2Step132EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132EntryFRow,s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow] 2 s2Step132EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132EntryFv_Outgoing : rowsOwned s2Step132EntryGvAfter [s2Step132EntryFvOut,s2Step132EntryGvOut] :=
  hmrRows_owned_drop s2Step132EntryGvAfter [s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut] 2 s2Step132EntryBank_outgoingOwned

private theorem s2Step132EntryFv_distinct : (s2Step132EntryFvRow.sign::s2Step132EntryFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132EntryFv_owned : (s2Step132EntryFvRow.sign::s2Step132EntryFvRow.payload).toFinset⊆s2Step132EntryFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132EntryFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EntryFv_reserved : s2Step132EntryFvBefore.reserve s2Step132EntryFvFresh.toFinset=some s2Step132EntryFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step132EntryFvFresh,arenaWires]
  · norm_num [s2Step132EntryFvBefore,s2Step132EntryGAfter,s2Step132EntryFvFresh,arenaWires]
  · simp only [s2Step132EntryFvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step132EntryFv_checked : planRowResizeLog s2Step132EntryFvBefore s2Step132EntryFvRow 79 s2Step132EntryFvFresh=
    some (s2Step132EntryFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩,growRow 770 s2Step132EntryFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step132EntryFvBefore s2Step132EntryFvAfter s2Step132EntryFvRow 79 s2Step132EntryFvFresh
    s2Step132EntryFv_distinct s2Step132EntryFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132EntryFv_reserved
  have rowEq : WindowRow.mk (s2Step132EntryFvRow.payload++s2Step132EntryFvFresh) s2Step132EntryFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step132EntryGBefore : Arena := s2Step132EntryFBefore

private theorem s2Step132EntryG_Incoming : rowsOwned s2Step132EntryGBefore [s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132EntryFRow,s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow] 1 s2Step132EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132EntryG_Outgoing : rowsOwned s2Step132EntryGvAfter [s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut] :=
  hmrRows_owned_drop s2Step132EntryGvAfter [s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut] 1 s2Step132EntryBank_outgoingOwned

private theorem s2Step132EntryG_distinct : (s2Step132EntryGRow.sign::s2Step132EntryGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132EntryG_owned : (s2Step132EntryGRow.sign::s2Step132EntryGRow.payload).toFinset⊆s2Step132EntryGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132EntryGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EntryG_reserved : s2Step132EntryGBefore.reserve s2Step132EntryGFresh.toFinset=some s2Step132EntryGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step132EntryGFresh,arenaWires]
  · norm_num [s2Step132EntryGBefore,s2Step132EntryFBefore,s2Step132EntryGFresh,arenaWires]
  · ext q
    simp only [s2Step132EntryGAfter,s2Step132EntryGBefore,s2Step132EntryFBefore,s2Step132EntryGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step132EntryG_checked : planRowResizeLog s2Step132EntryGBefore s2Step132EntryGRow 203 s2Step132EntryGFresh=
    some (s2Step132EntryGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829],769⟩,growRow 769 s2Step132EntryGFresh) := by
  have result := planRowResizeLog_of_growth s2Step132EntryGBefore s2Step132EntryGAfter s2Step132EntryGRow 203 s2Step132EntryGFresh
    s2Step132EntryG_distinct s2Step132EntryG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132EntryG_reserved
  have rowEq : WindowRow.mk (s2Step132EntryGRow.payload++s2Step132EntryGFresh) s2Step132EntryGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step132EntryGvBefore : Arena := s2Step132EntryGAfter

private theorem s2Step132EntryGv_Incoming : rowsOwned s2Step132EntryGvBefore [s2Step132EntryGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132EntryFRow,s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow] 3 s2Step132EntryBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132EntryGv_Outgoing : rowsOwned s2Step132EntryGvAfter [s2Step132EntryGvOut] :=
  hmrRows_owned_drop s2Step132EntryGvAfter [s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut] 3 s2Step132EntryBank_outgoingOwned

private theorem s2Step132EntryGv_distinct : (s2Step132EntryGvRow.sign::s2Step132EntryGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132EntryGv_owned : (s2Step132EntryGvRow.sign::s2Step132EntryGvRow.payload).toFinset⊆s2Step132EntryGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132EntryGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132EntryGv_reserved : s2Step132EntryGvBefore.reserve s2Step132EntryGvFresh.toFinset=some s2Step132EntryGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step132EntryGvFresh,arenaWires]
  · norm_num [s2Step132EntryGvBefore,s2Step132EntryGAfter,s2Step132EntryGvFresh,arenaWires]
  · simp only [s2Step132EntryGvFresh,List.toFinset_nil,Finset.union_empty]
    rfl

private theorem s2Step132EntryGv_checked : planRowResizeLog s2Step132EntryGvBefore s2Step132EntryGvRow 79 s2Step132EntryGvFresh=
    some (s2Step132EntryGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩,growRow 771 s2Step132EntryGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step132EntryGvBefore s2Step132EntryGvAfter s2Step132EntryGvRow 79 s2Step132EntryGvFresh
    s2Step132EntryGv_distinct s2Step132EntryGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132EntryGv_reserved
  have rowEq : WindowRow.mk (s2Step132EntryGvRow.payload++s2Step132EntryGvFresh) s2Step132EntryGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step132EntryBank_rows : planWindowRowsLog s2Step132EntryFBefore [(s2Step132EntryFRow,203),(s2Step132EntryGRow,203),(s2Step132EntryFvRow,79),(s2Step132EntryGvRow,79)] [s2Step132EntryFFresh,s2Step132EntryGFresh,s2Step132EntryFvFresh,s2Step132EntryGvFresh]=
    some (s2Step132EntryGvAfter,[s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut],(growRow 768 s2Step132EntryFFresh ++ (growRow 769 s2Step132EntryGFresh ++ (growRow 770 s2Step132EntryFvFresh ++ (growRow 771 s2Step132EntryGvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step132EntryGvAfter [] []=some (s2Step132EntryGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step132EntryGvBefore s2Step132EntryGvAfter s2Step132EntryGvAfter
    s2Step132EntryGvRow s2Step132EntryGvOut 79 s2Step132EntryGvFresh [] [] []
    (growRow 771 s2Step132EntryGvFresh) ([]) s2Step132EntryGv_Incoming s2Step132EntryGv_checked h4 s2Step132EntryGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step132EntryFvBefore s2Step132EntryFvAfter s2Step132EntryGvAfter
    s2Step132EntryFvRow s2Step132EntryFvOut 79 s2Step132EntryFvFresh [(s2Step132EntryGvRow,79)] [s2Step132EntryGvFresh] [s2Step132EntryGvOut]
    (growRow 770 s2Step132EntryFvFresh) ((growRow 771 s2Step132EntryGvFresh ++ [])) s2Step132EntryFv_Incoming s2Step132EntryFv_checked h3 s2Step132EntryFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step132EntryGBefore s2Step132EntryGAfter s2Step132EntryGvAfter
    s2Step132EntryGRow s2Step132EntryGOut 203 s2Step132EntryGFresh [(s2Step132EntryFvRow,79),(s2Step132EntryGvRow,79)] [s2Step132EntryFvFresh,s2Step132EntryGvFresh] [s2Step132EntryFvOut,s2Step132EntryGvOut]
    (growRow 769 s2Step132EntryGFresh) ((growRow 770 s2Step132EntryFvFresh ++ (growRow 771 s2Step132EntryGvFresh ++ []))) s2Step132EntryG_Incoming s2Step132EntryG_checked h2 s2Step132EntryG_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step132EntryFBefore s2Step132EntryFAfter s2Step132EntryGvAfter
    s2Step132EntryFRow s2Step132EntryFOut 203 s2Step132EntryFFresh [(s2Step132EntryGRow,203),(s2Step132EntryFvRow,79),(s2Step132EntryGvRow,79)] [s2Step132EntryGFresh,s2Step132EntryFvFresh,s2Step132EntryGvFresh] [s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut]
    (growRow 768 s2Step132EntryFFresh) ((growRow 769 s2Step132EntryGFresh ++ (growRow 770 s2Step132EntryFvFresh ++ (growRow 771 s2Step132EntryGvFresh ++ [])))) s2Step132EntryF_Incoming s2Step132EntryF_checked h1 s2Step132EntryF_Outgoing
  exact h0

private theorem s2Step132EntryBank_checked : compileHmrBankResizeLog .entry s2Step132EntryFBefore ⟨s2Step132EntryFRow,s2Step132EntryGRow,s2Step132EntryFvRow,s2Step132EntryGvRow⟩ ⟨203,203,79,79⟩ [s2Step132EntryFFresh,s2Step132EntryGFresh,s2Step132EntryFvFresh,s2Step132EntryGvFresh]=
    some (s2Step132EntryGvAfter,⟨s2Step132EntryFOut,s2Step132EntryGOut,s2Step132EntryFvOut,s2Step132EntryGvOut⟩,(growRow 768 s2Step132EntryFFresh ++ (growRow 769 s2Step132EntryGFresh ++ (growRow 770 s2Step132EntryFvFresh ++ (growRow 771 s2Step132EntryGvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step132EntryBank_rows]
  rfl

private def s2Step132ExitFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132ExitGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132ExitFBefore : Arena := s2Step132ExitGAfter

private def s2Step132ExitFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 817],768⟩

private def s2Step132ExitFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩

private def s2Step132ExitGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829, 822],769⟩

private def s2Step132ExitGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 827],771⟩

private theorem s2Step132ExitBank_incomingDistinct : ([s2Step132ExitGRow,s2Step132ExitFRow,s2Step132ExitFvRow,s2Step132ExitGvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132ExitF_Incoming : rowsOwned s2Step132ExitFBefore [s2Step132ExitFRow,s2Step132ExitFvRow,s2Step132ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132ExitGRow,s2Step132ExitFRow,s2Step132ExitFvRow,s2Step132ExitGvRow] 1 s2Step132ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132ExitBank_outgoingOwned : rowsOwned s2Step132ExitGvAfter [s2Step132ExitGOut,s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step132ExitGvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132ExitF_Outgoing : rowsOwned s2Step132ExitGvAfter [s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut] :=
  hmrRows_owned_drop s2Step132ExitGvAfter [s2Step132ExitGOut,s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut] 1 s2Step132ExitBank_outgoingOwned

private theorem s2Step132ExitF_distinct : (s2Step132ExitFRow.sign::s2Step132ExitFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132ExitF_owned : (s2Step132ExitFRow.sign::s2Step132ExitFRow.payload).toFinset⊆s2Step132ExitFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132ExitFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132ExitF_retired : s2Step132ExitFBefore.retireSet s2Step132ExitFExtra.toFinset=s2Step132ExitFAfter := by
  unfold Arena.retireSet s2Step132ExitFAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step132ExitFBefore,s2Step132ExitGAfter,s2Step132ExitFExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step132ExitF_checked : planRowResizeLog s2Step132ExitFBefore s2Step132ExitFRow 203 []=
    some (s2Step132ExitFAfter,s2Step132ExitFOut,shrinkRow 768 s2Step132ExitFExtra) := by
  have result := planRowResizeLog_of_shrink s2Step132ExitFBefore s2Step132ExitFRow 203 s2Step132ExitF_distinct s2Step132ExitF_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step132ExitFRow.payload.take 203) s2Step132ExitFRow.sign=s2Step132ExitFOut := by decide +kernel
  have hi : s2Step132ExitFRow.payload.drop 203=s2Step132ExitFExtra := by decide +kernel
  rw [lo,hi,s2Step132ExitF_retired] at result
  exact result

private def s2Step132ExitFvAfter : Arena := s2Step132ExitFAfter

private def s2Step132ExitFvBefore : Arena := s2Step132ExitFAfter

private theorem s2Step132ExitFv_Incoming : rowsOwned s2Step132ExitFvBefore [s2Step132ExitFvRow,s2Step132ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132ExitGRow,s2Step132ExitFRow,s2Step132ExitFvRow,s2Step132ExitGvRow] 2 s2Step132ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132ExitFv_Outgoing : rowsOwned s2Step132ExitGvAfter [s2Step132ExitFvOut,s2Step132ExitGvOut] :=
  hmrRows_owned_drop s2Step132ExitGvAfter [s2Step132ExitGOut,s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut] 2 s2Step132ExitBank_outgoingOwned

private theorem s2Step132ExitFv_distinct : (s2Step132ExitFvRow.sign::s2Step132ExitFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132ExitFv_owned : (s2Step132ExitFvRow.sign::s2Step132ExitFvRow.payload).toFinset⊆s2Step132ExitFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132ExitFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132ExitFv_reserved : s2Step132ExitFvBefore.reserve (∅ : Finset Wire)=some s2Step132ExitFvAfter := by
  apply hmrArena_reserve_of_live
  · simp
  · simp
  · simp only [Finset.union_empty]; rfl

private theorem s2Step132ExitFv_checked : planRowResizeLog s2Step132ExitFvBefore s2Step132ExitFvRow 80 []=
    some (s2Step132ExitFvAfter,s2Step132ExitFvOut,growRow 770 []) := by
  have result := planRowResizeLog_of_growth s2Step132ExitFvBefore s2Step132ExitFvAfter s2Step132ExitFvRow 80 []
    s2Step132ExitFv_distinct s2Step132ExitFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132ExitFv_reserved
  have rowEq : WindowRow.mk (s2Step132ExitFvRow.payload++[]) s2Step132ExitFvRow.sign=s2Step132ExitFvOut := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step132ExitGBefore : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private theorem s2Step132ExitG_Incoming : rowsOwned s2Step132ExitGBefore [s2Step132ExitGRow,s2Step132ExitFRow,s2Step132ExitFvRow,s2Step132ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132ExitGRow,s2Step132ExitFRow,s2Step132ExitFvRow,s2Step132ExitGvRow] 0 s2Step132ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132ExitG_Outgoing : rowsOwned s2Step132ExitGvAfter [s2Step132ExitGOut,s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut] :=
  hmrRows_owned_drop s2Step132ExitGvAfter [s2Step132ExitGOut,s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut] 0 s2Step132ExitBank_outgoingOwned

private theorem s2Step132ExitG_distinct : (s2Step132ExitGRow.sign::s2Step132ExitGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132ExitG_owned : (s2Step132ExitGRow.sign::s2Step132ExitGRow.payload).toFinset⊆s2Step132ExitGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132ExitGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132ExitG_retired : s2Step132ExitGBefore.retireSet s2Step132ExitGExtra.toFinset=s2Step132ExitGAfter := by
  unfold Arena.retireSet s2Step132ExitGAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step132ExitGBefore,s2Step132ExitGExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step132ExitG_checked : planRowResizeLog s2Step132ExitGBefore s2Step132ExitGRow 202 []=
    some (s2Step132ExitGAfter,s2Step132ExitGOut,shrinkRow 769 s2Step132ExitGExtra) := by
  have result := planRowResizeLog_of_shrink s2Step132ExitGBefore s2Step132ExitGRow 202 s2Step132ExitG_distinct s2Step132ExitG_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step132ExitGRow.payload.take 202) s2Step132ExitGRow.sign=s2Step132ExitGOut := by decide +kernel
  have hi : s2Step132ExitGRow.payload.drop 202=s2Step132ExitGExtra := by decide +kernel
  rw [lo,hi,s2Step132ExitG_retired] at result
  exact result

private def s2Step132ExitGvBefore : Arena := s2Step132ExitFAfter

private theorem s2Step132ExitGv_Incoming : rowsOwned s2Step132ExitGvBefore [s2Step132ExitGvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132ExitGRow,s2Step132ExitFRow,s2Step132ExitFvRow,s2Step132ExitGvRow] 3 s2Step132ExitBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132ExitGv_Outgoing : rowsOwned s2Step132ExitGvAfter [s2Step132ExitGvOut] :=
  hmrRows_owned_drop s2Step132ExitGvAfter [s2Step132ExitGOut,s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut] 3 s2Step132ExitBank_outgoingOwned

private theorem s2Step132ExitGv_distinct : (s2Step132ExitGvRow.sign::s2Step132ExitGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132ExitGv_owned : (s2Step132ExitGvRow.sign::s2Step132ExitGvRow.payload).toFinset⊆s2Step132ExitGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132ExitGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<829) ∨ (830≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132ExitGv_retired : s2Step132ExitGvBefore.retireSet s2Step132ExitGvExtra.toFinset=s2Step132ExitGvAfter := by
  unfold Arena.retireSet s2Step132ExitGvAfter
  simp only [Arena.mk.injEq]
  ext q
  simp only [s2Step132ExitGvBefore,s2Step132ExitFAfter,s2Step132ExitGvExtra,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_sdiff,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
  simp only [Wire] at *
  omega

private theorem s2Step132ExitGv_checked : planRowResizeLog s2Step132ExitGvBefore s2Step132ExitGvRow 79 []=
    some (s2Step132ExitGvAfter,s2Step132ExitGvOut,shrinkRow 771 s2Step132ExitGvExtra) := by
  have result := planRowResizeLog_of_shrink s2Step132ExitGvBefore s2Step132ExitGvRow 79 s2Step132ExitGv_distinct s2Step132ExitGv_owned (by decide +kernel)
  have lo : WindowRow.mk (s2Step132ExitGvRow.payload.take 79) s2Step132ExitGvRow.sign=s2Step132ExitGvOut := by decide +kernel
  have hi : s2Step132ExitGvRow.payload.drop 79=s2Step132ExitGvExtra := by decide +kernel
  rw [lo,hi,s2Step132ExitGv_retired] at result
  exact result

private theorem s2Step132ExitBank_rows : planWindowRowsLog s2Step132ExitGBefore [(s2Step132ExitGRow,202),(s2Step132ExitFRow,203),(s2Step132ExitFvRow,80),(s2Step132ExitGvRow,79)] [[],[],[],[]]=
    some (s2Step132ExitGvAfter,[s2Step132ExitGOut,s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut],(shrinkRow 769 s2Step132ExitGExtra ++ (shrinkRow 768 s2Step132ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step132ExitGvExtra ++ []))))) := by
  have h4 : planWindowRowsLog s2Step132ExitGvAfter [] []=some (s2Step132ExitGvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step132ExitGvBefore s2Step132ExitGvAfter s2Step132ExitGvAfter
    s2Step132ExitGvRow s2Step132ExitGvOut 79 [] [] [] []
    (shrinkRow 771 s2Step132ExitGvExtra) ([]) s2Step132ExitGv_Incoming s2Step132ExitGv_checked h4 s2Step132ExitGv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step132ExitFvBefore s2Step132ExitFvAfter s2Step132ExitGvAfter
    s2Step132ExitFvRow s2Step132ExitFvOut 80 [] [(s2Step132ExitGvRow,79)] [[]] [s2Step132ExitGvOut]
    (growRow 770 []) ((shrinkRow 771 s2Step132ExitGvExtra ++ [])) s2Step132ExitFv_Incoming s2Step132ExitFv_checked h3 s2Step132ExitFv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step132ExitFBefore s2Step132ExitFAfter s2Step132ExitGvAfter
    s2Step132ExitFRow s2Step132ExitFOut 203 [] [(s2Step132ExitFvRow,80),(s2Step132ExitGvRow,79)] [[],[]] [s2Step132ExitFvOut,s2Step132ExitGvOut]
    (shrinkRow 768 s2Step132ExitFExtra) ((growRow 770 [] ++ (shrinkRow 771 s2Step132ExitGvExtra ++ []))) s2Step132ExitF_Incoming s2Step132ExitF_checked h2 s2Step132ExitF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step132ExitGBefore s2Step132ExitGAfter s2Step132ExitGvAfter
    s2Step132ExitGRow s2Step132ExitGOut 202 [] [(s2Step132ExitFRow,203),(s2Step132ExitFvRow,80),(s2Step132ExitGvRow,79)] [[],[],[]] [s2Step132ExitFOut,s2Step132ExitFvOut,s2Step132ExitGvOut]
    (shrinkRow 769 s2Step132ExitGExtra) ((shrinkRow 768 s2Step132ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step132ExitGvExtra ++ [])))) s2Step132ExitG_Incoming s2Step132ExitG_checked h1 s2Step132ExitG_Outgoing
  exact h0

private theorem s2Step132ExitBank_checked : compileHmrBankResizeLog .exit s2Step132ExitGBefore ⟨s2Step132ExitFRow,s2Step132ExitGRow,s2Step132ExitFvRow,s2Step132ExitGvRow⟩ ⟨203,202,80,79⟩ [[],[],[],[]]=
    some (s2Step132ExitGvAfter,⟨s2Step132ExitFOut,s2Step132ExitGOut,s2Step132ExitFvOut,s2Step132ExitGvOut⟩,(shrinkRow 769 s2Step132ExitGExtra ++ (shrinkRow 768 s2Step132ExitFExtra ++ (growRow 770 [] ++ (shrinkRow 771 s2Step132ExitGvExtra ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step132ExitBank_rows]
  rfl

private theorem s2Step132Add0_apart : Disjoint s2Step132Add0Arena.live s2Step132Add0Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step132Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132Add0_card : s2Step132Add0Arena.live.card=875 := by
  decide +kernel

private theorem s2Step132Add0_borrowed : s2Step132Add0Arena.checkBorrow (hmrHybridCount s2Step132Add0Arena s2Step132Add0B.length) s2Step132Add0Work=some s2Step132Add0During := by
  have len : s2Step132Add0Work.length=hmrHybridCount s2Step132Add0Arena s2Step132Add0B.length := by
    rw [hmrHybridCount,s2Step132Add0_card]
    decide +kernel
  have nd : s2Step132Add0Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step132Add0Arena s2Step132Add0During s2Step132Add0Work.toFinset s2Step132Add0_bounded s2Step132Add0_apart rfl

private theorem s2Step132Add0_distinct : (814::783::781::(s2Step132Add0A++s2Step132Add0B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132Add0_owned : (814::783::781::(s2Step132Add0A++s2Step132Add0B)).toFinset⊆s2Step132Add0Arena.live := by
  apply hmrLayout_owned_of_filter s2Step132Add0Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132Add0_checked : compileHmrHybridCinLog s2Step132Add0Arena 783 814 781 s2Step132Add0A s2Step132Add0B s2Step132Add0Work=some s2Step132Add0During := by
  exact compileHmrHybridCinLog_of_parts s2Step132Add0Arena s2Step132Add0During 783 814 781 s2Step132Add0A s2Step132Add0B s2Step132Add0Work
    (by decide +kernel) (by decide +kernel) s2Step132Add0_distinct
    (fun q hq => s2Step132Add0_owned (List.mem_toFinset.mpr hq)) s2Step132Add0_borrowed

private theorem s2Step132Add1_apart : Disjoint s2Step132Add1Arena.live s2Step132Add1Work.toFinset := by
  apply hmrLayout_disjoint_of_filter s2Step132Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132Add1_card : s2Step132Add1Arena.live.card=875 := by
  decide +kernel

private theorem s2Step132Add1_borrowed : s2Step132Add1Arena.checkBorrow (hmrHybridCount s2Step132Add1Arena s2Step132Add1B.length) s2Step132Add1Work=some s2Step132Add1During := by
  have len : s2Step132Add1Work.length=hmrHybridCount s2Step132Add1Arena s2Step132Add1B.length := by
    rw [hmrHybridCount,s2Step132Add1_card]
    decide +kernel
  have nd : s2Step132Add1Work.Nodup := by apply hmrLayout_nodup_of_sorted; decide +kernel
  unfold Arena.checkBorrow
  rw [if_pos (And.intro len nd)]
  exact hmrArena_reserve_of_live s2Step132Add1Arena s2Step132Add1During s2Step132Add1Work.toFinset s2Step132Add1_bounded s2Step132Add1_apart rfl

private theorem s2Step132Add1_distinct : (814::783::781::(s2Step132Add1A++s2Step132Add1B)).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132Add1_owned : (814::783::781::(s2Step132Add1A++s2Step132Add1B)).toFinset⊆s2Step132Add1Arena.live := by
  apply hmrLayout_owned_of_filter s2Step132Add1Arena (fun q => (0≤q ∧ q<790) ∨ (791≤q ∧ q<815) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132Add1_checked : compileHmrHybridCinLog s2Step132Add1Arena 783 814 781 s2Step132Add1A s2Step132Add1B s2Step132Add1Work=some s2Step132Add1During := by
  exact compileHmrHybridCinLog_of_parts s2Step132Add1Arena s2Step132Add1During 783 814 781 s2Step132Add1A s2Step132Add1B s2Step132Add1Work
    (by decide +kernel) (by decide +kernel) s2Step132Add1_distinct
    (fun q hq => s2Step132Add1_owned (List.mem_toFinset.mpr hq)) s2Step132Add1_borrowed

private theorem s2Step132F4_apart : Disjoint (s2Step132Add0A++s2Step132Add0B).toFinset (s2Step132Add1A++s2Step132Add1B).toFinset := by
  have nd : ((s2Step132Add0A++s2Step132Add0B)++(s2Step132Add1A++s2Step132Add1B)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  apply Finset.disjoint_left.mpr
  intro q hq hr
  exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)

private theorem s2Step132F4_carry : s2Step132F4FlagArena.checkBorrow 1 [781]=some s2Step132Add0Arena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step132F4FlagArena,s2Step132HeadFvAfter,arenaWires]
  · ext q
    simp only [s2Step132F4FlagArena,s2Step132HeadFvAfter,s2Step132Add0Arena,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step132F4_distinct : (835::783::814::781::((s2Step132Add0A++s2Step132Add1A)++(s2Step132Add0B++s2Step132Add1B))).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132F4_flag : s2Step132HeadFvAfter.checkBorrow 1 [814]=some s2Step132F4FlagArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step132HeadFvAfter,arenaWires]
  · rfl

private theorem s2Step132F4_owned : (835::783::((s2Step132Add0A++s2Step132Add1A)++(s2Step132Add0B++s2Step132Add1B))).toFinset⊆s2Step132HeadFvAfter.live := by
  apply hmrLayout_owned_of_filter s2Step132HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132F4_checked : compileHmrHybridF4Log s2Step132HeadFvAfter 835 783 s2Step132Add0A s2Step132Add0B s2Step132Add1A s2Step132Add1B [814] [781] s2Step132Add0Work s2Step132Add1Work=some s2Step132F4Plan := by
  exact compileHmrHybridF4Log_of_parts s2Step132HeadFvAfter s2Step132F4FlagArena s2Step132Add0Arena s2Step132Add0During s2Step132Add1During 835 783
    s2Step132Add0A s2Step132Add0B s2Step132Add1A s2Step132Add1B [814] [781] s2Step132Add0Work s2Step132Add1Work
    (fun q hq => s2Step132F4_owned (List.mem_toFinset.mpr hq)) s2Step132F4_flag s2Step132F4_carry
    s2Step132F4_distinct s2Step132F4_apart s2Step132Add0_checked s2Step132Add1_checked

private theorem s2Step132Front_branch : s2Step132FrontSigmaArena.checkBorrow 1 [783]=some s2Step132HeadGBefore := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step132FrontSigmaArena,s2Step132EntryGvAfter,s2Step132EntryGAfter,arenaWires]
  · ext q
    simp only [s2Step132FrontSigmaArena,s2Step132EntryGvAfter,s2Step132EntryGAfter,s2Step132HeadGBefore,arenaWires,Finset.mem_filter,Finset.mem_range,Finset.mem_union,Finset.mem_singleton,List.toFinset_cons,List.toFinset_nil,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step132Front_entry : HmrFrontEntryValid s2Step132EntryFBefore s2Step132FrontBank 203 79 ⟨203,202,80,79⟩ true 0 [772, 773, 774, 775, 776, 777] := by
  have nd : ([772, 773, 774, 775, 776, 777]++(s2Step132FrontBank.rows.flatMap WindowRow.wires)).Nodup := by
    apply hmrLayout_nodup_of_sorted
    decide +kernel
  have owned : ([772, 773, 774, 775, 776, 777] : List Wire).toFinset⊆s2Step132EntryFBefore.live := by
    apply hmrLayout_owned_of_filter s2Step132EntryFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<783) ∨ (784≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<829) ∨ (830≤q ∧ q<835) ∨ (836≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel
  have apart : Disjoint ([772, 773, 774, 775, 776, 777] : List Wire).toFinset (s2Step132FrontBank.rows.flatMap WindowRow.wires).toFinset := by
    apply Finset.disjoint_left.mpr
    intro q hq hr
    exact List.disjoint_left.mp (List.nodup_append'.mp nd).2.2 (List.mem_toFinset.mp hq) (List.mem_toFinset.mp hr)
  exact ⟨by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,by decide +kernel,(List.nodup_append'.mp nd).1,fun q hq => owned (List.mem_toFinset.mpr hq),apart⟩

private theorem s2Step132Front_sigma : s2Step132EntryGvAfter.checkBorrow 1 [835]=some s2Step132FrontSigmaArena := by
  unfold Arena.checkBorrow
  rw [if_pos (by decide)]
  apply hmrArena_reserve_of_live
  · norm_num [arenaWires]
  · norm_num [s2Step132EntryGvAfter,s2Step132EntryGAfter,arenaWires]
  · rfl

private def s2Step132HeadFAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132HeadGAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132HeadFBefore : Arena := s2Step132HeadGAfter

private def s2Step132HeadFRow : WindowRow := ⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714],768⟩

private def s2Step132HeadFvRow : WindowRow := ⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834],770⟩

private def s2Step132HeadGRow : WindowRow := ⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829],769⟩

private def s2Step132HeadGvRow : WindowRow := ⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831],771⟩

private theorem s2Step132HeadBank_incomingDistinct : ([s2Step132HeadGRow,s2Step132HeadFRow,s2Step132HeadGvRow,s2Step132HeadFvRow].flatMap WindowRow.wires).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132HeadF_Incoming : rowsOwned s2Step132HeadFBefore [s2Step132HeadFRow,s2Step132HeadGvRow,s2Step132HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132HeadGRow,s2Step132HeadFRow,s2Step132HeadGvRow,s2Step132HeadFvRow] 1 s2Step132HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132HeadBank_outgoingOwned : rowsOwned s2Step132HeadFvAfter [s2Step132HeadGOut,s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut] := by
  constructor
  · apply hmrLayout_nodup_of_sorted
    decide +kernel
  · apply hmrLayout_owned_of_filter s2Step132HeadFvAfter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132HeadF_Outgoing : rowsOwned s2Step132HeadFvAfter [s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut] :=
  hmrRows_owned_drop s2Step132HeadFvAfter [s2Step132HeadGOut,s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut] 1 s2Step132HeadBank_outgoingOwned

private theorem s2Step132HeadF_distinct : (s2Step132HeadFRow.sign::s2Step132HeadFRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132HeadF_owned : (s2Step132HeadFRow.sign::s2Step132HeadFRow.payload).toFinset⊆s2Step132HeadFBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132HeadFBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132HeadF_reserved : s2Step132HeadFBefore.reserve s2Step132HeadFFresh.toFinset=some s2Step132HeadFAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step132HeadFFresh,arenaWires]
  · norm_num [s2Step132HeadFBefore,s2Step132HeadGAfter,s2Step132HeadFFresh,arenaWires]
  · ext q
    simp only [s2Step132HeadFAfter,s2Step132HeadFBefore,s2Step132HeadGAfter,s2Step132HeadFFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step132HeadF_checked : planRowResizeLog s2Step132HeadFBefore s2Step132HeadFRow 204 s2Step132HeadFFresh=
    some (s2Step132HeadFAfter,⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 817],768⟩,growRow 768 s2Step132HeadFFresh) := by
  have result := planRowResizeLog_of_growth s2Step132HeadFBefore s2Step132HeadFAfter s2Step132HeadFRow 204 s2Step132HeadFFresh
    s2Step132HeadF_distinct s2Step132HeadF_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132HeadF_reserved
  have rowEq : WindowRow.mk (s2Step132HeadFRow.payload++s2Step132HeadFFresh) s2Step132HeadFRow.sign=⟨[512, 513, 514, 515, 516, 517, 518, 519, 520, 521, 522, 523, 524, 525, 526, 527, 528, 529, 530, 531, 532, 533, 534, 535, 536, 537, 538, 539, 540, 541, 542, 543, 544, 545, 546, 547, 548, 549, 550, 551, 552, 553, 554, 555, 556, 557, 558, 559, 560, 561, 562, 563, 564, 565, 566, 567, 568, 569, 570, 571, 572, 573, 574, 575, 576, 577, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 589, 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 607, 608, 609, 610, 611, 612, 613, 614, 615, 616, 617, 618, 619, 620, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 655, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 669, 670, 671, 672, 673, 674, 675, 676, 677, 678, 679, 680, 681, 682, 683, 684, 685, 686, 687, 688, 689, 690, 691, 692, 693, 694, 695, 696, 697, 698, 699, 700, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 711, 712, 713, 714, 817],768⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step132HeadGvAfter : Arena := ⟨arenaWires.filter (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)),Finset.filter_subset _ _⟩

private def s2Step132HeadFvBefore : Arena := s2Step132HeadGvAfter

private theorem s2Step132HeadFv_Incoming : rowsOwned s2Step132HeadFvBefore [s2Step132HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132HeadGRow,s2Step132HeadFRow,s2Step132HeadGvRow,s2Step132HeadFvRow] 3 s2Step132HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132HeadFv_Outgoing : rowsOwned s2Step132HeadFvAfter [s2Step132HeadFvOut] :=
  hmrRows_owned_drop s2Step132HeadFvAfter [s2Step132HeadGOut,s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut] 3 s2Step132HeadBank_outgoingOwned

private theorem s2Step132HeadFv_distinct : (s2Step132HeadFvRow.sign::s2Step132HeadFvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132HeadFv_owned : (s2Step132HeadFvRow.sign::s2Step132HeadFvRow.payload).toFinset⊆s2Step132HeadFvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132HeadFvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132HeadFv_reserved : s2Step132HeadFvBefore.reserve s2Step132HeadFvFresh.toFinset=some s2Step132HeadFvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step132HeadFvFresh,arenaWires]
  · norm_num [s2Step132HeadFvBefore,s2Step132HeadGvAfter,s2Step132HeadFvFresh,arenaWires]
  · ext q
    simp only [s2Step132HeadFvAfter,s2Step132HeadFvBefore,s2Step132HeadGvAfter,s2Step132HeadFvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step132HeadFv_checked : planRowResizeLog s2Step132HeadFvBefore s2Step132HeadFvRow 80 s2Step132HeadFvFresh=
    some (s2Step132HeadFvAfter,⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩,growRow 770 s2Step132HeadFvFresh) := by
  have result := planRowResizeLog_of_growth s2Step132HeadFvBefore s2Step132HeadFvAfter s2Step132HeadFvRow 80 s2Step132HeadFvFresh
    s2Step132HeadFv_distinct s2Step132HeadFv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132HeadFv_reserved
  have rowEq : WindowRow.mk (s2Step132HeadFvRow.payload++s2Step132HeadFvFresh) s2Step132HeadFvRow.sign=⟨[255, 254, 253, 252, 251, 250, 249, 248, 247, 246, 245, 244, 243, 242, 241, 240, 239, 238, 237, 236, 235, 234, 233, 232, 231, 230, 229, 228, 227, 226, 225, 224, 223, 222, 221, 220, 219, 218, 217, 216, 215, 214, 213, 212, 211, 210, 209, 208, 207, 206, 205, 204, 203, 202, 782, 784, 788, 845, 816, 797, 844, 779, 839, 847, 793, 798, 803, 785, 810, 808, 812, 809, 846, 821, 807, 792, 824, 825, 834, 840],770⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step132HeadG_Incoming : rowsOwned s2Step132HeadGBefore [s2Step132HeadGRow,s2Step132HeadFRow,s2Step132HeadGvRow,s2Step132HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132HeadGRow,s2Step132HeadFRow,s2Step132HeadGvRow,s2Step132HeadFvRow] 0 s2Step132HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132HeadG_Outgoing : rowsOwned s2Step132HeadFvAfter [s2Step132HeadGOut,s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut] :=
  hmrRows_owned_drop s2Step132HeadFvAfter [s2Step132HeadGOut,s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut] 0 s2Step132HeadBank_outgoingOwned

private theorem s2Step132HeadG_distinct : (s2Step132HeadGRow.sign::s2Step132HeadGRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132HeadG_owned : (s2Step132HeadGRow.sign::s2Step132HeadGRow.payload).toFinset⊆s2Step132HeadGBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132HeadGBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<817) ∨ (818≤q ∧ q<822) ∨ (823≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132HeadG_reserved : s2Step132HeadGBefore.reserve s2Step132HeadGFresh.toFinset=some s2Step132HeadGAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step132HeadGFresh,arenaWires]
  · norm_num [s2Step132HeadGBefore,s2Step132HeadGFresh,arenaWires]
  · ext q
    simp only [s2Step132HeadGAfter,s2Step132HeadGBefore,s2Step132HeadGFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step132HeadG_checked : planRowResizeLog s2Step132HeadGBefore s2Step132HeadGRow 204 s2Step132HeadGFresh=
    some (s2Step132HeadGAfter,⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829, 822],769⟩,growRow 769 s2Step132HeadGFresh) := by
  have result := planRowResizeLog_of_growth s2Step132HeadGBefore s2Step132HeadGAfter s2Step132HeadGRow 204 s2Step132HeadGFresh
    s2Step132HeadG_distinct s2Step132HeadG_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132HeadG_reserved
  have rowEq : WindowRow.mk (s2Step132HeadGRow.payload++s2Step132HeadGFresh) s2Step132HeadGRow.sign=⟨[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 829, 822],769⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private def s2Step132HeadGvBefore : Arena := s2Step132HeadFAfter

private theorem s2Step132HeadGv_Incoming : rowsOwned s2Step132HeadGvBefore [s2Step132HeadGvRow,s2Step132HeadFvRow] := by
  constructor
  · exact hmrRows_distinct_drop [s2Step132HeadGRow,s2Step132HeadFRow,s2Step132HeadGvRow,s2Step132HeadFvRow] 2 s2Step132HeadBank_incomingDistinct
  · apply hmrLayout_owned_of_filter s2Step132HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
    decide +kernel

private theorem s2Step132HeadGv_Outgoing : rowsOwned s2Step132HeadFvAfter [s2Step132HeadGvOut,s2Step132HeadFvOut] :=
  hmrRows_owned_drop s2Step132HeadFvAfter [s2Step132HeadGOut,s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut] 2 s2Step132HeadBank_outgoingOwned

private theorem s2Step132HeadGv_distinct : (s2Step132HeadGvRow.sign::s2Step132HeadGvRow.payload).Nodup := by
  apply hmrLayout_nodup_of_sorted
  decide +kernel

private theorem s2Step132HeadGv_owned : (s2Step132HeadGvRow.sign::s2Step132HeadGvRow.payload).toFinset⊆s2Step132HeadGvBefore.live := by
  apply hmrLayout_owned_of_filter s2Step132HeadGvBefore (fun q => (0≤q ∧ q<781) ∨ (782≤q ∧ q<790) ∨ (791≤q ∧ q<814) ∨ (816≤q ∧ q<827) ∨ (828≤q ∧ q<837) ∨ (838≤q ∧ q<840) ∨ (841≤q ∧ q<849) ∨ (850≤q ∧ q<867) ∨ (868≤q ∧ q<877) ∨ (878≤q ∧ q<879) ∨ (880≤q ∧ q<882)) rfl
  decide +kernel

private theorem s2Step132HeadGv_reserved : s2Step132HeadGvBefore.reserve s2Step132HeadGvFresh.toFinset=some s2Step132HeadGvAfter := by
  apply hmrArena_reserve_of_live
  · norm_num [s2Step132HeadGvFresh,arenaWires]
  · norm_num [s2Step132HeadGvBefore,s2Step132HeadFAfter,s2Step132HeadGvFresh,arenaWires]
  · ext q
    simp only [s2Step132HeadGvAfter,s2Step132HeadGvBefore,s2Step132HeadFAfter,s2Step132HeadGvFresh,arenaWires,Finset.mem_filter,Finset.mem_range,List.toFinset_cons,List.toFinset_nil,Finset.mem_union,Finset.mem_insert,Finset.notMem_empty,or_false]
    simp only [Wire] at *
    omega

private theorem s2Step132HeadGv_checked : planRowResizeLog s2Step132HeadGvBefore s2Step132HeadGvRow 80 s2Step132HeadGvFresh=
    some (s2Step132HeadGvAfter,⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 827],771⟩,growRow 771 s2Step132HeadGvFresh) := by
  have result := planRowResizeLog_of_growth s2Step132HeadGvBefore s2Step132HeadGvAfter s2Step132HeadGvRow 80 s2Step132HeadGvFresh
    s2Step132HeadGv_distinct s2Step132HeadGv_owned (by decide +kernel) (by decide +kernel) (by decide +kernel) s2Step132HeadGv_reserved
  have rowEq : WindowRow.mk (s2Step132HeadGvRow.payload++s2Step132HeadGvFresh) s2Step132HeadGvRow.sign=⟨[767, 766, 765, 764, 763, 762, 761, 760, 759, 758, 757, 756, 755, 754, 753, 752, 751, 750, 749, 748, 747, 746, 745, 744, 743, 742, 741, 740, 739, 738, 736, 737, 735, 734, 733, 731, 732, 730, 729, 728, 727, 726, 725, 724, 722, 723, 720, 721, 719, 718, 717, 716, 715, 826, 778, 841, 842, 789, 836, 780, 796, 791, 786, 801, 804, 851, 811, 799, 800, 787, 820, 805, 794, 830, 806, 819, 832, 802, 831, 827],771⟩ := by decide +kernel
  rw [rowEq] at result
  exact result

private theorem s2Step132HeadBank_rows : planWindowRowsLog s2Step132HeadGBefore [(s2Step132HeadGRow,204),(s2Step132HeadFRow,204),(s2Step132HeadGvRow,80),(s2Step132HeadFvRow,80)] [s2Step132HeadGFresh,s2Step132HeadFFresh,s2Step132HeadGvFresh,s2Step132HeadFvFresh]=
    some (s2Step132HeadFvAfter,[s2Step132HeadGOut,s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut],(growRow 769 s2Step132HeadGFresh ++ (growRow 768 s2Step132HeadFFresh ++ (growRow 771 s2Step132HeadGvFresh ++ (growRow 770 s2Step132HeadFvFresh ++ []))))) := by
  have h4 : planWindowRowsLog s2Step132HeadFvAfter [] []=some (s2Step132HeadFvAfter,[],[]) := rfl
  have h3 := planWindowRowsLog_of_cons s2Step132HeadFvBefore s2Step132HeadFvAfter s2Step132HeadFvAfter
    s2Step132HeadFvRow s2Step132HeadFvOut 80 s2Step132HeadFvFresh [] [] []
    (growRow 770 s2Step132HeadFvFresh) ([]) s2Step132HeadFv_Incoming s2Step132HeadFv_checked h4 s2Step132HeadFv_Outgoing
  have h2 := planWindowRowsLog_of_cons s2Step132HeadGvBefore s2Step132HeadGvAfter s2Step132HeadFvAfter
    s2Step132HeadGvRow s2Step132HeadGvOut 80 s2Step132HeadGvFresh [(s2Step132HeadFvRow,80)] [s2Step132HeadFvFresh] [s2Step132HeadFvOut]
    (growRow 771 s2Step132HeadGvFresh) ((growRow 770 s2Step132HeadFvFresh ++ [])) s2Step132HeadGv_Incoming s2Step132HeadGv_checked h3 s2Step132HeadGv_Outgoing
  have h1 := planWindowRowsLog_of_cons s2Step132HeadFBefore s2Step132HeadFAfter s2Step132HeadFvAfter
    s2Step132HeadFRow s2Step132HeadFOut 204 s2Step132HeadFFresh [(s2Step132HeadGvRow,80),(s2Step132HeadFvRow,80)] [s2Step132HeadGvFresh,s2Step132HeadFvFresh] [s2Step132HeadGvOut,s2Step132HeadFvOut]
    (growRow 768 s2Step132HeadFFresh) ((growRow 771 s2Step132HeadGvFresh ++ (growRow 770 s2Step132HeadFvFresh ++ []))) s2Step132HeadF_Incoming s2Step132HeadF_checked h2 s2Step132HeadF_Outgoing
  have h0 := planWindowRowsLog_of_cons s2Step132HeadGBefore s2Step132HeadGAfter s2Step132HeadFvAfter
    s2Step132HeadGRow s2Step132HeadGOut 204 s2Step132HeadGFresh [(s2Step132HeadFRow,204),(s2Step132HeadGvRow,80),(s2Step132HeadFvRow,80)] [s2Step132HeadFFresh,s2Step132HeadGvFresh,s2Step132HeadFvFresh] [s2Step132HeadFOut,s2Step132HeadGvOut,s2Step132HeadFvOut]
    (growRow 769 s2Step132HeadGFresh) ((growRow 768 s2Step132HeadFFresh ++ (growRow 771 s2Step132HeadGvFresh ++ (growRow 770 s2Step132HeadFvFresh ++ [])))) s2Step132HeadG_Incoming s2Step132HeadG_checked h1 s2Step132HeadG_Outgoing
  exact h0

private theorem s2Step132HeadBank_checked : compileHmrBankResizeLog .headroom s2Step132HeadGBefore ⟨s2Step132HeadFRow,s2Step132HeadGRow,s2Step132HeadFvRow,s2Step132HeadGvRow⟩ ⟨204,204,80,80⟩ [s2Step132HeadGFresh,s2Step132HeadFFresh,s2Step132HeadGvFresh,s2Step132HeadFvFresh]=
    some (s2Step132HeadFvAfter,⟨s2Step132HeadFOut,s2Step132HeadGOut,s2Step132HeadFvOut,s2Step132HeadGvOut⟩,(growRow 769 s2Step132HeadGFresh ++ (growRow 768 s2Step132HeadFFresh ++ (growRow 771 s2Step132HeadGvFresh ++ (growRow 770 s2Step132HeadFvFresh ++ []))))) := by
  unfold compileHmrBankResizeLog
  simp only [HmrBankOrder.requests]
  rw [s2Step132HeadBank_rows]
  rfl

private theorem s2Step132Front_checked : compileHmrSourceFrontLog s2Step132EntryFBefore s2Step132FrontBank 203 79 ⟨203,202,80,79⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step132FrontLog=some s2Step132FrontPlan := by
  have pairEq : s2Step132FrontPair=⟨s2Step132HeadFRow,s2Step132HeadGRow,s2Step132HeadFvRow,s2Step132HeadGvRow⟩ := by decide +kernel
  have headEq : s2Step132FrontHead=⟨s2Step132ExitFRow,s2Step132ExitGRow,s2Step132ExitFvRow,s2Step132ExitGvRow⟩ := by decide +kernel
  have fEq : s2Step132Add0A=s2Step132FrontHead.f.wires := by decide +kernel
  have gEq : s2Step132Add0B=s2Step132FrontHead.g.wires := by decide +kernel
  have fvEq : s2Step132Add1A=s2Step132FrontHead.fv.wires := by decide +kernel
  have gvEq : s2Step132Add1B=s2Step132FrontHead.gv.wires := by decide +kernel
  apply compileHmrSourceFrontLog_of_parts s2Step132EntryFBefore s2Step132FrontBank 203 79 ⟨203,202,80,79⟩ true 0 [772, 773, 774, 775, 776, 777] s2Step132FrontLog s2Step132FrontPlan
  · exact s2Step132Front_entry
  · exact s2Step132EntryBank_checked
  · exact s2Step132Front_sigma
  · rfl
  · exact s2Step132Front_branch
  · rfl
  · simpa only [s2Step132FrontPlan,pairEq] using s2Step132HeadBank_checked
  · simpa only [s2Step132FrontPlan,fEq,gEq,fvEq,gvEq] using s2Step132F4_checked
  · exact s2Step132Counter_checked
  · rfl
  · simpa only [s2Step132FrontPlan,headEq] using s2Step132ExitBank_checked

private theorem s2Step132Complete_explicit_checked : compileHmrEarlyStepLog s2Step132EntryFBefore s2Step132FrontBank 203 79 ⟨203,202,80,79⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step132CompleteLog=some s2Step132CompletePlan := by
  let Q := s2Step132EarlyControlPlan
  have hq := s2Step132EarlyControl_plan_checked
  have fv1 : s2Step132CompleteOut.fv.second=254 := by decide +kernel
  have fv2 : s2Step132CompleteOut.fv.payload[2]?.getD s2Step132CompleteOut.fv.sign=253 := by decide +kernel
  have fv3 : s2Step132CompleteOut.fv.payload[3]?.getD s2Step132CompleteOut.fv.sign=252 := by decide +kernel
  have fv4 : s2Step132CompleteOut.fv.payload[4]?.getD s2Step132CompleteOut.fv.sign=251 := by decide +kernel
  have result := compileHmrEarlyStepLog_of_parts s2Step132EntryFBefore s2Step132EarlyControlArena s2Step132FrontBank 203 79 ⟨203,202,80,79⟩ 0 [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 37 s2Step132CompleteLog s2Step132FrontPlan Q
    s2Step132Front_checked s2Step132Complete_repack
    (And.intro (by decide +kernel) (And.intro (by decide +kernel) (And.intro s2Step132Complete_owned s2Step132Complete_apart)))
    (by
      change compileHmrEarlyControlLog s2Step132EarlyControlArena [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 777 835 s2Step132CompleteOut.fv.second (s2Step132CompleteOut.fv.payload[2]?.getD s2Step132CompleteOut.fv.sign) (s2Step132CompleteOut.fv.payload[3]?.getD s2Step132CompleteOut.fv.sign) (s2Step132CompleteOut.fv.payload[4]?.getD s2Step132CompleteOut.fv.sign) 783 37 s2Step132EarlyControlLog=some Q
      rw [fv1,fv2,fv3,fv4]
      exact hq)
  exact result

def s2PrivateStep132Arena : Arena := s2Step132EntryFBefore
def s2PrivateStep132Bank : WindowBank := s2Step132FrontBank
def s2PrivateStep132Spec : HmrSourceWalkStepLog := ⟨203,79,⟨203,202,80,79⟩,37,.early s2Step132CompleteLog⟩
def s2PrivateStep132Plan : HmrSourceStepPlan := .early s2Step132CompletePlan
theorem s2PrivateStep132_source : s2PrivateStep132Spec=s2ObservedLogs128[4] := rfl
theorem s2PrivateStep132_checked : compileHmrSourceStepLog s2PrivateStep132Arena s2PrivateStep132Bank
    s2PrivateStep132Spec.fgWidth s2PrivateStep132Spec.vWidth s2PrivateStep132Spec.exitWidth s2ObservedCounter [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881]
    6 498 132 s2PrivateStep132Spec.need none s2PrivateStep132Spec.log=some s2PrivateStep132Plan := by
  change compileHmrSourceStepLog s2Step132EntryFBefore s2Step132FrontBank 203 79 ⟨203,202,80,79⟩ [772, 773, 774, 775, 776, 777] [795, 813, 818, 823, 828, 833, 838, 843, 848, 850, 852, 853, 854, 855, 857, 859, 858, 861, 856, 860, 863, 862, 864, 865, 866, 869, 871, 870, 868, 872, 875, 874, 873, 876, 880, 878, 881] 6 498 132 37 none (.early s2Step132CompleteLog)=some (.early s2Step132CompletePlan)
  simp only [compileHmrSourceStepLog,if_pos (by decide : 132<498)]
  rw [s2Step132Complete_explicit_checked]
  rfl
end ECDSAAdd.Arithmetic.Paper935
